import { Controller } from '@hotwired/stimulus'
import { Datepicker } from 'vanillajs-datepicker';

export default class extends Controller {
    static targets = ['checkin', 'checkout'];
    connect() {
        const checkinPicker = new Datepicker(this.checkinTarget,{
            minDate: this.element.dataset.currentDate
        });

        const checkoutPicker = new Datepicker(this.checkoutTarget,{
            minDate: this.element.dataset.bestEndDate,
            maxDate: this.element.dataset.bestEndDate,
            
        });

        this.checkinTarget.addEventListener('changeDate', (e)=> {
            const date= new Date(e.target.value)
            date.setDate(date.getDate() + 30)
            checkoutPicker.setOptions({
                minDate: this.element.dataset.bestEndDate,                
                maxDate: date
            });
        });



    }

    buildReservationParams(){
        const params = {
            checkin_date : this.checkinTarget.value,
            checkout_date : this.checkoutTarget.value,
            timeslot : "7-8pm",
            total : "60usd",

        };
        const searchParams = new URLSearchParams(params);
        return searchParams.toString();
    }

    buildSubmitUrl(url){
        return '${url}?${this.buildReservationParams()}';
    }

    submitReservationComponent(e){
        Turbo.visit(this.buildSubmitUrl(e.target.dataset.submitUrl));

    }
}
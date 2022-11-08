import { Controller } from '@hotwired/stimulus'

import {enter, leave, toggle} from 'el-transition'
// Modal is not part of the MVP -- to be included in beta

export default class extends Controller {
    connect() {
   // document.getElementById('modal-wrapper').addEventListener('click', this.closeModal);

    }
    closeModal(event){
        const modalPanelCicked = document.getElementById('modal-panel').contains(event.target);

        console.log(event.target.id);

        if (!modalPanelCicked && event.target.id !== 'modal-trigger'){
            leave(document.getElementById('modal-wrapper'));
            leave(document.getElementById('modal-backdrop'));
            leave(document.getElementById('modal-panel'));
        }
    }

    showModal(){
        enter(document.getElementById('modal-wrapper'));
        enter(document.getElementById('modal-backdrop'));
        enter(document.getElementById('modal-panel'));
    }
}


import { Controller } from '@hotwired/stimulus'



export default class extends Controller {

  favourite() {
    if (this.element.dataset.userLoggedIn === 'false'){

      window.location.href = "users/sign_in"

     // document.querySelector(['']).click()
      
    }


    if (this.element.dataset.favourited === 'true'){
      this.element.dataset.favourited = 'false'
      this.element.setAttribute('fill', 'none');
    } else {

      this.element.dataset.favourited = 'true'
      this.element.setAttribute('fill', 'green');

    }

  }

  
}


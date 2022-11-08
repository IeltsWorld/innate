import { Controller } from '@hotwired/stimulus'

import { toggle} from 'el-transition'


export default class extends Controller {
  static targets = ['openMainMenu'];

  connect() {
    this.openMainMenuTarget.addEventListener('click' , this.toggleDropdownsMenu)

  }

  toggleDropdownsMenu() {
    toggle(document.getElementById('dropdown-items-main'));
  }

  
}


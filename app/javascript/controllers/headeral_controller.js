import { Controller } from '@hotwired/stimulus'

import { toggle} from 'el-transition'


export default class extends Controller {
  static targets = ['openHeaderAl'];

  connect() {
    this.openHeaderAlTarget.addEventListener('click' , this.toggleDropdownAlMenu)

  }
  toggleDropdownAlMenu() {
    toggle(document.getElementById('dropdown-items-al'));
  }

}

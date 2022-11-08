import { Controller } from '@hotwired/stimulus'
import { toggle} from 'el-transition'
export default class extends Controller {
    copyLink(){
        navigator.clipboard.writeText(this.element.dataset.shareUrl).then(() => {
        alert("Copied to Clipboard")
        });
    }
}
import "@hotwired/turbo-rails"
import "controllers"
import "@nathanvda/cocoon"
import jquery from "jquery"

window.jQuery = jquerywindow































function confirmDestroy(message) {
  if (!confirm(message)) {
    return false;
  }
}
 
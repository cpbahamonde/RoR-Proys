import "../@hotwired/turbo-rails"
import "controllers"
import "@nathanvda/cocoon"
import jquery from "jquery"

window.jQuery = jquery
window.$ = jquery































function confirmDestroy(message) {
  if (!confirm(message)) {
    return false;
  }
}
 
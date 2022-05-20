import "@hotwired/turbo-rails"
import "controllers"
import "@nathanvda/cocoon"
import jquery from "jquery"































function confirmDestroy(message) {
  if (!confirm(message)) {
    return false;
  }
}
 
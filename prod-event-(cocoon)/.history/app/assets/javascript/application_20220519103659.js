import "@hotwired/turbo-rails
import "controllers"
import "@nathanvda/cocoon"































function confirmDestroy(message) {
  if (!confirm(message)) {
    return false;
  }
}
 
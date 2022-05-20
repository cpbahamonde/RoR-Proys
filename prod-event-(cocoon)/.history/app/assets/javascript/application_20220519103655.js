import "@hotwired/turbo-rails
impport "controllers"
import "@nathanvda/cocoon"































function confirmDestroy(message) {
  if (!confirm(message)) {
    return false;
  }
}
 
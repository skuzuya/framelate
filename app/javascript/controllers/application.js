import Rails from "@rails/ujs"
import { Application } from "@hotwired/stimulus"
import "controllers"

Rails.start()

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
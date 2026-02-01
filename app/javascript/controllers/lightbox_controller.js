import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  open(event) {
    event.stopPropagation()
    this.imageTarget.src = event.currentTarget.dataset.lightboxImageUrl
    this.element.classList.remove("hidden")
  }

  close() {
    this.element.classList.add("hidden")
    this.imageTarget.src = ""
  }
}

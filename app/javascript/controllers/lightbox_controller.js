import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["container", "image"]

  open(event) {
    event.stopPropagation()
    const url = event.currentTarget.dataset.lightboxImageUrl
    this.imageTarget.src = url
    this.containerTarget.classList.remove("hidden")
  }

  close(event) {
    if (event.target === this.containerTarget || event.target.classList.contains('lightbox-close')) {
      this.containerTarget.classList.add("hidden")
      this.imageTarget.src = ""
    }
  }
}

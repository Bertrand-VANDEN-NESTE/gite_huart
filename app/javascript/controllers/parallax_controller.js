import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  connect() {
    window.addEventListener("scroll", this.handleScroll)
  }

  disconnect() {
    window.removeEventListener("scroll", this.handleScroll)
  }

  handleScroll = () => {
    const rect = this.element.getBoundingClientRect()
    const offset = rect.top * 0.05

    this.imageTargets.forEach(image => {
      image.style.transform = `translateY(${offset}px) scale(1.02)`
    })
  }
}

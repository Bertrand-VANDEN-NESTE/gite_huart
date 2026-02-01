import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  connect() {
    console.log("Zoom background connecté ✅")
    this.onScroll = this.onScroll.bind(this)
    window.addEventListener("scroll", this.onScroll)
  }

  disconnect() {
    window.removeEventListener("scroll", this.onScroll)
  }

  onScroll() {
    const scrollTop = window.scrollY
    const scale = 1 + Math.min(scrollTop / 1500, 0.2)
    this.imageTarget.style.transform = `scale(${scale})`
  }
}

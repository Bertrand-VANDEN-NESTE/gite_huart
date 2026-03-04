import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu", "button"]

  toggle(event) {
    event.preventDefault()
    this.menuTarget.classList.toggle("active")
    this.buttonTarget.classList.toggle("open")
  }

  close() {
    this.menuTarget.classList.remove("active")
    this.buttonTarget.classList.remove("open")
  }
}

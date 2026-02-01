import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  toggle() {
    this.menuTarget.classList.toggle("active")
    document.body.classList.toggle("menu-open")
  }

  close() {
    this.menuTarget.classList.remove("active")
    document.body.classList.remove("menu-open")
  }
}

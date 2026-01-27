import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Burger controller loaded ✅")
    this.element.addEventListener("click", () => {
      const nav = document.querySelector(".navbarul")
      nav.classList.toggle("active")
    })
  }
}

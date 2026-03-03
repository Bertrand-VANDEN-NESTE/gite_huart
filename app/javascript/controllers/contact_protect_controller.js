import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    user: String,
    domain: String,
    phone: String
  }

  reveal(event) {
    event.preventDefault()

    if (this.hasUserValue && this.hasDomainValue) {
      const email = `${this.userValue}@${this.domainValue}`
      this.element.href = `mailto:${email}`
      this.element.textContent = email
    }

    if (this.hasPhoneValue) {
      this.element.href = `tel:${this.phoneValue}`
      this.element.textContent =
        this.phoneValue.replace(/(\d{2})(?=\d)/g, "$1 ")
    }
  }
}

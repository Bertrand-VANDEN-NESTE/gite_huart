import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {

    const emailUser = "lentredeuxpommes"
    const emailDomain = "gmail.com"
    const email = `${emailUser}@${emailDomain}`

    const phoneRaw = "+33677320728"
    const phoneDisplay = "+33 (0)6 77 32 07 28"

    // Footer
    const footerEmail = document.getElementById("footer-email")
    const footerPhone = document.getElementById("footer-phone")

    if (footerEmail) {
      footerEmail.href = `mailto:${email}`
      footerEmail.innerHTML += email
    }

    if (footerPhone) {
      footerPhone.href = `tel:${phoneRaw}`
      footerPhone.innerHTML += phoneDisplay
    }

    // Page contact
    const contactEmail = document.getElementById("contact-email")
    const contactPhone = document.getElementById("contact-phone")

    if (contactEmail) {
      contactEmail.href = `mailto:${email}`
      contactEmail.textContent = email
    }

    if (contactPhone) {
      contactPhone.href = `tel:${phoneRaw}`
      contactPhone.textContent = "06 77 32 07 28"
    }
  }
}

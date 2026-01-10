import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static values = {
    unavailableDates: Array
  }

  connect() {
    console.log("✅ calendar controller loaded")

    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
      disable: this.unavailableDatesValue || []
    })
  }
}

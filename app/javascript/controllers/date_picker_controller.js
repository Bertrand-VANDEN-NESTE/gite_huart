import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  static values = {
    unavailableDates: Array
  }

  connect() {
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      disable: this.unavailableDatesValue,
      dateFormat: "Y-m-d"
    })
  }
}

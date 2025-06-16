// app/javascript/controllers/calendar_controller.js
import { Controller } from "@hotwired/stimulus"
import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"
import interactionPlugin from "@fullcalendar/interaction"

export default class extends Controller {
  static values = { roomId: Number }

  connect() {
    const calendar = new Calendar(this.element, {
      plugins: [dayGridPlugin, interactionPlugin],
      initialView: 'dayGridMonth',
      selectable: true,
      events: `/rooms/${this.roomIdValue}/reservations.json`,
      select: (info) => {
        const title = prompt("Nom de la réservation :")
        if (title) {
          fetch(`/rooms/${this.roomIdValue}/reservations`, {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
              "X-CSRF-Token": document.querySelector("[name=csrf-token]").content
            },
            body: JSON.stringify({
              reservation: {
                title: title,
                start: info.startStr,
                end: info.endStr
              }
            })
          }).then(response => response.json())
            .then(event => {
              calendar.addEvent(event)
            })
        }
      }
    })

    calendar.render()
  }
}

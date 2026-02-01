import { Application } from "@hotwired/stimulus"

const application = Application.start()

// 🔑 OBLIGATOIRE pour debug + stabilité
window.Stimulus = application

export { application }

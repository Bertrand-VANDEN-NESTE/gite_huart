import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["track", "slide"]

  connect() {
    this.index = 0
    this.slidesPerView = 3
    this.resizeObserver = new ResizeObserver(() => this.update())
    this.resizeObserver.observe(this.trackTarget)
    this.update()
  }

  disconnect() {
    this.resizeObserver.disconnect()
  }

  next() {
    if (this.index < this.slideTargets.length - this.slidesPerView) {
      this.index++
      this.update()
    }
  }

  prev() {
    if (this.index > 0) {
      this.index--
      this.update()
    }
  }

  update() {
    if (this.slideTargets.length === 0) return

    const slideWidth = this.slideTargets[0].offsetWidth
    const offset = this.index * slideWidth
    this.trackTarget.style.transform = `translateX(-${offset}px)`
  }
}

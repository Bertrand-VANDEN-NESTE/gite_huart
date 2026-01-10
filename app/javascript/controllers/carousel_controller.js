import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["track"]

  connect() {
    console.log("✅ Stimulus Carousel connecté !");
    this.index = 0
    this.update()
    this.resizeObserver = new ResizeObserver(() => this.update())
    this.resizeObserver.observe(this.trackTarget)
  }

  disconnect() {
    this.resizeObserver.disconnect()
  }

  next() {
    this.index = (this.index + 1) % this.slideCount
    this.update()
  }

  prev() {
    this.index = (this.index - 1 + this.slideCount) % this.slideCount
    this.update()
  }

  update() {
    const offset = -this.index * this.trackTarget.clientWidth
    this.trackTarget.style.transform = `translateX(${offset}px)`
  }

  get slideCount() {
    return this.trackTarget.children.length
  }
}

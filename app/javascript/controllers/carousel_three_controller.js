import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["track"]

  connect() {
    this.index = 0
    this.slideWidth = this.trackTarget.children[0].offsetWidth + 20
  }

  next() {
    if (this.index < this.trackTarget.children.length - 1) {
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
    this.trackTarget.style.transform =
      `translateX(-${this.index * this.slideWidth}px)`
  }
}

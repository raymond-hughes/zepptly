import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["content"]

  connect() {
    this.close()
  }

  toggle() {
    if (this.contentTarget.classList.contains("hidden")) {
      this.open()
    }
    else {
      this.close()
    }
  }

  open() {
    console.log("open")
    this.contentTarget.classList.remove("hidden")
    this.contentTarget.classList.remove("transform")
    this.contentTarget.classList.remove("opacity-0")
    this.contentTarget.classList.remove("scale-95")
  }

  close() {
    console.log("close")
    this.contentTarget.classList.add("hidden")
    this.contentTarget.classList.add("transform")
    this.contentTarget.classList.add("opacity-100")
    this.contentTarget.classList.add("scale-100")
  }
}
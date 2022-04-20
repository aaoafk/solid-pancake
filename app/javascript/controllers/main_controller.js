import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="main"
export default class extends Controller {
  static targets=[ "script", "output" ];

  doEval() {
    this.outputTarget.textContent = `Yum! This cake evaluated to: ${eval(this.scriptTarget.value)}`
  }
}

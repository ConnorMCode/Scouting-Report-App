import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "item", "empty"]

  connect() {
    this.filter()
  }

  itemTargetConnected() {
    this.filter()
  }

  filter() {
    const query = this.inputTarget.value.trim().toLowerCase()
    let visibleCount = 0

    this.itemTargets.forEach((item) => {
      const name = (item.dataset.reportName || "").toLowerCase()
      const isVisible = name.includes(query)

      item.hidden = !isVisible
      if (isVisible) visibleCount += 1
    })

    this.emptyTarget.hidden = query.length === 0 || visibleCount > 0
  }
}

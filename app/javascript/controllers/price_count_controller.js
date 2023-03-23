import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="price-count"
export default class extends Controller {
  // connect() {
  //   console.log("coucou")
  // }

  static targets = ["start", "end"]

  totalPrice = (event) => {
    event.preventDefault();
    // Récupération éléments HTML dans la show-capsule & formatage adéquat
    const pricePerDayText = document.getElementById("price-per-day").innerText;
    const totalPriceElement = document.getElementById("total-price");
    const countPriceElement = document.getElementById("count-price");
    const titleServiceElement = document.getElementById("title-service");
    const servicePriceElement = document.getElementById("service-price");
    const titleElement = document.getElementById("title-price");
    console.log(titleElement)
    const pricePerDay = parseInt(pricePerDayText.replace(/[^0-9\.]/g, ''), 10);
    // appel de la méthode qui calcule la durée entre les deux dates
    const duration = this.dateDiffInDays();
    // Déclaration constante frais de service
    const servicePrice = 90
    // calcul du prix voyage & total
    const tripPrice = duration * pricePerDay;
    const totalPrice = tripPrice + servicePrice;
    // affichage
    countPriceElement.innerText = `${pricePerDay} € x ${duration} jours`;
    totalPriceElement.innerText = `${tripPrice} €`;
    titleServiceElement.innerText = `Frais de service`;
    servicePriceElement.innerText = `${servicePrice} €`;
    if (titleElement) {
      titleElement.innerHTML = ""
      titleElement.classList.remove("border-top");
      titleElement.classList.remove("border-white");
      titleElement.insertAdjacentHTML("beforeend", `<h5 class="mt-3" id="adjacent-title">Prix total pour ${duration} jours</h5>`);
      titleElement.insertAdjacentHTML("beforeend", `<h5 class="mt-3 id="adjacent-price">${totalPrice} €</h5>`);
      titleElement.classList.add("border-top");
      titleElement.classList.add("border-white");
    } else {
      titleElement.insertAdjacentHTML("beforeend", `<h5 class="mt-3">Prix total pour ${duration} jours</h5>`);
      titleElement.insertAdjacentHTML("beforeend", `<h5 class="mt-3">${totalPrice} €</h5>`);
      titleElement.classList.add("border-top");
      titleElement.classList.add("border-white");
    }
  }

  dateDiffInDays() {
    const _MS_PER_DAY = 1000 * 60 * 60 * 24;
    // récupération et formatage startDate
    const startDate = new Date(this.startTarget.value);
    // récupération et formatage endDate
    const endDate = new Date(this.endTarget.value);
    // Discard the time and time-zone information.
    const utc1 = Date.UTC(startDate.getFullYear(), startDate.getMonth(), startDate.getDate());
    const utc2 = Date.UTC(endDate.getFullYear(), endDate.getMonth(), endDate.getDate());

    return Math.floor((utc2 - utc1) / _MS_PER_DAY);
  }
}

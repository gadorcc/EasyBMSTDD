// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="weather"
// export default class extends Controller {
//   connect() {
//     console.log("hola weather")
//   }
//   static targets = [ "longitude", "latitude", "temperature", "humidity", "description"]
//   static values = {OPENWEATHER_API_KEY: String
//   }
//   fetchWeather(event){
//     event.preventDefault()
//     fetch(`https://api.openweathermap.org/data/2.5/weather?lat=${latitude}&lon=${longitude}&appid=${OPENWEATHER_API_KEY}`)
//     .then(response => response.json())
//     .then(data => this.#updateCard(data))
//   }

//   #updateCard(data) {
//     this.iconTarget.src = `https://openweathermap.org/img/w/${data.weather[0].icon}.png`
//     this.temperatureTarget.innerText = `${Math.round(data.main.temp)} °C`
//     this.descriptionTarget.innerText = data.weather[0].description
//     this.humidityTarget.innerText = `${data.main.humidity}%`
//   }
// }

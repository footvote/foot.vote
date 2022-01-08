<template>
  <div>
    <div id="map-wrap" style="height: 100vh">
      <client-only>
        <l-map ref="VoteMap" :zoom="this.zoom" :center="this.center">
          <l-tile-layer
            url="https://{s}.tile.osm.org/{z}/{x}/{y}.png"
            attribution='&copy; <a target="_blank" href="http://osm.org/copyright">OpenStreetMap</a> contributors'>
          </l-tile-layer>
          <l-marker v-for="slogan in slogans"
            :lat-lng="slogan.point.coordinates"
            :key="slogan.id" >
            <l-tooltip>{{ slogan.summary }}</l-tooltip>
            <l-popup>{{ slogan.details }}</l-popup>
          </l-marker>
        </l-map>
      </client-only>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      zoom: 5,
      center: [55.0229, 82.5604],
      slogans: [],
      error: null,
    };
  },
  mounted() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        (position) => {
          this.showLocationOnTheMap(
            position.coords.latitude,
            position.coords.longitude
          );
        },
        (error) => {
          this.error =
            "Locator is unable to find your address. Please type your address manually.";
          // console.log(error.message);
        }
      );
    } else {
      this.error = error.message;
      console.log("Your browser does not support geolocation API ");
    }

    navigator.geolocation.watchPosition(position => {
      var coordinates = position.coords
      this.showLocationOnTheMap(coordinates.latitude, coordinates.longitude)
    })

    axios
      .get(this.$config.apiURL)
      .then(response => {
        this.slogans = response.data
      })
  },
  methods: {
    showLocationOnTheMap(latitude, longitude) {
        this.zoom = 8
        this.center = [latitude, longitude]
    },
  }
}
</script>

<template>
  <div>
    <div id="map-wrap" style="height: 100vh; width: 100%;">
      <no-ssr>
        <l-map :zoom="5" :center="[57, 75]">
          <l-tile-layer
            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            attribution='&copy; <a target="_blank" href="http://osm.org/copyright">OpenStreetMap</a> contributors'>
          </l-tile-layer>
        </l-map>
      </no-ssr>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
  }
}
</script>

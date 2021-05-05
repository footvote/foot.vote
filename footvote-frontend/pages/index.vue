<template>
  <div>
    <div id="map-wrap" style="height: 100vh; width: 100%;">
      <no-ssr>
        <l-map :zoom="5" :center="[57, 75]">
          <l-tile-layer url="http://{s}.tile.osm.org/{z}/{x}/{y}.png"></l-tile-layer>
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

<style>
</style>

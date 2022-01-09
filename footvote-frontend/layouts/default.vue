<template>
  <div>
    <v-card
      height="100%"
      max-width="100%"
    >
      <v-responsive
        max-height="92%"
      >
        <v-responsive height="92%"><nuxt/></v-responsive>
      </v-responsive>
      <v-bottom-navigation
        absolute
        fixed
        horizontal
        dark
      >

        <v-btn
          color="deep-purple accent-4"
          text
        >
          <NuxtLink
            to="/"
            style="text-decoration: inherit; color: inherit;"
          >
            <v-icon>mdi-home</v-icon>
            <span>Home</span>
          </NuxtLink>
        </v-btn>


        <v-btn
          color="deep-purple accent-4"
          text
        >
          <span>Favorites</span>
          <v-icon>mdi-heart</v-icon>
        </v-btn>

        <v-btn
          color="deep-purple accent-4"
          text
        >
          <NuxtLink
            to="/nearby"
            style="text-decoration: none; color: inherit;"
          >
            <v-icon>mdi-map-marker</v-icon>
            <span>Nearby</span>
          </NuxtLink>
        </v-btn>

      </v-bottom-navigation>
    </v-card>
  </div>
</template>

<style>
html {
  font-family: "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
}
</style>

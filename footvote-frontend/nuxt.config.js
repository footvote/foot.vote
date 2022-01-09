module.exports = {
  target: 'static',
  /*
  ** Headers of the page
  */
  head: {
    title: 'Foot Vote – Выбирай самое важное ногами!',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: 'Vote with your feet!' },
      { name: 'msapplication-TileColor', content: '#da532c' },
      { name: 'theme-color', content: '#ffffff' },
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      { rel: 'apple-touch-icon', sizes: '180x180', href: '/apple-touch-icon.png' },
      { rel: 'icon', type: 'image/png', sizes: '32x32', href: '/favicon-32x32.png' },
      { rel: 'icon', type: 'image/png', sizes: '16x16', href: '/favicon-16x16.png' },
      { rel: 'manifest', href: '/site.webmanifest' },
      { rel: 'mask-icon', href: '/safari-pinned-tab.svg', color: '#5bbad5' },
      {
        rel: 'stylesheet',
        href:
          'https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons'
      }
    ]
  },
  /*
  ** Customize the progress bar color
  */
  loading: { color: '#3B8070' },
  /*
  ** Nuxt.js modules
  */
  buildModules: [
    ['nuxt-leaflet', { /* module options */ }],
    // ['@nuxt/components'],
    ['@nuxtjs/vuetify'],
  ],

  vuetify: {
    /* module options */
    theme: "dark",
    customVariables: ['~/assets/variables.scss'],
    font: { family: 'Roboto' },
    icons: 'mdi'
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [
    'vuetify/dist/vuetify.min.css',
  ],

  components: true,
  /*
  ** Build configuration
  */
  build: {
    /*
    ** Run ESLint on save
    */
    extend (config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  },
  publicRuntimeConfig: {
    apiURL: process.env.API_URL,
  },

  vuetify: {
    customVariables: ["~/assets/variables.scss"],
    theme: {
      dark: true,
    },
  },
}

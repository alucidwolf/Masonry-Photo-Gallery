<template>
  <v-app>
    <header>
      <div class="header-bg"></div>
      <h1>Slideshow Examples</h1>
    </header>
    <v-content>
      <v-container>
        <v-btn
          color="primary"
          @click="toggleTheme"
        >Toggle Theme</v-btn>
        <MasonryGallery />
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
import MasonryGallery from "./components/MasonryGallery";

export default {
  name: "App",
  components: {
    MasonryGallery
  },
  data() {
    return {
      darkTheme: false
    };
  },
  methods: {
    toggleTheme() {
      this.$vuetify.theme.dark = !this.darkTheme;
      this.darkTheme = !this.darkTheme;
    }
  }
};
</script>

<style lang="scss" scoped>
header {
  position: relative;
  height: 300px;

  h1 {
    position: relative;
  }
}

.header-bg {
  position: absolute;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: linear-gradient(#ff9d2f, #ff6126);
  transform: skewY(-6deg);
  transform-origin: top left;
}

@media (max-width: 699px) {
  .svg--lg {
    display: none;
  }
}

@media (min-width: 700px) {
  .svg--sm {
    display: none;
  }
}
</style>
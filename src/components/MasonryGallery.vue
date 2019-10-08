<template>
  <div class="container">
    <section class="section-1">
      <h2 class="heading-2">First Section</h2>
      <p class="title">Section Title</p>
      <p class="description">Section Description</p>
    </section>
    <section class="section-2">
      <masonry
        :cols="3"
        :gutter="30"
      >
        <v-card
          v-for="(card, index) in cards"
          :key="index"
          class="mx-auto mb-3"
        >
          <v-img
            class="white--text"
            :src="card.imageSource"
          >
            <v-card-title>I'm a title {{index}}</v-card-title>
          </v-img>
        </v-card>
      </masonry>
    </section>
    <section class="section-3">
      <h3>21 images</h3>
      <div class="grid">
        <div class="grid-sizer"></div>
        <div class="gutter-sizer"></div>
        <div
          v-for="(card, index) in cards"
          :key="index"
          class="grid-item"
          :class="{
          'grid-item--height2': card.doubleHeight,
          'grid-item--height3': card.tripleHeight,
          'grid-item--width2': card.doubleWidth,
          'grid-item--width3': card.tripleWidth
          }"
          :style="`background-image: url(${card.imageSource})`"
        >
        </div>
      </div>
    </section>
    <section class="section-4"></section>
  </div>
</template>

<script>
import ScrollReveal from "scrollreveal";
import Masonry from "masonry-layout";
import imagesLoaded from "imagesloaded";

export default {
  data() {
    return {
      lorem: `Lorem ipsum dolor sit amet, mel at clita quando. Te sit oratio vituperatoribus, nam ad ipsum posidonium mediocritatem, explicari dissentiunt cu mea. Repudiare disputationi vim in, mollis iriure nec cu, alienum argumentum ius ad. Pri eu justo aeque torquatos.`,
      cards: [
        {
          imageSource: "https://picsum.photos/1920/1024?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1023?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: true,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1022?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1021?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1020?random=1",
          doubleHeight: false,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: true
        },
        {
          imageSource: "https://picsum.photos/1920/1025?random=1",
          doubleHeight: false,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1026?random=1",
          doubleHeight: false,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1027?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1028?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: true,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1029?random=1",
          doubleHeight: false,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1019?random=1",
          doubleHeight: false,
          tripleHeight: true,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1018?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1017?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: true,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1016?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: true,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1015?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1014?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1013?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1012?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1011?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1010?random=1",
          doubleHeight: true,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        },
        {
          imageSource: "https://picsum.photos/1920/1009?random=1",
          doubleHeight: false,
          tripleHeight: false,
          doubleWidth: false,
          tripleWidth: false
        }
      ]
    };
  },
  mounted() {
    ScrollReveal().reveal(".section-1 .heading-2", {
      delay: 200,
      distance: "10px"
    });
    ScrollReveal().reveal(".section-1 .title", {
      delay: 300,
      distance: "10px"
    });
    ScrollReveal().reveal(".section-1 .description", {
      delay: 400,
      distance: "10px"
    });
    ScrollReveal().reveal(".section-2");
    ScrollReveal().reveal(".section-3");
    ScrollReveal().reveal(".section-4");

    const grid = document.querySelector(".grid");
    const msnry = new Masonry(grid, {
      itemSelector: ".grid-item",
      columnWidth: ".grid-sizer",
      percentPosition: true
    });

    imagesLoaded(grid).on("progress", () => {
      msnry.layout();
    });
  }
};
</script>

<style lang="scss">
.grid {
  background: #ddd;
}

/* clear fix */
.grid:after {
  content: "";
  display: block;
  clear: both;
}

/* ---- grid-item ---- */
.grid-sizer,
.grid-item {
  width: 20%;
}
.grid-item {
  height: 100px;
  float: left;
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;

  img {
    display: block;
    max-width: 100%;
  }
}
.grid-item--width2 {
  width: 40%;
}
.grid-item--width3 {
  width: 60%;
}
.grid-item--height2 {
  height: 200px;
}
.grid-item--height3 {
  height: 300px;
}
.grid-item--height4 {
  height: 400px;
}
</style>
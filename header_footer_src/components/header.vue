<template>
  <header class="pv-universal__header">
    <!-- first row -->
    <section class="pv-universal__header-first">
      <div class="pv-universal__header-menu">
        <div class="pv-universal__desktop desktop1">
          <div class="pv-universal__header-links header-links1">
            <div class="pv-universal__link-text link-text1">
              About
            </div>
            <div class="pv-universal__link-menu link-menu1">
              <a href="">What Is PatentsView</a>
              <a href="">Glossary</a>
              <a href="">Terms of Use and Privacy</a>
            </div>
          </div>
          <div class="pv-universal__header-links header-links1">
            <div class="pv-universal__link-text link-text1">
              Methods & Srouces
            </div>
            <div class="pv-universal__link-menu link-menu1">
              <a href="">Disambiguition</a>
              <a href="">Gender Attributes</a>
              <a href="">Government Interests</a>
            </div>
          </div>
          <div class="pv-universal__header-links header-links1">
            <div class="pv-universal__link-text link-text1">
              Community
            </div>
            <div class="pv-universal__link-menu link-menu1">
              <a href="">Welcome</a>
              <a href="" class="pv-universal__secondary-link"
                >Rules of Conduct</a
              >
              <a href="" class="pv-universal__secondary-link"
                >Events and Workshops</a
              >
              <a href="" class="pv-universal__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
        </div>
        <div class="pv-universal__mobile">
          <div class="pv-universal__bars">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
    </section>
    <!-- second row -->
    <section class="pv-universal__header-second">
      <div class="pv-universal__header-menu">
        <a href="">
          <div class="pv-universal__logo">
            <img :src="pv_logo" alt="Logo: USPTO PatentsView" />
          </div>
        </a>
        <div class="pv-universal__desktop desktop2">
          <div class="pv-universal__header-links header-links2">
            <div class="pv-universal__link-text link-text2">
              DATA VISUALIZATION
            </div>
            <div class="pv-universal__link-menu link-menu2">
              <a href="">What Is PatentsView</a>
              <a href="">Glossary</a>
              <a href="">Terms of Use and Privacy</a>
            </div>
          </div>
          <div class="pv-universal__header-links header-links2">
            <div class="pv-universal__link-text link-text2">
              EXPLORE PATENTS DATA
            </div>
            <div class="pv-universal__link-menu link-menu2">
              <a href="">Disambiguition</a>
              <a href="">Gender Attributes</a>
              <a href="">Government Interests</a>
            </div>
          </div>
          <div class="pv-universal__header-links header-links2">
            <div class="pv-universal__link-text link-text2">
              DATASETS
            </div>
            <div class="pv-universal__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pv-universal__secondary-link"
                >Rules of Conduct</a
              >
              <a href="" class="pv-universal__secondary-link"
                >Events and Workshops</a
              >
              <a href="" class="pv-universal__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
          <div class="pv-universal__header-links header-links2">
            <div class="pv-universal__link-text link-text2">
              APIs
            </div>
            <div class="pv-universal__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pv-universal__secondary-link"
                >Rules of Conduct</a
              >
              <a href="" class="pv-universal__secondary-link"
                >Events and Workshops</a
              >
              <a href="" class="pv-universal__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
        </div>
        <div class="pv-universal__mobile">
          <div class="pv-universal__bars">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
    </section>
  </header>
</template>

<script>
import pv_logo from "../img/pv-header-logo.png";

export default {
  name: "PVHeader",
  data() {
    return {
      pv_logo: null,
    };
  },
  mounted() {
    this.pv_logo = pv_logo;
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap");

.pv-universal__header * {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.pv-universal__header {
  position: sticky;
  position: -webkit-sticky;
  top: -45px;
}

.pv-universal__header .pv-universal__header-first {
  background-color: #d0dded;
}

.pv-universal__header .pv-universal__header-menu {
  max-width: 960px;
  padding: 0 30px;
  margin: 0 auto;
}

.pv-universal__header-first .pv-universal__header-menu {
  height: 45px;
}

.pv-universal__header .pv-universal__header-second {
  background-color: #4f5f6f;
}

.pv-universal__header-second .pv-universal__header-menu {
  height: 70px;
}

.pv-universal__logo {
  float: left;
  height: 100%;
  display: flex;
  align-items: center;
}
.pv-universal__logo img {
  max-width: 221px;
}

.pv-universal__desktop {
  float: right;
  display: flex;
  height: 100%;
  width: 100%;
  justify-content: space-between;
  align-items: center;
}
@media (max-width: 475px) {
  .pv-universal__desktop {
    display: none;
  }
}
.desktop1 {
  max-width: 380px;
}
.desktop2 {
  max-width: 600px;
}

.pv-universal__header-links {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  height: 100%;
  line-height: 24px;
  font-size: 14px;
  font-family: "Open Sans", sans-serif;
  cursor: default;
}
.header-links1 {
  color: #7c8c9f;
}
.header-links2 {
  color: #f1d673;
}

.pv-universal__link-text {
  padding: 0 20px;
}

.pv-universal__link-menu {
  display: none;
  position: absolute;
  right: 0;
  left: auto;
  padding: 10px 0;
}
.link-menu1 {
  top: 45px;
  background-color: black;
}
.link-menu1 a {
  color: white;
}
.link-menu2 {
  top: 70px;
  background-color: #f5e095;
}
.link-menu2 a {
  color: #444444;
}

.pv-universal__link-menu a {
  padding: 0 20px;
  line-height: 35px;
  display: block;
  text-decoration: none;
  white-space: nowrap;
}
.link-menu1 a:hover {
  background-color: #444444;
}
.link-menu2 a:hover {
  background-color: #f1d673;
}
a.pv-universal__secondary-link {
  padding-left: 40px;
}

.pv-universal__header-links:hover .pv-universal__link-text {
  height: 100%;
  display: flex;
  align-items: center;
}
.pv-universal__header-links:hover .link-text1 {
  background-color: black;
  color: white;
}
.pv-universal__header-links:hover .link-text2 {
  background-color: #f5e095;
  color: black;
}

.pv-universal__header-links:hover .pv-universal__link-menu {
  display: block;
  z-index: 1;
}

.pv-universal__bars span {
  background-color: #4f5f6f;
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
  display: block;
}

.pv-universal__bars span:not(:first-child) {
  margin-top: 4px;
}

.pv-universal__mobile {
  display: none;
  height: 100%;
  float: right;
  align-items: center;
  cursor: pointer;
}
@media (max-width: 475px) {
  .pv-universal__mobile {
    display: flex;
  }
}
</style>

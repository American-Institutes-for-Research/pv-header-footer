<template>
  <header class="pvu__header">
    <!-- first row -->
    <section class="pvu__header-first">
      <div class="pvu__header-menu">
        <div class="pvu__desktop desktop1">
          <div class="pvu__header-links header-links1">
            <div class="pvu__link-text link-text1">
              About
            </div>
            <div class="pvu__link-menu link-menu1">
              <a href="">What Is PatentsView</a>
              <a href="">Glossary</a>
              <a href="">Terms of Use and Privacy</a>
            </div>
          </div>
          <div class="pvu__header-links header-links1">
            <div class="pvu__link-text link-text1">
              Methods & Srouces
            </div>
            <div class="pvu__link-menu link-menu1">
              <a href="">Disambiguition</a>
              <a href="">Gender Attributes</a>
              <a href="">Government Interests</a>
            </div>
          </div>
          <div class="pvu__header-links header-links1">
            <div class="pvu__link-text link-text1">
              Community
            </div>
            <div class="pvu__link-menu link-menu1">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
        </div>
        <div class="pvu__mobile mobile1">
          <div class="pvu__bars">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
    </section>
    <!-- second row -->
    <section class="pvu__header-second">
      <div
        class="pvu__header-menu"
        :class="this.scrollPosY > 45 ? 'longer-second-row' : null"
      >
        <a href="">
          <div class="pvu__logo">
            <img :src="pv_logo" alt="Logo: USPTO PatentsView" />
          </div>
        </a>
        <div class="pvu__desktop desktop2">
          <div class="pvu__header-links header-links2">
            <div class="pvu__link-text link-text2">
              DATA VISUALIZATION
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">What Is PatentsView</a>
              <a href="">Glossary</a>
              <a href="">Terms of Use and Privacy</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2">
            <div class="pvu__link-text link-text2">
              EXPLORE PATENTS DATA
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Disambiguition</a>
              <a href="">Gender Attributes</a>
              <a href="">Government Interests</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2">
            <div class="pvu__link-text link-text2">
              DATASETS
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2">
            <div class="pvu__link-text link-text2">
              APIs
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2 secondary-links">
            <div class="pvu__link-text link-text2">
              ABOUT
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2 secondary-links">
            <div class="pvu__link-text link-text2">
              METHODS & SOURCES
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
          <div class="pvu__header-links header-links2 secondary-links">
            <div class="pvu__link-text link-text2">
              COMMUNITY
            </div>
            <div class="pvu__link-menu link-menu2">
              <a href="">Welcome</a>
              <a href="" class="pvu__secondary-link">Rules of Conduct</a>
              <a href="" class="pvu__secondary-link">Events and Workshops</a>
              <a href="" class="pvu__secondary-link">Contact Us</a>
              <a href="">Forum</a>
              <a href="">Data Spotlight</a>
            </div>
          </div>
        </div>
        <div class="pvu__mobile mobile2">
          <div class="pvu__bars">
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
      scrollPosY: 0,
    };
  },
  mounted() {
    this.pv_logo = pv_logo;
    window.addEventListener("scroll", () => {
      this.scrollPosY = window.scrollY;
    });
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap");

.pvu__header * {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.pvu__header {
  position: sticky;
  position: -webkit-sticky;
  top: -45px;
}

.pvu__header .pvu__header-first {
  background-color: #d0dded;
}

.pvu__header .pvu__header-menu {
  max-width: 960px;
  padding: 0 30px;
  margin: 0 auto;
}

.pvu__header-first .pvu__header-menu {
  height: 45px;
}

.pvu__header .pvu__header-second {
  background-color: #4f5f6f;
}

.pvu__header-second .pvu__header-menu {
  height: 70px;
}

.pvu__logo {
  float: left;
  height: 100%;
  display: flex;
  align-items: center;
}
.pvu__logo img {
  max-width: 221px;
  animation-duration: 200ms;
  animation-name: shrink-back;
}
.longer-second-row .pvu__logo img {
  max-width: 120px;
  animation-duration: 200ms;
  animation-name: shrink;
}
@keyframes shrink {
  from {
    max-width: 221px;
  }
  to {
    max-width: 120px;
  }
}
@keyframes shrink-back {
  from {
    max-width: 120px;
  }
  to {
    max-width: 221px;
  }
}

.pvu__desktop {
  float: right;
  display: flex;
  height: 100%;
  width: 100%;
  justify-content: space-between;
  align-items: center;
}
@media (max-width: 475px) {
  .desktop1 {
    display: none;
  }
}
.desktop1 {
  max-width: 380px;
}
@media (max-width: 930px) {
  .desktop2 {
    display: none;
  }
}
.desktop2 {
  max-width: 600px;
  animation-duration: 200ms;
  animation-name: expand-back;
}
.longer-second-row .desktop2 {
  max-width: 750px;
  animation-duration: 200ms;
  animation-name: expand;
}
@keyframes expand {
  from {
    max-width: 600px;
  }
  to {
    max-width: 750px;
  }
}
@keyframes expand-back {
  from {
    max-width: 750px;
  }
  to {
    max-width: 600px;
  }
}

.pvu__header-links {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  height: 100%;
  line-height: 24px;
  font-size: 14px;
  font-family: "Open Sans", sans-serif;
  cursor: default;
  animation-duration: 200ms;
  animation-name: shrink-font-back;
}
.header-links1 {
  color: #7c8c9f;
}
.header-links2 {
  color: #f1d673;
}
.longer-second-row .pvu__header-links {
  font-size: 12px;
  animation-duration: 200ms;
  animation-name: shrink-font;
}
@keyframes shrink-font {
  from {
    font-size: 14px;
  }
  to {
    font-size: 12px;
  }
}
@keyframes shrink-font-back {
  from {
    font-size: 12px;
  }
  to {
    font-size: 14px;
  }
}

.secondary-links {
  display: none;
  animation-duration: 200ms;
}
.longer-second-row .secondary-links {
  display: flex;
  animation-duration: 200ms;
  animation-name: shift;
}
@keyframes shift {
  from {
    transform: translateX(-150px);
    display: none;
  }
  to {
    transform: translateX(0);
    display: flex;
  }
}

.pvu__link-text {
  padding: 0 20px;
}
.longer-second-row .pvu__link-text {
  padding: 0 10px;
}

.pvu__link-menu {
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

.pvu__link-menu a {
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
a.pvu__secondary-link {
  padding-left: 40px;
}

.pvu__header-links:hover .pvu__link-text {
  height: 100%;
  display: flex;
  align-items: center;
}
.pvu__header-links:hover .link-text1 {
  background-color: black;
  color: white;
}
.pvu__header-links:hover .link-text2 {
  background-color: #f5e095;
  color: black;
}

.pvu__header-links:hover .pvu__link-menu {
  display: block;
  z-index: 1;
}

.pvu__bars span {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
  display: block;
}
.mobile1 .pvu__bars span {
  background-color: #4f5f6f;
}
.mobile2 .pvu__bars span {
  background-color: white;
}

.pvu__bars span:not(:first-child) {
  margin-top: 4px;
}

.pvu__mobile {
  display: none;
  height: 100%;
  float: right;
  align-items: center;
  cursor: pointer;
}
@media (max-width: 475px) {
  .mobile1 {
    display: flex;
  }
}
@media (max-width: 930px) {
  .mobile2 {
    display: flex;
  }
}
</style>

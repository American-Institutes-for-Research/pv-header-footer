<template>
  <header class="pv-universal__header">
    <section class="pv-universal__header-first">
      <div class="pv-universal__header-menu">
        <div class="pv-universal__desktop">
          <div class="pv-universal__header-links">
            <div class="pv-universal__link-text">
              About
            </div>
            <div class="pv-universal__link-menu">
              <a href="">What Is PatentsView</a>
              <a href="">Glossary</a>
              <a href="">Terms of Use and Privacy</a>
            </div>
          </div>
          <div class="pv-universal__header-links">
            <div class="pv-universal__link-text">
              Methods & Srouces
            </div>
            <div class="pv-universal__link-menu">
              <a href="">Disambiguition</a>
              <a href="">Gender Attributes</a>
              <a href="">Government Interests</a>
            </div>
          </div>
          <div class="pv-universal__header-links">
            <div class="pv-universal__link-text">
              Community
            </div>
            <div class="pv-universal__link-menu">
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
    <section class="pv-universal__header-second">
      <div class="pv-universal__header-menu"></div>
    </section>
  </header>
</template>

<script>
export default {
  name: "PVHeader",
  mounted() {},
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
  padding: 0 15px;
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

.pv-universal__desktop {
  float: right;
  display: flex;
  height: 100%;
  width: 100%;
  max-width: 300px;
  justify-content: space-between;
  align-items: center;
}
@media (max-width: 475px) {
  .pv-universal__desktop {
    display: none;
  }
}

.pv-universal__header-links {
  display: inline-block;
  line-height: 24px;
  font-size: 14px;
  font-family: "Open Sans", sans-serif;
  color: #7c8c9f;
  position: relative;
  cursor: default;
}

.pv-universal__link-text {
  padding: 10px 5px;
}

.pv-universal__link-menu {
  background-color: black;
  display: none;
  position: absolute;
  right: 0;
  left: auto;
  padding: 10px 0;
}

.pv-universal__link-menu a {
  padding: 0 20px;
  line-height: 35px;
  display: block;
  color: white;
  text-decoration: none;
  white-space: nowrap;
}
.pv-universal__link-menu a:hover {
  background-color: #444444;
}
a.pv-universal__secondary-link {
  padding-left: 40px;
}

.pv-universal__header-links:hover .pv-universal__link-text {
  background-color: black;
  color: white;
}

.pv-universal__header-links:hover .pv-universal__link-menu {
  display: block;
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

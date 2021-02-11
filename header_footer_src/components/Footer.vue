<template>
  <div class="pvu__footer">
    <div class="pvu__footer-main">
      <div class="pvu__footer-col pvu__footer-left">
        <div class="pvu__footer-logos">
          <img
            :src="uspto_logo"
            alt="logo of the united states patent and trademark office"
          />
          <img :src="cc_logo" alt="logo of creative commons" />
        </div>
        <p>@2021 PatentsView All Rights Reserved</p>
      </div>
      <div class="pvu__footer-col pvu__footer-right">
        <div>
          <p>Contact Us</p>
          <a :href="communityBaseUrl + '/forum'">Community Forum</a>
          <a :href="communityBaseUrl + '/email'">Email Us</a>
          <a :href="communityBaseUrl + '/newsletter'">Join our Newsletter</a>
        </div>
        <div>
          <p>Terms of Use</p>
          <a :href="communityBaseUrl + '/terms'">Terms & Services</a>
          <a :href="communityBaseUrl + '/rules'">Community Rules of Conduct</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import cc_logo from "../img/cc.logo.png";
import uspto_logo from "../img/uspto-logo.png";
import baseUrl from "../baseUrl.js";

export default {
  data() {
    return {
      cc_logo,
      uspto_logo,
      pvBaseUrl: baseUrl(window.location.hostname).pv,
      communityBaseUrl: baseUrl(window.location.hostname).community,
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap");

.pvu__footer * {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-family: "Open Sans", sans-serif;
}

.pvu__footer {
  background-color: #4f5f6f;
  z-index: 999;
}

.pvu__footer-main {
  margin: auto;
  max-width: 930px;
  padding: 30px;
  display: flex;
  box-sizing: content-box;
}

/* .pvu__footer-col {
  width: 50%;
} */

.pvu__footer-left {
  padding-right: 20px;
  border-right: 1px solid #fff;
  padding: 0 30px 0 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

@media (max-width: 865px) {
  .pvu__footer-main {
    display: block;
  }

  .pvu__footer-left {
    border-right: none;
  }
}

.pvu__footer-right {
  flex: 1;
  padding: 0 0 0 15px;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}

.pvu__footer-right div {
  display: flex;
  align-items: center;
}

.pvu__footer-right p {
  font-size: 20px;
  line-height: 22px;
  color: #f0d569;
  font-style: unset;
  font-weight: normal;
}

.pvu__footer-right a {
  display: block;
  font-size: 14px;
  line-height: 22px;
  color: #fffff0;
  border-left: 1px solid white;
  padding-left: 15px;
  margin-left: 15px;
  text-decoration: none;
}
.pvu__footer-right a:first-of-type {
  border-left: none;
}

@media (max-width: 685px) {
  .pvu__footer-right div {
    display: block;
  }
  .pvu__footer-right a {
    margin-left: 0;
  }
}

.pvu__footer-right a:hover {
  text-decoration: underline;
}

.pvu__footer-logos img {
  display: block;
  max-width: 115px;
}

@media (max-width: 550px) {
  .pvu__footer-main {
    display: block;
  }

  .pvu__footer-left {
    margin-bottom: 20px;
    padding-right: unset;
  }

  .pvu__footer-col {
    width: unset;
  }
}

.pvu__footer-left a {
  line-height: 24px;
  font-size: 14px;
  color: #f1d673;
  text-decoration: none;
  display: block;
  font-weight: 600;
}

.pvu__footer-left a:hover {
  text-decoration: underline;
}

.pvu__footer-left p {
  color: white;
  margin-top: 15px;
  font-size: 13px;
  line-height: 24px;
  font-style: unset;
  font-weight: normal;
}

.pvu__footer-logos {
  display: flex;
  align-items: center;
}

.pvu__footer-logos img {
  display: inline-block;
}

.pvu__footer-logos img:first-child {
  margin-right: 20px;
}

.pvu__email-form {
  background-color: #687784;
  width: 100%;
  padding: 25px;
  box-sizing: border-box;
}

.pvu__email-form p {
  margin: 0 0 15px 0;
  color: #f1d673;
  font-size: 14px;
  font-weight: 600;
}

.pvu__email-form input {
  padding: 8px 0 8px 15px;
  width: 90%;
  border: none;
}

.pvu__email-form button {
  border-radius: 0;
  border: none;
  padding: 7px 40px;
  background-color: black;
  color: white;
  font-size: 16px;
  cursor: pointer;
  margin-top: 20px;
  font-weight: 600;
}
</style>

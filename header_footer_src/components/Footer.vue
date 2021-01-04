<template>
  <div class="pvu__footer">
    <div class="pvu__footer-main">
      <div class="pvu__footer-col pvu__footer-left">
        <a :href="communityBaseUrl + '/what-is-patentsview'"
          >THIS INITIATIVE ></a
        >
        <p>
          This platform uses data derived from the US Patent and Trademark
          Office (USPTO) bulk data files. These data are provided for research
          purposes and do not constitute the official USPTO record...
        </p>
        <a :href="communityBaseUrl + '/rules-of-conduct'">TERMS & SERVICES ></a>
        <p>
          Users are free to use, share, or adapt the material for any purpose,
          subject to the standards of the Creative Commons Attribution 4.0
          International License...
        </p>
        <div class="pvu__footer-logos">
          <a href="https://www.uspto.gov/" target="_blank"
            ><img :src="uspto_logo" alt="logo of USPTO"
          /></a>
          <a href="https://creativecommons.org/" target="_blank"
            ><img :src="cc_logo" alt="logo of Creative Commons"
          /></a>
        </div>
      </div>
      <div class="pvu__footer-col pvu__footer-right">
        <form class="pvu__email-form">
          <p>Join our mailing list to get the latest updates</p>
          <input type="text" placeholder="Email" />
          <button>Join</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import cc_logo from "../img/creative-commons.png";
import uspto_logo from "../img/uspto.png";
import baseUrl from "../baseUrl.js";

export default {
  data() {
    return {
      cc_logo,
      uspto_logo,
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
  max-width: 960px;
  padding: 35px 30px;
  display: flex;
}

.pvu__footer-col {
  width: 50%;
}

.pvu__footer-left {
  padding-right: 20px;
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
  margin-top: 0;
  font-size: 14px;
  line-height: 24px;
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

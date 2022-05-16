import Vue from "vue";

import Header from "./components/Header.vue";
const header = document.createElement("div");
document.body.prepend(header);
new Vue({
  el: header,
  render: (h) => h(Header),
});

import Footer from "./components/Footer.vue";
const footer = document.createElement("div");
document.body.append(footer);
new Vue({
  el: footer,
  render: (h) => h(Footer),
});

// temporary notification banner
// import SSHNotif from './components/SSHNotif.vue'
// const sshNotif = document.createElement("div")
// document.body.append(sshNotif)
// new Vue({
//     el: sshNotif,
//     render: h => h(SSHNotif)
// })

// GA scripts
var GAScript = document.createElement("script");
GAScript.src = "https://www.googletagmanager.com/gtag/js?id=G-K4PTTLH074";
document.head.appendChild(GAScript);
var GACode = document.createElement("script");
GACode.innerHTML = /*html*/ `
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-K4PTTLH074');
`;
document.head.appendChild(GACode);

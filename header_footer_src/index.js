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

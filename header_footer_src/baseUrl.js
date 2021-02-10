export default function baseUrl(hostname) {
  if (hostname === "www.patentsview.org") {
    return {
      community: "https://community.patentsview.org",
      pv: "https://www.patentsview.org",
    };
  } else {
    return {
      community: "https://patentsviewcommunity.int.air.org",
      pv: "https://dev.patentsview.org",
    };
  }
}

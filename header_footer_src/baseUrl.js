export default function baseUrl(hostname) {
  if (
    hostname === "patentsviewcommunity.int.air.org" ||
    hostname === "dev.patentsview.org"
  ) {
    return {
      community: "https://patentsviewcommunity.int.air.org",
      pv: "https://dev.patentsview.org",
    };
  } else if (
    hostname === "community.patentsview.org" ||
    hostname === "www.patentsview.org"
  ) {
    return {
      community: "https://community.patentsview.org",
      pv: "https://www.patentsview.org",
    };
  } else {
    const arr = window.location.href.split("/");
    const url = arr[0] + "//" + arr[2];
    return {
      community: url,
      pv: url,
    };
  }
}

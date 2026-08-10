function addListenerMulti(element, eventNames, listener) {
  const events = eventNames.split(" ")
  for (let i = 0, iLen = events.length; i < iLen; i++) {
    element.addEventListener(events[i], listener, false)
  }
}

function isOwnDomain(hostname) {
  return hostname === "dergigi.com" || hostname.endsWith(".dergigi.com")
}

function isTrustedExternal(hostname) {
  const trusted = [
    "njump.to",
    "nostrudel.ninja",
    "primal.net",
    "snort.social",
    "iris.to",
    "coracle.social",
  ]

  return trusted.some(
    (domain) => hostname === domain || hostname.endsWith(`.${domain}`)
  )
}

addListenerMulti(document, "DOMContentLoaded DOMContentSwitch", (event) => {
  const links = document.querySelectorAll("body a")
  for (let i = 0, length = links.length; i < length; i++) {
    const link = links[i]
    const hostname = link.hostname

    if (
      hostname === window.location.hostname ||
      hostname === "" ||
      link.classList.contains("md-icon") ||
      link.classList.contains("download-button") ||
      isOwnDomain(hostname)
    ) {
      continue
    }

    link.target = "_blank"
    link.rel = "noopener"

    // Icons only for true foreigners; trusted nostr clients stay quiet.
    if (!isTrustedExternal(hostname)) {
      link.classList.add("external")
    }
  }
})

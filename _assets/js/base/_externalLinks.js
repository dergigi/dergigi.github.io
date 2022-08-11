function addListenerMulti(element, eventNames, listener) {
  const events = eventNames.split(" ")
  for (let i = 0, iLen = events.length; i < iLen; i++) {
    element.addEventListener(events[i], listener, false)
  }
}

addListenerMulti(document, "DOMContentLoaded DOMContentSwitch", (event) => {
  // Add an icon to all external links
  const links = document.querySelectorAll("body a")
  for (let i = 0, length = links.length; i < length; i++) {
    if (
      links[i].hostname !== window.location.hostname &&
      links[i].hostname !== "" &&
      links[i].classList.contains("md-icon") !== true &&
      links[i].classList.contains("download-button") !== true
    ) {
      links[i].target = "_blank"
      links[i].classList.add("external")
      links[i].rel = "noopener"
    }
  }
})

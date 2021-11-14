import consumer from "./consumer"

consumer.subscriptions.create({ channel: "ResourceStateChangeChannel" }, {
  received(data) {
    let tag = document.querySelectorAll(`#resource_state_${data.id} .tag`)[0]
    if(data.available) {
      tag.classList.remove("is-danger")
      tag.classList.add("is-success")
      tag.textContent = "available"
    } else {
      tag.classList.remove("is-success")
      tag.classList.add("is-danger")
      tag.textContent = "unavailable"
    }
  },
  initialized() {
    console.log("initialized")
  },
  connected() {
    console.log("connected")
  },
  disconnected() {
    console.log("disconnected")
  },
  rejected() {
    console.log("rejected")
  },
  call_server_method() {
    this.perform("one")
  }
})

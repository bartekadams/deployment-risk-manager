import consumer from "./consumer"

consumer.subscriptions.create({ channel: "ResourceStateChangeChannel", room: "Best Room" }, {
  received(data) {
    console.log(data)
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

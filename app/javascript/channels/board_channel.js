import consumer from "./consumer"

consumer.subscriptions.create("BoardChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to board channel");
  },

  disconnected() {
    console.log("Disconnected from board channel");
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Received data from board channel");
    document.getElementById("miniatures").innerHTML = "";
    data.forEach(function(item, index, array) {
      var abscissa = item.abscissa * 2.37;
      var ordinate = item.ordinate * 2.37;
      document.getElementById("miniatures").innerHTML += ('<p class="miniature character_medium" style="left: ' + abscissa.toString() + "rem; top: " + ordinate.toString() + 'rem">·' + item.icon + "</p>");
    })
  }
});
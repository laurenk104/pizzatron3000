"use strict";
(function() {
  window.addEventListener("load", init);

  function init() {
    // svg initialization
    makeBackground();

    // gameplay
  }

  // Initializes the background of the restaurant
  function makeBackground() {
    let bg_width = 769.15;
    let bg_height = 258.30;
    let door_width = 62.40;
    let door_start_horiz = (bg_width/2) + 43;
    let door_padding = 4;
    let door_start_vert = (bg_height/2) + 14;

    let parent = document.getElementById("background");

    for (let i = 0; i < 4; i++) {
      let door = document.createElement("img");
      door.src = "resources/shapes/566.svg";
      door.style.width = `${door_width / bg_width * 100}%`;
      door.style.left = `${(door_start_horiz + (door_width+door_padding)*i) / bg_width * 100}%`;
      door.classList.add("doors");
      if (i % 2 === 1) {
        door.classList.add("flip");
      }
      parent.appendChild(door);
      door.style.top = `${door_start_vert / bg_height * 100}%`;
    }
  }

})();
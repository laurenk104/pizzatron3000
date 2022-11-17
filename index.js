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
    let parent = document.getElementById("background");

    for (let i = 0; i < 4; i++) {
      let door = document.createElement("img");
      door.src = "resources/shapes/566.svg";
      door.style.width = `${6240 / 769.15}%`;
      door.style.left = `${(385 + 43 + 68*i) / 769.15 * 100}%`;
      door.classList.add("doors");
      if (i % 2 === 1) {
        door.classList.add("flip");
      }
      parent.appendChild(door);
      door.style.top = `${143.2 / 258.3 * 100}%`;
    }
  }

})();
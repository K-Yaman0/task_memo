function pullDown() {
  const pullDownButtons = document.querySelectorAll("#pull-down-lists");
  const pullDowns = document.querySelectorAll(".hidden");

  pullDownButtons.forEach(function(button, index) {
    button.addEventListener('click', function() {
      const currentPullDown = pullDowns[index];
      if (currentPullDown.style.display === "block") {
        currentPullDown.style.display = "none";
      } else {
        pullDowns.forEach(function(pullDown) {
          pullDown.style.display = "none";
        });
        currentPullDown.style.display = "block";
      }
    });
  });
}

window.addEventListener('turbo:load', pullDown);
function pullDown() {
  const pullDownButtons = document.querySelectorAll("#pull-down-lists");
  const pullDowns = document.querySelectorAll(".hidden");
  const showPullDowns = document.querySelectorAll(".memo-hidden");

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

    button.addEventListener('click', function() {
      const currentPullDown = showPullDowns[index];
      if (currentPullDown.style.display === "block") {
        currentPullDown.style.display = "none";
      } else {
        showPullDowns.forEach(function(pullDown) {
          pullDown.style.display = "none";
        });
        currentPullDown.style.display = "block";
      }
    });
  });

  window.addEventListener('click', function(event) {
    const clickedElement = event.target;
    if (!Array.from(pullDownButtons).includes(clickedElement))  {
      pullDowns.forEach(function(pullDown) {
        pullDown.style.display = "none";
      });

      showPullDowns.forEach(function(pullDown) {
        pullDown.style.display = "none";
      });
    }
  });
}

window.addEventListener('turbo:load', pullDown);
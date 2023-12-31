function showPullDown() {
  const showPullDownButtons = document.querySelectorAll("#memo-pull-down-lists");
  const showPullDowns = document.querySelectorAll(".memo-hidden");

  showPullDownButtons.forEach(function(button, index) {
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
}

window.addEventListener('turbo:load', showPullDown);
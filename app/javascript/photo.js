import $ from 'jquery'

document.addEventListener("turbo:load", function(event) {
  // Get the modal
  let modal = document.getElementById('myModal')
  let modalImg = document.getElementById("img01")
  let captionText = document.getElementById("caption")

  $(".origami-Img").click(function() {
      modal.style.display = "block"
      modalImg.src = this.src
      captionText.innerHTML = this.alt
  })

  // Get the <span> element that closes the modal
  let span = document.getElementsByClassName("pic-close")[0]

  // When the user clicks on <span> (x), close the modal
  span.onclick = function() { 
    modal.style.display = "none"
  }
});
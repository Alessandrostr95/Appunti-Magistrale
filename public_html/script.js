window.onload = function() {
  const coll = document.querySelectorAll(".tree .tree-node");
  for (let i = 0; i < coll.length; i++) {
    let u = coll[i].parentElement.querySelector("ul");
    if (u) {
      coll[i].addEventListener("click", function() {
        u.classList.toggle("hidden");
      });
    }
  }
}

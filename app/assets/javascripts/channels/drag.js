function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("tile", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("tile");
    var nodeCopy = document.getElementById(data).cloneNode(true);
      nodeCopy.id = "newId";
      ev.target.src = "http://www.clipartkid.com/images/386/old-map-stock-vector-clipart-map-of-world-drawn-onto-old-mottled-47y5gJ-clipart.jpg";
}
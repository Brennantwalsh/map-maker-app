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
      nodeCopy.id = "newId"; /* We cannot use the same ID */
      ev.target.appendChild(nodeCopy);
}
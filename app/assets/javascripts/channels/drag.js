function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("tiles", ev.target.id);
    console.log(ev.dataTransfer.setData);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("tiles");
    console.log(data);
      var newSrc = "/assets/" + data;
      ev.target.src = newSrc;
}
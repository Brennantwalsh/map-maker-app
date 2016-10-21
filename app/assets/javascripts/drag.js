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
      var placement = ev.target;
      var tileId = {"tile_id": data}
      $.ajax({
        type: 'PATCH',
        url: "/placements/" + placement,
        data: tileId,
        success: "added to the database"
      });
      

}
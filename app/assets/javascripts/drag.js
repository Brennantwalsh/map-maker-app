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
      var placement = ev.target.id;
      var tileId = {"tile_id": data}
      var url = "/placements/" + placement;
      $.ajax(url, {
          method: 'PUT',
          contentType: 'application/json',
          processData: false,
          data: JSON.stringify({
              tile_id: data
          })
      })
      .then(
          function success(userInfo) {
            $.ajax(url, {
              method: 'GET'
            })
          }
      );

}
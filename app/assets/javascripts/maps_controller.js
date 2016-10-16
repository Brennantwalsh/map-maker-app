(function() {
  "use strict";

  angular.module("app").controller("mapsController", function($scope){
    $scope.showBar = false;
    $scope.showTiles = function() {
      $scope.showBar = !$scope.showBar;
    };

  });
}());
# @ make function accessible outside of this file, so AngularJS can see it
# $scope allows for interacting with the view

@VoteCtrl = ($scope) ->
  $scope.vote_options = [
    {title:"Refactoring"}
    {title:"Continuous Integration"}
    {title:"Test-Driven Development"}
  ]
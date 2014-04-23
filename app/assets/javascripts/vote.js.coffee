# @ make function accessible outside of this file, so AngularJS can see it
# $scope allows for interacting with the view

@VoteCtrl = ($scope) ->
  $scope.voteOptions = [
    {title:"Refactoring"}
    {title:"Continuous Integration"}
    {title:"Test-Driven Development"}
  ]

  $scope.addOption = ->
    $scope.voteOptions.push($scope.newVoteOption)
    $scope.newVoteOption = {}

  $scope.selectTopVote = ->
    pool = []
    angular.foreach $scope.voteOptions, (voteOption) ->
      pool.push(voteOption) if !voteOption.topVote
    if pool.length > 0
      voteOption = pool[Math.floor(Math.random()*pool.length)]
      voteOption.topVote = true
      $scope.lastVote = voteOption

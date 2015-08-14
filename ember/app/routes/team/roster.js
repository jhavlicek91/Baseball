import Ember from 'ember';

export default Ember.Route.extend({
	model(params, transition){
		var teamId = transition.params.team.team_id;
		var $this = this;
		return this.store.query('player', {team_id : teamId}).then(function(players){
			 return {
			 	players: players,
			 	positions: $this.store.peekAll('position')
			 };
		});
	}
});

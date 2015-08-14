import Ember from 'ember';

export default Ember.Route.extend({
	model(params, transition){
		var teamId = transition.params.team.team_id;
		return this.store.findRecord('team', teamId).then(function(team){
			return team;
		});
	}
});

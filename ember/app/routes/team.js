import Ember from 'ember';

export default Ember.Route.extend({
	model(params){
		return {
			 team_id: params.team_id,
			 league_id: params.league_id
		};
	}
});

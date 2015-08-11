import Ember from 'ember';

export default Ember.Route.extend({
	model(params){
		return {
			 player_id: params.player_id,
			 league_id: params.league_id
		};
	}
});

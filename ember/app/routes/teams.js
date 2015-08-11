import Ember from 'ember';

export default Ember.Route.extend({
	model(params){
		return {
			 league_id: params.league_id
		};
	}
});

import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('home', { path: '/'} );

  this.route('team', { path: '/:league_id/teams/:team_id' }, function(){
  	this.route('news');
  	this.route('roster');
  });	

  this.route('player', { path: '/:league_id/players/:player_id' }, function(){
  	this.route('news');
  });	  

  this.route('players', { path: '/:league_id/players' } );
  this.route('teams', { path: '/:league_id/players' } );

  this.route('league', { path: '/:league_id' })

  this.route('catchall', {path: '/*wildcard'})
});

export default Router;

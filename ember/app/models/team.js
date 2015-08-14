import DS from 'ember-data';
import Ember from 'ember';

export default  DS.Model.extend({
  name: DS.attr('string'),
  primaryColor: DS.attr('string'),  
  secondaryColor: DS.attr('string'),
  rssFeedId: DS.attr('string'),
  place: DS.attr('string'),
  streak: DS.attr('string'),
  lastTen: DS.attr('string'),
  teamRecord: DS.attr('string'),

  division: DS.belongsTo('division', { async: false }),
  city: DS.belongsTo('city', { async: false }),
  players: DS.hasMany('player', { async: true }),

  fullName: Ember.computed('city', 'name', function(){
    return this.get('city').get('name') + " " + this.get('name');
  }),

  largeImageURL: Ember.computed('name', function(){
  	return 'assets/images/' + this.get('name').replace(' ', '_').toLowerCase() + '_big.png';
  }),

  smallImageURL: Ember.computed('name', function(){
  	return 'assets/images/' + this.get('name').replace(' ', '_').toLowerCase() + '_small.png';
  })
});
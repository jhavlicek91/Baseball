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

  fullName: Ember.computed('city', 'name', function(){
    return this.get('city').get('name') + " " + this.get('name');
  })
});
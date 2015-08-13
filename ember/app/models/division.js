import DS from 'ember-data';
import Ember from 'ember';

export default  DS.Model.extend({
  name: DS.attr('string'),

  conference: DS.belongsTo('conference', { async: false }),
  teams: DS.hasMany('team'),

  fullName: Ember.computed('name', 'conference', function(){
    return this.get('conference').get('abbreviation') + " " + this.get('name');
  })
});
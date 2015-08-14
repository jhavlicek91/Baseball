import DS from 'ember-data';

export default  DS.Model.extend({
  name: DS.attr('string'),

  positions: DS.hasMany('position'),
  leagues: DS.hasMany('league')
});
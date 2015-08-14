import DS from 'ember-data';

export default  DS.Model.extend({
  name: DS.attr('string'),
  abbreviation: DS.attr('string'),

  conferences: DS.hasMany('conference'),
  league: DS.belongsTo('league')
});
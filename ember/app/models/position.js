import DS from 'ember-data';

export default  DS.Model.extend({
  name: DS.attr('string'),
  abbreviation: DS.attr('string'),

  players: DS.hasMany('player'),
  sport: DS.belongsTo('sport')
});
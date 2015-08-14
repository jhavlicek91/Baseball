import DS from 'ember-data';

export default  DS.Model.extend({
  name: DS.attr('string'),
  abbreviation: DS.attr('string'),

  divisions: DS.hasMany('division'),
  league: DS.belongsTo('league', { async: false })
});
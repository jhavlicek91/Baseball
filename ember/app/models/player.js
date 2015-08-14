import DS from 'ember-data';

export default  DS.Model.extend({
  name: DS.attr('string'),
  number: DS.attr('number'),
  height: DS.attr('string'),
  weight: DS.attr('string'),

  position: DS.belongsTo('position', { async: false}),
  team: DS.belongsTo('team')
});
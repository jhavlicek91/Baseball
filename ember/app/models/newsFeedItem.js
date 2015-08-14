import DS from 'ember-data';

export default  DS.Model.extend({
  content: DS.attr('string'),
  url: DS.attr('string'),

  divisions: DS.belongsTo('team')
});
App.Task = DS.Model.extend({
	title: DS.attr(),
	description: DS.attr(),
	sprint_id: DS.attr(),
	state: DS.attr(),
	idea: DS.attr('string'),
	items: DS.hasMany('taskItem', {key: 'item_ids', async: true})
});
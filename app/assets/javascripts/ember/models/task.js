App.Task = DS.Model.extend({
	title: DS.attr(),
	description: DS.attr(),
	sprint_id: DS.attr(),
	state: DS.attr(),
	created_at: DS.attr(),
	updated_at: DS.attr()
});
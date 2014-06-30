App.TaskItem = DS.Model.extend({
	title: DS.attr(),
	state: DS.attr(),
	taskId: DS.attr(),
	planTime: DS.attr()
});
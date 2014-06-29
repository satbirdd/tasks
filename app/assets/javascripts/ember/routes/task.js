App.TasksIndexRoute = Em.Route.extend({
	model: function() {
		return this.store.find('task');
	}
});

App.TasksTaskRoute = Em.Route.extend({
	model: function(params) {
		return this.store.find('task', params.task_id);
	}
});
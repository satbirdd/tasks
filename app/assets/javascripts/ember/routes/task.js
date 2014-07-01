App.TasksIndexRoute = Em.Route.extend({
	model: function() {
		console.log('----------------->');
		return this.store.find('task');
	}
});

App.TasksTaskRoute = Em.Route.extend({
	model: function(params) {
		return this.store.find('task', params.task_id);
	}
});
App.TasksRoute = Em.Route.extend({
	model: function() {
		return this.store.find('task');
	}
})
App.TasksTaskController = Em.ObjectController.extend({
	descriptions: function() {
		return this.get('model').get('description').split('\n');
	}.property()
});
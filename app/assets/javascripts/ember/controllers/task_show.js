App.TasksTaskController = Em.ObjectController.extend({
	ideaEditing: false,
	itemEditing: false,

	descriptions: function() {
		return this.get('description').split('\n');
	}.property('model.description'),

	ideas: function() {
		var idea = this.get('idea') || "good"
		return idea.split('\n');
	}.property('model.idea'),

	actions: {
		editIdea: function() {
			this.set('ideaEditing', true);
		},

		saveIdea: function() {
			this.set('ideaEditing', false);
			this.get('model').save();
		},

		addItem: function() {
			var item = this.store.createRecord('taskItem', {
				taskId: this.get('id')
			});

			this.get('items').pushObject(item);
		}
	}
});
App.TaskItemController = Em.Controller.extend({
	editing: false,

	actions: {
		edit: function() {
			this.set('editing', true);
		},

		save: function() {
			this.set('editing', false);
			this.get('model').save();
		}
	}
});
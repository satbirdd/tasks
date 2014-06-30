App.TaskItemController = Em.Controller.extend({
	editing: false,

	actions: {
		edit: function() {
			this.set('editing', true);
		},

		save: function() {
			this.set('editing', false);
			console.log(this.get('model'));
			this.get('model').save();
		}
	}
});
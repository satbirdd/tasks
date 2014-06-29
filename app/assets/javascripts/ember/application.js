window.App = Em.Application.create();

App.ApplicationAdapter = DS.ActiveModelAdapter.extend();

App.Router.map(function() {
	this.resource('tasks', {path: '/'}, function() {
		this.route('task', {path: '/tasks/:task_id'});
	});
	this.resource('users');
})
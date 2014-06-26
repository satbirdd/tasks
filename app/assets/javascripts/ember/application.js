window.App = Em.Application.create();

App.ApplicationAdapter = DS.ActiveModelAdapter.extend();

App.Router.map(function() {
	this.resource('tasks', {path: '/'});
	this.resource('users');
})
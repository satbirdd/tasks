window.App = Em.Application.create();

App.ApplicationAdapter = DS.ActiveModelAdapter.extend();

App.Router.map(function() {
	this.resource('tasks');
	this.resource('users');
})
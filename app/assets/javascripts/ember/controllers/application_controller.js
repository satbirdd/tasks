App.ApplicationController = Em.Controller.extend({
	topMenu: [{
		title: "任务",
		acitve: true,
		href: "tasks"
	},
	{
		title: "项目",
		href: ""
	},
	{
		title: "成员",
		href: "users"
	}],
});
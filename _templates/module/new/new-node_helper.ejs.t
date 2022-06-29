---
to: ./modules/<%= name %>/node_helper.js
---
const NodeHelper = require("node_helper");

module.exports = NodeHelper.create({
	start: function() {
		console.info("<%= name %> started!");
	},
	socketNotificationReceived: function (notification, payload) {
		const self = this;
		switch (notification) {
		case "GET_DATA":
			self.sendSocketNotification("UPDATE_DATA", data);  // add your data here
			break;
		default:
			console.error("Switch item {} is missing", notification);
		}
	},
});


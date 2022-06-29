---
to: ./modules/<%= name %>/<%= name %>.js
---
Module.register("<%= name %>",{
	// Default module config.
	defaults: {
	},
	start: function() {
		this.getData();
	},
	getDom: () => {
		// do DOM manipulation here:
		const divElement  = document.createElement("div");
		return divElement;
	},
	getData: function() {
		this.sendSocketNotification("GET_DATA", this.config);
		setInterval(() => {
			this.sendSocketNotification("GET_DATA", this.config);
		}, this.config.interval);
	},
	socketNotificationReceived: function (notification, payload) {
		switch (notification) {
		case "UPDATE_DATA":
                        currentData = payload; // update with your data
			break;
		default:
		}
		this.updateDom();
	}

});

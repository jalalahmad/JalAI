class TransferVehicles extends Action {
	world = null;
	oldConnection = null;
	newConnection = null;

	constructor(world, oldConnection, newConnection) {
		this.world = world;
		this.oldConnection = oldConnection;
		this.newConnection = newConnection;
	}

	function Execute() {
		// TODO: Implement function
		return true;
	}

	function CleanupAfterFailure() {
		// TODO: Implement function
	}

	function GetExecutionCosts() {
		// TODO: Implement function
		return 0;
	}
}

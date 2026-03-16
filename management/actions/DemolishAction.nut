class DemolishAction extends Action {
	oldConnection = null;
	world = null;
	b1 = null;
	b2 = null;
	b3 = null;

	constructor(oldConnection, world, b1, b2, b3) {
		this.oldConnection = oldConnection;
		this.world = world;
		this.b1 = b1;
		this.b2 = b2;
		this.b3 = b3;
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

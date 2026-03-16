class BuildRoadAction extends Action {
	connection = null;
	b1 = null;
	b2 = null;
	world = null;

	constructor(connection, b1, b2, world=null) {
		this.connection = connection;
		this.b1 = b1;
		this.b2 = b2;
		this.world = world;
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

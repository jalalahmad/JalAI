class RailPathUpgradeAction extends Action {
	connection = null;
	upgradeToRailType = null;

	constructor(connection, upgradeToRailType) {
		this.connection = connection;
		this.upgradeToRailType = upgradeToRailType;
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

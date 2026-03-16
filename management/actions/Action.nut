class Action {
	function Execute();
	function CleanupAfterFailure();
	function GetExecutionCosts();
}

function Action::Execute() { return true; }
function Action::CleanupAfterFailure() { }
function Action::GetExecutionCosts() { return 0; }

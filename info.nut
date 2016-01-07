class JalAI extends AIInfo {
	function GetAuthor()        { return "Jalal Ahmad"; }
	function GetName()          { return "JalAI"; }
	function GetShortName()     { return "JALA"; }
	function GetDescription()   { return "An AI that uses several types of transport"; }
	function GetVersion()       { return 1; }
	function MinVersionToLoad() { return 1; }
	function GetDate()          { return "2010-08-12"; }
	function CreateInstance()   { return "JalAI"; }
}

RegisterAI(JalAI());

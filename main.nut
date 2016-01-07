require("townmanager.nut");

class JalAI extends AIController
{
  _town_managers = null;
  _pending_events = null;
  _save_data = null;
  _save_version = null;

  constructor()
  {
    ::main_instance <- this;


    this._save_data = null;
    this._save_version = null;

    this._pending_events = [];
  }

  function Init()
  {
    AILog.Info("Initializing")
    this._town_managers = {};
    local town_list = AITownList();
    foreach (town_id, dummy in town_list) {
			this._town_managers.rawset(town_id, TownManager(town_id));
      AILog.Info("Adding Town Managers");
		}
  }

  function Start();
  function MeetTownManagers();


}

function JalAI::MeetTownManagers()
{
  AILog.Info("Meet Town Managers")
}

function JalAI::Start()
{
  this.Init();
  while(1)
  {
    this.MeetTownManagers();

    AIController.Sleep(10);
  }
}

f_cam_forcedExit = true;
closeDialog 1;
["f_spect_tags","onEachFrame"] call bis_fnc_removeStackedEventHandler;
terminate f_cam_freeCam_script;
terminate f_cam_updatevalues_script;
(call f_cam_GetCurrentCam) cameraEffect ["terminate","back"];
hintSilent "Spectator system has been forcefully closed";
{
	_var = _x getVariable ["f_cam_fired_eventid",1337];
	if(_var != (1337)) then
	{
		_x removeEventHandler ["fired",_var];
	};

} foreach (allunits + vehicles);
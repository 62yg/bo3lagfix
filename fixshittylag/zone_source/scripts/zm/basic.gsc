
// main() function to call fix_powerlag()
function main()
{
 level thread fix_powerlag();
}


function fix_powerlag()
{

    // Register the stuff after all players are connected, just to avoid issues people might have had
    level waittill( "all_players_connected" );

    str_trig = Spawn( "trigger_radius", (0, 0, 0), 0, 16, 16 );
    str_trig SetInvisibleToAll();

    register_this_string(str_trig, &"ZOMBIE_PERK_ADDITIONALPRIMARYWEAPON", 4000);
    register_this_string(str_trig, &"ZOMBIE_PERK_CHUGABUD", 2000);
    register_this_string(str_trig, &"ZOMBIE_PERK_DEADSHOT", 1500);
    register_this_string(str_trig, &"ZOMBIE_PERK_DIVETONUKE", 2000);
    register_this_string(str_trig, &"ZOMBIE_PERK_DOUBLETAP", 2000);
    register_this_string(str_trig, &"ZOMBIE_PERK_FASTRELOAD", 3000);
    register_this_string(str_trig, &"ZOMBIE_PERK_JUGGERNAUT", 2500);
    register_this_string(str_trig, &"ZOMBIE_PERK_MARATHON", 2000);
    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH", 5000);
    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH", 1000);
    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH_AAT", 2500);
    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH_AAT", 500);
    register_this_string(str_trig, &"ZOMBIE_PERK_QUICKREVIVE", 1500);
    register_this_string(str_trig, &"ZOMBIE_PERK_QUICKREVIVE", 500);
    register_this_string(str_trig, &"ZOMBIE_PERK_TOMBSTONE", 2000);
    register_this_string(str_trig, &"ZOMBIE_PERK_VULTURE", 3000);
    register_this_string(str_trig, &"ZOMBIE_PERK_WIDOWSWINE", 4000);

    // Bye bye, trigger
    str_trig delete();
}

function register_this_string(str_trig, string, insert = undefined)
{
    if (!isDefined(insert))
        str_trig SetHintString(string);
    else
        str_trig SetHintString(string, insert);

    // Just so we don't register all strings at once
    wait 0.05;
	//WAIT_SERVER_FRAME;
}





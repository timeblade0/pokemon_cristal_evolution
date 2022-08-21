action_set_relative(1);
var __b__;
__b__ = action_if_variable(global.watercristal, 0, 0);
if __b__
{
{
action_create_object(water1, 0, 0);
action_kill_object();
}
}
__b__ = action_if_variable(global.watercristal, 1, 0);
if __b__
{
{
action_create_object(water2, 0, 0);
action_kill_object();
}
}
action_set_relative(0);

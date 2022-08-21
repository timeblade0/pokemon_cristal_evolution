action_set_relative(1);
var __b__;
__b__ = action_if_variable(stun, 0, 0);
if __b__
{
{
with (other) {
action_kill_object();
}
control.hp += -2;
{
action_set_relative(0);
stun = 1;
action_set_relative(1);
}
{
action_set_relative(0);
action_set_alarm(50, 1);
action_set_relative(1);
}
}
}
action_set_relative(0);

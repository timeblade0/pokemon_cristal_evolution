{
  if (vspeed > 0 && not place_free(x,y+vspeed)) move_contact(270);
  vspeed = 0;
}
jump = 0;
fall = 0;
var __b__;
__b__ = action_if_variable(control.jump, 0, 0);
if __b__
{
{
action_bounce(0, 0);
}
}

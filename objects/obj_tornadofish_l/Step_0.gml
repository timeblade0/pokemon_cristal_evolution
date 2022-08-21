action_set_relative(0);
var __b__;
__b__ = action_if_variable(dire, 2, 0);
if __b__
{
{
__b__ = action_if_variable(self.x, oldx-223, 1);
if __b__
{
{
action_set_sprite(spr_tornadofish_r, 1);
action_move("000001000", 4);
dire = 3;
{
action_set_relative(1);
oldx += -224;
action_set_relative(0);
}
}
}
}
}
__b__ = action_if_variable(dire, 3, 0);
if __b__
{
{
__b__ = action_if_variable(self.x, oldx+223, 2);
if __b__
{
{
action_set_sprite(spr_tornado_fish_l, 1);
action_move("000100000", 4);
dire = 2;
{
action_set_relative(1);
oldx += 224;
action_set_relative(0);
}
}
}
}
}
action_set_relative(0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2A21AF34
/// @DnDArgument : "key" "vk_up"
var l2A21AF34_0;
l2A21AF34_0 = keyboard_check(vk_up);
if (l2A21AF34_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 50A78DD6
	/// @DnDParent : 2A21AF34
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6DCFE8C7
/// @DnDArgument : "key" "vk_left"
var l6DCFE8C7_0;
l6DCFE8C7_0 = keyboard_check(vk_left);
if (l6DCFE8C7_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E52F498
	/// @DnDParent : 6DCFE8C7
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0D0051E1
/// @DnDArgument : "key" "vk_right"
var l0D0051E1_0;
l0D0051E1_0 = keyboard_check(vk_right);
if (l0D0051E1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46875D00
	/// @DnDParent : 0D0051E1
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 7766CEA4
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 3039B3D0
var l3039B3D0_0;
l3039B3D0_0 = mouse_check_button_pressed(mb_left);
if (l3039B3D0_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FD20620
	/// @DnDParent : 3039B3D0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Ob_bullet"
	/// @DnDSaveInfo : "objectid" "Ob_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Ob_bullet);
}
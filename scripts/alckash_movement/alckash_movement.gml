// Механика движения
if (keyboard_check_pressed(ord("W")))
{
	yOffset = -cellSize;	
}
else if (keyboard_check_pressed(ord("S")))
{
	yOffset = cellSize;
}
else if (keyboard_check_pressed(ord("A")))
{
	xOffset = -cellSize;
}
else if (keyboard_check_pressed(ord("D")))
{
	xOffset = cellSize;
}

// Бага с одновременным нажатием и перемещением. Как-то фиксить надо.
// Мб не баг, а фича
if (oConfig.timer == 0) {
	if !(place_meeting(x + xOffset, y, oWall))
	{
		x += xOffset;
	}
	
	if !(place_meeting(x, y + yOffset, oWall))
	{
		y += yOffset;
	}
	
	xOffset = 0;
	yOffset = 0;
}
	

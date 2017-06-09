//Check for vertical collision
if (collision_rectangle(x + (sprite_width / 2),y + (sprite_height / 2) * sign(vSpeed),x - (sprite_width / 2),y + ((sprite_height / 2) + abs(vSpeed)) * sign(vSpeed),Wall_p,0,true))
{
    if (sign(vSpeed) == -1)
        move_contact_solid(90,vSpeed);
    else
        move_contact_all(270,vSpeed);
    vSpeed = 0;
    onGround = true;
}

/*Check for horizontal collision
if (collision_rectangle(x + (sprite_width / 2) * sign(hSpeed),y + (sprite_height / 2),x + ((sprite_width / 2) + abs(hSpeed)) * sign(hSpeed),y - (sprite_height / 2),Wall_p,0,true))
{
    if (sign(hSpeed) == -1)
        move_contact_all(180,hSpeed);
    else
        move_contact_all(0,hSpeed);
    hSpeed = 0;
}*/
/****************************************************************

   FUNCTION:   Koopa AI, enemy turns around when it reaches an edge

   RETURNS:    A boolean stating whether the point at ground level to the left or right
   of the enemy (depending on which way it's moving) is colliding with a wall tile. 

   NOTES:      If the enemy is at the far left or right of a platform, the collision_point
   boolean comes back false, so the !collision_point boolean is true, and the enemy 
   reverses direction.
   
   
****************************************************************/
if (onGround==true && !collision_point(x + (sprite_width/2) +3 * sign(hSpeed), y + (sprite_height/2), Wall_p,0,true)){
    hSpeed *= -1
};

else if(collision_line(x+(sprite_width/2)+3 * sign(hSpeed), y+(sprite_height/2)-6,x+(sprite_width/2)+3 * sign(hSpeed),y-(sprite_height/2),Wall,false,false)){
    hSpeed *= -1;
    
}

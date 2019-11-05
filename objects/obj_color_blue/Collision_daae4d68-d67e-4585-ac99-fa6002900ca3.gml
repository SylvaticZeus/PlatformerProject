//when colliding with color blue, set the variables to true,
// now we know player can use blue and it is what is wanted to be used
global.hasBlue = true;
global.blueEquipped = true;

//once the blue power up is collected, destroy it
instance_destroy();

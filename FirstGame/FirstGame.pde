PImage currentImage;
PImage anotherImage;
int currentImageX = 150;
int anotherImageX = 700;
int currentImageY = 0;
int anotherImageY = 0;

void setup()
{
  //Setting up the screen size
  size(1000, 1000);
  
  //Aligns text in the center of the screen
  textAlign (CENTER);
  
  //Loading the image of a turtle and a bunny
  currentImage = loadImage("turtle-icon.png");
 
  anotherImage = loadImage("bunny.png");
}
void draw()
{
  //Setting the background colour
  background(255);
 
  //Setting the colour of the text and the size of the text
  fill(0);
  textSize(50);
  
  //If the turtle (currentImage) passes 1000 pixels it displays the text highlighted in purple bellow
  if (currentImageY >= 1000)
  {
    text("Congradulations Turtle, You Won!", 500, 500);
  }
  //If the bunny (anotherImage) passes 1000 pixels it displays the text highlighted in purple bellow
  else if (anotherImageY >= 1000)
  {
    text("Congradulations Bunny, You Won!", 500, 500);
  }
  
  //This code allows the pictures to move down when you press the assigned key
  image(currentImage, currentImageX, currentImageY, 100, 100);

  image(anotherImage, anotherImageX, anotherImageY, 150, 100);
}

void keyPressed()
{
  //The asigned keys for the turtle
  if (key == 'a' || key == 'A')
  {
    //The ammount of pixels that the picture (turtle) moves by
    currentImageY = currentImageY + 10;
  }
  //The asigned keys for the bunny
  if (key == 'l' || key == 'L')
  {
    //The ammount of pixels that the picture (bunny) moves by
    anotherImageY = anotherImageY + 10;
  }
}
    

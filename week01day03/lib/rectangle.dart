int surfaceArea(int width, int length, int height) {
 //returns the surface area of the rectangle with [width], [length] , and [height]
 // if its negative than throws exception

  if (width <= 0 || length <= 0 || height <= 0) {
    throw Exception(' width , length and height must be a positive number');
  }
  return ( 2 * width * height) + (2 * width * length) + (2 * width);
}


//if its correct
int volume(int width, int length, int height)
{
  if(width <=0 || length <= 0 || height <= 0 ) {
    throw Exception('width length, and height must be positive');
}

  return width * length * height;
}
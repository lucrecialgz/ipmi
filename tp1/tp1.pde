PImage miImage;
void setup () {
  size (800,400);
  //cargar la imagen
 miImage=
  loadImage("miFotoDeMural.jpeg");
}

void draw () {
  background(25, 25, 112);
  image(miImage, 0, 0, 400, 400);
   noStroke();
 fill(205,133, 0);
  ellipse(600, 200, 250, 270);
  //TRIANGULOS 
  fill(205, 133, 0);
  //TRIANGULO 1
  triangle(548, 390, 560, 190, 685, 245);
  //TRIANGULO 2 
  triangle(455, 355, 590, 120, 685, 220);
  //TRIANGULO 3
  triangle(415, 250, 560, 290, 725, 120);
  //TRIANGULO 4 
  triangle(410, 150, 560, 290, 725, 150);
  //TRIANGULO 5
  //triangle(440, 65, 750, 270, 570, 330);
  //TRIANGULO 6 
  triangle(460, 55, 770, 270, 550, 300);
  //TRIANGULO 7 
  triangle(540, 10, 750, 270, 570, 330);
  //TRIANGULO 8
  triangle(650, 10, 650, 280, 570, 95);
  //TRIANGULO 9
  //triangle(700, 20, 600, 390, 590, 95);
  //TRIANGULO 10
  triangle(750, 65, 600, 300, 590, 100);
  //TRIANGULO 11
  triangle(790, 168, 500, 300, 640, 120);
  //triangulo 12
  triangle(785, 270, 560, 260, 705, 205);
  //TRIANGULO 13
  triangle(730, 360, 510, 230, 690, 255);
  //TRIANGULO 14
  triangle(640, 390, 580, 230, 690, 255);
  
  //OJOS
  fill(255, 255, 255);
  ellipse(645, 150, 80, 25);
  ellipse(565, 150, 80, 25);
  //IRIS
  fill(104, 34, 139);
  ellipse(645, 150, 30, 25);
  ellipse(565, 150, 30, 25);
  fill(255, 255, 255);
  ellipse(573, 147, 5, 5);
  ellipse(655, 147, 5, 5);
  
  //PESTAÑAS
  fill(104, 34, 139);
  rect(575, 125, 3, 13);
  rect(565, 125, 3, 13);
  rect(555, 125, 3, 13);
  rect(545, 125, 3, 13);
  rect(535, 127, 3, 13);
  rect(625, 125, 3, 13);
  rect(635, 125, 3, 13);
  rect(645, 125, 3, 13);
  rect(655, 125, 3, 13);
  rect(665, 125, 3, 13);
  
  //LABIOS
  fill(139, 90,0);
  ellipse(610, 280, 95, 25);
  //NARIZ
  rect(596, 165, 20, 80);
  ellipse(613, 240, 15, 15);
  ellipse(599, 240, 15, 15);
  
}

   /* https://youtu.be/nTB1ihrdLpA 
   LUCRECIA LEGUIZMON. COMISION 3 */
   
   PImage miImagen;

   color colorLadoDerecho = color(255); 
   float fuerzaRotacion = 0;    
   int contadorClics = 0; 

    void setup() {
    size(800, 400); 
    miImagen = loadImage("10.jpeg"); 
    }

    void draw() {
    background(255);
    noStroke();
    rect(0, 0, 400, 400); 

    if (miImagen != null) {
    image(miImagen, 0, 0, 400, 400); 
     }

     // condicionales 
     if (mouseX > 400) {
     fill(colorLadoDerecho); 
     } else {
     fill(255); 
     }
  
     noStroke();
     rect(400, 0, 400, 400); 
  
     // función propia 
     dibujoLineas(2); 
     }
   void dibujoLineas(int grosorLinea) {
   int columnas = 6; 
   int filas = 6;    

    stroke(0);
    strokeWeight(grosorLinea);  
    noFill();          

    // ciclos for
    for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      
    pushMatrix();
      
    float x = (i * 66.66) + 400; 
    float y = j * 66.66; 
      
    translate(x + 33, y + 33); 
    if (mouseX > 400) {
        
    // funcion propia
    float distanciaEje = calculo(mouseX, mouseY);
    float angulo = map(distanciaEje, 0, 400, -0.4, 0.4) + random(-0.001, 0.001);
    rotate(angulo * fuerzaRotacion);
     }
      
     // cuadrado exterior 
     rect(-33, -33, 66, 66);

     // LINEAS
     // primera
     line(-33, 25, 22, 25); // horizontal
     line(24, -31, 24, 25); //vertical

     // segunda
     line(-33, 16, 17, 16); //horizontal
     line(15, -31, 15, 15); //vertical
     
     // tercera
     line(-33, 7, 7, 7); //horizontal
     line(6, -31, 6, 6); //vertical

     // cuarta
     line(-33, -1, -3, -1); //horizontal
     line(-4, -31, -4, -2); //vertical

     popMatrix();
      
     }
     } 
     } 
    
    // función propia 
    float calculo(float posX, float posY) {
    float mouseDistancia = dist(posX, posY, 600, 200);
    return mouseDistancia; 
    }

    void mousePressed() {
    if (mouseX > 400) {
    contadorClics = contadorClics + 1; 
    fuerzaRotacion = 1.0; 
    
    if (contadorClics == 1) {
      colorLadoDerecho = color(200, 162, 230); // clic 1: lila
    } 
    else if (contadorClics == 2) {
      colorLadoDerecho = color(255, 253, 180);   // clic 2: amarillo
    } 
    else {
    colorLadoDerecho = color(200, 162, 230);
    contadorClics = 1; 
    }
    }
    }

    void keyPressed() {
    if (key == 'r' || key == 'R') {
    colorLadoDerecho = color(255); 
    fuerzaRotacion = 0;   
    contadorClics = 0; 
    }
    }

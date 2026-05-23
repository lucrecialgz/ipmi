int estado;
boolean click;      
boolean clickRei; 

// tipografias
PFont TextoInicio;
PFont textoGeneral;

PImage miImage;
PImage miImage2;
PImage miImage3;
PImage miImage4;
PImage miImage5;
PImage miImage6;
PImage miImagefinal;

//tiempo
int contador = 0;
int limiteTiempo = 350;

//texto fade
float fadeTexto = 0;
int estadoAnterior = 1;

String texto = "";

  void setup() {
  size(640, 480);
  
  TextoInicio = loadFont("TextoInicio.vlw");
  textoGeneral = loadFont("textoGeneral.vlw");
  
  miImage = loadImage("imagenpantalla1.jpg");
  miImage2 = loadImage("imagenpantalla2.jpg"); 
  miImage3 = loadImage("imagenpantalla3.jpg");
  miImage4 = loadImage("imagenpantalla4.jpg");
  miImage5 = loadImage("imagenpantalla5.jpg");
  miImage6 = loadImage("imagenpantalla6.jpg");
  miImagefinal = loadImage("imagenpantallafinal.jpg");
       
  estado = 1;
  estadoAnterior = 1;
  click = false;
  clickRei = false;
  }

   void draw() {
   if (textoGeneral != null) textFont(textoGeneral);
   if (estado != estadoAnterior) {
    fadeTexto = 0; 
    estadoAnterior = estado;
    }

  //pantalla inicio
   if (estado == 1) {
   background(0);
   if (miImage != null) {
   image(miImage, 0, 0, width, height);
   if (TextoInicio != null) textFont(TextoInicio);
   }
    noStroke();
    fill(255);
    rect(250, 350, 130, 55, 15); 
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("INICIAR", 315, 380); 
    
    //titulo
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("ONE DIRECTION", 415, 40); 
    }
  
    //pantalas 2-6 
    else if (estado == 2) {
    background(0);
    if (miImage2 != null) {
    image(miImage2, 0, 0, width, height);
     }
    //cuadrado texto
    noStroke();
    fill(0, 0, 0, fadeTexto * 0.8); 
    rect(70, 310, 500, 150, 15);  
    //texto
    textSize(22);
    textAlign(CENTER, CENTER);
    fill(255, fadeTexto); 

    texto = "One Direction fue una de las boy bands de pop británico-irlandesas más exitosas del siglo XXI, activa entre 2010 y 2016. El grupo estuvo integrado por Harry Styles, Liam Payne, Louis Tomlinson, Niall Horan y Zayn Malik.";
    text(texto, 70, 310, 500, 150); 
    }
  
    else if (estado == 3) {
    background(0);
    if (miImage3 != null) 
    image(miImage3, 0, 0, width, height);
    //cuadrado
    noStroke();
    fill(0, 0, 0, fadeTexto * 0.8);
    rect(50, 320, 540, 140, 15); 
    //texto
    textSize(22);
    textAlign(LEFT, CENTER);
    fill(255, fadeTexto);

    texto = "Su meteórico ascenso comenzó en el reality show The X Factor en 2010. Aunque no ganaron el concurso, Simon Cowell los firmó inmediatamente bajo su sello discográfico Syco Music.";
    text(texto, 70, 320, 500, 140); 
    }
  
    else if (estado == 4) {
    background(0); 
    if (miImage4 != null) 
    image(miImage4, 0, 0, width, height);
    //cuadrado
    noStroke();
    fill(0, 0, 0, fadeTexto * 0.8);
    rect(70, 40, 365, 150, 15);
    //texto
    textSize(22);
    textAlign(CENTER, CENTER);
    fill(255, fadeTexto);

    texto = "Lanzaron cinco álbumes de estudio sumamente exitosos: Up All Night, Take Me Home, Midnight Memories, Four y Made in the A.M., rompiendo récords históricos de ventas globales.";
    text(texto, 70, 40, 365, 150);
    }
  
    else if (estado == 5) { 
    background(0); 
    if (miImage5 != null) 
    image(miImage5, 0, 0, width, height);
    
    //cuadrado
    noStroke();
    fill(0, 0, 0, fadeTexto * 0.8);
    rect(310, 310, 300, 140, 15);
    //texto
    textSize(21); 
    textAlign(CENTER, CENTER);
    fill(255, fadeTexto);

    texto = "En marzo de 2015, Zayn Malik anunció su salida de la banda. El grupo continuó como cuarteto temporalmente hasta que iniciaron una pausa indefinida a principios de 2016.";
    text(texto, 310, 310, 300, 140);
    }
  
    else if (estado == 6) { 
    background(0); 
    if (miImage6 != null) 
    image(miImage6, 0, 0, width, height);
    
    //cuadrado
    noStroke();
    fill(0, 0, 0, fadeTexto * 0.8);
    rect(70, 330, 500, 120, 15); 
    //texto
    textSize(20);
    textAlign(CENTER, CENTER);
    fill(255, fadeTexto);

    texto = "Para mayo de 2017, todos los miembros de la banda habían lanzado sencillos en solitario, destacando enormemente en géneros que van desde el pop hasta el rock.";
    text(texto, 70, 330, 500, 120);
    }
  
    //ultima pantalla
    else if (estado == 7) {
    background(0); 
    if (miImagefinal != null) 
    image(miImagefinal, 0, 0, width, height);
    
    botonReiniciar();
    }

    //control fade
    if (estado >= 2 && estado <= 6) {
    contador++; 
    if (fadeTexto < 255) {
    fadeTexto = fadeTexto + 2; 
    }
    
     if (contador >= limiteTiempo) {
      estado++;           
      contador = 0; 
    }
    }
    }

   void botonReiniciar() {
   if (TextoInicio != null) textFont(TextoInicio);
   fill(255); 
   rect(250, 350, 130, 55, 15);
   fill(0);
   textSize(20);
   textAlign(CENTER, CENTER);
   text("REINICIAR", 315, 380);
   }

   void mousePressed() {
   if (estado == 1) {
   if (mouseX > 250 && mouseX < 380 && mouseY > 350 && mouseY < 405) {
      click = true;
      estado = 2; 
      fadeTexto = 0; 
      contador = 0;
   }
   }
    else if (estado == 7) {
    if (mouseX > 250 && mouseX < 380 && mouseY > 350 && mouseY < 405) {
      clickRei = true;
      estado = 1;
      estadoAnterior = 1;
      click = false;
      clickRei = false;
    }
    }
    }


 
 

 

PImage image1;
PImage image2;
PImage image3;
PImage image4;
PImage image5;
PImage image6;

PFont fuente;

int pantalla = 0;

float alpha = 1;
float speed = 2;

int tiempoCambio = 8000;
int ultimoCambio = 0;

float textoX = -400;

boolean slideshow = false;

//boton
int bx = 250;
int by = 380;
int bw = 150;
int bh = 45;

void setup() {

  size(650, 480);

  //imagenes
  image1 = loadImage("mindhunter1.jpg");
  image2 = loadImage("mindhunter2.jpg");
  image3 = loadImage("mindhunter3.jpg");
  image4 = loadImage("mindhunter4.jpg");
  image5 = loadImage("mindhunter5.jpg");
  image6 = loadImage("mindhunter6.jpg");

  //tamaños de las imagenes
  image1.resize(width, height);
  image2.resize(width, height);
  image3.resize(width, height);
  image4.resize(width, height);
  image5.resize(width, height);
  image6.resize(width, height);


  //fuente del texto
  fuente = createFont("Arial Bold", 40);
  textFont(fuente);

  textAlign(CENTER, CENTER);
}

void draw() {

  background(0);

  //transiciones
  
  if (alpha < 255) {
    alpha += speed;
  }

  tint(255, alpha);

 //pantalla 1

  if (pantalla == 0) {

    image(image1, 0, 0);

    fill(25, alpha);
    textSize(55);
    text("MINDHUNTER", width/2, 100);

    boton("Comenzar");
  }

  //pantalla 2

  if (pantalla == 1) {

    image(image2, 0, 0);

    //animacion
    if (textoX < 10) {
      textoX += 5;
    }

    //cuadro
    fill(0, 170);
    noStroke();

    rect(
      textoX - 20, //X
      125,         //Y
      270,         //ancho
      160,         //alto
      20           //bordes
    );

    //texto
    fill(255);

    textAlign(LEFT);

    textSize(20);

    text(
      "Los agentes del FBI\n"
      + "Holden Ford y Bill Tench,\n"
      + "junto a la psicologa\n"
      + "Wendy Carr desarrollan\n"
      + "la Unidad de Ciencias del\n"
      + "Comportamiento del FBI.",

      textoX,
      150
    );
  }

  //pantalla 3

  if (pantalla == 2) {

    image(image3, 0, 0);

    //animacion
    if (textoX < 20) {
      textoX += 5;
    }

    //cuadro
    fill(0, 170);
    noStroke();

    rect(
      textoX - 15, //X
      355,         //Y
      540,         //ancho
      85,          //alto
      20           //bordes
    );

    //texto
    fill(255, alpha);

    textAlign(LEFT);

    textSize(20);

    text(
      "Su trabajo pionero consiste en entrevistar a asesinos\n"
      + "en serie encarcelados para entender mejor sus mentes\n"
      + "y lograr capturar a los asesinos.\n",

      textoX,
      380
    );
  }

  //pantalla 4

  if (pantalla == 3) {

    image(image4, 0, 0);

    //animacion
    if (textoX < 20) {
      textoX += 5;
    }

    //cuadro
    fill(0, 170);
    noStroke();

    rect(
      textoX - 15, //X
      330,         //Y
      550,         //ancho
      85,          //alto
      20           //bordes
    );

    //texto
    fill(255, alpha);

    textAlign(LEFT);

    textSize(20);

    text(
      "Ed Kemper es uno de los asesinos más importantes y\n"
      + "perturbadores de la serie Mindhunter.\n",

      textoX,
      365
    );
  }

  //pantalla 5

  if (pantalla == 4) {

    image(image5, 0, 0);

    //animacion
    if (textoX < 20) {
      textoX += 5;
    }

    //cuadro
    fill(0, 170);
    noStroke();

    rect(
    textoX - 15, //X
    335,         //Y
    630,         //ancho
    120,         //alto
    20           //bordes
    );

    //texto
    fill(255, alpha);

    textAlign(LEFT);

    textSize(20);

    text(
      "Kemper se muestra extremadamente inteligente, tranquilo y \n"
      + "manipulador, habla con total naturalidad sobre sus crímenes\n"
      + "Sus conversaciones ayudan al FBI a comprender cómo piensan \n"
      + "los asesinos seriales y cómo construir perfiles criminales.\n",

      textoX,
      365
    );
  }
  
  //pantalla 6

  if (pantalla == 5) {

    image(image6, 0, 0);

    fill(255, alpha);
    textSize(40);

    textAlign(CENTER, CENTER);

    text("FIN", width/2, 80);

    boton("REINICIAR");
  }

   //cambio de las pantallas

  if (slideshow == true && pantalla > 0 && pantalla < 5) {

    if (millis() - ultimoCambio > tiempoCambio) {

      pantalla++;

      alpha = 0;

      textoX = -400;

      ultimoCambio = millis();
    }
  }
}


//boton
void boton(String texto) {

  if (mouseX > bx && mouseX < bx + bw &&
    mouseY > by && mouseY < by + bh) {

    fill(180, 0, 0);
  }

  else {

    fill(20);
  }

  rect(bx, by, bw, bh, 15);

  fill(255);

  textAlign(CENTER, CENTER);

  textSize(18);

  text(texto, bx + bw/2, by + bh/2);
}

void mousePressed() {

  //boton del comienzo
  if (pantalla == 0 &&
    mouseX > bx && mouseX < bx + bw &&
    mouseY > by && mouseY < by + bh) {

    pantalla = 1;

    slideshow = true;

    ultimoCambio = millis();

    alpha = 0;

    textoX = -400;
  }

  //boton de reinicio
  if (pantalla == 5 &&
    mouseX > bx && mouseX < bx + bw &&
    mouseY > by && mouseY < by + bh) {

    pantalla = 0;

    slideshow = false;

    alpha = 0;

    textoX = -400;
  }
}

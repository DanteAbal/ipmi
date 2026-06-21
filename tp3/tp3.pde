//https://youtu.be/yDSMHUFpGjE


PImage miImagen;

int columnas = 14;
int filas = 14;

boolean banderaArgentina = false;
boolean modoRandom = false;
boolean arrastrar = false;

float rotacion = 0;
float ultimoMouseX;

void setup() {
  size(800, 400);
  miImagen = loadImage("22.jpg");
}

void draw() {

  background(200);

  
  image(miImagen, 0, 0, 400, 400);

  float espacio = 28;
  float diametroExterior = 28;

  // vuelve suavemente a la posición original
  if (!arrastrar) {
    rotacion = lerp(rotacion, 0, 0.08);
  }

  float centroX = 420 + (columnas - 1) * espacio / 2;
  float centroY = 20 + (filas - 1) * espacio / 2;

  pushMatrix();

  translate(centroX, centroY);
  rotate(rotacion);
  translate(-centroX, -centroY);

  for (int fila = 0; fila < filas; fila++) {

    for (int columna = 0; columna < columnas; columna++) {

      float x = 420 + columna * espacio;
      float y = 20 + fila * espacio;

      
      dibujarCirculoNegro(x, y, diametroExterior);

      float distancia = abs(columna - fila);

      float diametroBlanco;

      if (modoRandom) {
        randomSeed(fila * columnas + columna);
        diametroBlanco = random(4, 26);
      } else {
       
        diametroBlanco = calcularDiametro(distancia);
      }

      if (banderaArgentina) {

        if (fila < filas/3) {
          fill(116, 172, 223); // celeste de arriba
        } else if (fila < 2*filas/3) {

          if (columna >= 5 && columna <= 8) {
            fill(255, 204, 0); // amarillo del medio
          } else {
            fill(255);
          }
        } else {
          fill(116, 172, 223); // celeste de abajo
        }
      } else {
        fill(255);
      }

      ellipse(x, y, diametroBlanco, diametroBlanco);
    }
  }

  popMatrix();
}


void dibujarCirculoNegro(float x, float y, float diametro) {
  fill(0);
  noStroke();
  ellipse(x, y, diametro, diametro);
}


float calcularDiametro(float distancia) {
  return map(distancia, 0, 13, 4, 26);
}

void mousePressed() {
  ultimoMouseX = mouseX;
  arrastrar = true;
}

void mouseDragged() {
  float diferencia = mouseX - ultimoMouseX;

  rotacion += diferencia * 0.01;

  ultimoMouseX = mouseX;
}

void mouseReleased() {
  arrastrar = false;
}

void keyPressed() {

  if (key == ' ') { // aprieto el ESPACIO para activar y desactivar los colores y el tamaño

    modoRandom = !modoRandom;

    if (modoRandom) {
      banderaArgentina = true;
    } else {
      banderaArgentina = false;
    }
  } 
}

PImage miImagen;
int desplazar;
float zoom = 2.0;

void setup () {
  size(800, 400);
  background(200);
  smooth();
  miImagen = loadImage("gato.jpg");
  desplazar = width/2; //mueve a la der
}


void draw() {

  image(miImagen, 0, 0, 400, 400);


  //mitad roja
  strokeWeight(0);
  fill(#FC2C14);
  quad(276+desplazar, 0, 400+desplazar, 0, 400+desplazar, 95, 276+desplazar, 95);
  fill(#F7A750);
  quad(276+desplazar, 95, 400+desplazar, 95, 400+desplazar, 150, 276+desplazar, 150);
  fill(#FF6229);
  quad(276+desplazar, 150, 400+desplazar, 150, 400+desplazar, 400, 276+desplazar, 400);


  //mitad amarilla


  strokeWeight(0);
  fill(#F0CD02);
  quad(276+desplazar, 0, 276+desplazar, 400, 400, 400, 400, 0);

  fill(#FFA02C);
  triangle(428, 256, 551, 43, 572, 263);
  fill(#FF9512);
  triangle(450, 276, 540, 131, 555, 376);
  fill(#FF8D00);
  quad(531, 225, 547, 228, 550, 315, 531, 313);
  fill(#CB7408);
  triangle(517, 230, 556, 184, 553, 236);

  strokeWeight(0);
  fill(#FAAA08);
  triangle(200+desplazar, 75, 250+desplazar, 0, 250+desplazar, 75);

  strokeWeight(2);
  fill(#F51F14);
  quad(14+desplazar, 64, 115+desplazar, 64, 115+desplazar, 160, 14+desplazar, 160);
  strokeWeight(2);
  strokeWeight(0);
  fill(#F26C05);
  quad(15+desplazar, 66, 110+desplazar, 66, 117+desplazar, 160, 15+desplazar, 78);



  fill(#FC974A);
  quad(619, 125, 623, 239, 686, 216, 713, 110);
  fill(#FF6803);
  quad(620, 70, 706, 86, 705, 120, 628, 153);
  fill(#3A78FA);
  quad(703, 88, 746, 108, 741, 130, 702, 117);
  strokeWeight(2);
  fill(#DDFF03);
  triangle(630, 155, 646, 128, 663, 164);
  fill(#FC7DEE);
  triangle(679, 157, 706, 119, 681, 116);
  strokeWeight(2);//ojo der
  fill(#0D3EFA);
  ellipse(267+desplazar, 136, 45, 60);

  fill(0);
  ellipse(267+desplazar, 136, 20, 40);





  fill(#24B91A);
  quad(500, 125, 547, 114, 546, 219, 515, 177);
  fill(#43F7ED);
  quad(546, 119, 602, 193, 565, 234, 544, 219);
  fill(#29A9D6);

  strokeWeight(0);
  quad(579, 161, 610, 152, 610, 190, 600, 190);
  fill(#ADFA56);
  quad(563, 238, 603, 192, 621, 213, 624, 260);
  strokeWeight(3);
  //ojo izq
  fill(#31DB7C);
  quad(501, 127, 585, 121, 610, 72, 499, 93);
  fill(255);
  triangle(574, 163, 607, 153, 590, 136);
  fill(#FF465E);
  triangle(519, 122, 552, 115, 553, 159);
  strokeWeight(2);
  fill(#EAF21D);
  ellipse(167+desplazar, 136, 45, 60);
  fill(0);
  ellipse(167+desplazar, 136, 20, 40);



  //nariz

  strokeWeight(4);
  fill(#FC2180);
  triangle(205+desplazar, 192, 241+desplazar, 191, 225+desplazar, 214);

  //oreja der

  strokeWeight(3);
  fill(#4182F0);
  triangle(247+desplazar, 73, 365+desplazar, 0, 297+desplazar, 84);

  strokeWeight(3);
  fill(#FC2180);
  triangle(297+desplazar, 84, 365+desplazar, 0, 747, 109);


  //oreja izq

  line(489, 0, 589, 73);

  strokeWeight(3);
  fill(#F79F41);
  triangle(526, 86, 488, 0, 187+desplazar, 74);

  strokeWeight(3);
  fill(#BF81BB);
  triangle(496, 94, 486, 0, 125+desplazar, 87);

  strokeWeight(3);
  fill(#BF81BB);
  triangle(509, 50, 488, 0, 521, 26);

  strokeWeight(0);
  fill(#F7462A);
  quad(511, 51, 523, 27, 544, 44, 522, 73);


  //formas cara

  strokeWeight(3);
  fill(#FC6EB0); //narriz arriba
  quad(610, 192, 610, 72, 620, 72, 632, 191);


  //fondo

  line(542, 310, 542, 218);
  strokeWeight(4);
  fill(#2F6ACB);
  quad(543, 310, 512, 308, 427, 400, 508, 400);
  line(466, 360, 506, 382);
  line(482, 340, 515, 358);
  fill(#3CAF5F);
  triangle(630, 258, 558, 400, 627, 400);
  fill(#FF680A);
  quad(711, 220, 800, 177, 750, 260, 711, 260);
  fill(#0C7DF2);
  quad(711, 260, 750, 260, 730, 400, 711, 400);
  fill(#FF9F03);
  quad(627, 286, 711, 286, 711, 195, 627, 250);
  fill(#FF0303);
  quad(627, 286, 711, 286, 711, 400, 627, 400);
  line(714, 400, 714, 205);
  noStroke();
  fill(#FA889D);
  quad(629, 288, 701, 288, 639, 400, 629, 400);
  noStroke();
  fill(#A71111);
  triangle(732, 400, 800, 306, 800, 400);
  strokeWeight(0);
  fill(#A2E55A);
  quad(572, 376, 625, 376, 627, 400, 590, 400);
  fill(#2A45D8);
  triangle(545, 308, 545, 400, 510, 400);
  fill(#2A45D8);
  triangle(544, 310, 544, 220, 610, 260);
  fill(#2A45D8);
  triangle(544, 310, 580, 350, 580, 270);
  noStroke();
  fill(#31DB7C);
  quad(547, 114, 582, 129, 594, 102, 546, 98);
  fill(#2D90C4);
  triangle(609, 78, 584, 128, 609, 151);
  fill(#3677FF);
  triangle(673, 182, 708, 208, 668, 248);
  fill(#3677FF);
  quad(679, 242, 707, 211, 696, 202, 670, 234);
  fill(#28BCF5);
  quad(650, 164, 672, 180, 666, 250, 619, 258);
  fill(#78FC95);
  quad(674, 182, 711, 120, 743, 129, 713, 209);
  fill(#B1FA60);
  quad(583, 125, 588, 112, 609, 136, 609, 155);

  fill(#1BB4E0);
  beginShape();

  vertex(544, 400);
  vertex(544, 310);
  vertex(580, 310);
  vertex(580, 270);
  vertex(605, 258);
  vertex(628, 258);
  vertex(560, 400);

  endShape(CLOSE);


  //linea cara

  noStroke();
  fill(#FF6803);
  quad(642, 131, 638, 97, 691, 101, 688, 113);

  noFill();
  stroke(0);
  strokeWeight(4);

  bezier(97+desplazar, 97, // punto inicial
    190+desplazar, 70, // control 1
    250+desplazar, 55, // control 2
    345+desplazar, 110);  // punto final

  bezier(97+desplazar, 97,
    100+desplazar, 260,
    300+desplazar, 350,
    346+desplazar, 112);


  noFill();
  stroke(0);
  strokeWeight(5);

  bezier(740, 130, //ceja der
    673, 105,
    650, 115,
    629, 155);

  bezier(501, 128, //ojo izq
    546, 110,
    575, 115,
    609, 155);

  strokeWeight(3); //bigotes

  bezier(583, 203,
    508, 195,
    441, 212,
    407, 271);

  bezier(582, 204,
    529, 205,
    493, 215,
    456, 250);

  bezier(583, 212,
    537, 214,
    501, 230,
    470, 273);

  bezier(587, 225,
    547, 226,
    517, 234,
    505, 250);
    
    bezier(678,200,
    709,192,
    741,190,
    780,202);
    
    bezier(718,198,
    741,202,
    762,211,
    782,235);
    
    bezier(677,207,
    720,206,
    755,223,
    773,265);
    
    bezier(675,214,
    698,218,
    718,224,
    741,250);
    
    

  strokeWeight(4);
  line(544, 308, 578, 269);
  line(578, 269, 602, 255);
  line(609, 74, 583, 126);
  line(624, 212, 624, 255);
  line(622, 210, 622, 254);
  line(625, 212, 626, 256);
  line(673, 180, 708, 119);
  strokeWeight(3);
  line(650, 165, 710, 209);
  line(666, 246, 672, 182);




  noFill();
  stroke(0);
  strokeWeight(5);

  bezier(605, 234,
    614, 225,
    633, 225, //boca
    642, 234);


  scale(zoom); // esto acerca todo

  text("X: " + mouseX + " Y: " + mouseY, 10, 20);
}
void mousePressed() {
  println (mouseX, mouseY);
}

//declaracion con asignacion:
String estado = "inicio";
//
int cuentaFotograma = 0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;

void setup (){
  size (640,480);
  img1 = loadImage("andrew-rae-phone-7.jpg");
  img2 = loadImage ("andrew-rae-phone-6.jpg");
  img3 = loadImage ("andrew-rae-phone-4.jpg");
  img4 = loadImage ("andrew-rae-phone-3.jpg");
//60fps
  frameRate (30);
}

void draw () {
  println ( frameRate ); // muestra los fps reales
  background (255);
  
  textSize (18);
  textAlign (LEFT);
  text ( cuentaFotograma , 20,40);
  text ( estado , 20,50);
  
  if ( estado.equals("inicio") ){
  //pantalla de inicio 
  fill(0); 
  textAlign (CENTER);
  textSize (60);
  text ("click para empezar", width/2, height/2); 
  
  fill (100);
  ellipse(width/2, 300, 100,100);
  
  }
  else if ( estado.equals("pantalla 1") ) {
  //pantalla 1
  image (img1, 0,0,640,480);
  fill(255); 
  textAlign (CENTER);
  textSize (70);
  text ("PHONE BUDDIES", width/2, cuentaFotograma); 
  textSize (40);
  text ("Andrew Rae", width/2, cuentaFotograma+40); 
  
  //
  cuentaFotograma++;
  //cuenta fotograma = cuentafotograma+1;
  if (cuentaFotograma>= 150) {
    estado = "pantalla 2"; 
    cuentaFotograma = 0;
  }
 }
  else if ( estado.equals("pantalla 2") ) {
  //pantalla 2 
  image (img2,0,0,640,480);
  fill(255); 
  textAlign (CENTER);
  textSize (28);
  text ("El trabajo de Andrew Rae en el campo de la ilustración", width/2, cuentaFotograma); 
  textSize (28);
  text ("abarca publicidad, edición, animación y muralismo", width/2, cuentaFotograma+20);
  textSize (28);
  text ("está impulsado por su amor por las criaturas fantásticas.", width/2, cuentaFotograma+40);
  
   //
  cuentaFotograma++;
  //cuenta fotograma = cuentafotograma+1;
  if (cuentaFotograma>= 300) {
    estado = "pantalla 3"; 
      cuentaFotograma = 0;

  }
  }
  else if ( estado.equals("pantalla 3") ) {
  //pantalla 3 
  image (img3,0,0,640,480);
  fill(255); 
  textAlign (CENTER);
  textSize (33);
  text ("Kyle inició la primera fase de Phone Buddies", width/2, cuentaFotograma); 
  textSize (33);
  text ("tomando fotos en las calles de Londres de", width/2,cuentaFotograma+22); 
  textSize (33);
  text ("gente que encontró distraída en el teléfono.", width/2, cuentaFotograma+40);
  
     //
  cuentaFotograma++;
  if (cuentaFotograma>= 300) {
    estado = "pantalla 4"; 
      cuentaFotograma = 0;

  }
  
  }
  
  else if ( estado.equals("pantalla 4") ) {
  //pantalla 4 
  image (img4,0,0,640,480);
  fill(255); 
  textAlign (CENTER);
  textSize (30);
  text ("explica Rae, dibujé objetos o criaturas que salían", width/2, cuentaFotograma); 
  textSize (30);
  text ("de los teléfonos y nos miraban.", width/2, cuentaFotograma+30); 
  textSize (30);
  text ("Los diferentes estilos de la fotografía y", width/2,cuentaFotograma+55); 
  textSize (30);
  text (" el dibujo tendían sentido juntos, ya que la pantalla", width/2, cuentaFotograma+77);
  textSize (30);
  text ("del teléfono es como un portal donde el mundo real.", width/2, cuentaFotograma+97);
  textSize (30);
  text ("y el mundo digital se encuentran.", width/2, cuentaFotograma+120);
  
     //
  cuentaFotograma++;
  if (cuentaFotograma>= 500) {
    estado = "inicio"; 
      cuentaFotograma = 0;

  }
  
  }
  
  
}
void mousePressed () {
  if (estado.equals("inicio") ) {
    if ( dist(mouseX,mouseY,width/2, 300) < 50) {
  estado = "pantalla 1";
  cuentaFotograma = 0;
    }
  
  } else if ( estado.equals("pantalla 1") ) {
    estado = "pantalla 2";
      cuentaFotograma = 0;

  }
  else if ( estado.equals("pantalla 2") ) {
    estado = "pantalla 3";
      cuentaFotograma = 0;

  }
  else if (estado.equals("pantalla 3") ) {
    estado = "pantalla 4";
      cuentaFotograma = 0;

  }
  else if (estado.equals("pantalla 4") ) {
    estado = "inicio";
    cuentaFotograma =0;
  }
}

/*********************************************
  Oi Kabum! BH
  Computaçao Grafica
  2o Rodizio - Audio x Imagem
  Frequencias do som como parametro
*********************************************/

/*********************************************/
void setup() {
  
  //-- use um dos dois comandos abaixo, dependendo do que quer fazer
   //setupFrequencias("bach1.mp3"); // 1: para usar mp3
  setupMic();                 // 2: para usar microfone
  //-----------------------
  
  size(1000,700, P2D);
  background(0);
}
 
/*********************************************/ 
void draw() {

//-- esse comando calcula as frequencias do som
  calculaFrequencias();  
//------------------------
  
  background(0);  
  stroke(0);

  int n = 18;
  float diam = width/n;
  
  float x = diam/2;
  float raio = 0;
  
  for (int i = 0; i < n; i++) {
    raio = 6*freq(i);
    fill( constrain(raio,50,255),50+100*noise(millis()*x/10000000),5);
    ellipse(x, height/2, raio, raio );    
    x += diam;
  } 
  
  println(freq(10));
  
}

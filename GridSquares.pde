/*
Programa Realizado por Martha Daniela Maldonado. Crea una cuadrícula,
luego unos cuadrados que encajen en ella y hace que todos roboten.
*/

int rap=0;
int rapy=0;
int dir=1;
int diry=1;
int posx=0;
int posy=0;

void setup(){
  size(500,500);
}

void draw(){
//Fondo Negro
  background(0);
  
  //Dibuja la cuadrícula
for(int i=10;i<110;i+=10){ 
   line(i,10,i,100); 
   line(10,i,100,i); 
}

//Establece la rapidez en x
rap=rap+(dir*10);
//Condiciona la dirección según el rango de rapidez donde se encuentre
if(rap>500 || rap<0){
  dir=dir*(-1);
}

//Establece la rapidez en y
rapy=rapy+(diry*5);
//Condiciona la dirección según el rango de rapidez donde se encuentre
if(rapy>500 || rapy<0){
  diry=diry*(-1);
}

//Determina la posición donde inicia cada rectángulo según la rapidez para ponerlo a rebotar
for(int j=10;j<100;j+=10){
    for(int k=10;k<100;k+=10){
      posx=j+rap;
      posy=k+rapy;
      rect(posx,posy,10,10);
   } 
 }
}
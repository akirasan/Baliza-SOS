// BALIZA SOS SEÑALIZACION VIAL
//
// Programa mínimo para el funcionamiento y señalización
//
// by akirasan DIC 2017 http://akirasan.net
//##############################

#include <Adafruit_NeoPixel.h>

#define PIN            2
#define PIN_BOTON      3        //El pin tiene que sorportar interrupción
#define NUMPIXELS      14
unsigned int pulsacion = 0;

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  pixels.begin();
  pinMode(PIN_BOTON, INPUT);
  attachInterrupt(digitalPinToInterrupt(PIN_BOTON), boton_pulsado, RISING);
  Serial.begin(115200);
}

void loop() {

  Serial.println(pulsacion);
  switch (pulsacion % 3) {   // 3 Funciones diferentes
    case 0:
      emergencia4();
      break;
    case 1:
      emergencia5();
      break;
    case 2:
      emergencia1();
      break;

  }
}

void boton_pulsado() {
  delay(1000);
  pulsacion++;
}

//=================================================
//=================================================

//#
//Todos los LEDs del mismo color pasados por R G B
//#
void todos_color(byte r, byte g, byte b) {
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, r, g, b);
  }
}

//#
// Rango de LEDs (inicio-fin) de un color R G B
//#
void rango_color(byte led_inicio, byte led_fin, byte r, byte g, byte b) {

  for (int i = led_inicio; i <= led_fin ; i++) {
    pixels.setPixelColor(i, r, g, b);
  }
}

//#
// Flash color amarillo en secciones de 4 LEDs a 360
//#
void emergencia4() {
  todos_color(0, 0, 0);
  // Flash de dos secciones opuestas
  for (int flash = 0; flash < 3; flash++) {
    rango_color(0, 3, 255, 165, 0);
    rango_color(7, 10, 255, 165, 0);
    pixels.show();
    delay(75);
    rango_color(0, 3, 0, 0, 0);
    rango_color(7, 10, 0, 0, 0);
    pixels.show();
    delay(100);
  }
  // Flash de las otras dos secciones opuestas
  for (int flash = 0; flash < 3; flash++) {
    rango_color(3, 6, 255, 165, 0);
    rango_color(10, 14, 255, 165, 0);
    pixels.show();
    delay(75);
    rango_color(3, 6, 0, 0, 0);
    rango_color(10, 14, 0, 0, 0);
    pixels.show();
    delay(100);
  }
}

//#
// Luz blanca de 8 LEDS fija. Función linterna
//#
void emergencia5() {
  pixels.setBrightness(255);
  rango_color(0, 7, 255, 255, 255);
  pixels.show();
  //delay(50000);
}

//#
// Sirena rotatoria de luz amarilla
//#
void emergencia1() {
  pixels.setBrightness(255);
  for (int i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, 255, 165, 0);
    pixels.show();
    delay(15);
    pixels.setPixelColor(i, pixels.Color(0, 0, 0));
    pixels.show();
  }
}


//#
// Luz blanca de todos los LEDs. Función linterna 360
//#
void emergencia2(int tiempo) {
  todos_color(255, 255, 255);
  pixels.show();
  delay(tiempo);
}


//#
// Flash amarillo de todos los LEDs.
//#
void emergencia3() {
  pixels.setBrightness(170);
  for (int i = 0; i < 10; i++) {
    todos_color(255, 165, 0); pixels.show(); delay(100);
    todos_color(0, 0, 0); pixels.show(); delay(55);
    todos_color(255, 165, 0); pixels.show(); delay(100);
    todos_color(0, 0, 0); pixels.show(); delay(55);
    todos_color(255, 165, 0); pixels.show(); delay(500);
    todos_color(0, 0, 0); pixels.show(); delay(25);
  }
}


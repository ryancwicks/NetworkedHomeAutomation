/**
 * This program recieves requests to turn on and off a relay through MQTT.
 */

#include <WiFi.h>
#include <PubSubClient.h>
#include <EEPROM.h>
#include <WebServer.h>

//SoftAP settings for initial setup
const char * default_SSID = "LightSwitch";
const char * default_password = "setuplight";

//Web server for setting SSID, Password and MQTT broker
WebServer server(80);
#include "web_pages.h"

//Persistently stored SSID, password and MQTT broker IP
const unsigned int SSID_OFFSET = 0;
const unsigned int SSID_SIZE = 50;
const unsigned int PASSWORD_OFFSET = SSID_OFFSET + SSID_SIZE;
const unsigned int PASSWORD_SIZE = 150;
const unsigned int BROKER_IP_OFFSET = PASSWORD_OFFSET + PASSWORD_SIZE;
const unsigned int BROKER_IP_SIZE = 16;

char SSID[SSID_SIZE] = {0};
char password[PASSWORD_SIZE] = {0};
char broker_ip[BROKER_IP_SIZE] = {0};

//MQTT settings
unsigned int port = 1883;
unsigned int baudrate = 115200;
const char * clientName = "LightSwitch";

//Hardware Settings
const unsigned int power_pin = 19;

WiFiClient wifiClient;
PubSubClient client(wifiClient);

void callback(char * topic, byte * payload, unsigned int length) {
  Serial.print ("Message recieved [");
  Serial.print (topic);
  Serial.print("] ");
  if (payload[0] == '0') {
    digitalWrite (power_pin, LOW);
    Serial.print (" Power Off.");
  } else {
    digitalWrite (power_pin, HIGH);
    Serial.print (" Power On.");
  }
  Serial.println();
}

void load_persistent() {
  unsigned int i = 0; 
  for (i = 0; i < SSID_SIZE; ++i) {
     SSID[i] = EEPROM.read(i + SSID_OFFSET);
  }
  for (i = 0; i < PASSWORD_SIZE; ++i) {
     password[i] = EEPROM.read(i+PASSWORD_OFFSET);
  }
  for (i = 0; i < BROKER_IP_SIZE; ++i) {
     broker_ip[i] = EEPROM.read(i+BROKER_IP_OFFSET);
  }
}

void save_persistent() {
  unsigned int i = 0; 
  for (i = 0; i < SSID_SIZE; ++i) {
     EEPROM.write(i + SSID_OFFSET, SSID[i]);
     EEPROM.commit();
  }
  for (i = 0; i < PASSWORD_SIZE; ++i) {
     EEPROM.write(i+PASSWORD_OFFSET, password[i]);
     EEPROM.commit();
  }
  for (i = 0; i < BROKER_IP_SIZE; ++i) {
     EEPROM.write(i+BROKER_IP_OFFSET, broker_ip[i]);
     EEPROM.commit();
  }
}

void reconnect() {
  //loop until reconnected
  while (!client.connected()) {
    Serial.print ("Attempting MQTT connection...");
    if (client.connect(clientName)) {
      Serial.println("connected");
      client.publish("newDevice", clientName );
      String subscribed_topic (clientName);
      subscribed_topic += "/power";
      client.subscribe(subscribed_topic.c_str());
    } else {
      Serial.print ("failed, rc=");
      Serial.print(client.state());
      Serial.println (" try again in 5 seconds.");
      delay(5000);
    }
  }
}

void setup() {
  pinMode (power_pin, OUTPUT);
  digitalWrite (power_pin, LOW);
  
    Serial.begin(baudrate);
    delay(10);

  if (false) {
    WiFi.softAP(default_SSID, default_password);
 
    Serial.println();
    Serial.print("IP address: ");
    Serial.println(WiFi.softAPIP());
 
  } else {
    client.setServer (broker_ip, port);
    client.setCallback(callback);
  
    Serial.println();
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(SSID);

    WiFi.begin(SSID, password);

    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }

    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
  }
  server.on("/", [](){
    server.send(200, "text/plain", "Hello World");
  });
 
  server.begin();   
}

void loop() {
  if (!client.connected()) {
    reconnect();
    server.handleClient();
  }
  client.loop();
}

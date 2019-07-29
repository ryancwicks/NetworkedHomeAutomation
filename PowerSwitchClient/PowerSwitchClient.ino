/**
 * This program recieves requests to turn on and off a relay through MQTT.
 */

#include "credentials.h" //defines SSID, password and host IP, not for github.

#include <WiFi.h>
#include <PubSubClient.h>

unsigned int port = 1883;
unsigned int baudrate = 115200;
const char * clientName = "LightSwitch";
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

    client.setServer (server_ip, port);
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

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();

}

# NetworkedHomeAutomation
Simple home automation setup using ESP32's as an MQTT client and a Raspberry Pi based MQTT broker.

# Testing the client:

Install the mosquitto app:

```bash
sudo snap install mosquitto
```

In one window, open the subscriber that listens for new devices:

```bash
mosquitto_sub -t "newDevice"
```

In another window, you can turn the device on and off with 

```bash
mosquitto_pub -t "LightSwitch/power" -m "1"
```

and

```bash
mosquitto_sub -t "lightSwitch/power" -m "0"
```


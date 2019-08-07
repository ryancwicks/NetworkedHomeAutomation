EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Power Switch Client Board"
Date "2019-07-31"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PowerSwitchClientBoardLibrary:ESP32-DOIT U1
U 1 1 5D437084
P 6300 4350
F 0 "U1" H 6275 5265 50  0000 C CNN
F 1 "ESP32-DOIT" H 6275 5174 50  0000 C CNN
F 2 "" H 6300 4350 50  0001 C CNN
F 3 "" H 6300 4350 50  0001 C CNN
F 4 "ESP32-DOIT" H 6300 4350 50  0001 C CNN "PartNumber"
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J2
U 1 1 5D437819
P 1350 1600
F 0 "J2" H 1268 1817 50  0000 C CNN
F 1 "Conn_01x02" H 1268 1726 50  0000 C CNN
F 2 "" H 1350 1600 50  0001 C CNN
F 3 "~" H 1350 1600 50  0001 C CNN
	1    1350 1600
	-1   0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J3
U 1 1 5D437EC0
P 1350 2700
F 0 "J3" H 1268 2917 50  0000 C CNN
F 1 "Conn_01x02" H 1268 2826 50  0000 C CNN
F 2 "" H 1350 2700 50  0001 C CNN
F 3 "~" H 1350 2700 50  0001 C CNN
	1    1350 2700
	-1   0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J1
U 1 1 5D43822B
P 1300 4900
F 0 "J1" H 1218 5117 50  0000 C CNN
F 1 "Conn_01x02" H 1218 5026 50  0000 C CNN
F 2 "" H 1300 4900 50  0001 C CNN
F 3 "~" H 1300 4900 50  0001 C CNN
	1    1300 4900
	-1   0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J6
U 1 1 5D438551
P 8600 2650
F 0 "J6" H 8680 2642 50  0000 L CNN
F 1 "Conn_01x02" H 8680 2551 50  0000 L CNN
F 2 "" H 8600 2650 50  0001 C CNN
F 3 "~" H 8600 2650 50  0001 C CNN
	1    8600 2650
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J7
U 1 1 5D438A9E
P 8600 3400
F 0 "J7" H 8680 3392 50  0000 L CNN
F 1 "Conn_01x02" H 8680 3301 50  0000 L CNN
F 2 "" H 8600 3400 50  0001 C CNN
F 3 "~" H 8600 3400 50  0001 C CNN
	1    8600 3400
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J4
U 1 1 5D438DEE
P 8550 4250
F 0 "J4" H 8630 4242 50  0000 L CNN
F 1 "Conn_01x02" H 8630 4151 50  0000 L CNN
F 2 "" H 8550 4250 50  0001 C CNN
F 3 "~" H 8550 4250 50  0001 C CNN
	1    8550 4250
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Conn_01x02 J5
U 1 1 5D439518
P 8550 5100
F 0 "J5" H 8630 5092 50  0000 L CNN
F 1 "Conn_01x02" H 8630 5001 50  0000 L CNN
F 2 "" H 8550 5100 50  0001 C CNN
F 3 "~" H 8550 5100 50  0001 C CNN
	1    8550 5100
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:R R2
U 1 1 5D439B32
P 3350 3800
F 0 "R2" H 3420 3846 50  0000 L CNN
F 1 "1K" H 3420 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 3800 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3350 3800 50  0001 C CNN
F 4 "RNF14FTD1K00 " H 3350 3800 50  0001 C CNN "PartNumber"
	1    3350 3800
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:R R1
U 1 1 5D43A69E
P 3300 6000
F 0 "R1" H 3370 6046 50  0000 L CNN
F 1 "1K" H 3370 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 6000 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 3300 6000 50  0001 C CNN
F 4 "RNF14FTD1K00 " H 3300 6000 50  0001 C CNN "PartNumber"
	1    3300 6000
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:G5LE-1 K2
U 1 1 5D43AAAB
P 2600 3000
F 0 "K2" V 3167 3000 50  0000 C CNN
F 1 "G5LE-1" V 3076 3000 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 3050 2950 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2600 2600 50  0001 C CNN
F 4 "G5LE-1 DC9 " H 2600 3000 50  0001 C CNN "PartNumber"
	1    2600 3000
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:G5LE-1 K1
U 1 1 5D43B6DB
P 2550 5200
F 0 "K1" V 3117 5200 50  0000 C CNN
F 1 "G5LE-1" V 3026 5200 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 3000 5150 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g5le.pdf" H 2550 4800 50  0001 C CNN
F 4 "G5LE-1 DC9 " H 2550 5200 50  0001 C CNN "PartNumber"
	1    2550 5200
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:D D2
U 1 1 5D43BE70
P 2600 3700
F 0 "D2" H 2600 3916 50  0000 C CNN
F 1 "D" H 2600 3825 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2600 3700 50  0001 C CNN
F 3 "https://www.mccsemi.com/pdf/Products/1N4001-1N4007(DO-41).pdf" H 2600 3700 50  0001 C CNN
F 4 " 	1N4007-TP " H 2600 3700 50  0001 C CNN "PartNumber"
	1    2600 3700
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:D D1
U 1 1 5D43C336
P 2550 5900
F 0 "D1" H 2550 6116 50  0000 C CNN
F 1 "D" H 2550 6025 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2550 5900 50  0001 C CNN
F 3 "https://www.mccsemi.com/pdf/Products/1N4001-1N4007(DO-41).pdf" H 2550 5900 50  0001 C CNN
F 4 " 	1N4007-TP " H 2550 5900 50  0001 C CNN "PartNumber"
	1    2550 5900
	1    0    0    -1  
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Q_NPN_EBC Q1
U 1 1 5D43CA00
P 3300 5500
F 0 "Q1" V 3628 5500 50  0000 C CNN
F 1 "Q_NPN_EBC" V 3537 5500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3500 5600 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222A-D.pdf" H 3300 5500 50  0001 C CNN
F 4 "PN2222ABU " H 3300 5500 50  0001 C CNN "PartNumber"
	1    3300 5500
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Q_NPN_EBC Q2
U 1 1 5D43D1A1
P 3350 3300
F 0 "Q2" V 3678 3300 50  0000 C CNN
F 1 "Q_NPN_EBC" V 3587 3300 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3550 3400 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222A-D.pdf" H 3350 3300 50  0001 C CNN
F 4 "PN2222ABU " H 3350 3300 50  0001 C CNN "PartNumber"
	1    3350 3300
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:Fuse F1
U 1 1 5D443135
P 2000 1600
F 0 "F1" V 1803 1600 50  0000 C CNN
F 1 "Fuse" V 1894 1600 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1930 1600 50  0001 C CNN
F 3 "http://www.schurterinc.com/bundles/snceschurter/epim/_ProdPool_/newDS/en/typ_OGN.pdf" H 2000 1600 50  0001 C CNN
F 4 " Schurter 0031.8211 " H 2000 1600 50  0001 C CNN "PartNumber"
	1    2000 1600
	0    1    1    0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:PSK-S10C PS1
U 1 1 5D443724
P 3450 1700
F 0 "PS1" H 3450 2067 50  0000 C CNN
F 1 "PSK-S10C" H 3450 1976 50  0000 C CNN
F 2 "PowerSwitchClientBoard:PSK-S10C" H 3450 1350 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/psk-s10c-t.pdf" H 3450 1300 50  0001 C CNN
F 4 "https://www.cui.com/product/resource/digikeypdf/psk-s10c-t.pdf" H 3450 1700 50  0001 C CNN "PartNumber"
	1    3450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1600 1850 1600
Wire Wire Line
	2150 1600 2550 1600
Text GLabel 2950 1800 0    50   Input ~ 0
Neutral
Text GLabel 1650 1700 2    50   Input ~ 0
Neutral
Text GLabel 1650 2800 2    50   Input ~ 0
Neutral
Text GLabel 1600 5000 2    50   Input ~ 0
Neutral
Wire Wire Line
	2950 1800 3050 1800
Wire Wire Line
	1650 1700 1550 1700
Wire Wire Line
	1650 2800 1550 2800
Wire Wire Line
	1600 5000 1500 5000
$Comp
L power:GND #PWR06
U 1 1 5D456EFA
P 3950 1900
F 0 "#PWR06" H 3950 1650 50  0001 C CNN
F 1 "GND" H 3955 1727 50  0000 C CNN
F 2 "" H 3950 1900 50  0001 C CNN
F 3 "" H 3950 1900 50  0001 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR05
U 1 1 5D4572C0
P 3950 1500
F 0 "#PWR05" H 3950 1350 50  0001 C CNN
F 1 "+9V" H 3965 1673 50  0000 C CNN
F 2 "" H 3950 1500 50  0001 C CNN
F 3 "" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR08
U 1 1 5D4578FA
P 7000 3550
F 0 "#PWR08" H 7000 3400 50  0001 C CNN
F 1 "+9V" H 7015 3723 50  0000 C CNN
F 2 "" H 7000 3550 50  0001 C CNN
F 3 "" H 7000 3550 50  0001 C CNN
	1    7000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D45803E
P 7000 3800
F 0 "#PWR09" H 7000 3550 50  0001 C CNN
F 1 "GND" V 7005 3672 50  0000 R CNN
F 2 "" H 7000 3800 50  0001 C CNN
F 3 "" H 7000 3800 50  0001 C CNN
	1    7000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 1500 3950 1600
Wire Wire Line
	3950 1600 3850 1600
Wire Wire Line
	3850 1800 3950 1800
Wire Wire Line
	3950 1800 3950 1900
Wire Wire Line
	7000 3550 7000 3700
Wire Wire Line
	7000 3700 6850 3700
Wire Wire Line
	7000 3800 6850 3800
$Comp
L power:GND #PWR07
U 1 1 5D459181
P 5550 3800
F 0 "#PWR07" H 5550 3550 50  0001 C CNN
F 1 "GND" V 5555 3672 50  0000 R CNN
F 2 "" H 5550 3800 50  0001 C CNN
F 3 "" H 5550 3800 50  0001 C CNN
	1    5550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3800 5700 3800
$Comp
L power:+9V #PWR02
U 1 1 5D4678F9
P 1900 3200
F 0 "#PWR02" H 1900 3050 50  0001 C CNN
F 1 "+9V" V 1915 3328 50  0000 L CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:+9V #PWR01
U 1 1 5D468D5D
P 1850 5400
F 0 "#PWR01" H 1850 5250 50  0001 C CNN
F 1 "+9V" V 1865 5528 50  0000 L CNN
F 2 "" H 1850 5400 50  0001 C CNN
F 3 "" H 1850 5400 50  0001 C CNN
	1    1850 5400
	0    -1   -1   0   
$EndComp
Text GLabel 2550 1500 1    50   Input ~ 0
Line
Text GLabel 3050 2800 2    50   Input ~ 0
Line
Text GLabel 3000 5000 2    50   Input ~ 0
Line
Wire Wire Line
	1550 2700 2300 2700
Wire Wire Line
	2900 2800 3050 2800
Wire Wire Line
	2900 3200 3000 3200
Wire Wire Line
	1900 3200 2200 3200
Wire Wire Line
	2200 3200 2200 3700
Wire Wire Line
	2200 3700 2450 3700
Connection ~ 2200 3200
Wire Wire Line
	2200 3200 2300 3200
Wire Wire Line
	2750 3700 3000 3700
Wire Wire Line
	3000 3700 3000 3200
Connection ~ 3000 3200
Wire Wire Line
	3000 3200 3150 3200
Wire Wire Line
	3350 3650 3350 3500
$Comp
L power:GND #PWR03
U 1 1 5D4BAFCA
P 3800 3200
F 0 "#PWR03" H 3800 2950 50  0001 C CNN
F 1 "GND" V 3805 3072 50  0000 R CNN
F 2 "" H 3800 3200 50  0001 C CNN
F 3 "" H 3800 3200 50  0001 C CNN
	1    3800 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 3200 3800 3200
$Comp
L power:GND #PWR04
U 1 1 5D4BBB68
P 3800 5400
F 0 "#PWR04" H 3800 5150 50  0001 C CNN
F 1 "GND" V 3805 5272 50  0000 R CNN
F 2 "" H 3800 5400 50  0001 C CNN
F 3 "" H 3800 5400 50  0001 C CNN
	1    3800 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 5400 3800 5400
Wire Wire Line
	2850 5400 3000 5400
Wire Wire Line
	3300 5850 3300 5700
Wire Wire Line
	1850 5400 2150 5400
Wire Wire Line
	2150 5400 2150 5900
Wire Wire Line
	2150 5900 2400 5900
Connection ~ 2150 5400
Wire Wire Line
	2150 5400 2250 5400
Wire Wire Line
	2700 5900 3000 5900
Wire Wire Line
	3000 5900 3000 5400
Connection ~ 3000 5400
Wire Wire Line
	3000 5400 3100 5400
Wire Wire Line
	1500 4900 2250 4900
Text GLabel 7200 3900 2    50   Input ~ 0
Relay1
Text GLabel 7200 4000 2    50   Input ~ 0
Relay2
Wire Wire Line
	6850 3900 7200 3900
Wire Wire Line
	7200 4000 6850 4000
Text GLabel 3350 4100 3    50   Input ~ 0
Relay1
Text GLabel 3300 6250 3    50   Input ~ 0
Relay2
Wire Wire Line
	3350 3950 3350 4100
Wire Wire Line
	3300 6150 3300 6250
$Comp
L power:GND #PWR010
U 1 1 5D4D165F
P 7750 2750
F 0 "#PWR010" H 7750 2500 50  0001 C CNN
F 1 "GND" V 7755 2622 50  0000 R CNN
F 2 "" H 7750 2750 50  0001 C CNN
F 3 "" H 7750 2750 50  0001 C CNN
	1    7750 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D4D542C
P 7750 3500
F 0 "#PWR011" H 7750 3250 50  0001 C CNN
F 1 "GND" V 7755 3372 50  0000 R CNN
F 2 "" H 7750 3500 50  0001 C CNN
F 3 "" H 7750 3500 50  0001 C CNN
	1    7750 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D4D58B5
P 7750 4350
F 0 "#PWR012" H 7750 4100 50  0001 C CNN
F 1 "GND" V 7755 4222 50  0000 R CNN
F 2 "" H 7750 4350 50  0001 C CNN
F 3 "" H 7750 4350 50  0001 C CNN
	1    7750 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D4D5D3C
P 7750 5200
F 0 "#PWR013" H 7750 4950 50  0001 C CNN
F 1 "GND" V 7755 5072 50  0000 R CNN
F 2 "" H 7750 5200 50  0001 C CNN
F 3 "" H 7750 5200 50  0001 C CNN
	1    7750 5200
	0    1    1    0   
$EndComp
Text GLabel 5500 4200 0    50   Input ~ 0
Ind1
Text GLabel 5500 4300 0    50   Input ~ 0
Ind2
Text GLabel 5500 4400 0    50   Input ~ 0
Input1
Text GLabel 5500 4500 0    50   Input ~ 0
Input2
Text GLabel 7750 2650 0    50   Input ~ 0
Ind1
Text GLabel 7750 3400 0    50   Input ~ 0
Ind2
Text GLabel 7750 4250 0    50   Input ~ 0
Input1
Text GLabel 7750 5100 0    50   Input ~ 0
Input2
Wire Wire Line
	7750 2750 8400 2750
Wire Wire Line
	7750 3500 8400 3500
Wire Wire Line
	7750 4250 7900 4250
Wire Wire Line
	7750 4350 8300 4350
Wire Wire Line
	7750 5100 7900 5100
Wire Wire Line
	7750 5200 8300 5200
Wire Wire Line
	5500 4200 5700 4200
Wire Wire Line
	5500 4300 5700 4300
Wire Wire Line
	5500 4400 5700 4400
Wire Wire Line
	5500 4500 5700 4500
Wire Wire Line
	2850 5000 3000 5000
$Comp
L PowerSwitchClientBoardLibrary:LED D3
U 1 1 5D4ECCB4
P 9250 2700
F 0 "D3" V 9289 2583 50  0000 R CNN
F 1 "LED" V 9198 2583 50  0000 R CNN
F 2 "" H 9250 2700 50  0001 C CNN
F 3 "https://www.lumex.com/content/files/ProductAttachment/SSI-LXH600GD-150.pdf" H 9250 2700 50  0001 C CNN
F 4 "SSI-LXH600GD-150 " H 9250 2700 50  0001 C CNN "PartNumber"
	1    9250 2700
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:LED D4
U 1 1 5D4EF2EF
P 9250 3450
F 0 "D4" V 9289 3333 50  0000 R CNN
F 1 "LED" V 9198 3333 50  0000 R CNN
F 2 "" H 9250 3450 50  0001 C CNN
F 3 "https://www.lumex.com/content/files/ProductAttachment/SSI-LXH600GD-150.pdf" H 9250 3450 50  0001 C CNN
F 4 "SSI-LXH600GD-150 " H 9250 3450 50  0001 C CNN "PartNumber"
	1    9250 3450
	0    -1   -1   0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:SW_Push SW1
U 1 1 5D4F9030
P 8100 4650
F 0 "SW1" H 8100 4465 50  0000 C CNN
F 1 "SW_Push" H 8100 4556 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 8100 4850 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825027&DocType=Customer+Drawing&DocLang=English" H 8100 4850 50  0001 C CNN
F 4 "1825027-8 " H 8100 4650 50  0001 C CNN "PartNumber"
	1    8100 4650
	-1   0    0    1   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:SW_Push SW2
U 1 1 5D4FA1BF
P 8100 5500
F 0 "SW2" H 8100 5315 50  0000 C CNN
F 1 "SW_Push" H 8100 5406 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SKHH_Angled" H 8100 5700 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825027&DocType=Customer+Drawing&DocLang=English" H 8100 5700 50  0001 C CNN
F 4 "1825027-8 " H 8100 5500 50  0001 C CNN "PartNumber"
	1    8100 5500
	-1   0    0    1   
$EndComp
NoConn ~ 9250 2550
NoConn ~ 9250 2850
NoConn ~ 9250 3300
NoConn ~ 9250 3600
$Comp
L PowerSwitchClientBoardLibrary:R R4
U 1 1 5D504014
P 8050 3400
F 0 "R4" V 7843 3400 50  0000 C CNN
F 1 "75" V 7934 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 3400 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 8050 3400 50  0001 C CNN
F 4 " RNF14FTD75R0" H 8050 3400 50  0001 C CNN "PartNumber"
	1    8050 3400
	0    1    1    0   
$EndComp
$Comp
L PowerSwitchClientBoardLibrary:R R3
U 1 1 5D505521
P 8050 2650
F 0 "R3" V 7843 2650 50  0000 C CNN
F 1 "75" V 7934 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7980 2650 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rnf_rnmf.pdf" H 8050 2650 50  0001 C CNN
F 4 " RNF14FTD75R0" H 8050 2650 50  0001 C CNN "PartNumber"
	1    8050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2650 7900 2650
Wire Wire Line
	8200 2650 8400 2650
Wire Wire Line
	7750 3400 7900 3400
Wire Wire Line
	8200 3400 8400 3400
NoConn ~ 5700 3700
NoConn ~ 5700 3900
NoConn ~ 5700 4000
NoConn ~ 5700 4100
NoConn ~ 5700 4600
NoConn ~ 5700 4700
NoConn ~ 5700 4800
NoConn ~ 5700 4900
NoConn ~ 5700 5000
NoConn ~ 5700 5100
NoConn ~ 6850 4100
NoConn ~ 6850 4200
NoConn ~ 6850 4300
NoConn ~ 6850 4400
NoConn ~ 6850 4500
NoConn ~ 6850 4600
NoConn ~ 6850 4700
NoConn ~ 6850 4800
NoConn ~ 6850 4900
NoConn ~ 6850 5000
NoConn ~ 6850 5100
Wire Wire Line
	7900 5100 7900 5500
Connection ~ 7900 5100
Wire Wire Line
	7900 5100 8350 5100
Wire Wire Line
	8300 5200 8300 5500
Connection ~ 8300 5200
Wire Wire Line
	8300 5200 8350 5200
Wire Wire Line
	7900 4250 7900 4650
Connection ~ 7900 4250
Wire Wire Line
	7900 4250 8350 4250
Wire Wire Line
	8300 4350 8300 4650
Connection ~ 8300 4350
Wire Wire Line
	8300 4350 8350 4350
Wire Wire Line
	2550 1500 2550 1600
Connection ~ 2550 1600
Wire Wire Line
	2550 1600 3050 1600
$EndSCHEMATC

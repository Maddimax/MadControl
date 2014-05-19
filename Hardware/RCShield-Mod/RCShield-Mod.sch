EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino_shieldsNCL
LIBS:RCShield-Mod-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "18 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ARDUINO_MEGA_SHIELD SHIELD2
U 1 1 536BD2B3
P 4950 3600
F 0 "SHIELD2" H 4550 6100 60  0000 C CNN
F 1 "ARDUINO_MEGA_SHIELD" H 4850 900 60  0000 C CNN
F 2 "" H 4950 3600 60  0000 C CNN
F 3 "" H 4950 3600 60  0000 C CNN
	1    4950 3600
	1    0    0    -1  
$EndComp
Text GLabel 3800 3950 0    60   Input ~ 0
DIGI_INT
Text GLabel 6100 3750 2    60   Input ~ 0
SCL
Text GLabel 6100 3650 2    60   Input ~ 0
SDA
Text GLabel 3700 1950 0    60   Input ~ 0
GND
Text GLabel 3700 2050 0    60   Input ~ 0
GND
Text GLabel 3700 4200 0    60   Input ~ 0
GND
Text GLabel 3700 4300 0    60   Input ~ 0
GND
Text GLabel 6050 1350 2    60   Input ~ 0
GND
Text GLabel 3700 1850 0    60   Input ~ 0
+5V
$Comp
L ARDUINO_SHIELD SHIELD1
U 1 1 536C3663
P 1850 3600
F 0 "SHIELD1" H 1500 4550 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 1900 2650 60  0000 C CNN
F 2 "" H 1850 3600 60  0000 C CNN
F 3 "" H 1850 3600 60  0000 C CNN
	1    1850 3600
	1    0    0    -1  
$EndComp
Text GLabel 2950 2900 2    60   Input ~ 0
GND
Text GLabel 750  3500 0    60   Input ~ 0
GND
Text GLabel 750  3600 0    60   Input ~ 0
GND
Text GLabel 2950 3000 2    60   Input ~ 0
SCK
Text GLabel 2950 3100 2    60   Input ~ 0
MISO
Text GLabel 2950 3200 2    60   Input ~ 0
MOSI
Text GLabel 3750 4550 0    60   Input ~ 0
SCK
Text GLabel 3750 4750 0    60   Input ~ 0
MISO
Text GLabel 3750 4650 0    60   Input ~ 0
MOSI
Wire Wire Line
	6100 3650 5850 3650
Wire Wire Line
	5850 3750 6100 3750
Wire Wire Line
	6050 1350 5850 1350
Wire Wire Line
	3700 4200 3950 4200
Wire Wire Line
	3950 4300 3700 4300
Wire Wire Line
	3700 1950 3950 1950
Wire Wire Line
	3950 2050 3700 2050
Wire Wire Line
	3700 1850 3950 1850
Wire Wire Line
	2950 2900 2800 2900
Wire Wire Line
	2950 3000 2800 3000
Wire Wire Line
	2950 3100 2800 3100
Wire Wire Line
	2950 3200 2800 3200
Wire Wire Line
	750  3500 900  3500
Wire Wire Line
	750  3600 900  3600
Text GLabel 750  3400 0    60   Input ~ 0
+5V
Text GLabel 3700 2150 0    60   Input ~ 0
VIN
Wire Wire Line
	3950 2150 3700 2150
Wire Wire Line
	3950 3950 3800 3950
Text GLabel 2950 3400 2    60   Input ~ 0
SDSEL
Text GLabel 2950 3500 2    60   Input ~ 0
GPUSEL
Text GLabel 2950 4200 2    60   Input ~ 0
DISPINT
Text GLabel 5950 2650 2    60   Input ~ 0
DISPINT
Text GLabel 5950 1950 2    60   Input ~ 0
GPUSEL
Text GLabel 5950 1850 2    60   Input ~ 0
SDSEL
Wire Wire Line
	5850 1850 5950 1850
Wire Wire Line
	5850 1950 5950 1950
Wire Wire Line
	5950 2650 5850 2650
Wire Wire Line
	2950 3400 2800 3400
Wire Wire Line
	2950 3500 2800 3500
Wire Wire Line
	2950 4200 2800 4200
Wire Wire Line
	750  3400 900  3400
Wire Wire Line
	3750 4550 3950 4550
Wire Wire Line
	3950 4650 3750 4650
Wire Wire Line
	3750 4750 3950 4750
Text GLabel 750  3900 0    60   Input ~ 0
ACCX
Text GLabel 750  4000 0    60   Input ~ 0
ACCY
Text GLabel 750  4100 0    60   Input ~ 0
ACCZ
Text GLabel 3850 2350 0    60   Input ~ 0
ACCX
Text GLabel 3850 2450 0    60   Input ~ 0
ACCY
Text GLabel 3850 2550 0    60   Input ~ 0
ACCZ
Wire Wire Line
	3850 2350 3950 2350
Wire Wire Line
	3850 2450 3950 2450
Wire Wire Line
	3850 2550 3950 2550
Wire Wire Line
	750  3900 900  3900
Wire Wire Line
	750  4000 900  4000
Wire Wire Line
	750  4100 900  4100
$Comp
L CONN_3 K1
U 1 1 536F292E
P 2800 7150
F 0 "K1" V 2750 7150 50  0000 C CNN
F 1 "PPM_OUT" V 2850 7150 40  0000 C CNN
F 2 "" H 2800 7150 60  0000 C CNN
F 3 "" H 2800 7150 60  0000 C CNN
	1    2800 7150
	0    1    1    0   
$EndComp
Text GLabel 2700 6800 1    60   Input ~ 0
PPM
Text GLabel 2800 6800 1    60   Input ~ 0
VIN
Text GLabel 2900 6800 1    60   Input ~ 0
GND
Text GLabel 5850 1450 2    60   Input ~ 0
PPM
$Comp
L CONN_2 P7
U 1 1 536F2B46
P 850 7350
F 0 "P7" V 800 7350 40  0000 C CNN
F 1 "Vinput" V 900 7350 40  0000 C CNN
F 2 "" H 850 7350 60  0000 C CNN
F 3 "" H 850 7350 60  0000 C CNN
	1    850  7350
	0    1    1    0   
$EndComp
Text GLabel 950  6600 1    60   Input ~ 0
GND
Text GLabel 750  6600 1    60   Input ~ 0
VIN
Text GLabel 3950 2650 0    60   Input ~ 0
Vsense
$Comp
L R R1
U 1 1 536F2BA6
P 1750 5400
F 0 "R1" V 1830 5400 40  0000 C CNN
F 1 "10k" V 1757 5401 40  0000 C CNN
F 2 "~" V 1680 5400 30  0000 C CNN
F 3 "~" H 1750 5400 30  0000 C CNN
	1    1750 5400
	-1   0    0    1   
$EndComp
$Comp
L R R19
U 1 1 536F2BAD
P 1750 5900
F 0 "R19" V 1830 5900 40  0000 C CNN
F 1 "10k" V 1757 5901 40  0000 C CNN
F 2 "~" V 1680 5900 30  0000 C CNN
F 3 "~" H 1750 5900 30  0000 C CNN
	1    1750 5900
	-1   0    0    1   
$EndComp
Text GLabel 1750 5650 0    60   Input ~ 0
Vsense
Text GLabel 1750 6150 3    60   Input ~ 0
GND
Text GLabel 1750 5150 1    60   Input ~ 0
VIN
$Comp
L CONN_4 P1
U 1 1 5370F75A
P 7300 1300
F 0 "P1" V 7250 1300 50  0000 C CNN
F 1 "ANALOG_EXT" V 7350 1300 50  0000 C CNN
F 2 "" H 7300 1300 60  0000 C CNN
F 3 "" H 7300 1300 60  0000 C CNN
	1    7300 1300
	0    -1   -1   0   
$EndComp
$Comp
L CONN_5 P2
U 1 1 5370F769
P 8050 1300
F 0 "P2" V 8000 1300 50  0000 C CNN
F 1 "DIGI_EXT" V 8100 1300 50  0000 C CNN
F 2 "" H 8050 1300 60  0000 C CNN
F 3 "" H 8050 1300 60  0000 C CNN
	1    8050 1300
	0    -1   -1   0   
$EndComp
Text GLabel 7250 1650 3    60   Input ~ 0
SDA
Text GLabel 7350 1650 3    60   Input ~ 0
SCL
Text GLabel 7450 1650 3    60   Input ~ 0
GND
Text GLabel 7150 1650 3    60   Input ~ 0
+5V
Text GLabel 7850 1700 3    60   Input ~ 0
+5V
Text GLabel 7950 1700 3    60   Input ~ 0
SDA
Text GLabel 8050 1700 3    60   Input ~ 0
SCL
Text GLabel 8150 1700 3    60   Input ~ 0
GND
Text GLabel 8250 1700 3    60   Input ~ 0
DIGI_INT
$Comp
L R R2
U 1 1 5370F799
P 7400 3750
F 0 "R2" V 7480 3750 40  0000 C CNN
F 1 "1.5k" V 7407 3751 40  0000 C CNN
F 2 "~" V 7330 3750 30  0000 C CNN
F 3 "~" H 7400 3750 30  0000 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5370F7B2
P 7600 3750
F 0 "R3" V 7680 3750 40  0000 C CNN
F 1 "1.5k" V 7607 3751 40  0000 C CNN
F 2 "~" V 7530 3750 30  0000 C CNN
F 3 "~" H 7600 3750 30  0000 C CNN
	1    7600 3750
	1    0    0    -1  
$EndComp
Text GLabel 7400 4000 3    60   Input ~ 0
SDA
Text GLabel 7600 4000 3    60   Input ~ 0
SCL
Text GLabel 7400 3500 1    60   Input ~ 0
+5V
Text GLabel 7600 3500 1    60   Input ~ 0
+5V
$Comp
L DIODE D1
U 1 1 5371403C
P 750 6800
F 0 "D1" H 750 6900 40  0000 C CNN
F 1 "DIODE" H 750 6700 40  0000 C CNN
F 2 "~" H 750 6800 60  0000 C CNN
F 3 "~" H 750 6800 60  0000 C CNN
	1    750  6800
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 53714072
P 950 6800
F 0 "D2" H 950 6900 40  0000 C CNN
F 1 "DIODE" H 950 6700 40  0000 C CNN
F 2 "~" H 950 6800 60  0000 C CNN
F 3 "~" H 950 6800 60  0000 C CNN
	1    950  6800
	0    1    1    0   
$EndComp
$Comp
L CP1 C1
U 1 1 5378EA9A
P 7500 2750
F 0 "C1" H 7550 2850 50  0000 L CNN
F 1 "220uF" H 7550 2650 50  0000 L CNN
F 2 "~" H 7500 2750 60  0000 C CNN
F 3 "~" H 7500 2750 60  0000 C CNN
	1    7500 2750
	0    -1   -1   0   
$EndComp
Text GLabel 7300 2750 0    60   Input ~ 0
+5V
Text GLabel 7700 2750 2    60   Input ~ 0
GND
$EndSCHEMATC

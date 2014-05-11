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
LIBS:AnalogBoard-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "11 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LTC2309 U5
U 1 1 536F77E4
P 8400 2950
F 0 "U5" H 8400 2350 60  0000 C CNN
F 1 "LTC2309" H 8400 3550 60  0000 C CNN
F 2 "~" H 8400 3550 60  0000 C CNN
F 3 "~" H 8400 3550 60  0000 C CNN
	1    8400 2950
	1    0    0    -1  
$EndComp
$Comp
L C U1
U 1 1 536F77E6
P 7450 3650
F 0 "U1" H 7450 3750 40  0000 L CNN
F 1 "10uf" H 7456 3565 40  0000 L CNN
F 2 "~" H 7488 3500 30  0000 C CNN
F 3 "~" H 7450 3650 60  0000 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 536F77E7
P 10400 1950
F 0 "P2" V 10350 1950 60  0000 C CNN
F 1 "ACH67" V 10450 1950 60  0000 C CNN
F 2 "" H 10400 1950 60  0000 C CNN
F 3 "" H 10400 1950 60  0000 C CNN
	1    10400 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P3
U 1 1 536F77E8
P 10400 2650
F 0 "P3" V 10350 2650 60  0000 C CNN
F 1 "ACH45" V 10450 2650 60  0000 C CNN
F 2 "" H 10400 2650 60  0000 C CNN
F 3 "" H 10400 2650 60  0000 C CNN
	1    10400 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P4
U 1 1 536F77E9
P 10400 3350
F 0 "P4" V 10350 3350 60  0000 C CNN
F 1 "ACH23" V 10450 3350 60  0000 C CNN
F 2 "" H 10400 3350 60  0000 C CNN
F 3 "" H 10400 3350 60  0000 C CNN
	1    10400 3350
	1    0    0    -1  
$EndComp
Text GLabel 9750 1100 1    60   Input ~ 0
GND
Text GLabel 10000 1100 1    60   Input ~ 0
+5V
Text GLabel 7700 1100 1    60   Input ~ 0
GND
Text GLabel 7450 1100 1    60   Input ~ 0
+5V
Text GLabel 7800 3100 0    60   Input ~ 0
SDA
Wire Wire Line
	10000 1100 10000 4100
Wire Wire Line
	10000 1700 10050 1700
Wire Wire Line
	10000 2000 10050 2000
Connection ~ 10000 1700
Wire Wire Line
	10000 2400 10050 2400
Connection ~ 10000 2000
Wire Wire Line
	10000 2700 10050 2700
Connection ~ 10000 2400
Wire Wire Line
	10000 3100 10050 3100
Connection ~ 10000 2700
Wire Wire Line
	10000 3400 10050 3400
Connection ~ 10000 3100
Wire Wire Line
	10000 3800 10050 3800
Connection ~ 10000 3400
Wire Wire Line
	10000 4100 10050 4100
Connection ~ 10000 3800
Wire Wire Line
	9750 1100 9750 4300
Wire Wire Line
	9750 1900 10050 1900
Wire Wire Line
	9750 2200 10050 2200
Connection ~ 9750 1900
Wire Wire Line
	9750 2600 10050 2600
Connection ~ 9750 2200
Wire Wire Line
	9750 2900 10050 2900
Connection ~ 9750 2600
Wire Wire Line
	9750 3300 10050 3300
Connection ~ 9750 2900
Wire Wire Line
	9750 3600 10050 3600
Connection ~ 9750 3300
Connection ~ 9750 3600
Wire Wire Line
	9750 4300 10050 4300
Wire Wire Line
	10050 1800 9200 1800
Wire Wire Line
	9200 1800 9200 2700
Wire Wire Line
	9200 2700 9050 2700
Wire Wire Line
	10050 2100 9300 2100
Wire Wire Line
	9300 2100 9300 2800
Wire Wire Line
	9300 2800 9050 2800
Wire Wire Line
	10050 2500 9400 2500
Wire Wire Line
	9400 2500 9400 2900
Wire Wire Line
	9400 2900 9050 2900
Wire Wire Line
	10050 2800 9500 2800
Wire Wire Line
	9500 2800 9500 3000
Wire Wire Line
	9500 3000 9050 3000
Wire Wire Line
	10050 3200 9500 3200
Wire Wire Line
	9500 3200 9500 3100
Wire Wire Line
	9500 3100 9050 3100
Wire Wire Line
	10050 3500 9400 3500
Wire Wire Line
	9400 3500 9400 3200
Wire Wire Line
	9400 3200 9050 3200
Wire Wire Line
	9750 4000 10050 4000
Connection ~ 9750 4000
Wire Wire Line
	10050 3900 9300 3900
Wire Wire Line
	9300 3900 9300 3300
Wire Wire Line
	9300 3300 9050 3300
Wire Wire Line
	10050 4200 9200 4200
Wire Wire Line
	9200 4200 9200 3400
Wire Wire Line
	9200 3400 9050 3400
Wire Wire Line
	7700 2600 7800 2600
Wire Wire Line
	7700 3200 7800 3200
Connection ~ 7700 2600
Wire Wire Line
	7700 3300 7800 3300
Connection ~ 7700 3200
Wire Wire Line
	7450 1100 7450 3450
Wire Wire Line
	7450 2700 7800 2700
Wire Wire Line
	7700 2800 7800 2800
Connection ~ 7700 2800
Wire Wire Line
	7700 2900 7800 2900
Connection ~ 7700 2900
Connection ~ 7450 1300
Connection ~ 7450 1500
Connection ~ 7700 3300
Wire Wire Line
	7450 3400 7800 3400
Connection ~ 7450 2700
$Comp
L C U2
U 1 1 536F7800
P 7650 3650
F 0 "U2" H 7650 3750 40  0000 L CNN
F 1 "0.1uf" H 7656 3565 40  0000 L CNN
F 2 "~" H 7688 3500 30  0000 C CNN
F 3 "~" H 7650 3650 60  0000 C CNN
	1    7650 3650
	1    0    0    -1  
$EndComp
Connection ~ 7450 3400
Wire Wire Line
	7650 3450 7650 3400
Connection ~ 7650 3400
Wire Wire Line
	7700 3850 7450 3850
Connection ~ 7700 3850
Connection ~ 7650 3850
$Comp
L C U4
U 1 1 536F7801
P 8100 2100
F 0 "U4" H 8100 2200 40  0000 L CNN
F 1 "10uf" H 8106 2015 40  0000 L CNN
F 2 "~" H 8138 1950 30  0000 C CNN
F 3 "~" H 8100 2100 60  0000 C CNN
	1    8100 2100
	-1   0    0    1   
$EndComp
$Comp
L C U3
U 1 1 536F7802
P 7850 2100
F 0 "U3" H 7850 2200 40  0000 L CNN
F 1 "0.1uf" H 7856 2015 40  0000 L CNN
F 2 "~" H 7888 1950 30  0000 C CNN
F 3 "~" H 7850 2100 60  0000 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2500 7800 2300
Wire Wire Line
	7800 2300 8100 2300
Connection ~ 7850 2300
Wire Wire Line
	7700 1900 9050 1900
Connection ~ 7700 1900
Connection ~ 7850 1900
$Comp
L C U6
U 1 1 536F7803
P 9050 2200
F 0 "U6" H 9050 2300 40  0000 L CNN
F 1 "2.2uf" H 9056 2115 40  0000 L CNN
F 2 "~" H 9088 2050 30  0000 C CNN
F 3 "~" H 9050 2200 60  0000 C CNN
	1    9050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2500 9050 2400
Wire Wire Line
	9050 1900 9050 2000
Connection ~ 8100 1900
Text GLabel 9050 2600 2    60   Input ~ 0
GND
$Comp
L CONN_6 P5
U 1 1 536F77EA
P 10400 4050
F 0 "P5" V 10350 4050 60  0000 C CNN
F 1 "ACH01" V 10450 4050 60  0000 C CNN
F 2 "" H 10400 4050 60  0000 C CNN
F 3 "" H 10400 4050 60  0000 C CNN
	1    10400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1100 7700 3850
Text GLabel 7800 3000 0    60   Input ~ 0
SCL
$Comp
L CONN_4 P1
U 1 1 536F7B09
P 6500 950
F 0 "P1" V 6450 950 50  0000 C CNN
F 1 "CONN_4" V 6550 950 50  0000 C CNN
F 2 "" H 6500 950 60  0000 C CNN
F 3 "" H 6500 950 60  0000 C CNN
	1    6500 950 
	0    -1   -1   0   
$EndComp
Text GLabel 6650 1300 3    60   Input ~ 0
GND
Text GLabel 6350 1300 3    60   Input ~ 0
+5V
Text GLabel 6550 1300 3    60   Input ~ 0
SCL
Text GLabel 6450 1300 3    60   Input ~ 0
SDA
$EndSCHEMATC

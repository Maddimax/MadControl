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
LIBS:RCShield-cache
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
$Comp
L LTC2309 U1
U 1 1 536BD2F7
P 8400 2950
F 0 "U1" H 8400 2350 60  0000 C CNN
F 1 "LTC2309" H 8400 3550 60  0000 C CNN
F 2 "~" H 8400 3550 60  0000 C CNN
F 3 "~" H 8400 3550 60  0000 C CNN
	1    8400 2950
	1    0    0    -1  
$EndComp
$Comp
L TCA9535 U2
U 1 1 536BD306
P 8450 5050
F 0 "U2" H 8450 4350 60  0000 C CNN
F 1 "TCA9535" H 8450 5700 60  0000 C CNN
F 2 "~" H 8450 5250 60  0000 C CNN
F 3 "~" H 8450 5250 60  0000 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
$Comp
L C 10uf1
U 1 1 536BD374
P 7450 3650
F 0 "10uf1" H 7450 3750 40  0000 L CNN
F 1 "C" H 7456 3565 40  0000 L CNN
F 2 "~" H 7488 3500 30  0000 C CNN
F 3 "~" H 7450 3650 60  0000 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P3
U 1 1 536BD3AD
P 10400 1950
F 0 "P3" V 10350 1950 60  0000 C CNN
F 1 "ACH67" V 10450 1950 60  0000 C CNN
F 2 "" H 10400 1950 60  0000 C CNN
F 3 "" H 10400 1950 60  0000 C CNN
	1    10400 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P4
U 1 1 536BD3BA
P 10400 2650
F 0 "P4" V 10350 2650 60  0000 C CNN
F 1 "ACH45" V 10450 2650 60  0000 C CNN
F 2 "" H 10400 2650 60  0000 C CNN
F 3 "" H 10400 2650 60  0000 C CNN
	1    10400 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P5
U 1 1 536BD3C0
P 10400 3350
F 0 "P5" V 10350 3350 60  0000 C CNN
F 1 "ACH23" V 10450 3350 60  0000 C CNN
F 2 "" H 10400 3350 60  0000 C CNN
F 3 "" H 10400 3350 60  0000 C CNN
	1    10400 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P6
U 1 1 536BD3C8
P 10400 4050
F 0 "P6" V 10350 4050 60  0000 C CNN
F 1 "ACH01" V 10450 4050 60  0000 C CNN
F 2 "" H 10400 4050 60  0000 C CNN
F 3 "" H 10400 4050 60  0000 C CNN
	1    10400 4050
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
$Comp
L R R10
U 1 1 536BD929
P 7150 1300
F 0 "R10" V 7230 1300 40  0000 C CNN
F 1 "1,5k" V 7157 1301 40  0000 C CNN
F 2 "~" V 7080 1300 30  0000 C CNN
F 3 "~" H 7150 1300 30  0000 C CNN
	1    7150 1300
	0    -1   -1   0   
$EndComp
Text GLabel 6850 1050 1    60   Input ~ 0
SDA
Text GLabel 6600 1050 1    60   Input ~ 0
SCL
$Comp
L R 1,5k1
U 1 1 536BD948
P 7150 1500
F 0 "1,5k1" V 7230 1500 40  0000 C CNN
F 1 "1,5k" V 7157 1501 40  0000 C CNN
F 2 "~" V 7080 1500 30  0000 C CNN
F 3 "~" H 7150 1500 30  0000 C CNN
	1    7150 1500
	0    -1   -1   0   
$EndComp
Text GLabel 7900 4500 0    60   Input ~ 0
DIGI_INT
Text GLabel 3800 3950 0    60   Input ~ 0
DIGI_INT
Text GLabel 9050 4600 2    60   Input ~ 0
SDA
Text GLabel 9050 4700 2    60   Input ~ 0
SCL
Text GLabel 9050 4800 2    60   Input ~ 0
GND
Text GLabel 9050 4500 2    60   Input ~ 0
+5V
$Comp
L R R11
U 1 1 536BE193
P 10050 4900
F 0 "R11" V 10130 4900 40  0000 C CNN
F 1 "10k" V 10057 4901 40  0000 C CNN
F 2 "~" V 9980 4900 30  0000 C CNN
F 3 "~" H 10050 4900 30  0000 C CNN
	1    10050 4900
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 536BE1BA
P 10050 5000
F 0 "R12" V 10130 5000 40  0000 C CNN
F 1 "10k" V 10057 5001 40  0000 C CNN
F 2 "~" V 9980 5000 30  0000 C CNN
F 3 "~" H 10050 5000 30  0000 C CNN
	1    10050 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 536BE1C0
P 10050 5100
F 0 "R13" V 10130 5100 40  0000 C CNN
F 1 "10k" V 10057 5101 40  0000 C CNN
F 2 "~" V 9980 5100 30  0000 C CNN
F 3 "~" H 10050 5100 30  0000 C CNN
	1    10050 5100
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 536BE1C6
P 10050 5200
F 0 "R14" V 10130 5200 40  0000 C CNN
F 1 "10k" V 10057 5201 40  0000 C CNN
F 2 "~" V 9980 5200 30  0000 C CNN
F 3 "~" H 10050 5200 30  0000 C CNN
	1    10050 5200
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 536BE1CC
P 10050 5300
F 0 "R15" V 10130 5300 40  0000 C CNN
F 1 "10k" V 10057 5301 40  0000 C CNN
F 2 "~" V 9980 5300 30  0000 C CNN
F 3 "~" H 10050 5300 30  0000 C CNN
	1    10050 5300
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 536BE1D2
P 10050 5400
F 0 "R16" V 10130 5400 40  0000 C CNN
F 1 "10k" V 10057 5401 40  0000 C CNN
F 2 "~" V 9980 5400 30  0000 C CNN
F 3 "~" H 10050 5400 30  0000 C CNN
	1    10050 5400
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 536BE1D8
P 10050 5500
F 0 "R17" V 10130 5500 40  0000 C CNN
F 1 "10k" V 10057 5501 40  0000 C CNN
F 2 "~" V 9980 5500 30  0000 C CNN
F 3 "~" H 10050 5500 30  0000 C CNN
	1    10050 5500
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 536BE1DE
P 10050 5600
F 0 "R18" V 10130 5600 40  0000 C CNN
F 1 "10k" V 10057 5601 40  0000 C CNN
F 2 "~" V 9980 5600 30  0000 C CNN
F 3 "~" H 10050 5600 30  0000 C CNN
	1    10050 5600
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 536BE1E4
P 6850 4800
F 0 "R2" V 6930 4800 40  0000 C CNN
F 1 "10k" V 6857 4801 40  0000 C CNN
F 2 "~" V 6780 4800 30  0000 C CNN
F 3 "~" H 6850 4800 30  0000 C CNN
	1    6850 4800
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 536BE1EA
P 6850 4900
F 0 "R3" V 6930 4900 40  0000 C CNN
F 1 "10k" V 6857 4901 40  0000 C CNN
F 2 "~" V 6780 4900 30  0000 C CNN
F 3 "~" H 6850 4900 30  0000 C CNN
	1    6850 4900
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 536BE1F0
P 6850 5000
F 0 "R4" V 6930 5000 40  0000 C CNN
F 1 "10k" V 6857 5001 40  0000 C CNN
F 2 "~" V 6780 5000 30  0000 C CNN
F 3 "~" H 6850 5000 30  0000 C CNN
	1    6850 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 536BE1F6
P 6850 5100
F 0 "R5" V 6930 5100 40  0000 C CNN
F 1 "10k" V 6857 5101 40  0000 C CNN
F 2 "~" V 6780 5100 30  0000 C CNN
F 3 "~" H 6850 5100 30  0000 C CNN
	1    6850 5100
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 536BE1FC
P 6850 5200
F 0 "R6" V 6930 5200 40  0000 C CNN
F 1 "10k" V 6857 5201 40  0000 C CNN
F 2 "~" V 6780 5200 30  0000 C CNN
F 3 "~" H 6850 5200 30  0000 C CNN
	1    6850 5200
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 536BE202
P 6850 5300
F 0 "R7" V 6930 5300 40  0000 C CNN
F 1 "10k" V 6857 5301 40  0000 C CNN
F 2 "~" V 6780 5300 30  0000 C CNN
F 3 "~" H 6850 5300 30  0000 C CNN
	1    6850 5300
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 536BE208
P 6850 5400
F 0 "R8" V 6930 5400 40  0000 C CNN
F 1 "10k" V 6857 5401 40  0000 C CNN
F 2 "~" V 6780 5400 30  0000 C CNN
F 3 "~" H 6850 5400 30  0000 C CNN
	1    6850 5400
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 536BE20E
P 6850 5500
F 0 "R9" V 6930 5500 40  0000 C CNN
F 1 "10k" V 6857 5501 40  0000 C CNN
F 2 "~" V 6780 5500 30  0000 C CNN
F 3 "~" H 6850 5500 30  0000 C CNN
	1    6850 5500
	0    -1   -1   0   
$EndComp
Text GLabel 10300 4750 1    60   Input ~ 0
GND
Text GLabel 6550 4600 1    60   Input ~ 0
GND
$Comp
L CONN_8X2 P2
U 1 1 536BF2CC
P 9350 6400
F 0 "P2" H 9350 6850 60  0000 C CNN
F 1 "IN-PORT1" V 9350 6400 50  0000 C CNN
F 2 "" H 9350 6400 60  0000 C CNN
F 3 "" H 9350 6400 60  0000 C CNN
	1    9350 6400
	0    1    -1   0   
$EndComp
$Comp
L CONN_8X2 P1
U 1 1 536BF2D9
P 7550 6400
F 0 "P1" H 7550 6850 60  0000 C CNN
F 1 "IN-PORT0" V 7550 6400 50  0000 C CNN
F 2 "" H 7550 6400 60  0000 C CNN
F 3 "" H 7550 6400 60  0000 C CNN
	1    7550 6400
	0    -1   -1   0   
$EndComp
Text GLabel 8400 6800 3    60   Input ~ 0
+5V
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
Wire Wire Line
	7400 1300 7450 1300
Connection ~ 7450 1300
Wire Wire Line
	7400 1500 7450 1500
Connection ~ 7450 1500
Wire Wire Line
	6850 1050 6850 3100
Wire Wire Line
	6850 1300 6900 1300
Wire Wire Line
	6600 1050 6600 3000
Wire Wire Line
	6600 1500 6900 1500
Wire Wire Line
	6850 3100 7800 3100
Connection ~ 6850 1300
Wire Wire Line
	6600 3000 7800 3000
Connection ~ 6600 1500
Wire Wire Line
	7700 4700 7950 4700
Connection ~ 7700 3300
Wire Wire Line
	7700 4600 7950 4600
Connection ~ 7700 4600
Wire Wire Line
	6550 5600 7950 5600
Connection ~ 7700 4700
Wire Wire Line
	7900 4500 7950 4500
Wire Wire Line
	9050 4600 8950 4600
Wire Wire Line
	8950 4700 9050 4700
Wire Wire Line
	9050 4800 8950 4800
Wire Wire Line
	9050 4500 8950 4500
Wire Wire Line
	7700 1100 7700 4700
Wire Wire Line
	6550 4600 6550 5600
Connection ~ 6550 4800
Connection ~ 6550 4900
Connection ~ 6550 5000
Connection ~ 6550 5100
Connection ~ 6550 5200
Connection ~ 6550 5300
Wire Wire Line
	10300 4750 10300 5600
Connection ~ 10300 4900
Connection ~ 10300 5000
Connection ~ 10300 5100
Connection ~ 10300 5200
Connection ~ 10300 5300
Connection ~ 10300 5500
Connection ~ 10300 5400
Wire Wire Line
	8950 4900 9800 4900
Wire Wire Line
	8950 5000 9800 5000
Wire Wire Line
	8950 5100 9800 5100
Wire Wire Line
	8950 5200 9800 5200
Wire Wire Line
	8950 5300 9800 5300
Wire Wire Line
	8950 5400 9800 5400
Wire Wire Line
	8950 5500 9800 5500
Wire Wire Line
	8950 5600 9800 5600
Wire Wire Line
	7100 5500 7950 5500
Connection ~ 6550 5400
Wire Wire Line
	7100 5400 7950 5400
Wire Wire Line
	7100 5300 7950 5300
Wire Wire Line
	7100 5200 7950 5200
Wire Wire Line
	7100 5100 7950 5100
Wire Wire Line
	7100 5000 7950 5000
Wire Wire Line
	7100 4900 7950 4900
Wire Wire Line
	7100 4800 7950 4800
Connection ~ 6550 5500
Wire Wire Line
	7200 6800 9700 6800
Connection ~ 9000 6800
Connection ~ 9100 6800
Connection ~ 9200 6800
Connection ~ 9300 6800
Connection ~ 9400 6800
Connection ~ 9500 6800
Connection ~ 9600 6800
Connection ~ 7900 6800
Connection ~ 7800 6800
Connection ~ 7700 6800
Connection ~ 7600 6800
Connection ~ 7500 6800
Connection ~ 7400 6800
Connection ~ 7300 6800
Wire Wire Line
	9000 4900 9000 6000
Connection ~ 9000 4900
Wire Wire Line
	9100 5000 9100 6000
Connection ~ 9100 5000
Wire Wire Line
	9200 6000 9200 5100
Connection ~ 9200 5100
Wire Wire Line
	9300 6000 9300 5200
Connection ~ 9300 5200
Wire Wire Line
	9400 6000 9400 5300
Connection ~ 9400 5300
Wire Wire Line
	9500 5400 9500 6000
Wire Wire Line
	9700 5600 9700 6000
Wire Wire Line
	9600 5500 9600 6000
Wire Wire Line
	7900 6000 7900 5500
Connection ~ 7900 5500
Wire Wire Line
	7800 6000 7800 5400
Connection ~ 7800 5400
Wire Wire Line
	7700 5300 7700 6000
Wire Wire Line
	7600 6000 7600 5200
Connection ~ 7600 5200
Wire Wire Line
	7500 6000 7500 5100
Connection ~ 7500 5100
Wire Wire Line
	7200 6000 7200 4800
Connection ~ 7200 4800
Connection ~ 7700 5300
Wire Wire Line
	7400 6000 7400 5000
Connection ~ 7400 5000
Wire Wire Line
	7300 6000 7300 4900
Connection ~ 7300 4900
Wire Wire Line
	7450 3400 7800 3400
Connection ~ 7450 2700
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
	6550 4800 6600 4800
Wire Wire Line
	6550 4900 6600 4900
Wire Wire Line
	6550 5000 6600 5000
Wire Wire Line
	6550 5100 6600 5100
Wire Wire Line
	6550 5200 6600 5200
Wire Wire Line
	6550 5300 6600 5300
Wire Wire Line
	6550 5400 6600 5400
Wire Wire Line
	6550 5500 6600 5500
Connection ~ 9500 5400
Connection ~ 9600 5500
Connection ~ 9700 5600
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
L C 0.1uf1
U 1 1 536C4F0D
P 7650 3650
F 0 "0.1uf1" H 7650 3750 40  0000 L CNN
F 1 "C" H 7656 3565 40  0000 L CNN
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
	7450 3850 7700 3850
Connection ~ 7700 3850
Connection ~ 7650 3850
$Comp
L C 10uf2
U 1 1 536C5368
P 8100 2100
F 0 "10uf2" H 8100 2200 40  0000 L CNN
F 1 "C" H 8106 2015 40  0000 L CNN
F 2 "~" H 8138 1950 30  0000 C CNN
F 3 "~" H 8100 2100 60  0000 C CNN
	1    8100 2100
	-1   0    0    1   
$EndComp
$Comp
L C 0.1uf2
U 1 1 536C536E
P 7850 2100
F 0 "0.1uf2" H 7850 2200 40  0000 L CNN
F 1 "C" H 7856 2015 40  0000 L CNN
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
L C 2.2uf1
U 1 1 536C57D4
P 9050 2200
F 0 "2.2uf1" H 9050 2300 40  0000 L CNN
F 1 "C" H 9056 2115 40  0000 L CNN
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
P 1700 7150
F 0 "P7" V 1650 7150 40  0000 C CNN
F 1 "Vinput" V 1750 7150 40  0000 C CNN
F 2 "" H 1700 7150 60  0000 C CNN
F 3 "" H 1700 7150 60  0000 C CNN
	1    1700 7150
	0    1    1    0   
$EndComp
Text GLabel 1800 6800 1    60   Input ~ 0
GND
Text GLabel 1600 6800 1    60   Input ~ 0
VIN
Text GLabel 3950 3850 0    60   Input ~ 0
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
$EndSCHEMATC

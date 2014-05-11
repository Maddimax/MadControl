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
LIBS:DigitalBoard-cache
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
L TCA9535 U1
U 1 1 536F867B
P 6050 2950
F 0 "U1" H 6050 2250 60  0000 C CNN
F 1 "TCA9535" H 6050 3600 60  0000 C CNN
F 2 "~" H 6050 3150 60  0000 C CNN
F 3 "~" H 6050 3150 60  0000 C CNN
	1    6050 2950
	1    0    0    -1  
$EndComp
Text GLabel 5500 2400 0    60   Input ~ 0
DIGI_INT
Text GLabel 6650 2500 2    60   Input ~ 0
SDA
Text GLabel 6650 2600 2    60   Input ~ 0
SCL
Text GLabel 6650 2700 2    60   Input ~ 0
GND
Text GLabel 6650 2400 2    60   Input ~ 0
+5V
$Comp
L R R9
U 1 1 536F8686
P 7650 2800
F 0 "R9" V 7730 2800 40  0000 C CNN
F 1 "10k" V 7657 2801 40  0000 C CNN
F 2 "~" V 7580 2800 30  0000 C CNN
F 3 "~" H 7650 2800 30  0000 C CNN
	1    7650 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 536F868C
P 7650 2900
F 0 "R10" V 7730 2900 40  0000 C CNN
F 1 "10k" V 7657 2901 40  0000 C CNN
F 2 "~" V 7580 2900 30  0000 C CNN
F 3 "~" H 7650 2900 30  0000 C CNN
	1    7650 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 536F8692
P 7650 3000
F 0 "R11" V 7730 3000 40  0000 C CNN
F 1 "10k" V 7657 3001 40  0000 C CNN
F 2 "~" V 7580 3000 30  0000 C CNN
F 3 "~" H 7650 3000 30  0000 C CNN
	1    7650 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 536F8698
P 7650 3100
F 0 "R12" V 7730 3100 40  0000 C CNN
F 1 "10k" V 7657 3101 40  0000 C CNN
F 2 "~" V 7580 3100 30  0000 C CNN
F 3 "~" H 7650 3100 30  0000 C CNN
	1    7650 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 536F869E
P 7650 3200
F 0 "R13" V 7730 3200 40  0000 C CNN
F 1 "10k" V 7657 3201 40  0000 C CNN
F 2 "~" V 7580 3200 30  0000 C CNN
F 3 "~" H 7650 3200 30  0000 C CNN
	1    7650 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R14
U 1 1 536F86A4
P 7650 3300
F 0 "R14" V 7730 3300 40  0000 C CNN
F 1 "10k" V 7657 3301 40  0000 C CNN
F 2 "~" V 7580 3300 30  0000 C CNN
F 3 "~" H 7650 3300 30  0000 C CNN
	1    7650 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 536F86AA
P 7650 3400
F 0 "R15" V 7730 3400 40  0000 C CNN
F 1 "10k" V 7657 3401 40  0000 C CNN
F 2 "~" V 7580 3400 30  0000 C CNN
F 3 "~" H 7650 3400 30  0000 C CNN
	1    7650 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 536F86B0
P 7650 3500
F 0 "R16" V 7730 3500 40  0000 C CNN
F 1 "10k" V 7657 3501 40  0000 C CNN
F 2 "~" V 7580 3500 30  0000 C CNN
F 3 "~" H 7650 3500 30  0000 C CNN
	1    7650 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 536F86B6
P 4450 2700
F 0 "R1" V 4530 2700 40  0000 C CNN
F 1 "10k" V 4457 2701 40  0000 C CNN
F 2 "~" V 4380 2700 30  0000 C CNN
F 3 "~" H 4450 2700 30  0000 C CNN
	1    4450 2700
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 536F86BC
P 4450 2800
F 0 "R2" V 4530 2800 40  0000 C CNN
F 1 "10k" V 4457 2801 40  0000 C CNN
F 2 "~" V 4380 2800 30  0000 C CNN
F 3 "~" H 4450 2800 30  0000 C CNN
	1    4450 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 536F86C2
P 4450 2900
F 0 "R3" V 4530 2900 40  0000 C CNN
F 1 "10k" V 4457 2901 40  0000 C CNN
F 2 "~" V 4380 2900 30  0000 C CNN
F 3 "~" H 4450 2900 30  0000 C CNN
	1    4450 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 536F86C8
P 4450 3000
F 0 "R4" V 4530 3000 40  0000 C CNN
F 1 "10k" V 4457 3001 40  0000 C CNN
F 2 "~" V 4380 3000 30  0000 C CNN
F 3 "~" H 4450 3000 30  0000 C CNN
	1    4450 3000
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 536F86CE
P 4450 3100
F 0 "R5" V 4530 3100 40  0000 C CNN
F 1 "10k" V 4457 3101 40  0000 C CNN
F 2 "~" V 4380 3100 30  0000 C CNN
F 3 "~" H 4450 3100 30  0000 C CNN
	1    4450 3100
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 536F86D4
P 4450 3200
F 0 "R6" V 4530 3200 40  0000 C CNN
F 1 "10k" V 4457 3201 40  0000 C CNN
F 2 "~" V 4380 3200 30  0000 C CNN
F 3 "~" H 4450 3200 30  0000 C CNN
	1    4450 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 536F86DA
P 4450 3300
F 0 "R7" V 4530 3300 40  0000 C CNN
F 1 "10k" V 4457 3301 40  0000 C CNN
F 2 "~" V 4380 3300 30  0000 C CNN
F 3 "~" H 4450 3300 30  0000 C CNN
	1    4450 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 536F86E0
P 4450 3400
F 0 "R8" V 4530 3400 40  0000 C CNN
F 1 "10k" V 4457 3401 40  0000 C CNN
F 2 "~" V 4380 3400 30  0000 C CNN
F 3 "~" H 4450 3400 30  0000 C CNN
	1    4450 3400
	0    -1   -1   0   
$EndComp
Text GLabel 7900 2650 1    60   Input ~ 0
GND
Text GLabel 4150 2500 1    60   Input ~ 0
GND
$Comp
L CONN_8X2 P2
U 1 1 536F86E8
P 6950 4300
F 0 "P2" H 6950 4750 60  0000 C CNN
F 1 "IN-PORT1" V 6950 4300 50  0000 C CNN
F 2 "" H 6950 4300 60  0000 C CNN
F 3 "" H 6950 4300 60  0000 C CNN
	1    6950 4300
	0    1    -1   0   
$EndComp
$Comp
L CONN_8X2 P1
U 1 1 536F86EE
P 5150 4300
F 0 "P1" H 5150 4750 60  0000 C CNN
F 1 "IN-PORT0" V 5150 4300 50  0000 C CNN
F 2 "" H 5150 4300 60  0000 C CNN
F 3 "" H 5150 4300 60  0000 C CNN
	1    5150 4300
	0    -1   -1   0   
$EndComp
Text GLabel 6000 4700 3    60   Input ~ 0
+5V
Wire Wire Line
	5300 2600 5550 2600
Wire Wire Line
	5300 2500 5550 2500
Connection ~ 5300 2500
Wire Wire Line
	4150 3500 5550 3500
Connection ~ 5300 2600
Wire Wire Line
	5500 2400 5550 2400
Wire Wire Line
	6650 2500 6550 2500
Wire Wire Line
	6550 2600 6650 2600
Wire Wire Line
	6650 2700 6550 2700
Wire Wire Line
	6650 2400 6550 2400
Wire Wire Line
	4150 2500 4150 3500
Connection ~ 4150 2700
Connection ~ 4150 2800
Connection ~ 4150 2900
Connection ~ 4150 3000
Connection ~ 4150 3100
Connection ~ 4150 3200
Wire Wire Line
	7900 2650 7900 3500
Connection ~ 7900 2800
Connection ~ 7900 2900
Connection ~ 7900 3000
Connection ~ 7900 3100
Connection ~ 7900 3200
Connection ~ 7900 3400
Connection ~ 7900 3300
Wire Wire Line
	6550 2800 7400 2800
Wire Wire Line
	6550 2900 7400 2900
Wire Wire Line
	6550 3000 7400 3000
Wire Wire Line
	6550 3100 7400 3100
Wire Wire Line
	6550 3200 7400 3200
Wire Wire Line
	6550 3300 7400 3300
Wire Wire Line
	6550 3400 7400 3400
Wire Wire Line
	6550 3500 7400 3500
Wire Wire Line
	4700 3400 5550 3400
Connection ~ 4150 3300
Wire Wire Line
	4700 3300 5550 3300
Wire Wire Line
	4700 3200 5550 3200
Wire Wire Line
	4700 3100 5550 3100
Wire Wire Line
	4700 3000 5550 3000
Wire Wire Line
	4700 2900 5550 2900
Wire Wire Line
	4700 2800 5550 2800
Wire Wire Line
	4700 2700 5550 2700
Connection ~ 4150 3400
Wire Wire Line
	4800 4700 7300 4700
Connection ~ 6600 4700
Connection ~ 6700 4700
Connection ~ 6800 4700
Connection ~ 6900 4700
Connection ~ 7000 4700
Connection ~ 7100 4700
Connection ~ 7200 4700
Connection ~ 5500 4700
Connection ~ 5400 4700
Connection ~ 5300 4700
Connection ~ 5200 4700
Connection ~ 5100 4700
Connection ~ 5000 4700
Connection ~ 4900 4700
Wire Wire Line
	6600 2800 6600 3900
Connection ~ 6600 2800
Wire Wire Line
	6700 2900 6700 3900
Connection ~ 6700 2900
Wire Wire Line
	6800 3900 6800 3000
Connection ~ 6800 3000
Wire Wire Line
	6900 3900 6900 3100
Connection ~ 6900 3100
Wire Wire Line
	7000 3900 7000 3200
Connection ~ 7000 3200
Wire Wire Line
	7100 3300 7100 3900
Wire Wire Line
	7300 3500 7300 3900
Wire Wire Line
	7200 3400 7200 3900
Wire Wire Line
	5500 3900 5500 3400
Connection ~ 5500 3400
Wire Wire Line
	5400 3900 5400 3300
Connection ~ 5400 3300
Wire Wire Line
	5300 3200 5300 3900
Wire Wire Line
	5200 3900 5200 3100
Connection ~ 5200 3100
Wire Wire Line
	5100 3900 5100 3000
Connection ~ 5100 3000
Wire Wire Line
	4800 3900 4800 2700
Connection ~ 4800 2700
Connection ~ 5300 3200
Wire Wire Line
	5000 3900 5000 2900
Connection ~ 5000 2900
Wire Wire Line
	4900 3900 4900 2800
Connection ~ 4900 2800
Wire Wire Line
	4150 2700 4200 2700
Wire Wire Line
	4150 2800 4200 2800
Wire Wire Line
	4150 2900 4200 2900
Wire Wire Line
	4150 3000 4200 3000
Wire Wire Line
	4150 3100 4200 3100
Wire Wire Line
	4150 3200 4200 3200
Wire Wire Line
	4150 3300 4200 3300
Wire Wire Line
	4150 3400 4200 3400
Connection ~ 7100 3300
Connection ~ 7200 3400
Connection ~ 7300 3500
Text GLabel 6050 1350 3    60   Input ~ 0
GND
Text GLabel 5750 1350 3    60   Input ~ 0
+5V
Text GLabel 5950 1350 3    60   Input ~ 0
SCL
Text GLabel 5850 1350 3    60   Input ~ 0
SDA
$Comp
L CONN_5 P3
U 1 1 536F88A8
P 5950 950
F 0 "P3" V 5900 950 50  0000 C CNN
F 1 "CONN_5" V 6000 950 50  0000 C CNN
F 2 "" H 5950 950 60  0000 C CNN
F 3 "" H 5950 950 60  0000 C CNN
	1    5950 950 
	0    -1   -1   0   
$EndComp
Text GLabel 6150 1350 3    60   Input ~ 0
DIGI_INT
$EndSCHEMATC

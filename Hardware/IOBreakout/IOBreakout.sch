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
LIBS:IOBreakout-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "4 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LTC2309 U1
U 1 1 53660837
P 5700 2300
F 0 "U1" H 5700 1700 60  0000 C CNN
F 1 "LTC2309" H 5700 2900 60  0000 C CNN
F 2 "" H 5700 2900 60  0000 C CNN
F 3 "" H 5700 2900 60  0000 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_10 P1
U 1 1 53660846
P 4350 2300
F 0 "P1" V 4300 2300 60  0000 C CNN
F 1 "CONN_10" V 4400 2300 60  0000 C CNN
F 2 "" H 4350 2300 60  0000 C CNN
F 3 "" H 4350 2300 60  0000 C CNN
	1    4350 2300
	-1   0    0    1   
$EndComp
$Comp
L CONN_10 P2
U 1 1 53660855
P 7050 2300
F 0 "P2" V 7000 2300 60  0000 C CNN
F 1 "CONN_10" V 7100 2300 60  0000 C CNN
F 2 "" H 7050 2300 60  0000 C CNN
F 3 "" H 7050 2300 60  0000 C CNN
	1    7050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1850 6700 1850
Wire Wire Line
	6350 1950 6700 1950
Wire Wire Line
	6350 2050 6700 2050
Wire Wire Line
	6700 2150 6350 2150
Wire Wire Line
	6350 2250 6700 2250
Wire Wire Line
	6700 2350 6350 2350
Wire Wire Line
	6350 2450 6700 2450
Wire Wire Line
	6700 2550 6350 2550
Wire Wire Line
	6350 2650 6700 2650
Wire Wire Line
	6700 2750 6350 2750
Wire Wire Line
	5100 2750 4700 2750
Wire Wire Line
	3950 2650 5100 2650
Wire Wire Line
	3950 2550 5100 2550
Wire Wire Line
	4700 2450 5700 2450
Wire Wire Line
	4700 2350 5800 2350
Wire Wire Line
	5100 2250 4700 2250
Wire Wire Line
	4700 2150 5100 2150
Wire Wire Line
	5100 2050 4700 2050
Wire Wire Line
	3950 1950 5100 1950
Wire Wire Line
	5100 1850 4700 1850
$Comp
L TCA9535 U2
U 1 1 53660EFC
P 5700 3900
F 0 "U2" H 5700 3200 60  0000 C CNN
F 1 "TCA9535" H 5700 4550 60  0000 C CNN
F 2 "" H 5700 4100 60  0000 C CNN
F 3 "" H 5700 4100 60  0000 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_12 P4
U 1 1 53660F0B
P 7050 3900
F 0 "P4" V 7000 3900 60  0000 C CNN
F 1 "CONN_12" V 7100 3900 60  0000 C CNN
F 2 "" H 7050 3900 60  0000 C CNN
F 3 "" H 7050 3900 60  0000 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_12 P3
U 1 1 53660F1A
P 4350 3900
F 0 "P3" V 4300 3900 60  0000 C CNN
F 1 "CONN_12" V 4400 3900 60  0000 C CNN
F 2 "" H 4350 3900 60  0000 C CNN
F 3 "" H 4350 3900 60  0000 C CNN
	1    4350 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 3350 6700 3350
Wire Wire Line
	5700 3450 6700 3450
Wire Wire Line
	5800 3550 6700 3550
Wire Wire Line
	6700 3650 6200 3650
Wire Wire Line
	6200 3750 6700 3750
Wire Wire Line
	6700 3850 6200 3850
Wire Wire Line
	6200 3950 6700 3950
Wire Wire Line
	6700 4050 6200 4050
Wire Wire Line
	6200 4150 6700 4150
Wire Wire Line
	6700 4250 6200 4250
Wire Wire Line
	6200 4350 6700 4350
Wire Wire Line
	6700 4450 6200 4450
Wire Wire Line
	5200 4450 4700 4450
Wire Wire Line
	4700 4350 5200 4350
Wire Wire Line
	5200 4250 4700 4250
Wire Wire Line
	4700 4150 5200 4150
Wire Wire Line
	5200 4050 4700 4050
Wire Wire Line
	4700 3950 5200 3950
Wire Wire Line
	5200 3850 4700 3850
Wire Wire Line
	4700 3750 5200 3750
Wire Wire Line
	4700 3650 5200 3650
Wire Wire Line
	5200 3550 4700 3550
Wire Wire Line
	4700 3450 5200 3450
Wire Wire Line
	5200 3350 4700 3350
Wire Wire Line
	5800 2350 5800 3550
Connection ~ 6200 3550
Connection ~ 5100 2350
Wire Wire Line
	5700 2450 5700 3450
Connection ~ 6200 3450
Connection ~ 5100 2450
Text Label 5050 4450 0    60   ~ 0
GND
Text GLabel 4950 4650 3    60   Input ~ 0
GND
Wire Wire Line
	4950 4650 4950 4450
Connection ~ 4950 4450
Text GLabel 3950 2600 0    60   Input ~ 0
GND
Wire Wire Line
	3950 2550 3950 2650
Connection ~ 4700 2550
Connection ~ 4700 2650
Wire Wire Line
	3950 1950 3950 2600
Connection ~ 3950 2600
Connection ~ 4700 1950
$EndSCHEMATC

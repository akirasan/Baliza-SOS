EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:ArduProMiniTKB
LIBS:baliza_sos-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ARDUPROMINI-6 uP1
U 1 1 5A4B8CEC
P 4400 1650
F 0 "uP1" H 3775 575 60  0000 C CNN
F 1 "Arduino Pro Mini" V 3775 -200 60  0000 C CNN
F 2 "ArduinoProMini:ArduProMini-6" H 4400 1650 60  0001 C CNN
F 3 "" H 4400 1650 60  0000 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5A4B8F3B
P 5275 2675
F 0 "#PWR01" H 5275 2525 50  0001 C CNN
F 1 "VCC" H 5275 2825 50  0000 C CNN
F 2 "" H 5275 2675 50  0001 C CNN
F 3 "" H 5275 2675 50  0001 C CNN
	1    5275 2675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A4B8F51
P 5825 3000
F 0 "#PWR02" H 5825 2750 50  0001 C CNN
F 1 "GND" H 5825 2850 50  0000 C CNN
F 2 "" H 5825 3000 50  0001 C CNN
F 3 "" H 5825 3000 50  0001 C CNN
	1    5825 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 2675 5275 2750
Wire Wire Line
	5275 2750 4400 2750
$Comp
L CP C1
U 1 1 5A4B8F88
P 5275 3550
F 0 "C1" H 5300 3650 50  0000 L CNN
F 1 "CP" H 5300 3450 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P7.50mm" H 5313 3400 50  0001 C CNN
F 3 "" H 5275 3550 50  0001 C CNN
	1    5275 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3050 5275 3050
Wire Wire Line
	5275 3050 5275 3400
Wire Wire Line
	5825 3000 5825 2850
Wire Wire Line
	5825 2850 4400 2850
$Comp
L Conn_01x03_Male J1
U 1 1 5A4B90E0
P 5750 4100
F 0 "J1" H 5750 4300 50  0000 C CNN
F 1 "LEDs" H 5750 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3050 2925 3050
Wire Wire Line
	2925 3050 2925 4200
Wire Wire Line
	2925 4200 5550 4200
Wire Wire Line
	3200 3150 3025 3150
Wire Wire Line
	3025 3150 3025 4100
Wire Wire Line
	3025 4100 5550 4100
$Comp
L Conn_01x02_Male J2
U 1 1 5A4E3DD4
P 5875 2525
F 0 "J2" H 5875 2625 50  0000 C CNN
F 1 "BATT" H 5875 2325 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5875 2525 50  0001 C CNN
F 3 "" H 5875 2525 50  0001 C CNN
	1    5875 2525
	0    -1   -1   0   
$EndComp
Text GLabel 5875 2325 1    60   Output ~ 0
VCC
Text GLabel 5975 2325 1    60   Output ~ 0
GND
$Comp
L Conn_01x02_Male J3
U 1 1 5A4E419F
P 2450 3350
F 0 "J3" V 2450 3450 50  0000 C CNN
F 1 "SW1" H 2450 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2450 3350 50  0001 C CNN
F 3 "" H 2450 3350 50  0001 C CNN
	1    2450 3350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A4E4279
P 2700 3825
F 0 "R1" V 2780 3825 50  0000 C CNN
F 1 "R" V 2700 3825 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2630 3825 50  0001 C CNN
F 3 "" H 2700 3825 50  0001 C CNN
	1    2700 3825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A4E4798
P 2700 3975
F 0 "#PWR03" H 2700 3725 50  0001 C CNN
F 1 "GND" H 2700 3825 50  0000 C CNN
F 2 "" H 2700 3975 50  0001 C CNN
F 3 "" H 2700 3975 50  0001 C CNN
	1    2700 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2875 3450
Wire Wire Line
	2875 3450 2875 3250
Wire Wire Line
	2875 3250 3200 3250
Wire Wire Line
	2700 3675 2700 3450
Connection ~ 2700 3450
Wire Wire Line
	2650 3350 2825 3350
Wire Wire Line
	2825 3350 2825 2625
Wire Wire Line
	2825 2625 4450 2625
Wire Wire Line
	4450 2625 4450 3050
Connection ~ 4450 3050
Wire Wire Line
	5275 3700 5625 3700
Wire Wire Line
	5625 3700 5625 2850
Connection ~ 5625 2850
Wire Wire Line
	5275 3350 5100 3350
Wire Wire Line
	5100 3350 5100 4000
Wire Wire Line
	5100 4000 5550 4000
Connection ~ 5275 3350
$EndSCHEMATC

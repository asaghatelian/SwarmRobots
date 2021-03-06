EESchema Schematic File Version 2  date Fri 26 Oct 2012 22:03:20 CST
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
LIBS:tsop1838
LIBS:atmega32u4
LIBS:swarmIR-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "26 oct 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSOP1838 U1
U 1 1 504F3C7D
P 5100 2350
F 0 "U1" H 5100 2350 60  0000 C CNN
F 1 "TSOP1838" H 5050 2450 60  0000 C CNN
	1    5100 2350
	1    0    0    -1  
$EndComp
$Comp
L TSOP1838 U4
U 1 1 504F4687
P 5100 5050
F 0 "U4" H 5100 5050 60  0000 C CNN
F 1 "TSOP1838" H 5050 5150 60  0000 C CNN
	1    5100 5050
	1    0    0    -1  
$EndComp
$Comp
L TSOP1838 U2
U 1 1 504F4696
P 5100 3250
F 0 "U2" H 5100 3250 60  0000 C CNN
F 1 "TSOP1838" H 5050 3350 60  0000 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
$Comp
L TSOP1838 U3
U 1 1 504F46A5
P 5100 4150
F 0 "U3" H 5100 4150 60  0000 C CNN
F 1 "TSOP1838" H 5050 4250 60  0000 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 504F4FA3
P 7300 4150
F 0 "R1" V 7380 4150 50  0000 C CNN
F 1 "58" V 7300 4150 50  0000 C CNN
	1    7300 4150
	-1   0    0    1   
$EndComp
$Comp
L MOSFET_N Q1
U 1 1 504F500E
P 6500 3800
F 0 "Q1" H 6510 3970 60  0000 R CNN
F 1 "MOSFET_N" H 6510 3650 60  0000 R CNN
	1    6500 3800
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 504F5090
P 6650 4450
F 0 "D1" H 6650 4550 50  0000 C CNN
F 1 "LED" H 6650 4350 50  0000 C CNN
	1    6650 4450
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 504F51BC
P 2500 3200
F 0 "P1" V 2450 3200 40  0000 C CNN
F 1 "CONN_2" V 2550 3200 40  0000 C CNN
	1    2500 3200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 504F51CB
P 7850 3200
F 0 "P3" V 7800 3200 40  0000 C CNN
F 1 "CONN_2" V 7900 3200 40  0000 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 504F51DA
P 2500 3650
F 0 "P2" V 2450 3650 60  0000 C CNN
F 1 "CONN_6" V 2550 3650 60  0000 C CNN
	1    2500 3650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_6 P4
U 1 1 504F51E9
P 7850 3650
F 0 "P4" V 7800 3650 60  0000 C CNN
F 1 "CONN_6" V 7900 3650 60  0000 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 507781A3
P 3300 3300
F 0 "R4" V 3380 3300 50  0000 C CNN
F 1 "47" V 3300 3300 50  0000 C CNN
	1    3300 3300
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 507782FA
P 3200 2850
F 0 "C1" H 3250 2950 50  0000 L CNN
F 1 "47uF" H 3250 2750 50  0000 L CNN
	1    3200 2850
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 50778457
P 6950 4100
F 0 "C2" H 7000 4200 50  0000 L CNN
F 1 "47uF" H 7000 4000 50  0000 L CNN
	1    6950 4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5077853E
P 3050 4250
F 0 "R2" V 3130 4250 50  0000 C CNN
F 1 "22kOhm" V 3050 4250 50  0000 C CNN
	1    3050 4250
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5077859F
P 3200 4250
F 0 "R3" V 3280 4250 50  0000 C CNN
F 1 "22kOhm" V 3200 4250 50  0000 C CNN
	1    3200 4250
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 507785A7
P 3350 4250
F 0 "R5" V 3430 4250 50  0000 C CNN
F 1 "22kOhm" V 3350 4250 50  0000 C CNN
	1    3350 4250
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 507785AD
P 3500 4250
F 0 "R6" V 3580 4250 50  0000 C CNN
F 1 "22kOhm" V 3500 4250 50  0000 C CNN
	1    3500 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P7
U 1 1 50780889
P 8550 3200
F 0 "P7" V 8500 3200 40  0000 C CNN
F 1 "CONN_2" V 8600 3200 40  0000 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P5
U 1 1 50780898
P 1850 3200
F 0 "P5" V 1800 3200 40  0000 C CNN
F 1 "CONN_2" V 1900 3200 40  0000 C CNN
	1    1850 3200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_6 P8
U 1 1 507808BB
P 8550 3650
F 0 "P8" V 8500 3650 60  0000 C CNN
F 1 "CONN_6" V 8600 3650 60  0000 C CNN
	1    8550 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P6
U 1 1 507808CA
P 1850 3650
F 0 "P6" V 1800 3650 60  0000 C CNN
F 1 "CONN_6" V 1900 3650 60  0000 C CNN
	1    1850 3650
	-1   0    0    -1  
$EndComp
$Comp
L TSOP1838 U6
U 1 1 507E98CD
P 5100 6100
F 0 "U6" H 5100 6100 60  0000 C CNN
F 1 "TSOP1838" H 5050 6200 60  0000 C CNN
	1    5100 6100
	1    0    0    -1  
$EndComp
$Comp
L TSOP1838 U5
U 1 1 507E98D3
P 5100 1200
F 0 "U5" H 5100 1200 60  0000 C CNN
F 1 "TSOP1838" H 5050 1300 60  0000 C CNN
	1    5100 1200
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 507EA6FD
P 3100 4950
F 0 "R7" V 3180 4950 50  0000 C CNN
F 1 "R" V 3100 4950 50  0000 C CNN
	1    3100 4950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 507EA70C
P 3250 4950
F 0 "R8" V 3330 4950 50  0000 C CNN
F 1 "R" V 3250 4950 50  0000 C CNN
	1    3250 4950
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 507EA71B
P 3400 4950
F 0 "R9" V 3480 4950 50  0000 C CNN
F 1 "R" V 3400 4950 50  0000 C CNN
	1    3400 4950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 507EA72A
P 3550 4950
F 0 "R10" V 3630 4950 50  0000 C CNN
F 1 "R" V 3550 4950 50  0000 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 507EA76D
P 3100 5550
F 0 "D2" H 3100 5650 50  0000 C CNN
F 1 "LED" H 3100 5450 50  0000 C CNN
	1    3100 5550
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 507EA77C
P 3250 5550
F 0 "D3" H 3250 5650 50  0000 C CNN
F 1 "LED" H 3250 5450 50  0000 C CNN
	1    3250 5550
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 507EA78B
P 3400 5550
F 0 "D4" H 3400 5650 50  0000 C CNN
F 1 "LED" H 3400 5450 50  0000 C CNN
	1    3400 5550
	0    -1   -1   0   
$EndComp
$Comp
L LED D5
U 1 1 507EA79A
P 3550 5550
F 0 "D5" H 3550 5650 50  0000 C CNN
F 1 "LED" H 3550 5450 50  0000 C CNN
	1    3550 5550
	0    -1   -1   0   
$EndComp
Connection ~ 5850 3250
Connection ~ 5850 4150
Wire Wire Line
	5100 2850 4000 2850
Wire Wire Line
	4000 1700 4000 6600
Wire Wire Line
	3550 3300 4000 3300
Wire Wire Line
	4000 3750 5100 3750
Connection ~ 4000 3300
Wire Wire Line
	4000 4650 5100 4650
Connection ~ 4000 3750
Connection ~ 4000 4650
Wire Wire Line
	4300 2350 3800 2350
Wire Wire Line
	4300 1200 4300 3700
Wire Wire Line
	4300 5050 3850 5050
Connection ~ 5850 2350
Wire Wire Line
	3800 2350 3800 3600
Wire Wire Line
	3800 3600 2200 3600
Wire Wire Line
	4300 3700 2200 3700
Wire Wire Line
	2200 3800 4300 3800
Wire Wire Line
	3850 5050 3850 3900
Wire Wire Line
	3850 3900 2200 3900
Wire Wire Line
	6700 3800 8200 3800
Wire Wire Line
	6400 3100 6400 3600
Wire Wire Line
	6400 3100 8200 3100
Wire Wire Line
	5850 1850 2850 1850
Wire Wire Line
	2850 1850 2850 3100
Wire Wire Line
	2200 3300 3050 3300
Wire Wire Line
	3400 2850 3650 2850
Wire Wire Line
	3650 2850 3650 3300
Connection ~ 3650 3300
Wire Wire Line
	3000 2850 2850 2850
Connection ~ 2850 2850
Wire Wire Line
	7300 3300 8200 3300
Wire Wire Line
	7300 3300 7300 3900
Wire Wire Line
	7300 4450 7300 4400
Wire Wire Line
	6850 4450 7300 4450
Wire Wire Line
	6450 4450 6400 4450
Wire Wire Line
	6400 4450 6400 4000
Wire Wire Line
	6950 3900 6950 3100
Connection ~ 6950 3100
Wire Wire Line
	6950 4300 6950 4450
Connection ~ 6950 4450
Connection ~ 3350 4500
Connection ~ 3200 4500
Wire Wire Line
	2950 3300 2950 5900
Connection ~ 2950 3300
Connection ~ 3050 4500
Wire Wire Line
	3050 3900 3050 4000
Connection ~ 3050 3900
Wire Wire Line
	3200 4000 3200 3800
Connection ~ 3200 3800
Wire Wire Line
	3350 4000 3350 3700
Connection ~ 3350 3700
Wire Wire Line
	3500 4000 3500 3600
Connection ~ 3500 3600
Connection ~ 7500 3100
Connection ~ 7500 3300
Wire Wire Line
	7500 3400 8200 3400
Wire Wire Line
	8200 3500 7500 3500
Wire Wire Line
	7500 3600 8200 3600
Wire Wire Line
	8200 3700 7500 3700
Connection ~ 7500 3800
Wire Wire Line
	8200 3900 7500 3900
Connection ~ 2850 3900
Connection ~ 2850 3800
Connection ~ 2850 3700
Connection ~ 2850 3600
Wire Wire Line
	2200 3500 2850 3500
Connection ~ 2850 3300
Wire Wire Line
	2850 3100 2200 3100
Connection ~ 4300 4150
Connection ~ 4300 3250
Wire Wire Line
	4000 1700 5100 1700
Wire Wire Line
	2950 5900 3650 5900
Connection ~ 2950 4500
Wire Wire Line
	3100 4700 3100 3900
Connection ~ 3100 3900
Wire Wire Line
	3250 4700 3250 3800
Connection ~ 3250 3800
Wire Wire Line
	3400 4700 3400 3700
Connection ~ 3400 3700
Wire Wire Line
	3550 4700 3550 3600
Connection ~ 3550 3600
Wire Wire Line
	3100 5350 3100 5200
Wire Wire Line
	3250 5200 3250 5350
Wire Wire Line
	3400 5350 3400 5200
Wire Wire Line
	3550 5200 3550 5350
Wire Wire Line
	3550 5750 3550 5900
Connection ~ 3550 5900
Wire Wire Line
	3400 5750 3400 5900
Connection ~ 3400 5900
Wire Wire Line
	3250 5750 3250 5900
Connection ~ 3250 5900
Wire Wire Line
	3100 5750 3100 5900
Connection ~ 3100 5900
Wire Wire Line
	4300 3800 4300 6100
Connection ~ 5850 5050
Wire Wire Line
	5100 5550 4000 5550
Connection ~ 4000 5550
Wire Wire Line
	4000 6600 5100 6600
Connection ~ 5100 6600
Wire Wire Line
	5850 1200 5850 6100
Connection ~ 5850 1850
Connection ~ 4300 2350
Connection ~ 4300 5050
Connection ~ 4000 2850
NoConn ~ 2200 3400
NoConn ~ 2850 3400
Wire Wire Line
	2950 4500 3500 4500
Text Notes 1050 6850 0    60   ~ 0
** NOTE: Extra IR receiver LEDs are on the board so they can be tested in different positions!\nThe outputs of U4 & 6 are connected together.  Same with U2 & U5.\n\nSo only use ONE of each pair! They will not work with both LEDs in one pair connected!
Text Notes 950  5250 0    60   ~ 0
D2-D5 & R7-R10 are optional SMDs\nfor visual indication of signals received.
Text Notes 6650 4800 0    60   ~ 0
C2 is backwards
$EndSCHEMATC

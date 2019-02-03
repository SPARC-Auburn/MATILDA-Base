EESchema Schematic File Version 4
EELAYER 26 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C56B3E3
P 2800 2650
F 0 "A1" H 2800 1564 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2800 1473 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2950 1700 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2800 1650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L RF:NRF24L01_Breakout U1
U 1 1 5C56B4E7
P 4850 2450
F 0 "U1" H 5328 2428 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 5328 2337 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 5000 3050 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 4850 2350 50  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1400 2900 1400
Wire Wire Line
	2900 1400 2900 1650
Wire Wire Line
	4850 3050 4850 3900
Wire Wire Line
	4850 3900 2900 3900
Wire Wire Line
	2900 3900 2900 3650
Wire Wire Line
	2300 3250 1900 3250
Wire Wire Line
	1900 3250 1900 4300
Wire Wire Line
	1900 4300 4100 4300
Wire Wire Line
	4100 4300 4100 2250
Wire Wire Line
	4100 2250 4350 2250
Wire Wire Line
	4350 2150 4000 2150
Wire Wire Line
	4000 2150 4000 4200
Wire Wire Line
	4000 4200 2000 4200
Wire Wire Line
	2000 4200 2000 3150
Wire Wire Line
	2000 3150 2300 3150
Wire Wire Line
	4350 2350 4200 2350
Wire Wire Line
	4200 2350 4200 4400
Wire Wire Line
	4200 4400 2100 4400
Wire Wire Line
	2100 4400 2100 3350
Wire Wire Line
	2100 3350 2300 3350
Wire Wire Line
	4350 2650 3300 2650
Wire Wire Line
	4350 2450 3400 2450
Wire Wire Line
	3400 2450 3400 2750
Wire Wire Line
	3400 2750 3300 2750
Wire Wire Line
	2300 2150 1450 2150
Text Label 1450 2150 0    50   ~ 0
ToMC
$Comp
L Transistor_BJT:TIP120 Q1
U 1 1 5C56C2F7
P 3150 5000
F 0 "Q1" V 3402 5000 50  0000 C CNN
F 1 "TIP120" V 3493 5000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3350 4925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 3150 5000 50  0001 L CNN
	1    3150 5000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:TIP120 Q2
U 1 1 5C56C414
P 4050 5000
F 0 "Q2" V 4302 5000 50  0000 C CNN
F 1 "TIP120" V 4393 5000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4250 4925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 4050 5000 50  0001 L CNN
	1    4050 5000
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:TIP120 Q3
U 1 1 5C56C479
P 4850 5000
F 0 "Q3" V 5102 5000 50  0000 C CNN
F 1 "TIP120" V 5193 5000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5050 4925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 4850 5000 50  0001 L CNN
	1    4850 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 5100 4650 5450
Wire Wire Line
	4650 5450 3850 5450
Wire Wire Line
	3850 5450 3850 5100
Wire Wire Line
	2950 5100 2950 5450
Wire Wire Line
	2950 5450 3850 5450
Connection ~ 3850 5450
$Comp
L Device:LED D1
U 1 1 5C56CCFF
P 3550 4800
F 0 "D1" V 3588 4683 50  0000 R CNN
F 1 "R" V 3497 4683 50  0000 R CNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "~" H 3550 4800 50  0001 C CNN
	1    3550 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C56CD50
P 4450 4800
F 0 "D2" V 4488 4683 50  0000 R CNN
F 1 "G" V 4397 4683 50  0000 R CNN
F 2 "" H 4450 4800 50  0001 C CNN
F 3 "~" H 4450 4800 50  0001 C CNN
	1    4450 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C56CDB7
P 5200 4800
F 0 "D3" V 5238 4683 50  0000 R CNN
F 1 "B" V 5147 4683 50  0000 R CNN
F 2 "" H 5200 4800 50  0001 C CNN
F 3 "~" H 5200 4800 50  0001 C CNN
	1    5200 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 5100 4450 5100
Wire Wire Line
	4450 5100 4450 4950
Wire Wire Line
	3350 5100 3550 5100
Wire Wire Line
	3550 5100 3550 4950
Wire Wire Line
	5050 5100 5200 5100
Wire Wire Line
	5200 5100 5200 4950
Wire Wire Line
	5200 4650 5200 4550
Wire Wire Line
	5200 4550 4450 4550
Wire Wire Line
	4450 4550 4450 4650
Wire Wire Line
	3550 4650 3550 4550
Wire Wire Line
	3550 4550 4450 4550
Connection ~ 4450 4550
Wire Wire Line
	3150 4800 1700 4800
Wire Wire Line
	1700 4800 1700 3050
Wire Wire Line
	1700 3050 2300 3050
Wire Wire Line
	4050 4800 4050 4600
Wire Wire Line
	4050 4600 1750 4600
Wire Wire Line
	1750 4600 1750 2950
Wire Wire Line
	1750 2950 2300 2950
Wire Wire Line
	4850 4800 4850 4500
Wire Wire Line
	4850 4500 1800 4500
Wire Wire Line
	1800 4500 1800 2650
Wire Wire Line
	1800 2650 2300 2650
Wire Wire Line
	4450 4550 4450 4300
Wire Wire Line
	4450 4300 5350 4300
Text Label 5350 4300 0    50   ~ 0
12v
Wire Wire Line
	4850 1400 4850 1850
$EndSCHEMATC

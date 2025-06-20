* Functional test stimulus file for 5ns period

* TT process corner
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_14x128.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_14x128 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 vdd gnd freepdk45_sram_1w1r_14x128

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f
CD113 dout1_13  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_14x128.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_14x128.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_14x128.s_en
* q:	xfreepdk45_sram_1w1r_14x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_14x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 10100100110110  to  address 1111100 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 00100110010001  to  address 0000010 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 11111110111101  to  address 1111100 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 00100110010001 from address 0000010 (from port 1) during cycle 4 (20ns - 25ns)
*	Reading 00100110010001 from address 0000010 (from port 1) during cycle 5 (25ns - 30ns)
*	Writing 01010000000000  to  address 1111100 (from port 0) during cycle 7 (35ns - 40ns)
*	Reading 00100110010001 from address 0000010 (from port 1) during cycle 7 (35ns - 40ns)
*	Writing 01101111011111  to  address 0000010 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 01010000000000 from address 1111100 (from port 1) during cycle 9 (45ns - 50ns)
*	Writing 11010111011110  to  address 0000010 (from port 0) during cycle 10 (50ns - 55ns)
*	Writing 01100101111011  to  address 1111100 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 11010111011110 from address 0000010 (from port 1) during cycle 13 (65ns - 70ns)
*	Writing 10111010111111  to  address 0000010 (from port 0) during cycle 14 (70ns - 75ns)
*	Reading 01100101111011 from address 1111100 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing 10111000110100  to  address 0000010 (from port 0) during cycle 16 (80ns - 85ns)
*	Reading 01100101111011 from address 1111100 (from port 1) during cycle 16 (80ns - 85ns)
*	Writing 11010011110101  to  address 0000011 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 10111000110100 from address 0000010 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing 01011010000101  to  address 0000001 (from port 0) during cycle 21 (105ns - 110ns)
*	Reading 11010011110101 from address 0000011 (from port 1) during cycle 21 (105ns - 110ns)
*	Writing 00100110010001  to  address 0000011 (from port 0) during cycle 22 (110ns - 115ns)
*	Writing 11011001010011  to  address 0000001 (from port 0) during cycle 23 (115ns - 120ns)
*	Writing 10000110111000  to  address 0000011 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 00000001001011  to  address 0000000 (from port 0) during cycle 25 (125ns - 130ns)
*	Writing 00110001100011  to  address 0000010 (from port 0) during cycle 26 (130ns - 135ns)
*	Reading 10000110111000 from address 0000011 (from port 1) during cycle 26 (130ns - 135ns)
*	Writing 11011110100110  to  address 0000010 (from port 0) during cycle 27 (135ns - 140ns)
*	Writing 00001101001100  to  address 0000000 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 00001101001100 from address 0000000 (from port 1) during cycle 31 (155ns - 160ns)
*	Writing 11011010000011  to  address 1111110 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 00001101001100 from address 0000000 (from port 1) during cycle 33 (165ns - 170ns)
*	Writing 10101000100011  to  address 0000011 (from port 0) during cycle 36 (180ns - 185ns)
*	Reading 01100101111011 from address 1111100 (from port 1) during cycle 36 (180ns - 185ns)
*	Reading 11011110100110 from address 0000010 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing 11101010100111  to  address 0000000 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 11011010000011 from address 1111110 (from port 1) during cycle 39 (195ns - 200ns)
*	Writing 11000111101001  to  address 0000011 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 11101010100111 from address 0000000 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 01100000000100  to  address 1111011 (from port 0) during cycle 41 (205ns - 210ns)
*	Writing 01100011100110  to  address 1111011 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing 10001011100000  to  address 0000000 (from port 0) during cycle 45 (225ns - 230ns)
*	Writing 00000111011101  to  address 0000010 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 46 (230ns - 235ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 48 (240ns - 245ns)
*	Reading 11011001010011 from address 0000001 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing 01101001101110  to  address 0000001 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 10001011100000 from address 0000000 (from port 1) during cycle 50 (250ns - 255ns)
*	Writing 11110100101111  to  address 0000000 (from port 0) during cycle 51 (255ns - 260ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing 11101011111011  to  address 1111110 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 00011111101110  to  address 1111110 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing 01000111011011  to  address 0000010 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 00011111101110 from address 1111110 (from port 1) during cycle 55 (275ns - 280ns)
*	Writing 11000110110010  to  address 0000010 (from port 0) during cycle 56 (280ns - 285ns)
*	Reading 01101001101110 from address 0000001 (from port 1) during cycle 56 (280ns - 285ns)
*	Writing 00000101010110  to  address 0000001 (from port 0) during cycle 57 (285ns - 290ns)
*	Writing 11111101111110  to  address 1111101 (from port 0) during cycle 61 (305ns - 310ns)
*	Reading 01100011100110 from address 1111011 (from port 1) during cycle 62 (310ns - 315ns)
*	Reading 00011111101110 from address 1111110 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing 00100100001011  to  address 1111011 (from port 0) during cycle 64 (320ns - 325ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 64 (320ns - 325ns)
*	Writing 01111111100111  to  address 0000000 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 00011111101110 from address 1111110 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 11000110101011  to  address 0000000 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 10001110001100  to  address 1111100 (from port 0) during cycle 67 (335ns - 340ns)
*	Reading 11111101111110 from address 1111101 (from port 1) during cycle 68 (340ns - 345ns)
*	Writing 11111010110001  to  address 0000000 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 00000101010110 from address 0000001 (from port 1) during cycle 70 (350ns - 355ns)
*	Reading 11111010110001 from address 0000000 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 10110000110001  to  address 1111110 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 11000110110010 from address 0000010 (from port 1) during cycle 72 (360ns - 365ns)
*	Reading 11111101111110 from address 1111101 (from port 1) during cycle 73 (365ns - 370ns)
*	Writing 01111001001110  to  address 1111100 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 10110000110001 from address 1111110 (from port 1) during cycle 74 (370ns - 375ns)
*	Reading 10110000110001 from address 1111110 (from port 1) during cycle 75 (375ns - 380ns)
*	Reading 00000101010110 from address 0000001 (from port 1) during cycle 77 (385ns - 390ns)
*	Reading 01111001001110 from address 1111100 (from port 1) during cycle 78 (390ns - 395ns)
*	Writing 01110011101001  to  address 0000010 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 10110000110001 from address 1111110 (from port 1) during cycle 79 (395ns - 400ns)
*	Writing 01000011001011  to  address 0000010 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 11111010110001 from address 0000000 (from port 1) during cycle 82 (410ns - 415ns)
*	Reading 00000101010110 from address 0000001 (from port 1) during cycle 85 (425ns - 430ns)
*	Writing 01101011011101  to  address 0000001 (from port 0) during cycle 86 (430ns - 435ns)
*	Reading 00100100001011 from address 1111011 (from port 1) during cycle 87 (435ns - 440ns)
*	Reading 01101011011101 from address 0000001 (from port 1) during cycle 88 (440ns - 445ns)
*	Reading 11111101111110 from address 1111101 (from port 1) during cycle 90 (450ns - 455ns)
*	Reading 11111101111110 from address 1111101 (from port 1) during cycle 92 (460ns - 465ns)
*	Reading 11000111101001 from address 0000011 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing 00111000010110  to  address 0000011 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing 00001110011111  to  address 1111101 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 00111000010110 from address 0000011 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 10100010100101  to  address 0000001 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 11000100100001  to  address 0000000 (from port 0) during cycle 99 (495ns - 500ns)
*	Writing 00110100010111  to  address 0000000 (from port 0) during cycle 101 (505ns - 510ns)
*	Reading 01111001001110 from address 1111100 (from port 1) during cycle 101 (505ns - 510ns)
*	Writing 00001101111001  to  address 0000010 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 00001110011111 from address 1111101 (from port 1) during cycle 102 (510ns - 515ns)
*	Reading 00001101111001 from address 0000010 (from port 1) during cycle 103 (515ns - 520ns)
*	Reading 00001110011111 from address 1111101 (from port 1) during cycle 104 (520ns - 525ns)
*	Writing 10000100011000  to  address 0000011 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 00100100001011 from address 1111011 (from port 1) during cycle 105 (525ns - 530ns)
*	Writing 00001101000100  to  address 0000001 (from port 0) during cycle 106 (530ns - 535ns)
*	Reading 10000100011000 from address 0000011 (from port 1) during cycle 106 (530ns - 535ns)
*	Writing 11000010011101  to  address 1111100 (from port 0) during cycle 107 (535ns - 540ns)
*	Writing 01100111110011  to  address 0000001 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 11000010011101 from address 1111100 (from port 1) during cycle 108 (540ns - 545ns)
*	Reading 00100100001011 from address 1111011 (from port 1) during cycle 109 (545ns - 550ns)
*	Reading 00110100010111 from address 0000000 (from port 1) during cycle 110 (550ns - 555ns)
*	Writing 00100010011101  to  address 1111011 (from port 0) during cycle 111 (555ns - 560ns)
*	Reading 00110100010111 from address 0000000 (from port 1) during cycle 111 (555ns - 560ns)
*	Reading 00001110011111 from address 1111101 (from port 1) during cycle 112 (560ns - 565ns)
*	Writing 10011000010101  to  address 0000011 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 01100111110011 from address 0000001 (from port 1) during cycle 113 (565ns - 570ns)
*	Reading 11000010011101 from address 1111100 (from port 1) during cycle 114 (570ns - 575ns)
*	Reading 00001101111001 from address 0000010 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 10001010001110  to  address 0000010 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 10011000010101 from address 0000011 (from port 1) during cycle 117 (585ns - 590ns)
*	Reading 10110000110001 from address 1111110 (from port 1) during cycle 118 (590ns - 595ns)
*	Reading 10011000010101 from address 0000011 (from port 1) during cycle 119 (595ns - 600ns)
*	Writing 01001101100100  to  address 1111100 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 10001010001110 from address 0000010 (from port 1) during cycle 120 (600ns - 605ns)
*	Writing 11011111110111  to  address 0000001 (from port 0) during cycle 122 (610ns - 615ns)
*	Reading 10011000010101 from address 0000011 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing 00100100100001  to  address 1111100 (from port 0) during cycle 123 (615ns - 620ns)
*	Reading 10110000110001 from address 1111110 (from port 1) during cycle 123 (615ns - 620ns)
*	Writing 11001111010011  to  address 0000010 (from port 0) during cycle 124 (620ns - 625ns)
*	Writing 11111001001110  to  address 0000001 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 00100100100001 from address 1111100 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 00001110011111 from address 1111101 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing 11011010110001  to  address 0000001 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 10011000010101 from address 0000011 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 10110011010001  to  address 1111110 (from port 0) during cycle 131 (655ns - 660ns)
*	Writing 11011111100110  to  address 1111011 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 10110011010001 from address 1111110 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing 11100000100001  to  address 1111011 (from port 0) during cycle 133 (665ns - 670ns)
*	Writing 01001010000101  to  address 0000010 (from port 0) during cycle 134 (670ns - 675ns)
*	Writing 00101110101100  to  address 0000010 (from port 0) during cycle 135 (675ns - 680ns)
*	Writing 10010010011110  to  address 0000001 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing 10100011000101  to  address 1111011 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 10010010011110 from address 0000001 (from port 1) during cycle 137 (685ns - 690ns)
*	Writing 00011000010111  to  address 0000011 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 00110100010111 from address 0000000 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing 00100100000100  to  address 1111101 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 10110011010001 from address 1111110 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 11010111010011  to  address 0000010 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 00110100010111 from address 0000000 (from port 1) during cycle 140 (700ns - 705ns)
*	Writing 00111111000011  to  address 1111011 (from port 0) during cycle 141 (705ns - 710ns)
*	Reading 10010010011110 from address 0000001 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing 11100101111000  to  address 1111110 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 00111111000011 from address 1111011 (from port 1) during cycle 145 (725ns - 730ns)
*	Writing 10011011000100  to  address 1111011 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 10010010011110 from address 0000001 (from port 1) during cycle 146 (730ns - 735ns)
*	Writing 11010101001001  to  address 0000000 (from port 0) during cycle 147 (735ns - 740ns)
*	Reading 10011011000100 from address 1111011 (from port 1) during cycle 149 (745ns - 750ns)
*	Reading 00100100100001 from address 1111100 (from port 1) during cycle 150 (750ns - 755ns)
*	Writing 00100100111101  to  address 1111110 (from port 0) during cycle 154 (770ns - 775ns)
*	Writing 10111110010101  to  address 0000000 (from port 0) during cycle 155 (775ns - 780ns)
*	Reading 10010010011110 from address 0000001 (from port 1) during cycle 155 (775ns - 780ns)
*	Writing 10110011011010  to  address 0000000 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 10011011000100 from address 1111011 (from port 1) during cycle 156 (780ns - 785ns)
*	Reading 10011011000100 from address 1111011 (from port 1) during cycle 157 (785ns - 790ns)
*	Writing 10110101100011  to  address 1111100 (from port 0) during cycle 158 (790ns - 795ns)
*	Reading 10110011011010 from address 0000000 (from port 1) during cycle 159 (795ns - 800ns)
*	Writing 00100110001110  to  address 1111110 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 11010111010011 from address 0000010 (from port 1) during cycle 160 (800ns - 805ns)
*	Writing 10111000110010  to  address 0000010 (from port 0) during cycle 161 (805ns - 810ns)
*	Reading 00100100000100 from address 1111101 (from port 1) during cycle 162 (810ns - 815ns)
*	Writing 10010100010011  to  address 1111100 (from port 0) during cycle 164 (820ns - 825ns)
*	Writing 01111110001101  to  address 1111011 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 00100110001110 from address 1111110 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 10111000110010 from address 0000010 (from port 1) during cycle 168 (840ns - 845ns)
*	Writing 01111101000001  to  address 1111101 (from port 0) during cycle 169 (845ns - 850ns)
*	Writing 01101000011101  to  address 1111011 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 10110011011010 from address 0000000 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing 11011111010100  to  address 0000011 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing 10011100011101  to  address 1111110 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing 11101011010101  to  address 1111101 (from port 0) during cycle 173 (865ns - 870ns)
*	Writing 11111100010011  to  address 0000000 (from port 0) during cycle 174 (870ns - 875ns)
*	Writing 11001101011011  to  address 0000000 (from port 0) during cycle 175 (875ns - 880ns)
*	Writing 01111011011010  to  address 1111100 (from port 0) during cycle 176 (880ns - 885ns)
*	Reading 11011111010100 from address 0000011 (from port 1) during cycle 176 (880ns - 885ns)
*	Reading 11001101011011 from address 0000000 (from port 1) during cycle 177 (885ns - 890ns)
*	Writing 01011111101000  to  address 1111100 (from port 0) during cycle 180 (900ns - 905ns)
*	Writing 10100001001000  to  address 0000001 (from port 0) during cycle 181 (905ns - 910ns)
*	Reading 11011111010100 from address 0000011 (from port 1) during cycle 182 (910ns - 915ns)
*	Reading 11101011010101 from address 1111101 (from port 1) during cycle 183 (915ns - 920ns)
*	Writing 10010101010111  to  address 1111100 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 11001101011011 from address 0000000 (from port 1) during cycle 188 (940ns - 945ns)
*	Writing 10000001110110  to  address 0000010 (from port 0) during cycle 189 (945ns - 950ns)
*	Writing 11000010111110  to  address 0000000 (from port 0) during cycle 190 (950ns - 955ns)
*	Reading 11101011010101 from address 1111101 (from port 1) during cycle 190 (950ns - 955ns)
*	Writing 11011001011101  to  address 1111011 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 11000010111110 from address 0000000 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 11001111111011  to  address 0000000 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 10010101010111 from address 1111100 (from port 1) during cycle 192 (960ns - 965ns)
*	Reading 10010101010111 from address 1111100 (from port 1) during cycle 194 (970ns - 975ns)
*	Reading 11011111010100 from address 0000011 (from port 1) during cycle 195 (975ns - 980ns)
*	Writing 00000010100110  to  address 1111101 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing 11110011100001  to  address 0000000 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 11011111010100 from address 0000011 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Reading 10011100011101 from address 1111110 (from port 1) during cycle 201 (1005ns - 1010ns)
*	Writing 10001010111111  to  address 1111110 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Reading 10010101010111 from address 1111100 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 0), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 1), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 1), (860, 0), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 1), (670, 0), (675, 1), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 0), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 0), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 1), (35, 0), (40, 1), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 1), (165, 0), (170, 1), (175, 1), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 1), (435, 0), (440, 0), (445, 1), (450, 0), (455, 1), (460, 0), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 1), (810, 0), (815, 1), (820, 1), (825, 0), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 1.0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 1.0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 1.0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 1.0 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 1.0 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_12 Vdout1_12ck4 = 0 time = 25
.meas tran vdout1_12ck4 FIND v(dout1_12) AT=25.025n

* CHECK dout1_13 Vdout1_13ck4 = 0 time = 25
.meas tran vdout1_13ck4 FIND v(dout1_13) AT=25.025n

* CHECK dout1_0 Vdout1_0ck5 = 1.0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 0 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 0 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_4 Vdout1_4ck5 = 1.0 time = 30
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=30.025n

* CHECK dout1_5 Vdout1_5ck5 = 0 time = 30
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=30.025n

* CHECK dout1_6 Vdout1_6ck5 = 0 time = 30
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=30.025n

* CHECK dout1_7 Vdout1_7ck5 = 1.0 time = 30
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=30.025n

* CHECK dout1_8 Vdout1_8ck5 = 1.0 time = 30
.meas tran vdout1_8ck5 FIND v(dout1_8) AT=30.025n

* CHECK dout1_9 Vdout1_9ck5 = 0 time = 30
.meas tran vdout1_9ck5 FIND v(dout1_9) AT=30.025n

* CHECK dout1_10 Vdout1_10ck5 = 0 time = 30
.meas tran vdout1_10ck5 FIND v(dout1_10) AT=30.025n

* CHECK dout1_11 Vdout1_11ck5 = 1.0 time = 30
.meas tran vdout1_11ck5 FIND v(dout1_11) AT=30.025n

* CHECK dout1_12 Vdout1_12ck5 = 0 time = 30
.meas tran vdout1_12ck5 FIND v(dout1_12) AT=30.025n

* CHECK dout1_13 Vdout1_13ck5 = 0 time = 30
.meas tran vdout1_13ck5 FIND v(dout1_13) AT=30.025n

* CHECK dout1_0 Vdout1_0ck7 = 1.0 time = 40
.meas tran vdout1_0ck7 FIND v(dout1_0) AT=40.025n

* CHECK dout1_1 Vdout1_1ck7 = 0 time = 40
.meas tran vdout1_1ck7 FIND v(dout1_1) AT=40.025n

* CHECK dout1_2 Vdout1_2ck7 = 0 time = 40
.meas tran vdout1_2ck7 FIND v(dout1_2) AT=40.025n

* CHECK dout1_3 Vdout1_3ck7 = 0 time = 40
.meas tran vdout1_3ck7 FIND v(dout1_3) AT=40.025n

* CHECK dout1_4 Vdout1_4ck7 = 1.0 time = 40
.meas tran vdout1_4ck7 FIND v(dout1_4) AT=40.025n

* CHECK dout1_5 Vdout1_5ck7 = 0 time = 40
.meas tran vdout1_5ck7 FIND v(dout1_5) AT=40.025n

* CHECK dout1_6 Vdout1_6ck7 = 0 time = 40
.meas tran vdout1_6ck7 FIND v(dout1_6) AT=40.025n

* CHECK dout1_7 Vdout1_7ck7 = 1.0 time = 40
.meas tran vdout1_7ck7 FIND v(dout1_7) AT=40.025n

* CHECK dout1_8 Vdout1_8ck7 = 1.0 time = 40
.meas tran vdout1_8ck7 FIND v(dout1_8) AT=40.025n

* CHECK dout1_9 Vdout1_9ck7 = 0 time = 40
.meas tran vdout1_9ck7 FIND v(dout1_9) AT=40.025n

* CHECK dout1_10 Vdout1_10ck7 = 0 time = 40
.meas tran vdout1_10ck7 FIND v(dout1_10) AT=40.025n

* CHECK dout1_11 Vdout1_11ck7 = 1.0 time = 40
.meas tran vdout1_11ck7 FIND v(dout1_11) AT=40.025n

* CHECK dout1_12 Vdout1_12ck7 = 0 time = 40
.meas tran vdout1_12ck7 FIND v(dout1_12) AT=40.025n

* CHECK dout1_13 Vdout1_13ck7 = 0 time = 40
.meas tran vdout1_13ck7 FIND v(dout1_13) AT=40.025n

* CHECK dout1_0 Vdout1_0ck9 = 0 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 0 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 0 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 0 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_4 Vdout1_4ck9 = 0 time = 50
.meas tran vdout1_4ck9 FIND v(dout1_4) AT=50.025n

* CHECK dout1_5 Vdout1_5ck9 = 0 time = 50
.meas tran vdout1_5ck9 FIND v(dout1_5) AT=50.025n

* CHECK dout1_6 Vdout1_6ck9 = 0 time = 50
.meas tran vdout1_6ck9 FIND v(dout1_6) AT=50.025n

* CHECK dout1_7 Vdout1_7ck9 = 0 time = 50
.meas tran vdout1_7ck9 FIND v(dout1_7) AT=50.025n

* CHECK dout1_8 Vdout1_8ck9 = 0 time = 50
.meas tran vdout1_8ck9 FIND v(dout1_8) AT=50.025n

* CHECK dout1_9 Vdout1_9ck9 = 0 time = 50
.meas tran vdout1_9ck9 FIND v(dout1_9) AT=50.025n

* CHECK dout1_10 Vdout1_10ck9 = 1.0 time = 50
.meas tran vdout1_10ck9 FIND v(dout1_10) AT=50.025n

* CHECK dout1_11 Vdout1_11ck9 = 0 time = 50
.meas tran vdout1_11ck9 FIND v(dout1_11) AT=50.025n

* CHECK dout1_12 Vdout1_12ck9 = 1.0 time = 50
.meas tran vdout1_12ck9 FIND v(dout1_12) AT=50.025n

* CHECK dout1_13 Vdout1_13ck9 = 0 time = 50
.meas tran vdout1_13ck9 FIND v(dout1_13) AT=50.025n

* CHECK dout1_0 Vdout1_0ck13 = 0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 1.0 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 1.0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 1.0 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_4 Vdout1_4ck13 = 1.0 time = 70
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=70.025n

* CHECK dout1_5 Vdout1_5ck13 = 0 time = 70
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=70.025n

* CHECK dout1_6 Vdout1_6ck13 = 1.0 time = 70
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=70.025n

* CHECK dout1_7 Vdout1_7ck13 = 1.0 time = 70
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=70.025n

* CHECK dout1_8 Vdout1_8ck13 = 1.0 time = 70
.meas tran vdout1_8ck13 FIND v(dout1_8) AT=70.025n

* CHECK dout1_9 Vdout1_9ck13 = 0 time = 70
.meas tran vdout1_9ck13 FIND v(dout1_9) AT=70.025n

* CHECK dout1_10 Vdout1_10ck13 = 1.0 time = 70
.meas tran vdout1_10ck13 FIND v(dout1_10) AT=70.025n

* CHECK dout1_11 Vdout1_11ck13 = 0 time = 70
.meas tran vdout1_11ck13 FIND v(dout1_11) AT=70.025n

* CHECK dout1_12 Vdout1_12ck13 = 1.0 time = 70
.meas tran vdout1_12ck13 FIND v(dout1_12) AT=70.025n

* CHECK dout1_13 Vdout1_13ck13 = 1.0 time = 70
.meas tran vdout1_13ck13 FIND v(dout1_13) AT=70.025n

* CHECK dout1_0 Vdout1_0ck15 = 1.0 time = 80
.meas tran vdout1_0ck15 FIND v(dout1_0) AT=80.025n

* CHECK dout1_1 Vdout1_1ck15 = 1.0 time = 80
.meas tran vdout1_1ck15 FIND v(dout1_1) AT=80.025n

* CHECK dout1_2 Vdout1_2ck15 = 0 time = 80
.meas tran vdout1_2ck15 FIND v(dout1_2) AT=80.025n

* CHECK dout1_3 Vdout1_3ck15 = 1.0 time = 80
.meas tran vdout1_3ck15 FIND v(dout1_3) AT=80.025n

* CHECK dout1_4 Vdout1_4ck15 = 1.0 time = 80
.meas tran vdout1_4ck15 FIND v(dout1_4) AT=80.025n

* CHECK dout1_5 Vdout1_5ck15 = 1.0 time = 80
.meas tran vdout1_5ck15 FIND v(dout1_5) AT=80.025n

* CHECK dout1_6 Vdout1_6ck15 = 1.0 time = 80
.meas tran vdout1_6ck15 FIND v(dout1_6) AT=80.025n

* CHECK dout1_7 Vdout1_7ck15 = 0 time = 80
.meas tran vdout1_7ck15 FIND v(dout1_7) AT=80.025n

* CHECK dout1_8 Vdout1_8ck15 = 1.0 time = 80
.meas tran vdout1_8ck15 FIND v(dout1_8) AT=80.025n

* CHECK dout1_9 Vdout1_9ck15 = 0 time = 80
.meas tran vdout1_9ck15 FIND v(dout1_9) AT=80.025n

* CHECK dout1_10 Vdout1_10ck15 = 0 time = 80
.meas tran vdout1_10ck15 FIND v(dout1_10) AT=80.025n

* CHECK dout1_11 Vdout1_11ck15 = 1.0 time = 80
.meas tran vdout1_11ck15 FIND v(dout1_11) AT=80.025n

* CHECK dout1_12 Vdout1_12ck15 = 1.0 time = 80
.meas tran vdout1_12ck15 FIND v(dout1_12) AT=80.025n

* CHECK dout1_13 Vdout1_13ck15 = 0 time = 80
.meas tran vdout1_13ck15 FIND v(dout1_13) AT=80.025n

* CHECK dout1_0 Vdout1_0ck16 = 1.0 time = 85
.meas tran vdout1_0ck16 FIND v(dout1_0) AT=85.025n

* CHECK dout1_1 Vdout1_1ck16 = 1.0 time = 85
.meas tran vdout1_1ck16 FIND v(dout1_1) AT=85.025n

* CHECK dout1_2 Vdout1_2ck16 = 0 time = 85
.meas tran vdout1_2ck16 FIND v(dout1_2) AT=85.025n

* CHECK dout1_3 Vdout1_3ck16 = 1.0 time = 85
.meas tran vdout1_3ck16 FIND v(dout1_3) AT=85.025n

* CHECK dout1_4 Vdout1_4ck16 = 1.0 time = 85
.meas tran vdout1_4ck16 FIND v(dout1_4) AT=85.025n

* CHECK dout1_5 Vdout1_5ck16 = 1.0 time = 85
.meas tran vdout1_5ck16 FIND v(dout1_5) AT=85.025n

* CHECK dout1_6 Vdout1_6ck16 = 1.0 time = 85
.meas tran vdout1_6ck16 FIND v(dout1_6) AT=85.025n

* CHECK dout1_7 Vdout1_7ck16 = 0 time = 85
.meas tran vdout1_7ck16 FIND v(dout1_7) AT=85.025n

* CHECK dout1_8 Vdout1_8ck16 = 1.0 time = 85
.meas tran vdout1_8ck16 FIND v(dout1_8) AT=85.025n

* CHECK dout1_9 Vdout1_9ck16 = 0 time = 85
.meas tran vdout1_9ck16 FIND v(dout1_9) AT=85.025n

* CHECK dout1_10 Vdout1_10ck16 = 0 time = 85
.meas tran vdout1_10ck16 FIND v(dout1_10) AT=85.025n

* CHECK dout1_11 Vdout1_11ck16 = 1.0 time = 85
.meas tran vdout1_11ck16 FIND v(dout1_11) AT=85.025n

* CHECK dout1_12 Vdout1_12ck16 = 1.0 time = 85
.meas tran vdout1_12ck16 FIND v(dout1_12) AT=85.025n

* CHECK dout1_13 Vdout1_13ck16 = 0 time = 85
.meas tran vdout1_13ck16 FIND v(dout1_13) AT=85.025n

* CHECK dout1_0 Vdout1_0ck20 = 0 time = 105
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=105.025n

* CHECK dout1_1 Vdout1_1ck20 = 0 time = 105
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=105.025n

* CHECK dout1_2 Vdout1_2ck20 = 1.0 time = 105
.meas tran vdout1_2ck20 FIND v(dout1_2) AT=105.025n

* CHECK dout1_3 Vdout1_3ck20 = 0 time = 105
.meas tran vdout1_3ck20 FIND v(dout1_3) AT=105.025n

* CHECK dout1_4 Vdout1_4ck20 = 1.0 time = 105
.meas tran vdout1_4ck20 FIND v(dout1_4) AT=105.025n

* CHECK dout1_5 Vdout1_5ck20 = 1.0 time = 105
.meas tran vdout1_5ck20 FIND v(dout1_5) AT=105.025n

* CHECK dout1_6 Vdout1_6ck20 = 0 time = 105
.meas tran vdout1_6ck20 FIND v(dout1_6) AT=105.025n

* CHECK dout1_7 Vdout1_7ck20 = 0 time = 105
.meas tran vdout1_7ck20 FIND v(dout1_7) AT=105.025n

* CHECK dout1_8 Vdout1_8ck20 = 0 time = 105
.meas tran vdout1_8ck20 FIND v(dout1_8) AT=105.025n

* CHECK dout1_9 Vdout1_9ck20 = 1.0 time = 105
.meas tran vdout1_9ck20 FIND v(dout1_9) AT=105.025n

* CHECK dout1_10 Vdout1_10ck20 = 1.0 time = 105
.meas tran vdout1_10ck20 FIND v(dout1_10) AT=105.025n

* CHECK dout1_11 Vdout1_11ck20 = 1.0 time = 105
.meas tran vdout1_11ck20 FIND v(dout1_11) AT=105.025n

* CHECK dout1_12 Vdout1_12ck20 = 0 time = 105
.meas tran vdout1_12ck20 FIND v(dout1_12) AT=105.025n

* CHECK dout1_13 Vdout1_13ck20 = 1.0 time = 105
.meas tran vdout1_13ck20 FIND v(dout1_13) AT=105.025n

* CHECK dout1_0 Vdout1_0ck21 = 1.0 time = 110
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=110.025n

* CHECK dout1_1 Vdout1_1ck21 = 0 time = 110
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=110.025n

* CHECK dout1_2 Vdout1_2ck21 = 1.0 time = 110
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=110.025n

* CHECK dout1_3 Vdout1_3ck21 = 0 time = 110
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=110.025n

* CHECK dout1_4 Vdout1_4ck21 = 1.0 time = 110
.meas tran vdout1_4ck21 FIND v(dout1_4) AT=110.025n

* CHECK dout1_5 Vdout1_5ck21 = 1.0 time = 110
.meas tran vdout1_5ck21 FIND v(dout1_5) AT=110.025n

* CHECK dout1_6 Vdout1_6ck21 = 1.0 time = 110
.meas tran vdout1_6ck21 FIND v(dout1_6) AT=110.025n

* CHECK dout1_7 Vdout1_7ck21 = 1.0 time = 110
.meas tran vdout1_7ck21 FIND v(dout1_7) AT=110.025n

* CHECK dout1_8 Vdout1_8ck21 = 0 time = 110
.meas tran vdout1_8ck21 FIND v(dout1_8) AT=110.025n

* CHECK dout1_9 Vdout1_9ck21 = 0 time = 110
.meas tran vdout1_9ck21 FIND v(dout1_9) AT=110.025n

* CHECK dout1_10 Vdout1_10ck21 = 1.0 time = 110
.meas tran vdout1_10ck21 FIND v(dout1_10) AT=110.025n

* CHECK dout1_11 Vdout1_11ck21 = 0 time = 110
.meas tran vdout1_11ck21 FIND v(dout1_11) AT=110.025n

* CHECK dout1_12 Vdout1_12ck21 = 1.0 time = 110
.meas tran vdout1_12ck21 FIND v(dout1_12) AT=110.025n

* CHECK dout1_13 Vdout1_13ck21 = 1.0 time = 110
.meas tran vdout1_13ck21 FIND v(dout1_13) AT=110.025n

* CHECK dout1_0 Vdout1_0ck26 = 0 time = 135
.meas tran vdout1_0ck26 FIND v(dout1_0) AT=135.025n

* CHECK dout1_1 Vdout1_1ck26 = 0 time = 135
.meas tran vdout1_1ck26 FIND v(dout1_1) AT=135.025n

* CHECK dout1_2 Vdout1_2ck26 = 0 time = 135
.meas tran vdout1_2ck26 FIND v(dout1_2) AT=135.025n

* CHECK dout1_3 Vdout1_3ck26 = 1.0 time = 135
.meas tran vdout1_3ck26 FIND v(dout1_3) AT=135.025n

* CHECK dout1_4 Vdout1_4ck26 = 1.0 time = 135
.meas tran vdout1_4ck26 FIND v(dout1_4) AT=135.025n

* CHECK dout1_5 Vdout1_5ck26 = 1.0 time = 135
.meas tran vdout1_5ck26 FIND v(dout1_5) AT=135.025n

* CHECK dout1_6 Vdout1_6ck26 = 0 time = 135
.meas tran vdout1_6ck26 FIND v(dout1_6) AT=135.025n

* CHECK dout1_7 Vdout1_7ck26 = 1.0 time = 135
.meas tran vdout1_7ck26 FIND v(dout1_7) AT=135.025n

* CHECK dout1_8 Vdout1_8ck26 = 1.0 time = 135
.meas tran vdout1_8ck26 FIND v(dout1_8) AT=135.025n

* CHECK dout1_9 Vdout1_9ck26 = 0 time = 135
.meas tran vdout1_9ck26 FIND v(dout1_9) AT=135.025n

* CHECK dout1_10 Vdout1_10ck26 = 0 time = 135
.meas tran vdout1_10ck26 FIND v(dout1_10) AT=135.025n

* CHECK dout1_11 Vdout1_11ck26 = 0 time = 135
.meas tran vdout1_11ck26 FIND v(dout1_11) AT=135.025n

* CHECK dout1_12 Vdout1_12ck26 = 0 time = 135
.meas tran vdout1_12ck26 FIND v(dout1_12) AT=135.025n

* CHECK dout1_13 Vdout1_13ck26 = 1.0 time = 135
.meas tran vdout1_13ck26 FIND v(dout1_13) AT=135.025n

* CHECK dout1_0 Vdout1_0ck31 = 0 time = 160
.meas tran vdout1_0ck31 FIND v(dout1_0) AT=160.025n

* CHECK dout1_1 Vdout1_1ck31 = 0 time = 160
.meas tran vdout1_1ck31 FIND v(dout1_1) AT=160.025n

* CHECK dout1_2 Vdout1_2ck31 = 1.0 time = 160
.meas tran vdout1_2ck31 FIND v(dout1_2) AT=160.025n

* CHECK dout1_3 Vdout1_3ck31 = 1.0 time = 160
.meas tran vdout1_3ck31 FIND v(dout1_3) AT=160.025n

* CHECK dout1_4 Vdout1_4ck31 = 0 time = 160
.meas tran vdout1_4ck31 FIND v(dout1_4) AT=160.025n

* CHECK dout1_5 Vdout1_5ck31 = 0 time = 160
.meas tran vdout1_5ck31 FIND v(dout1_5) AT=160.025n

* CHECK dout1_6 Vdout1_6ck31 = 1.0 time = 160
.meas tran vdout1_6ck31 FIND v(dout1_6) AT=160.025n

* CHECK dout1_7 Vdout1_7ck31 = 0 time = 160
.meas tran vdout1_7ck31 FIND v(dout1_7) AT=160.025n

* CHECK dout1_8 Vdout1_8ck31 = 1.0 time = 160
.meas tran vdout1_8ck31 FIND v(dout1_8) AT=160.025n

* CHECK dout1_9 Vdout1_9ck31 = 1.0 time = 160
.meas tran vdout1_9ck31 FIND v(dout1_9) AT=160.025n

* CHECK dout1_10 Vdout1_10ck31 = 0 time = 160
.meas tran vdout1_10ck31 FIND v(dout1_10) AT=160.025n

* CHECK dout1_11 Vdout1_11ck31 = 0 time = 160
.meas tran vdout1_11ck31 FIND v(dout1_11) AT=160.025n

* CHECK dout1_12 Vdout1_12ck31 = 0 time = 160
.meas tran vdout1_12ck31 FIND v(dout1_12) AT=160.025n

* CHECK dout1_13 Vdout1_13ck31 = 0 time = 160
.meas tran vdout1_13ck31 FIND v(dout1_13) AT=160.025n

* CHECK dout1_0 Vdout1_0ck33 = 0 time = 170
.meas tran vdout1_0ck33 FIND v(dout1_0) AT=170.025n

* CHECK dout1_1 Vdout1_1ck33 = 0 time = 170
.meas tran vdout1_1ck33 FIND v(dout1_1) AT=170.025n

* CHECK dout1_2 Vdout1_2ck33 = 1.0 time = 170
.meas tran vdout1_2ck33 FIND v(dout1_2) AT=170.025n

* CHECK dout1_3 Vdout1_3ck33 = 1.0 time = 170
.meas tran vdout1_3ck33 FIND v(dout1_3) AT=170.025n

* CHECK dout1_4 Vdout1_4ck33 = 0 time = 170
.meas tran vdout1_4ck33 FIND v(dout1_4) AT=170.025n

* CHECK dout1_5 Vdout1_5ck33 = 0 time = 170
.meas tran vdout1_5ck33 FIND v(dout1_5) AT=170.025n

* CHECK dout1_6 Vdout1_6ck33 = 1.0 time = 170
.meas tran vdout1_6ck33 FIND v(dout1_6) AT=170.025n

* CHECK dout1_7 Vdout1_7ck33 = 0 time = 170
.meas tran vdout1_7ck33 FIND v(dout1_7) AT=170.025n

* CHECK dout1_8 Vdout1_8ck33 = 1.0 time = 170
.meas tran vdout1_8ck33 FIND v(dout1_8) AT=170.025n

* CHECK dout1_9 Vdout1_9ck33 = 1.0 time = 170
.meas tran vdout1_9ck33 FIND v(dout1_9) AT=170.025n

* CHECK dout1_10 Vdout1_10ck33 = 0 time = 170
.meas tran vdout1_10ck33 FIND v(dout1_10) AT=170.025n

* CHECK dout1_11 Vdout1_11ck33 = 0 time = 170
.meas tran vdout1_11ck33 FIND v(dout1_11) AT=170.025n

* CHECK dout1_12 Vdout1_12ck33 = 0 time = 170
.meas tran vdout1_12ck33 FIND v(dout1_12) AT=170.025n

* CHECK dout1_13 Vdout1_13ck33 = 0 time = 170
.meas tran vdout1_13ck33 FIND v(dout1_13) AT=170.025n

* CHECK dout1_0 Vdout1_0ck36 = 1.0 time = 185
.meas tran vdout1_0ck36 FIND v(dout1_0) AT=185.025n

* CHECK dout1_1 Vdout1_1ck36 = 1.0 time = 185
.meas tran vdout1_1ck36 FIND v(dout1_1) AT=185.025n

* CHECK dout1_2 Vdout1_2ck36 = 0 time = 185
.meas tran vdout1_2ck36 FIND v(dout1_2) AT=185.025n

* CHECK dout1_3 Vdout1_3ck36 = 1.0 time = 185
.meas tran vdout1_3ck36 FIND v(dout1_3) AT=185.025n

* CHECK dout1_4 Vdout1_4ck36 = 1.0 time = 185
.meas tran vdout1_4ck36 FIND v(dout1_4) AT=185.025n

* CHECK dout1_5 Vdout1_5ck36 = 1.0 time = 185
.meas tran vdout1_5ck36 FIND v(dout1_5) AT=185.025n

* CHECK dout1_6 Vdout1_6ck36 = 1.0 time = 185
.meas tran vdout1_6ck36 FIND v(dout1_6) AT=185.025n

* CHECK dout1_7 Vdout1_7ck36 = 0 time = 185
.meas tran vdout1_7ck36 FIND v(dout1_7) AT=185.025n

* CHECK dout1_8 Vdout1_8ck36 = 1.0 time = 185
.meas tran vdout1_8ck36 FIND v(dout1_8) AT=185.025n

* CHECK dout1_9 Vdout1_9ck36 = 0 time = 185
.meas tran vdout1_9ck36 FIND v(dout1_9) AT=185.025n

* CHECK dout1_10 Vdout1_10ck36 = 0 time = 185
.meas tran vdout1_10ck36 FIND v(dout1_10) AT=185.025n

* CHECK dout1_11 Vdout1_11ck36 = 1.0 time = 185
.meas tran vdout1_11ck36 FIND v(dout1_11) AT=185.025n

* CHECK dout1_12 Vdout1_12ck36 = 1.0 time = 185
.meas tran vdout1_12ck36 FIND v(dout1_12) AT=185.025n

* CHECK dout1_13 Vdout1_13ck36 = 0 time = 185
.meas tran vdout1_13ck36 FIND v(dout1_13) AT=185.025n

* CHECK dout1_0 Vdout1_0ck37 = 0 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 1.0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 1.0 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 0 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_4 Vdout1_4ck37 = 0 time = 190
.meas tran vdout1_4ck37 FIND v(dout1_4) AT=190.025n

* CHECK dout1_5 Vdout1_5ck37 = 1.0 time = 190
.meas tran vdout1_5ck37 FIND v(dout1_5) AT=190.025n

* CHECK dout1_6 Vdout1_6ck37 = 0 time = 190
.meas tran vdout1_6ck37 FIND v(dout1_6) AT=190.025n

* CHECK dout1_7 Vdout1_7ck37 = 1.0 time = 190
.meas tran vdout1_7ck37 FIND v(dout1_7) AT=190.025n

* CHECK dout1_8 Vdout1_8ck37 = 1.0 time = 190
.meas tran vdout1_8ck37 FIND v(dout1_8) AT=190.025n

* CHECK dout1_9 Vdout1_9ck37 = 1.0 time = 190
.meas tran vdout1_9ck37 FIND v(dout1_9) AT=190.025n

* CHECK dout1_10 Vdout1_10ck37 = 1.0 time = 190
.meas tran vdout1_10ck37 FIND v(dout1_10) AT=190.025n

* CHECK dout1_11 Vdout1_11ck37 = 0 time = 190
.meas tran vdout1_11ck37 FIND v(dout1_11) AT=190.025n

* CHECK dout1_12 Vdout1_12ck37 = 1.0 time = 190
.meas tran vdout1_12ck37 FIND v(dout1_12) AT=190.025n

* CHECK dout1_13 Vdout1_13ck37 = 1.0 time = 190
.meas tran vdout1_13ck37 FIND v(dout1_13) AT=190.025n

* CHECK dout1_0 Vdout1_0ck39 = 1.0 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 1.0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 0 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 0 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 0 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 0 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 0 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 1.0 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 0 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 1.0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 1.0 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_11 Vdout1_11ck39 = 0 time = 200
.meas tran vdout1_11ck39 FIND v(dout1_11) AT=200.025n

* CHECK dout1_12 Vdout1_12ck39 = 1.0 time = 200
.meas tran vdout1_12ck39 FIND v(dout1_12) AT=200.025n

* CHECK dout1_13 Vdout1_13ck39 = 1.0 time = 200
.meas tran vdout1_13ck39 FIND v(dout1_13) AT=200.025n

* CHECK dout1_0 Vdout1_0ck40 = 1.0 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 1.0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 1.0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 0 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_4 Vdout1_4ck40 = 0 time = 205
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=205.025n

* CHECK dout1_5 Vdout1_5ck40 = 1.0 time = 205
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=205.025n

* CHECK dout1_6 Vdout1_6ck40 = 0 time = 205
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=205.025n

* CHECK dout1_7 Vdout1_7ck40 = 1.0 time = 205
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=205.025n

* CHECK dout1_8 Vdout1_8ck40 = 0 time = 205
.meas tran vdout1_8ck40 FIND v(dout1_8) AT=205.025n

* CHECK dout1_9 Vdout1_9ck40 = 1.0 time = 205
.meas tran vdout1_9ck40 FIND v(dout1_9) AT=205.025n

* CHECK dout1_10 Vdout1_10ck40 = 0 time = 205
.meas tran vdout1_10ck40 FIND v(dout1_10) AT=205.025n

* CHECK dout1_11 Vdout1_11ck40 = 1.0 time = 205
.meas tran vdout1_11ck40 FIND v(dout1_11) AT=205.025n

* CHECK dout1_12 Vdout1_12ck40 = 1.0 time = 205
.meas tran vdout1_12ck40 FIND v(dout1_12) AT=205.025n

* CHECK dout1_13 Vdout1_13ck40 = 1.0 time = 205
.meas tran vdout1_13ck40 FIND v(dout1_13) AT=205.025n

* CHECK dout1_0 Vdout1_0ck44 = 1.0 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 0 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 1.0 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_4 Vdout1_4ck44 = 0 time = 225
.meas tran vdout1_4ck44 FIND v(dout1_4) AT=225.025n

* CHECK dout1_5 Vdout1_5ck44 = 1.0 time = 225
.meas tran vdout1_5ck44 FIND v(dout1_5) AT=225.025n

* CHECK dout1_6 Vdout1_6ck44 = 1.0 time = 225
.meas tran vdout1_6ck44 FIND v(dout1_6) AT=225.025n

* CHECK dout1_7 Vdout1_7ck44 = 1.0 time = 225
.meas tran vdout1_7ck44 FIND v(dout1_7) AT=225.025n

* CHECK dout1_8 Vdout1_8ck44 = 1.0 time = 225
.meas tran vdout1_8ck44 FIND v(dout1_8) AT=225.025n

* CHECK dout1_9 Vdout1_9ck44 = 0 time = 225
.meas tran vdout1_9ck44 FIND v(dout1_9) AT=225.025n

* CHECK dout1_10 Vdout1_10ck44 = 0 time = 225
.meas tran vdout1_10ck44 FIND v(dout1_10) AT=225.025n

* CHECK dout1_11 Vdout1_11ck44 = 0 time = 225
.meas tran vdout1_11ck44 FIND v(dout1_11) AT=225.025n

* CHECK dout1_12 Vdout1_12ck44 = 1.0 time = 225
.meas tran vdout1_12ck44 FIND v(dout1_12) AT=225.025n

* CHECK dout1_13 Vdout1_13ck44 = 1.0 time = 225
.meas tran vdout1_13ck44 FIND v(dout1_13) AT=225.025n

* CHECK dout1_0 Vdout1_0ck46 = 1.0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 1.0 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 0 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 1.0 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 1.0 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 1.0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_8 Vdout1_8ck46 = 1.0 time = 235
.meas tran vdout1_8ck46 FIND v(dout1_8) AT=235.025n

* CHECK dout1_9 Vdout1_9ck46 = 0 time = 235
.meas tran vdout1_9ck46 FIND v(dout1_9) AT=235.025n

* CHECK dout1_10 Vdout1_10ck46 = 0 time = 235
.meas tran vdout1_10ck46 FIND v(dout1_10) AT=235.025n

* CHECK dout1_11 Vdout1_11ck46 = 0 time = 235
.meas tran vdout1_11ck46 FIND v(dout1_11) AT=235.025n

* CHECK dout1_12 Vdout1_12ck46 = 1.0 time = 235
.meas tran vdout1_12ck46 FIND v(dout1_12) AT=235.025n

* CHECK dout1_13 Vdout1_13ck46 = 1.0 time = 235
.meas tran vdout1_13ck46 FIND v(dout1_13) AT=235.025n

* CHECK dout1_0 Vdout1_0ck48 = 1.0 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 0 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 1.0 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_4 Vdout1_4ck48 = 0 time = 245
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=245.025n

* CHECK dout1_5 Vdout1_5ck48 = 1.0 time = 245
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=245.025n

* CHECK dout1_6 Vdout1_6ck48 = 1.0 time = 245
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=245.025n

* CHECK dout1_7 Vdout1_7ck48 = 1.0 time = 245
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=245.025n

* CHECK dout1_8 Vdout1_8ck48 = 1.0 time = 245
.meas tran vdout1_8ck48 FIND v(dout1_8) AT=245.025n

* CHECK dout1_9 Vdout1_9ck48 = 0 time = 245
.meas tran vdout1_9ck48 FIND v(dout1_9) AT=245.025n

* CHECK dout1_10 Vdout1_10ck48 = 0 time = 245
.meas tran vdout1_10ck48 FIND v(dout1_10) AT=245.025n

* CHECK dout1_11 Vdout1_11ck48 = 0 time = 245
.meas tran vdout1_11ck48 FIND v(dout1_11) AT=245.025n

* CHECK dout1_12 Vdout1_12ck48 = 1.0 time = 245
.meas tran vdout1_12ck48 FIND v(dout1_12) AT=245.025n

* CHECK dout1_13 Vdout1_13ck48 = 1.0 time = 245
.meas tran vdout1_13ck48 FIND v(dout1_13) AT=245.025n

* CHECK dout1_0 Vdout1_0ck49 = 1.0 time = 250
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=250.025n

* CHECK dout1_1 Vdout1_1ck49 = 1.0 time = 250
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=250.025n

* CHECK dout1_2 Vdout1_2ck49 = 0 time = 250
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=250.025n

* CHECK dout1_3 Vdout1_3ck49 = 0 time = 250
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=250.025n

* CHECK dout1_4 Vdout1_4ck49 = 1.0 time = 250
.meas tran vdout1_4ck49 FIND v(dout1_4) AT=250.025n

* CHECK dout1_5 Vdout1_5ck49 = 0 time = 250
.meas tran vdout1_5ck49 FIND v(dout1_5) AT=250.025n

* CHECK dout1_6 Vdout1_6ck49 = 1.0 time = 250
.meas tran vdout1_6ck49 FIND v(dout1_6) AT=250.025n

* CHECK dout1_7 Vdout1_7ck49 = 0 time = 250
.meas tran vdout1_7ck49 FIND v(dout1_7) AT=250.025n

* CHECK dout1_8 Vdout1_8ck49 = 0 time = 250
.meas tran vdout1_8ck49 FIND v(dout1_8) AT=250.025n

* CHECK dout1_9 Vdout1_9ck49 = 1.0 time = 250
.meas tran vdout1_9ck49 FIND v(dout1_9) AT=250.025n

* CHECK dout1_10 Vdout1_10ck49 = 1.0 time = 250
.meas tran vdout1_10ck49 FIND v(dout1_10) AT=250.025n

* CHECK dout1_11 Vdout1_11ck49 = 0 time = 250
.meas tran vdout1_11ck49 FIND v(dout1_11) AT=250.025n

* CHECK dout1_12 Vdout1_12ck49 = 1.0 time = 250
.meas tran vdout1_12ck49 FIND v(dout1_12) AT=250.025n

* CHECK dout1_13 Vdout1_13ck49 = 1.0 time = 250
.meas tran vdout1_13ck49 FIND v(dout1_13) AT=250.025n

* CHECK dout1_0 Vdout1_0ck50 = 0 time = 255
.meas tran vdout1_0ck50 FIND v(dout1_0) AT=255.025n

* CHECK dout1_1 Vdout1_1ck50 = 0 time = 255
.meas tran vdout1_1ck50 FIND v(dout1_1) AT=255.025n

* CHECK dout1_2 Vdout1_2ck50 = 0 time = 255
.meas tran vdout1_2ck50 FIND v(dout1_2) AT=255.025n

* CHECK dout1_3 Vdout1_3ck50 = 0 time = 255
.meas tran vdout1_3ck50 FIND v(dout1_3) AT=255.025n

* CHECK dout1_4 Vdout1_4ck50 = 0 time = 255
.meas tran vdout1_4ck50 FIND v(dout1_4) AT=255.025n

* CHECK dout1_5 Vdout1_5ck50 = 1.0 time = 255
.meas tran vdout1_5ck50 FIND v(dout1_5) AT=255.025n

* CHECK dout1_6 Vdout1_6ck50 = 1.0 time = 255
.meas tran vdout1_6ck50 FIND v(dout1_6) AT=255.025n

* CHECK dout1_7 Vdout1_7ck50 = 1.0 time = 255
.meas tran vdout1_7ck50 FIND v(dout1_7) AT=255.025n

* CHECK dout1_8 Vdout1_8ck50 = 0 time = 255
.meas tran vdout1_8ck50 FIND v(dout1_8) AT=255.025n

* CHECK dout1_9 Vdout1_9ck50 = 1.0 time = 255
.meas tran vdout1_9ck50 FIND v(dout1_9) AT=255.025n

* CHECK dout1_10 Vdout1_10ck50 = 0 time = 255
.meas tran vdout1_10ck50 FIND v(dout1_10) AT=255.025n

* CHECK dout1_11 Vdout1_11ck50 = 0 time = 255
.meas tran vdout1_11ck50 FIND v(dout1_11) AT=255.025n

* CHECK dout1_12 Vdout1_12ck50 = 0 time = 255
.meas tran vdout1_12ck50 FIND v(dout1_12) AT=255.025n

* CHECK dout1_13 Vdout1_13ck50 = 1.0 time = 255
.meas tran vdout1_13ck50 FIND v(dout1_13) AT=255.025n

* CHECK dout1_0 Vdout1_0ck51 = 1.0 time = 260
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=260.025n

* CHECK dout1_1 Vdout1_1ck51 = 0 time = 260
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=260.025n

* CHECK dout1_2 Vdout1_2ck51 = 0 time = 260
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=260.025n

* CHECK dout1_3 Vdout1_3ck51 = 1.0 time = 260
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=260.025n

* CHECK dout1_4 Vdout1_4ck51 = 0 time = 260
.meas tran vdout1_4ck51 FIND v(dout1_4) AT=260.025n

* CHECK dout1_5 Vdout1_5ck51 = 1.0 time = 260
.meas tran vdout1_5ck51 FIND v(dout1_5) AT=260.025n

* CHECK dout1_6 Vdout1_6ck51 = 1.0 time = 260
.meas tran vdout1_6ck51 FIND v(dout1_6) AT=260.025n

* CHECK dout1_7 Vdout1_7ck51 = 1.0 time = 260
.meas tran vdout1_7ck51 FIND v(dout1_7) AT=260.025n

* CHECK dout1_8 Vdout1_8ck51 = 1.0 time = 260
.meas tran vdout1_8ck51 FIND v(dout1_8) AT=260.025n

* CHECK dout1_9 Vdout1_9ck51 = 0 time = 260
.meas tran vdout1_9ck51 FIND v(dout1_9) AT=260.025n

* CHECK dout1_10 Vdout1_10ck51 = 0 time = 260
.meas tran vdout1_10ck51 FIND v(dout1_10) AT=260.025n

* CHECK dout1_11 Vdout1_11ck51 = 0 time = 260
.meas tran vdout1_11ck51 FIND v(dout1_11) AT=260.025n

* CHECK dout1_12 Vdout1_12ck51 = 1.0 time = 260
.meas tran vdout1_12ck51 FIND v(dout1_12) AT=260.025n

* CHECK dout1_13 Vdout1_13ck51 = 1.0 time = 260
.meas tran vdout1_13ck51 FIND v(dout1_13) AT=260.025n

* CHECK dout1_0 Vdout1_0ck55 = 0 time = 280
.meas tran vdout1_0ck55 FIND v(dout1_0) AT=280.025n

* CHECK dout1_1 Vdout1_1ck55 = 1.0 time = 280
.meas tran vdout1_1ck55 FIND v(dout1_1) AT=280.025n

* CHECK dout1_2 Vdout1_2ck55 = 1.0 time = 280
.meas tran vdout1_2ck55 FIND v(dout1_2) AT=280.025n

* CHECK dout1_3 Vdout1_3ck55 = 1.0 time = 280
.meas tran vdout1_3ck55 FIND v(dout1_3) AT=280.025n

* CHECK dout1_4 Vdout1_4ck55 = 0 time = 280
.meas tran vdout1_4ck55 FIND v(dout1_4) AT=280.025n

* CHECK dout1_5 Vdout1_5ck55 = 1.0 time = 280
.meas tran vdout1_5ck55 FIND v(dout1_5) AT=280.025n

* CHECK dout1_6 Vdout1_6ck55 = 1.0 time = 280
.meas tran vdout1_6ck55 FIND v(dout1_6) AT=280.025n

* CHECK dout1_7 Vdout1_7ck55 = 1.0 time = 280
.meas tran vdout1_7ck55 FIND v(dout1_7) AT=280.025n

* CHECK dout1_8 Vdout1_8ck55 = 1.0 time = 280
.meas tran vdout1_8ck55 FIND v(dout1_8) AT=280.025n

* CHECK dout1_9 Vdout1_9ck55 = 1.0 time = 280
.meas tran vdout1_9ck55 FIND v(dout1_9) AT=280.025n

* CHECK dout1_10 Vdout1_10ck55 = 1.0 time = 280
.meas tran vdout1_10ck55 FIND v(dout1_10) AT=280.025n

* CHECK dout1_11 Vdout1_11ck55 = 0 time = 280
.meas tran vdout1_11ck55 FIND v(dout1_11) AT=280.025n

* CHECK dout1_12 Vdout1_12ck55 = 0 time = 280
.meas tran vdout1_12ck55 FIND v(dout1_12) AT=280.025n

* CHECK dout1_13 Vdout1_13ck55 = 0 time = 280
.meas tran vdout1_13ck55 FIND v(dout1_13) AT=280.025n

* CHECK dout1_0 Vdout1_0ck56 = 0 time = 285
.meas tran vdout1_0ck56 FIND v(dout1_0) AT=285.025n

* CHECK dout1_1 Vdout1_1ck56 = 1.0 time = 285
.meas tran vdout1_1ck56 FIND v(dout1_1) AT=285.025n

* CHECK dout1_2 Vdout1_2ck56 = 1.0 time = 285
.meas tran vdout1_2ck56 FIND v(dout1_2) AT=285.025n

* CHECK dout1_3 Vdout1_3ck56 = 1.0 time = 285
.meas tran vdout1_3ck56 FIND v(dout1_3) AT=285.025n

* CHECK dout1_4 Vdout1_4ck56 = 0 time = 285
.meas tran vdout1_4ck56 FIND v(dout1_4) AT=285.025n

* CHECK dout1_5 Vdout1_5ck56 = 1.0 time = 285
.meas tran vdout1_5ck56 FIND v(dout1_5) AT=285.025n

* CHECK dout1_6 Vdout1_6ck56 = 1.0 time = 285
.meas tran vdout1_6ck56 FIND v(dout1_6) AT=285.025n

* CHECK dout1_7 Vdout1_7ck56 = 0 time = 285
.meas tran vdout1_7ck56 FIND v(dout1_7) AT=285.025n

* CHECK dout1_8 Vdout1_8ck56 = 0 time = 285
.meas tran vdout1_8ck56 FIND v(dout1_8) AT=285.025n

* CHECK dout1_9 Vdout1_9ck56 = 1.0 time = 285
.meas tran vdout1_9ck56 FIND v(dout1_9) AT=285.025n

* CHECK dout1_10 Vdout1_10ck56 = 0 time = 285
.meas tran vdout1_10ck56 FIND v(dout1_10) AT=285.025n

* CHECK dout1_11 Vdout1_11ck56 = 1.0 time = 285
.meas tran vdout1_11ck56 FIND v(dout1_11) AT=285.025n

* CHECK dout1_12 Vdout1_12ck56 = 1.0 time = 285
.meas tran vdout1_12ck56 FIND v(dout1_12) AT=285.025n

* CHECK dout1_13 Vdout1_13ck56 = 0 time = 285
.meas tran vdout1_13ck56 FIND v(dout1_13) AT=285.025n

* CHECK dout1_0 Vdout1_0ck62 = 0 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 1.0 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 1.0 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 0 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_4 Vdout1_4ck62 = 0 time = 315
.meas tran vdout1_4ck62 FIND v(dout1_4) AT=315.025n

* CHECK dout1_5 Vdout1_5ck62 = 1.0 time = 315
.meas tran vdout1_5ck62 FIND v(dout1_5) AT=315.025n

* CHECK dout1_6 Vdout1_6ck62 = 1.0 time = 315
.meas tran vdout1_6ck62 FIND v(dout1_6) AT=315.025n

* CHECK dout1_7 Vdout1_7ck62 = 1.0 time = 315
.meas tran vdout1_7ck62 FIND v(dout1_7) AT=315.025n

* CHECK dout1_8 Vdout1_8ck62 = 0 time = 315
.meas tran vdout1_8ck62 FIND v(dout1_8) AT=315.025n

* CHECK dout1_9 Vdout1_9ck62 = 0 time = 315
.meas tran vdout1_9ck62 FIND v(dout1_9) AT=315.025n

* CHECK dout1_10 Vdout1_10ck62 = 0 time = 315
.meas tran vdout1_10ck62 FIND v(dout1_10) AT=315.025n

* CHECK dout1_11 Vdout1_11ck62 = 1.0 time = 315
.meas tran vdout1_11ck62 FIND v(dout1_11) AT=315.025n

* CHECK dout1_12 Vdout1_12ck62 = 1.0 time = 315
.meas tran vdout1_12ck62 FIND v(dout1_12) AT=315.025n

* CHECK dout1_13 Vdout1_13ck62 = 0 time = 315
.meas tran vdout1_13ck62 FIND v(dout1_13) AT=315.025n

* CHECK dout1_0 Vdout1_0ck63 = 0 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 1.0 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 1.0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 1.0 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_4 Vdout1_4ck63 = 0 time = 320
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=320.025n

* CHECK dout1_5 Vdout1_5ck63 = 1.0 time = 320
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=320.025n

* CHECK dout1_6 Vdout1_6ck63 = 1.0 time = 320
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=320.025n

* CHECK dout1_7 Vdout1_7ck63 = 1.0 time = 320
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=320.025n

* CHECK dout1_8 Vdout1_8ck63 = 1.0 time = 320
.meas tran vdout1_8ck63 FIND v(dout1_8) AT=320.025n

* CHECK dout1_9 Vdout1_9ck63 = 1.0 time = 320
.meas tran vdout1_9ck63 FIND v(dout1_9) AT=320.025n

* CHECK dout1_10 Vdout1_10ck63 = 1.0 time = 320
.meas tran vdout1_10ck63 FIND v(dout1_10) AT=320.025n

* CHECK dout1_11 Vdout1_11ck63 = 0 time = 320
.meas tran vdout1_11ck63 FIND v(dout1_11) AT=320.025n

* CHECK dout1_12 Vdout1_12ck63 = 0 time = 320
.meas tran vdout1_12ck63 FIND v(dout1_12) AT=320.025n

* CHECK dout1_13 Vdout1_13ck63 = 0 time = 320
.meas tran vdout1_13ck63 FIND v(dout1_13) AT=320.025n

* CHECK dout1_0 Vdout1_0ck64 = 1.0 time = 325
.meas tran vdout1_0ck64 FIND v(dout1_0) AT=325.025n

* CHECK dout1_1 Vdout1_1ck64 = 0 time = 325
.meas tran vdout1_1ck64 FIND v(dout1_1) AT=325.025n

* CHECK dout1_2 Vdout1_2ck64 = 0 time = 325
.meas tran vdout1_2ck64 FIND v(dout1_2) AT=325.025n

* CHECK dout1_3 Vdout1_3ck64 = 1.0 time = 325
.meas tran vdout1_3ck64 FIND v(dout1_3) AT=325.025n

* CHECK dout1_4 Vdout1_4ck64 = 0 time = 325
.meas tran vdout1_4ck64 FIND v(dout1_4) AT=325.025n

* CHECK dout1_5 Vdout1_5ck64 = 1.0 time = 325
.meas tran vdout1_5ck64 FIND v(dout1_5) AT=325.025n

* CHECK dout1_6 Vdout1_6ck64 = 1.0 time = 325
.meas tran vdout1_6ck64 FIND v(dout1_6) AT=325.025n

* CHECK dout1_7 Vdout1_7ck64 = 1.0 time = 325
.meas tran vdout1_7ck64 FIND v(dout1_7) AT=325.025n

* CHECK dout1_8 Vdout1_8ck64 = 1.0 time = 325
.meas tran vdout1_8ck64 FIND v(dout1_8) AT=325.025n

* CHECK dout1_9 Vdout1_9ck64 = 0 time = 325
.meas tran vdout1_9ck64 FIND v(dout1_9) AT=325.025n

* CHECK dout1_10 Vdout1_10ck64 = 0 time = 325
.meas tran vdout1_10ck64 FIND v(dout1_10) AT=325.025n

* CHECK dout1_11 Vdout1_11ck64 = 0 time = 325
.meas tran vdout1_11ck64 FIND v(dout1_11) AT=325.025n

* CHECK dout1_12 Vdout1_12ck64 = 1.0 time = 325
.meas tran vdout1_12ck64 FIND v(dout1_12) AT=325.025n

* CHECK dout1_13 Vdout1_13ck64 = 1.0 time = 325
.meas tran vdout1_13ck64 FIND v(dout1_13) AT=325.025n

* CHECK dout1_0 Vdout1_0ck65 = 0 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 1.0 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 1.0 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 1.0 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_4 Vdout1_4ck65 = 0 time = 330
.meas tran vdout1_4ck65 FIND v(dout1_4) AT=330.025n

* CHECK dout1_5 Vdout1_5ck65 = 1.0 time = 330
.meas tran vdout1_5ck65 FIND v(dout1_5) AT=330.025n

* CHECK dout1_6 Vdout1_6ck65 = 1.0 time = 330
.meas tran vdout1_6ck65 FIND v(dout1_6) AT=330.025n

* CHECK dout1_7 Vdout1_7ck65 = 1.0 time = 330
.meas tran vdout1_7ck65 FIND v(dout1_7) AT=330.025n

* CHECK dout1_8 Vdout1_8ck65 = 1.0 time = 330
.meas tran vdout1_8ck65 FIND v(dout1_8) AT=330.025n

* CHECK dout1_9 Vdout1_9ck65 = 1.0 time = 330
.meas tran vdout1_9ck65 FIND v(dout1_9) AT=330.025n

* CHECK dout1_10 Vdout1_10ck65 = 1.0 time = 330
.meas tran vdout1_10ck65 FIND v(dout1_10) AT=330.025n

* CHECK dout1_11 Vdout1_11ck65 = 0 time = 330
.meas tran vdout1_11ck65 FIND v(dout1_11) AT=330.025n

* CHECK dout1_12 Vdout1_12ck65 = 0 time = 330
.meas tran vdout1_12ck65 FIND v(dout1_12) AT=330.025n

* CHECK dout1_13 Vdout1_13ck65 = 0 time = 330
.meas tran vdout1_13ck65 FIND v(dout1_13) AT=330.025n

* CHECK dout1_0 Vdout1_0ck68 = 0 time = 345
.meas tran vdout1_0ck68 FIND v(dout1_0) AT=345.025n

* CHECK dout1_1 Vdout1_1ck68 = 1.0 time = 345
.meas tran vdout1_1ck68 FIND v(dout1_1) AT=345.025n

* CHECK dout1_2 Vdout1_2ck68 = 1.0 time = 345
.meas tran vdout1_2ck68 FIND v(dout1_2) AT=345.025n

* CHECK dout1_3 Vdout1_3ck68 = 1.0 time = 345
.meas tran vdout1_3ck68 FIND v(dout1_3) AT=345.025n

* CHECK dout1_4 Vdout1_4ck68 = 1.0 time = 345
.meas tran vdout1_4ck68 FIND v(dout1_4) AT=345.025n

* CHECK dout1_5 Vdout1_5ck68 = 1.0 time = 345
.meas tran vdout1_5ck68 FIND v(dout1_5) AT=345.025n

* CHECK dout1_6 Vdout1_6ck68 = 1.0 time = 345
.meas tran vdout1_6ck68 FIND v(dout1_6) AT=345.025n

* CHECK dout1_7 Vdout1_7ck68 = 0 time = 345
.meas tran vdout1_7ck68 FIND v(dout1_7) AT=345.025n

* CHECK dout1_8 Vdout1_8ck68 = 1.0 time = 345
.meas tran vdout1_8ck68 FIND v(dout1_8) AT=345.025n

* CHECK dout1_9 Vdout1_9ck68 = 1.0 time = 345
.meas tran vdout1_9ck68 FIND v(dout1_9) AT=345.025n

* CHECK dout1_10 Vdout1_10ck68 = 1.0 time = 345
.meas tran vdout1_10ck68 FIND v(dout1_10) AT=345.025n

* CHECK dout1_11 Vdout1_11ck68 = 1.0 time = 345
.meas tran vdout1_11ck68 FIND v(dout1_11) AT=345.025n

* CHECK dout1_12 Vdout1_12ck68 = 1.0 time = 345
.meas tran vdout1_12ck68 FIND v(dout1_12) AT=345.025n

* CHECK dout1_13 Vdout1_13ck68 = 1.0 time = 345
.meas tran vdout1_13ck68 FIND v(dout1_13) AT=345.025n

* CHECK dout1_0 Vdout1_0ck70 = 0 time = 355
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=355.025n

* CHECK dout1_1 Vdout1_1ck70 = 1.0 time = 355
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=355.025n

* CHECK dout1_2 Vdout1_2ck70 = 1.0 time = 355
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=355.025n

* CHECK dout1_3 Vdout1_3ck70 = 0 time = 355
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=355.025n

* CHECK dout1_4 Vdout1_4ck70 = 1.0 time = 355
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=355.025n

* CHECK dout1_5 Vdout1_5ck70 = 0 time = 355
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=355.025n

* CHECK dout1_6 Vdout1_6ck70 = 1.0 time = 355
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=355.025n

* CHECK dout1_7 Vdout1_7ck70 = 0 time = 355
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=355.025n

* CHECK dout1_8 Vdout1_8ck70 = 1.0 time = 355
.meas tran vdout1_8ck70 FIND v(dout1_8) AT=355.025n

* CHECK dout1_9 Vdout1_9ck70 = 0 time = 355
.meas tran vdout1_9ck70 FIND v(dout1_9) AT=355.025n

* CHECK dout1_10 Vdout1_10ck70 = 0 time = 355
.meas tran vdout1_10ck70 FIND v(dout1_10) AT=355.025n

* CHECK dout1_11 Vdout1_11ck70 = 0 time = 355
.meas tran vdout1_11ck70 FIND v(dout1_11) AT=355.025n

* CHECK dout1_12 Vdout1_12ck70 = 0 time = 355
.meas tran vdout1_12ck70 FIND v(dout1_12) AT=355.025n

* CHECK dout1_13 Vdout1_13ck70 = 0 time = 355
.meas tran vdout1_13ck70 FIND v(dout1_13) AT=355.025n

* CHECK dout1_0 Vdout1_0ck71 = 1.0 time = 360
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=360.025n

* CHECK dout1_1 Vdout1_1ck71 = 0 time = 360
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=360.025n

* CHECK dout1_2 Vdout1_2ck71 = 0 time = 360
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=360.025n

* CHECK dout1_3 Vdout1_3ck71 = 0 time = 360
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=360.025n

* CHECK dout1_4 Vdout1_4ck71 = 1.0 time = 360
.meas tran vdout1_4ck71 FIND v(dout1_4) AT=360.025n

* CHECK dout1_5 Vdout1_5ck71 = 1.0 time = 360
.meas tran vdout1_5ck71 FIND v(dout1_5) AT=360.025n

* CHECK dout1_6 Vdout1_6ck71 = 0 time = 360
.meas tran vdout1_6ck71 FIND v(dout1_6) AT=360.025n

* CHECK dout1_7 Vdout1_7ck71 = 1.0 time = 360
.meas tran vdout1_7ck71 FIND v(dout1_7) AT=360.025n

* CHECK dout1_8 Vdout1_8ck71 = 0 time = 360
.meas tran vdout1_8ck71 FIND v(dout1_8) AT=360.025n

* CHECK dout1_9 Vdout1_9ck71 = 1.0 time = 360
.meas tran vdout1_9ck71 FIND v(dout1_9) AT=360.025n

* CHECK dout1_10 Vdout1_10ck71 = 1.0 time = 360
.meas tran vdout1_10ck71 FIND v(dout1_10) AT=360.025n

* CHECK dout1_11 Vdout1_11ck71 = 1.0 time = 360
.meas tran vdout1_11ck71 FIND v(dout1_11) AT=360.025n

* CHECK dout1_12 Vdout1_12ck71 = 1.0 time = 360
.meas tran vdout1_12ck71 FIND v(dout1_12) AT=360.025n

* CHECK dout1_13 Vdout1_13ck71 = 1.0 time = 360
.meas tran vdout1_13ck71 FIND v(dout1_13) AT=360.025n

* CHECK dout1_0 Vdout1_0ck72 = 0 time = 365
.meas tran vdout1_0ck72 FIND v(dout1_0) AT=365.025n

* CHECK dout1_1 Vdout1_1ck72 = 1.0 time = 365
.meas tran vdout1_1ck72 FIND v(dout1_1) AT=365.025n

* CHECK dout1_2 Vdout1_2ck72 = 0 time = 365
.meas tran vdout1_2ck72 FIND v(dout1_2) AT=365.025n

* CHECK dout1_3 Vdout1_3ck72 = 0 time = 365
.meas tran vdout1_3ck72 FIND v(dout1_3) AT=365.025n

* CHECK dout1_4 Vdout1_4ck72 = 1.0 time = 365
.meas tran vdout1_4ck72 FIND v(dout1_4) AT=365.025n

* CHECK dout1_5 Vdout1_5ck72 = 1.0 time = 365
.meas tran vdout1_5ck72 FIND v(dout1_5) AT=365.025n

* CHECK dout1_6 Vdout1_6ck72 = 0 time = 365
.meas tran vdout1_6ck72 FIND v(dout1_6) AT=365.025n

* CHECK dout1_7 Vdout1_7ck72 = 1.0 time = 365
.meas tran vdout1_7ck72 FIND v(dout1_7) AT=365.025n

* CHECK dout1_8 Vdout1_8ck72 = 1.0 time = 365
.meas tran vdout1_8ck72 FIND v(dout1_8) AT=365.025n

* CHECK dout1_9 Vdout1_9ck72 = 0 time = 365
.meas tran vdout1_9ck72 FIND v(dout1_9) AT=365.025n

* CHECK dout1_10 Vdout1_10ck72 = 0 time = 365
.meas tran vdout1_10ck72 FIND v(dout1_10) AT=365.025n

* CHECK dout1_11 Vdout1_11ck72 = 0 time = 365
.meas tran vdout1_11ck72 FIND v(dout1_11) AT=365.025n

* CHECK dout1_12 Vdout1_12ck72 = 1.0 time = 365
.meas tran vdout1_12ck72 FIND v(dout1_12) AT=365.025n

* CHECK dout1_13 Vdout1_13ck72 = 1.0 time = 365
.meas tran vdout1_13ck72 FIND v(dout1_13) AT=365.025n

* CHECK dout1_0 Vdout1_0ck73 = 0 time = 370
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=370.025n

* CHECK dout1_1 Vdout1_1ck73 = 1.0 time = 370
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=370.025n

* CHECK dout1_2 Vdout1_2ck73 = 1.0 time = 370
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=370.025n

* CHECK dout1_3 Vdout1_3ck73 = 1.0 time = 370
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=370.025n

* CHECK dout1_4 Vdout1_4ck73 = 1.0 time = 370
.meas tran vdout1_4ck73 FIND v(dout1_4) AT=370.025n

* CHECK dout1_5 Vdout1_5ck73 = 1.0 time = 370
.meas tran vdout1_5ck73 FIND v(dout1_5) AT=370.025n

* CHECK dout1_6 Vdout1_6ck73 = 1.0 time = 370
.meas tran vdout1_6ck73 FIND v(dout1_6) AT=370.025n

* CHECK dout1_7 Vdout1_7ck73 = 0 time = 370
.meas tran vdout1_7ck73 FIND v(dout1_7) AT=370.025n

* CHECK dout1_8 Vdout1_8ck73 = 1.0 time = 370
.meas tran vdout1_8ck73 FIND v(dout1_8) AT=370.025n

* CHECK dout1_9 Vdout1_9ck73 = 1.0 time = 370
.meas tran vdout1_9ck73 FIND v(dout1_9) AT=370.025n

* CHECK dout1_10 Vdout1_10ck73 = 1.0 time = 370
.meas tran vdout1_10ck73 FIND v(dout1_10) AT=370.025n

* CHECK dout1_11 Vdout1_11ck73 = 1.0 time = 370
.meas tran vdout1_11ck73 FIND v(dout1_11) AT=370.025n

* CHECK dout1_12 Vdout1_12ck73 = 1.0 time = 370
.meas tran vdout1_12ck73 FIND v(dout1_12) AT=370.025n

* CHECK dout1_13 Vdout1_13ck73 = 1.0 time = 370
.meas tran vdout1_13ck73 FIND v(dout1_13) AT=370.025n

* CHECK dout1_0 Vdout1_0ck74 = 1.0 time = 375
.meas tran vdout1_0ck74 FIND v(dout1_0) AT=375.025n

* CHECK dout1_1 Vdout1_1ck74 = 0 time = 375
.meas tran vdout1_1ck74 FIND v(dout1_1) AT=375.025n

* CHECK dout1_2 Vdout1_2ck74 = 0 time = 375
.meas tran vdout1_2ck74 FIND v(dout1_2) AT=375.025n

* CHECK dout1_3 Vdout1_3ck74 = 0 time = 375
.meas tran vdout1_3ck74 FIND v(dout1_3) AT=375.025n

* CHECK dout1_4 Vdout1_4ck74 = 1.0 time = 375
.meas tran vdout1_4ck74 FIND v(dout1_4) AT=375.025n

* CHECK dout1_5 Vdout1_5ck74 = 1.0 time = 375
.meas tran vdout1_5ck74 FIND v(dout1_5) AT=375.025n

* CHECK dout1_6 Vdout1_6ck74 = 0 time = 375
.meas tran vdout1_6ck74 FIND v(dout1_6) AT=375.025n

* CHECK dout1_7 Vdout1_7ck74 = 0 time = 375
.meas tran vdout1_7ck74 FIND v(dout1_7) AT=375.025n

* CHECK dout1_8 Vdout1_8ck74 = 0 time = 375
.meas tran vdout1_8ck74 FIND v(dout1_8) AT=375.025n

* CHECK dout1_9 Vdout1_9ck74 = 0 time = 375
.meas tran vdout1_9ck74 FIND v(dout1_9) AT=375.025n

* CHECK dout1_10 Vdout1_10ck74 = 1.0 time = 375
.meas tran vdout1_10ck74 FIND v(dout1_10) AT=375.025n

* CHECK dout1_11 Vdout1_11ck74 = 1.0 time = 375
.meas tran vdout1_11ck74 FIND v(dout1_11) AT=375.025n

* CHECK dout1_12 Vdout1_12ck74 = 0 time = 375
.meas tran vdout1_12ck74 FIND v(dout1_12) AT=375.025n

* CHECK dout1_13 Vdout1_13ck74 = 1.0 time = 375
.meas tran vdout1_13ck74 FIND v(dout1_13) AT=375.025n

* CHECK dout1_0 Vdout1_0ck75 = 1.0 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 0 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 1.0 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 1.0 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 0 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_8 Vdout1_8ck75 = 0 time = 380
.meas tran vdout1_8ck75 FIND v(dout1_8) AT=380.025n

* CHECK dout1_9 Vdout1_9ck75 = 0 time = 380
.meas tran vdout1_9ck75 FIND v(dout1_9) AT=380.025n

* CHECK dout1_10 Vdout1_10ck75 = 1.0 time = 380
.meas tran vdout1_10ck75 FIND v(dout1_10) AT=380.025n

* CHECK dout1_11 Vdout1_11ck75 = 1.0 time = 380
.meas tran vdout1_11ck75 FIND v(dout1_11) AT=380.025n

* CHECK dout1_12 Vdout1_12ck75 = 0 time = 380
.meas tran vdout1_12ck75 FIND v(dout1_12) AT=380.025n

* CHECK dout1_13 Vdout1_13ck75 = 1.0 time = 380
.meas tran vdout1_13ck75 FIND v(dout1_13) AT=380.025n

* CHECK dout1_0 Vdout1_0ck77 = 0 time = 390
.meas tran vdout1_0ck77 FIND v(dout1_0) AT=390.025n

* CHECK dout1_1 Vdout1_1ck77 = 1.0 time = 390
.meas tran vdout1_1ck77 FIND v(dout1_1) AT=390.025n

* CHECK dout1_2 Vdout1_2ck77 = 1.0 time = 390
.meas tran vdout1_2ck77 FIND v(dout1_2) AT=390.025n

* CHECK dout1_3 Vdout1_3ck77 = 0 time = 390
.meas tran vdout1_3ck77 FIND v(dout1_3) AT=390.025n

* CHECK dout1_4 Vdout1_4ck77 = 1.0 time = 390
.meas tran vdout1_4ck77 FIND v(dout1_4) AT=390.025n

* CHECK dout1_5 Vdout1_5ck77 = 0 time = 390
.meas tran vdout1_5ck77 FIND v(dout1_5) AT=390.025n

* CHECK dout1_6 Vdout1_6ck77 = 1.0 time = 390
.meas tran vdout1_6ck77 FIND v(dout1_6) AT=390.025n

* CHECK dout1_7 Vdout1_7ck77 = 0 time = 390
.meas tran vdout1_7ck77 FIND v(dout1_7) AT=390.025n

* CHECK dout1_8 Vdout1_8ck77 = 1.0 time = 390
.meas tran vdout1_8ck77 FIND v(dout1_8) AT=390.025n

* CHECK dout1_9 Vdout1_9ck77 = 0 time = 390
.meas tran vdout1_9ck77 FIND v(dout1_9) AT=390.025n

* CHECK dout1_10 Vdout1_10ck77 = 0 time = 390
.meas tran vdout1_10ck77 FIND v(dout1_10) AT=390.025n

* CHECK dout1_11 Vdout1_11ck77 = 0 time = 390
.meas tran vdout1_11ck77 FIND v(dout1_11) AT=390.025n

* CHECK dout1_12 Vdout1_12ck77 = 0 time = 390
.meas tran vdout1_12ck77 FIND v(dout1_12) AT=390.025n

* CHECK dout1_13 Vdout1_13ck77 = 0 time = 390
.meas tran vdout1_13ck77 FIND v(dout1_13) AT=390.025n

* CHECK dout1_0 Vdout1_0ck78 = 0 time = 395
.meas tran vdout1_0ck78 FIND v(dout1_0) AT=395.025n

* CHECK dout1_1 Vdout1_1ck78 = 1.0 time = 395
.meas tran vdout1_1ck78 FIND v(dout1_1) AT=395.025n

* CHECK dout1_2 Vdout1_2ck78 = 1.0 time = 395
.meas tran vdout1_2ck78 FIND v(dout1_2) AT=395.025n

* CHECK dout1_3 Vdout1_3ck78 = 1.0 time = 395
.meas tran vdout1_3ck78 FIND v(dout1_3) AT=395.025n

* CHECK dout1_4 Vdout1_4ck78 = 0 time = 395
.meas tran vdout1_4ck78 FIND v(dout1_4) AT=395.025n

* CHECK dout1_5 Vdout1_5ck78 = 0 time = 395
.meas tran vdout1_5ck78 FIND v(dout1_5) AT=395.025n

* CHECK dout1_6 Vdout1_6ck78 = 1.0 time = 395
.meas tran vdout1_6ck78 FIND v(dout1_6) AT=395.025n

* CHECK dout1_7 Vdout1_7ck78 = 0 time = 395
.meas tran vdout1_7ck78 FIND v(dout1_7) AT=395.025n

* CHECK dout1_8 Vdout1_8ck78 = 0 time = 395
.meas tran vdout1_8ck78 FIND v(dout1_8) AT=395.025n

* CHECK dout1_9 Vdout1_9ck78 = 1.0 time = 395
.meas tran vdout1_9ck78 FIND v(dout1_9) AT=395.025n

* CHECK dout1_10 Vdout1_10ck78 = 1.0 time = 395
.meas tran vdout1_10ck78 FIND v(dout1_10) AT=395.025n

* CHECK dout1_11 Vdout1_11ck78 = 1.0 time = 395
.meas tran vdout1_11ck78 FIND v(dout1_11) AT=395.025n

* CHECK dout1_12 Vdout1_12ck78 = 1.0 time = 395
.meas tran vdout1_12ck78 FIND v(dout1_12) AT=395.025n

* CHECK dout1_13 Vdout1_13ck78 = 0 time = 395
.meas tran vdout1_13ck78 FIND v(dout1_13) AT=395.025n

* CHECK dout1_0 Vdout1_0ck79 = 1.0 time = 400
.meas tran vdout1_0ck79 FIND v(dout1_0) AT=400.025n

* CHECK dout1_1 Vdout1_1ck79 = 0 time = 400
.meas tran vdout1_1ck79 FIND v(dout1_1) AT=400.025n

* CHECK dout1_2 Vdout1_2ck79 = 0 time = 400
.meas tran vdout1_2ck79 FIND v(dout1_2) AT=400.025n

* CHECK dout1_3 Vdout1_3ck79 = 0 time = 400
.meas tran vdout1_3ck79 FIND v(dout1_3) AT=400.025n

* CHECK dout1_4 Vdout1_4ck79 = 1.0 time = 400
.meas tran vdout1_4ck79 FIND v(dout1_4) AT=400.025n

* CHECK dout1_5 Vdout1_5ck79 = 1.0 time = 400
.meas tran vdout1_5ck79 FIND v(dout1_5) AT=400.025n

* CHECK dout1_6 Vdout1_6ck79 = 0 time = 400
.meas tran vdout1_6ck79 FIND v(dout1_6) AT=400.025n

* CHECK dout1_7 Vdout1_7ck79 = 0 time = 400
.meas tran vdout1_7ck79 FIND v(dout1_7) AT=400.025n

* CHECK dout1_8 Vdout1_8ck79 = 0 time = 400
.meas tran vdout1_8ck79 FIND v(dout1_8) AT=400.025n

* CHECK dout1_9 Vdout1_9ck79 = 0 time = 400
.meas tran vdout1_9ck79 FIND v(dout1_9) AT=400.025n

* CHECK dout1_10 Vdout1_10ck79 = 1.0 time = 400
.meas tran vdout1_10ck79 FIND v(dout1_10) AT=400.025n

* CHECK dout1_11 Vdout1_11ck79 = 1.0 time = 400
.meas tran vdout1_11ck79 FIND v(dout1_11) AT=400.025n

* CHECK dout1_12 Vdout1_12ck79 = 0 time = 400
.meas tran vdout1_12ck79 FIND v(dout1_12) AT=400.025n

* CHECK dout1_13 Vdout1_13ck79 = 1.0 time = 400
.meas tran vdout1_13ck79 FIND v(dout1_13) AT=400.025n

* CHECK dout1_0 Vdout1_0ck82 = 1.0 time = 415
.meas tran vdout1_0ck82 FIND v(dout1_0) AT=415.025n

* CHECK dout1_1 Vdout1_1ck82 = 0 time = 415
.meas tran vdout1_1ck82 FIND v(dout1_1) AT=415.025n

* CHECK dout1_2 Vdout1_2ck82 = 0 time = 415
.meas tran vdout1_2ck82 FIND v(dout1_2) AT=415.025n

* CHECK dout1_3 Vdout1_3ck82 = 0 time = 415
.meas tran vdout1_3ck82 FIND v(dout1_3) AT=415.025n

* CHECK dout1_4 Vdout1_4ck82 = 1.0 time = 415
.meas tran vdout1_4ck82 FIND v(dout1_4) AT=415.025n

* CHECK dout1_5 Vdout1_5ck82 = 1.0 time = 415
.meas tran vdout1_5ck82 FIND v(dout1_5) AT=415.025n

* CHECK dout1_6 Vdout1_6ck82 = 0 time = 415
.meas tran vdout1_6ck82 FIND v(dout1_6) AT=415.025n

* CHECK dout1_7 Vdout1_7ck82 = 1.0 time = 415
.meas tran vdout1_7ck82 FIND v(dout1_7) AT=415.025n

* CHECK dout1_8 Vdout1_8ck82 = 0 time = 415
.meas tran vdout1_8ck82 FIND v(dout1_8) AT=415.025n

* CHECK dout1_9 Vdout1_9ck82 = 1.0 time = 415
.meas tran vdout1_9ck82 FIND v(dout1_9) AT=415.025n

* CHECK dout1_10 Vdout1_10ck82 = 1.0 time = 415
.meas tran vdout1_10ck82 FIND v(dout1_10) AT=415.025n

* CHECK dout1_11 Vdout1_11ck82 = 1.0 time = 415
.meas tran vdout1_11ck82 FIND v(dout1_11) AT=415.025n

* CHECK dout1_12 Vdout1_12ck82 = 1.0 time = 415
.meas tran vdout1_12ck82 FIND v(dout1_12) AT=415.025n

* CHECK dout1_13 Vdout1_13ck82 = 1.0 time = 415
.meas tran vdout1_13ck82 FIND v(dout1_13) AT=415.025n

* CHECK dout1_0 Vdout1_0ck85 = 0 time = 430
.meas tran vdout1_0ck85 FIND v(dout1_0) AT=430.025n

* CHECK dout1_1 Vdout1_1ck85 = 1.0 time = 430
.meas tran vdout1_1ck85 FIND v(dout1_1) AT=430.025n

* CHECK dout1_2 Vdout1_2ck85 = 1.0 time = 430
.meas tran vdout1_2ck85 FIND v(dout1_2) AT=430.025n

* CHECK dout1_3 Vdout1_3ck85 = 0 time = 430
.meas tran vdout1_3ck85 FIND v(dout1_3) AT=430.025n

* CHECK dout1_4 Vdout1_4ck85 = 1.0 time = 430
.meas tran vdout1_4ck85 FIND v(dout1_4) AT=430.025n

* CHECK dout1_5 Vdout1_5ck85 = 0 time = 430
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=430.025n

* CHECK dout1_6 Vdout1_6ck85 = 1.0 time = 430
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=430.025n

* CHECK dout1_7 Vdout1_7ck85 = 0 time = 430
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=430.025n

* CHECK dout1_8 Vdout1_8ck85 = 1.0 time = 430
.meas tran vdout1_8ck85 FIND v(dout1_8) AT=430.025n

* CHECK dout1_9 Vdout1_9ck85 = 0 time = 430
.meas tran vdout1_9ck85 FIND v(dout1_9) AT=430.025n

* CHECK dout1_10 Vdout1_10ck85 = 0 time = 430
.meas tran vdout1_10ck85 FIND v(dout1_10) AT=430.025n

* CHECK dout1_11 Vdout1_11ck85 = 0 time = 430
.meas tran vdout1_11ck85 FIND v(dout1_11) AT=430.025n

* CHECK dout1_12 Vdout1_12ck85 = 0 time = 430
.meas tran vdout1_12ck85 FIND v(dout1_12) AT=430.025n

* CHECK dout1_13 Vdout1_13ck85 = 0 time = 430
.meas tran vdout1_13ck85 FIND v(dout1_13) AT=430.025n

* CHECK dout1_0 Vdout1_0ck87 = 1.0 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 1.0 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 0 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 1.0 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_4 Vdout1_4ck87 = 0 time = 440
.meas tran vdout1_4ck87 FIND v(dout1_4) AT=440.025n

* CHECK dout1_5 Vdout1_5ck87 = 0 time = 440
.meas tran vdout1_5ck87 FIND v(dout1_5) AT=440.025n

* CHECK dout1_6 Vdout1_6ck87 = 0 time = 440
.meas tran vdout1_6ck87 FIND v(dout1_6) AT=440.025n

* CHECK dout1_7 Vdout1_7ck87 = 0 time = 440
.meas tran vdout1_7ck87 FIND v(dout1_7) AT=440.025n

* CHECK dout1_8 Vdout1_8ck87 = 1.0 time = 440
.meas tran vdout1_8ck87 FIND v(dout1_8) AT=440.025n

* CHECK dout1_9 Vdout1_9ck87 = 0 time = 440
.meas tran vdout1_9ck87 FIND v(dout1_9) AT=440.025n

* CHECK dout1_10 Vdout1_10ck87 = 0 time = 440
.meas tran vdout1_10ck87 FIND v(dout1_10) AT=440.025n

* CHECK dout1_11 Vdout1_11ck87 = 1.0 time = 440
.meas tran vdout1_11ck87 FIND v(dout1_11) AT=440.025n

* CHECK dout1_12 Vdout1_12ck87 = 0 time = 440
.meas tran vdout1_12ck87 FIND v(dout1_12) AT=440.025n

* CHECK dout1_13 Vdout1_13ck87 = 0 time = 440
.meas tran vdout1_13ck87 FIND v(dout1_13) AT=440.025n

* CHECK dout1_0 Vdout1_0ck88 = 1.0 time = 445
.meas tran vdout1_0ck88 FIND v(dout1_0) AT=445.025n

* CHECK dout1_1 Vdout1_1ck88 = 0 time = 445
.meas tran vdout1_1ck88 FIND v(dout1_1) AT=445.025n

* CHECK dout1_2 Vdout1_2ck88 = 1.0 time = 445
.meas tran vdout1_2ck88 FIND v(dout1_2) AT=445.025n

* CHECK dout1_3 Vdout1_3ck88 = 1.0 time = 445
.meas tran vdout1_3ck88 FIND v(dout1_3) AT=445.025n

* CHECK dout1_4 Vdout1_4ck88 = 1.0 time = 445
.meas tran vdout1_4ck88 FIND v(dout1_4) AT=445.025n

* CHECK dout1_5 Vdout1_5ck88 = 0 time = 445
.meas tran vdout1_5ck88 FIND v(dout1_5) AT=445.025n

* CHECK dout1_6 Vdout1_6ck88 = 1.0 time = 445
.meas tran vdout1_6ck88 FIND v(dout1_6) AT=445.025n

* CHECK dout1_7 Vdout1_7ck88 = 1.0 time = 445
.meas tran vdout1_7ck88 FIND v(dout1_7) AT=445.025n

* CHECK dout1_8 Vdout1_8ck88 = 0 time = 445
.meas tran vdout1_8ck88 FIND v(dout1_8) AT=445.025n

* CHECK dout1_9 Vdout1_9ck88 = 1.0 time = 445
.meas tran vdout1_9ck88 FIND v(dout1_9) AT=445.025n

* CHECK dout1_10 Vdout1_10ck88 = 0 time = 445
.meas tran vdout1_10ck88 FIND v(dout1_10) AT=445.025n

* CHECK dout1_11 Vdout1_11ck88 = 1.0 time = 445
.meas tran vdout1_11ck88 FIND v(dout1_11) AT=445.025n

* CHECK dout1_12 Vdout1_12ck88 = 1.0 time = 445
.meas tran vdout1_12ck88 FIND v(dout1_12) AT=445.025n

* CHECK dout1_13 Vdout1_13ck88 = 0 time = 445
.meas tran vdout1_13ck88 FIND v(dout1_13) AT=445.025n

* CHECK dout1_0 Vdout1_0ck90 = 0 time = 455
.meas tran vdout1_0ck90 FIND v(dout1_0) AT=455.025n

* CHECK dout1_1 Vdout1_1ck90 = 1.0 time = 455
.meas tran vdout1_1ck90 FIND v(dout1_1) AT=455.025n

* CHECK dout1_2 Vdout1_2ck90 = 1.0 time = 455
.meas tran vdout1_2ck90 FIND v(dout1_2) AT=455.025n

* CHECK dout1_3 Vdout1_3ck90 = 1.0 time = 455
.meas tran vdout1_3ck90 FIND v(dout1_3) AT=455.025n

* CHECK dout1_4 Vdout1_4ck90 = 1.0 time = 455
.meas tran vdout1_4ck90 FIND v(dout1_4) AT=455.025n

* CHECK dout1_5 Vdout1_5ck90 = 1.0 time = 455
.meas tran vdout1_5ck90 FIND v(dout1_5) AT=455.025n

* CHECK dout1_6 Vdout1_6ck90 = 1.0 time = 455
.meas tran vdout1_6ck90 FIND v(dout1_6) AT=455.025n

* CHECK dout1_7 Vdout1_7ck90 = 0 time = 455
.meas tran vdout1_7ck90 FIND v(dout1_7) AT=455.025n

* CHECK dout1_8 Vdout1_8ck90 = 1.0 time = 455
.meas tran vdout1_8ck90 FIND v(dout1_8) AT=455.025n

* CHECK dout1_9 Vdout1_9ck90 = 1.0 time = 455
.meas tran vdout1_9ck90 FIND v(dout1_9) AT=455.025n

* CHECK dout1_10 Vdout1_10ck90 = 1.0 time = 455
.meas tran vdout1_10ck90 FIND v(dout1_10) AT=455.025n

* CHECK dout1_11 Vdout1_11ck90 = 1.0 time = 455
.meas tran vdout1_11ck90 FIND v(dout1_11) AT=455.025n

* CHECK dout1_12 Vdout1_12ck90 = 1.0 time = 455
.meas tran vdout1_12ck90 FIND v(dout1_12) AT=455.025n

* CHECK dout1_13 Vdout1_13ck90 = 1.0 time = 455
.meas tran vdout1_13ck90 FIND v(dout1_13) AT=455.025n

* CHECK dout1_0 Vdout1_0ck92 = 0 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 1.0 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 1.0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 1.0 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_4 Vdout1_4ck92 = 1.0 time = 465
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=465.025n

* CHECK dout1_5 Vdout1_5ck92 = 1.0 time = 465
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=465.025n

* CHECK dout1_6 Vdout1_6ck92 = 1.0 time = 465
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=465.025n

* CHECK dout1_7 Vdout1_7ck92 = 0 time = 465
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=465.025n

* CHECK dout1_8 Vdout1_8ck92 = 1.0 time = 465
.meas tran vdout1_8ck92 FIND v(dout1_8) AT=465.025n

* CHECK dout1_9 Vdout1_9ck92 = 1.0 time = 465
.meas tran vdout1_9ck92 FIND v(dout1_9) AT=465.025n

* CHECK dout1_10 Vdout1_10ck92 = 1.0 time = 465
.meas tran vdout1_10ck92 FIND v(dout1_10) AT=465.025n

* CHECK dout1_11 Vdout1_11ck92 = 1.0 time = 465
.meas tran vdout1_11ck92 FIND v(dout1_11) AT=465.025n

* CHECK dout1_12 Vdout1_12ck92 = 1.0 time = 465
.meas tran vdout1_12ck92 FIND v(dout1_12) AT=465.025n

* CHECK dout1_13 Vdout1_13ck92 = 1.0 time = 465
.meas tran vdout1_13ck92 FIND v(dout1_13) AT=465.025n

* CHECK dout1_0 Vdout1_0ck94 = 1.0 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 0 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 0 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 1.0 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_4 Vdout1_4ck94 = 0 time = 475
.meas tran vdout1_4ck94 FIND v(dout1_4) AT=475.025n

* CHECK dout1_5 Vdout1_5ck94 = 1.0 time = 475
.meas tran vdout1_5ck94 FIND v(dout1_5) AT=475.025n

* CHECK dout1_6 Vdout1_6ck94 = 1.0 time = 475
.meas tran vdout1_6ck94 FIND v(dout1_6) AT=475.025n

* CHECK dout1_7 Vdout1_7ck94 = 1.0 time = 475
.meas tran vdout1_7ck94 FIND v(dout1_7) AT=475.025n

* CHECK dout1_8 Vdout1_8ck94 = 1.0 time = 475
.meas tran vdout1_8ck94 FIND v(dout1_8) AT=475.025n

* CHECK dout1_9 Vdout1_9ck94 = 0 time = 475
.meas tran vdout1_9ck94 FIND v(dout1_9) AT=475.025n

* CHECK dout1_10 Vdout1_10ck94 = 0 time = 475
.meas tran vdout1_10ck94 FIND v(dout1_10) AT=475.025n

* CHECK dout1_11 Vdout1_11ck94 = 0 time = 475
.meas tran vdout1_11ck94 FIND v(dout1_11) AT=475.025n

* CHECK dout1_12 Vdout1_12ck94 = 1.0 time = 475
.meas tran vdout1_12ck94 FIND v(dout1_12) AT=475.025n

* CHECK dout1_13 Vdout1_13ck94 = 1.0 time = 475
.meas tran vdout1_13ck94 FIND v(dout1_13) AT=475.025n

* CHECK dout1_0 Vdout1_0ck97 = 0 time = 490
.meas tran vdout1_0ck97 FIND v(dout1_0) AT=490.025n

* CHECK dout1_1 Vdout1_1ck97 = 1.0 time = 490
.meas tran vdout1_1ck97 FIND v(dout1_1) AT=490.025n

* CHECK dout1_2 Vdout1_2ck97 = 1.0 time = 490
.meas tran vdout1_2ck97 FIND v(dout1_2) AT=490.025n

* CHECK dout1_3 Vdout1_3ck97 = 0 time = 490
.meas tran vdout1_3ck97 FIND v(dout1_3) AT=490.025n

* CHECK dout1_4 Vdout1_4ck97 = 1.0 time = 490
.meas tran vdout1_4ck97 FIND v(dout1_4) AT=490.025n

* CHECK dout1_5 Vdout1_5ck97 = 0 time = 490
.meas tran vdout1_5ck97 FIND v(dout1_5) AT=490.025n

* CHECK dout1_6 Vdout1_6ck97 = 0 time = 490
.meas tran vdout1_6ck97 FIND v(dout1_6) AT=490.025n

* CHECK dout1_7 Vdout1_7ck97 = 0 time = 490
.meas tran vdout1_7ck97 FIND v(dout1_7) AT=490.025n

* CHECK dout1_8 Vdout1_8ck97 = 0 time = 490
.meas tran vdout1_8ck97 FIND v(dout1_8) AT=490.025n

* CHECK dout1_9 Vdout1_9ck97 = 1.0 time = 490
.meas tran vdout1_9ck97 FIND v(dout1_9) AT=490.025n

* CHECK dout1_10 Vdout1_10ck97 = 1.0 time = 490
.meas tran vdout1_10ck97 FIND v(dout1_10) AT=490.025n

* CHECK dout1_11 Vdout1_11ck97 = 1.0 time = 490
.meas tran vdout1_11ck97 FIND v(dout1_11) AT=490.025n

* CHECK dout1_12 Vdout1_12ck97 = 0 time = 490
.meas tran vdout1_12ck97 FIND v(dout1_12) AT=490.025n

* CHECK dout1_13 Vdout1_13ck97 = 0 time = 490
.meas tran vdout1_13ck97 FIND v(dout1_13) AT=490.025n

* CHECK dout1_0 Vdout1_0ck101 = 0 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 1.0 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 1.0 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 1.0 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_4 Vdout1_4ck101 = 0 time = 510
.meas tran vdout1_4ck101 FIND v(dout1_4) AT=510.025n

* CHECK dout1_5 Vdout1_5ck101 = 0 time = 510
.meas tran vdout1_5ck101 FIND v(dout1_5) AT=510.025n

* CHECK dout1_6 Vdout1_6ck101 = 1.0 time = 510
.meas tran vdout1_6ck101 FIND v(dout1_6) AT=510.025n

* CHECK dout1_7 Vdout1_7ck101 = 0 time = 510
.meas tran vdout1_7ck101 FIND v(dout1_7) AT=510.025n

* CHECK dout1_8 Vdout1_8ck101 = 0 time = 510
.meas tran vdout1_8ck101 FIND v(dout1_8) AT=510.025n

* CHECK dout1_9 Vdout1_9ck101 = 1.0 time = 510
.meas tran vdout1_9ck101 FIND v(dout1_9) AT=510.025n

* CHECK dout1_10 Vdout1_10ck101 = 1.0 time = 510
.meas tran vdout1_10ck101 FIND v(dout1_10) AT=510.025n

* CHECK dout1_11 Vdout1_11ck101 = 1.0 time = 510
.meas tran vdout1_11ck101 FIND v(dout1_11) AT=510.025n

* CHECK dout1_12 Vdout1_12ck101 = 1.0 time = 510
.meas tran vdout1_12ck101 FIND v(dout1_12) AT=510.025n

* CHECK dout1_13 Vdout1_13ck101 = 0 time = 510
.meas tran vdout1_13ck101 FIND v(dout1_13) AT=510.025n

* CHECK dout1_0 Vdout1_0ck102 = 1.0 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 1.0 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 1.0 time = 515
.meas tran vdout1_2ck102 FIND v(dout1_2) AT=515.025n

* CHECK dout1_3 Vdout1_3ck102 = 1.0 time = 515
.meas tran vdout1_3ck102 FIND v(dout1_3) AT=515.025n

* CHECK dout1_4 Vdout1_4ck102 = 1.0 time = 515
.meas tran vdout1_4ck102 FIND v(dout1_4) AT=515.025n

* CHECK dout1_5 Vdout1_5ck102 = 0 time = 515
.meas tran vdout1_5ck102 FIND v(dout1_5) AT=515.025n

* CHECK dout1_6 Vdout1_6ck102 = 0 time = 515
.meas tran vdout1_6ck102 FIND v(dout1_6) AT=515.025n

* CHECK dout1_7 Vdout1_7ck102 = 1.0 time = 515
.meas tran vdout1_7ck102 FIND v(dout1_7) AT=515.025n

* CHECK dout1_8 Vdout1_8ck102 = 1.0 time = 515
.meas tran vdout1_8ck102 FIND v(dout1_8) AT=515.025n

* CHECK dout1_9 Vdout1_9ck102 = 1.0 time = 515
.meas tran vdout1_9ck102 FIND v(dout1_9) AT=515.025n

* CHECK dout1_10 Vdout1_10ck102 = 0 time = 515
.meas tran vdout1_10ck102 FIND v(dout1_10) AT=515.025n

* CHECK dout1_11 Vdout1_11ck102 = 0 time = 515
.meas tran vdout1_11ck102 FIND v(dout1_11) AT=515.025n

* CHECK dout1_12 Vdout1_12ck102 = 0 time = 515
.meas tran vdout1_12ck102 FIND v(dout1_12) AT=515.025n

* CHECK dout1_13 Vdout1_13ck102 = 0 time = 515
.meas tran vdout1_13ck102 FIND v(dout1_13) AT=515.025n

* CHECK dout1_0 Vdout1_0ck103 = 1.0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 1.0 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_4 Vdout1_4ck103 = 1.0 time = 520
.meas tran vdout1_4ck103 FIND v(dout1_4) AT=520.025n

* CHECK dout1_5 Vdout1_5ck103 = 1.0 time = 520
.meas tran vdout1_5ck103 FIND v(dout1_5) AT=520.025n

* CHECK dout1_6 Vdout1_6ck103 = 1.0 time = 520
.meas tran vdout1_6ck103 FIND v(dout1_6) AT=520.025n

* CHECK dout1_7 Vdout1_7ck103 = 0 time = 520
.meas tran vdout1_7ck103 FIND v(dout1_7) AT=520.025n

* CHECK dout1_8 Vdout1_8ck103 = 1.0 time = 520
.meas tran vdout1_8ck103 FIND v(dout1_8) AT=520.025n

* CHECK dout1_9 Vdout1_9ck103 = 1.0 time = 520
.meas tran vdout1_9ck103 FIND v(dout1_9) AT=520.025n

* CHECK dout1_10 Vdout1_10ck103 = 0 time = 520
.meas tran vdout1_10ck103 FIND v(dout1_10) AT=520.025n

* CHECK dout1_11 Vdout1_11ck103 = 0 time = 520
.meas tran vdout1_11ck103 FIND v(dout1_11) AT=520.025n

* CHECK dout1_12 Vdout1_12ck103 = 0 time = 520
.meas tran vdout1_12ck103 FIND v(dout1_12) AT=520.025n

* CHECK dout1_13 Vdout1_13ck103 = 0 time = 520
.meas tran vdout1_13ck103 FIND v(dout1_13) AT=520.025n

* CHECK dout1_0 Vdout1_0ck104 = 1.0 time = 525
.meas tran vdout1_0ck104 FIND v(dout1_0) AT=525.025n

* CHECK dout1_1 Vdout1_1ck104 = 1.0 time = 525
.meas tran vdout1_1ck104 FIND v(dout1_1) AT=525.025n

* CHECK dout1_2 Vdout1_2ck104 = 1.0 time = 525
.meas tran vdout1_2ck104 FIND v(dout1_2) AT=525.025n

* CHECK dout1_3 Vdout1_3ck104 = 1.0 time = 525
.meas tran vdout1_3ck104 FIND v(dout1_3) AT=525.025n

* CHECK dout1_4 Vdout1_4ck104 = 1.0 time = 525
.meas tran vdout1_4ck104 FIND v(dout1_4) AT=525.025n

* CHECK dout1_5 Vdout1_5ck104 = 0 time = 525
.meas tran vdout1_5ck104 FIND v(dout1_5) AT=525.025n

* CHECK dout1_6 Vdout1_6ck104 = 0 time = 525
.meas tran vdout1_6ck104 FIND v(dout1_6) AT=525.025n

* CHECK dout1_7 Vdout1_7ck104 = 1.0 time = 525
.meas tran vdout1_7ck104 FIND v(dout1_7) AT=525.025n

* CHECK dout1_8 Vdout1_8ck104 = 1.0 time = 525
.meas tran vdout1_8ck104 FIND v(dout1_8) AT=525.025n

* CHECK dout1_9 Vdout1_9ck104 = 1.0 time = 525
.meas tran vdout1_9ck104 FIND v(dout1_9) AT=525.025n

* CHECK dout1_10 Vdout1_10ck104 = 0 time = 525
.meas tran vdout1_10ck104 FIND v(dout1_10) AT=525.025n

* CHECK dout1_11 Vdout1_11ck104 = 0 time = 525
.meas tran vdout1_11ck104 FIND v(dout1_11) AT=525.025n

* CHECK dout1_12 Vdout1_12ck104 = 0 time = 525
.meas tran vdout1_12ck104 FIND v(dout1_12) AT=525.025n

* CHECK dout1_13 Vdout1_13ck104 = 0 time = 525
.meas tran vdout1_13ck104 FIND v(dout1_13) AT=525.025n

* CHECK dout1_0 Vdout1_0ck105 = 1.0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 1.0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 0 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 1.0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_4 Vdout1_4ck105 = 0 time = 530
.meas tran vdout1_4ck105 FIND v(dout1_4) AT=530.025n

* CHECK dout1_5 Vdout1_5ck105 = 0 time = 530
.meas tran vdout1_5ck105 FIND v(dout1_5) AT=530.025n

* CHECK dout1_6 Vdout1_6ck105 = 0 time = 530
.meas tran vdout1_6ck105 FIND v(dout1_6) AT=530.025n

* CHECK dout1_7 Vdout1_7ck105 = 0 time = 530
.meas tran vdout1_7ck105 FIND v(dout1_7) AT=530.025n

* CHECK dout1_8 Vdout1_8ck105 = 1.0 time = 530
.meas tran vdout1_8ck105 FIND v(dout1_8) AT=530.025n

* CHECK dout1_9 Vdout1_9ck105 = 0 time = 530
.meas tran vdout1_9ck105 FIND v(dout1_9) AT=530.025n

* CHECK dout1_10 Vdout1_10ck105 = 0 time = 530
.meas tran vdout1_10ck105 FIND v(dout1_10) AT=530.025n

* CHECK dout1_11 Vdout1_11ck105 = 1.0 time = 530
.meas tran vdout1_11ck105 FIND v(dout1_11) AT=530.025n

* CHECK dout1_12 Vdout1_12ck105 = 0 time = 530
.meas tran vdout1_12ck105 FIND v(dout1_12) AT=530.025n

* CHECK dout1_13 Vdout1_13ck105 = 0 time = 530
.meas tran vdout1_13ck105 FIND v(dout1_13) AT=530.025n

* CHECK dout1_0 Vdout1_0ck106 = 0 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 0 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 0 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 1.0 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_4 Vdout1_4ck106 = 1.0 time = 535
.meas tran vdout1_4ck106 FIND v(dout1_4) AT=535.025n

* CHECK dout1_5 Vdout1_5ck106 = 0 time = 535
.meas tran vdout1_5ck106 FIND v(dout1_5) AT=535.025n

* CHECK dout1_6 Vdout1_6ck106 = 0 time = 535
.meas tran vdout1_6ck106 FIND v(dout1_6) AT=535.025n

* CHECK dout1_7 Vdout1_7ck106 = 0 time = 535
.meas tran vdout1_7ck106 FIND v(dout1_7) AT=535.025n

* CHECK dout1_8 Vdout1_8ck106 = 1.0 time = 535
.meas tran vdout1_8ck106 FIND v(dout1_8) AT=535.025n

* CHECK dout1_9 Vdout1_9ck106 = 0 time = 535
.meas tran vdout1_9ck106 FIND v(dout1_9) AT=535.025n

* CHECK dout1_10 Vdout1_10ck106 = 0 time = 535
.meas tran vdout1_10ck106 FIND v(dout1_10) AT=535.025n

* CHECK dout1_11 Vdout1_11ck106 = 0 time = 535
.meas tran vdout1_11ck106 FIND v(dout1_11) AT=535.025n

* CHECK dout1_12 Vdout1_12ck106 = 0 time = 535
.meas tran vdout1_12ck106 FIND v(dout1_12) AT=535.025n

* CHECK dout1_13 Vdout1_13ck106 = 1.0 time = 535
.meas tran vdout1_13ck106 FIND v(dout1_13) AT=535.025n

* CHECK dout1_0 Vdout1_0ck108 = 1.0 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 0 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 1.0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 1.0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 1.0 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 1.0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 0 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 0 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_11 Vdout1_11ck108 = 0 time = 545
.meas tran vdout1_11ck108 FIND v(dout1_11) AT=545.025n

* CHECK dout1_12 Vdout1_12ck108 = 1.0 time = 545
.meas tran vdout1_12ck108 FIND v(dout1_12) AT=545.025n

* CHECK dout1_13 Vdout1_13ck108 = 1.0 time = 545
.meas tran vdout1_13ck108 FIND v(dout1_13) AT=545.025n

* CHECK dout1_0 Vdout1_0ck109 = 1.0 time = 550
.meas tran vdout1_0ck109 FIND v(dout1_0) AT=550.025n

* CHECK dout1_1 Vdout1_1ck109 = 1.0 time = 550
.meas tran vdout1_1ck109 FIND v(dout1_1) AT=550.025n

* CHECK dout1_2 Vdout1_2ck109 = 0 time = 550
.meas tran vdout1_2ck109 FIND v(dout1_2) AT=550.025n

* CHECK dout1_3 Vdout1_3ck109 = 1.0 time = 550
.meas tran vdout1_3ck109 FIND v(dout1_3) AT=550.025n

* CHECK dout1_4 Vdout1_4ck109 = 0 time = 550
.meas tran vdout1_4ck109 FIND v(dout1_4) AT=550.025n

* CHECK dout1_5 Vdout1_5ck109 = 0 time = 550
.meas tran vdout1_5ck109 FIND v(dout1_5) AT=550.025n

* CHECK dout1_6 Vdout1_6ck109 = 0 time = 550
.meas tran vdout1_6ck109 FIND v(dout1_6) AT=550.025n

* CHECK dout1_7 Vdout1_7ck109 = 0 time = 550
.meas tran vdout1_7ck109 FIND v(dout1_7) AT=550.025n

* CHECK dout1_8 Vdout1_8ck109 = 1.0 time = 550
.meas tran vdout1_8ck109 FIND v(dout1_8) AT=550.025n

* CHECK dout1_9 Vdout1_9ck109 = 0 time = 550
.meas tran vdout1_9ck109 FIND v(dout1_9) AT=550.025n

* CHECK dout1_10 Vdout1_10ck109 = 0 time = 550
.meas tran vdout1_10ck109 FIND v(dout1_10) AT=550.025n

* CHECK dout1_11 Vdout1_11ck109 = 1.0 time = 550
.meas tran vdout1_11ck109 FIND v(dout1_11) AT=550.025n

* CHECK dout1_12 Vdout1_12ck109 = 0 time = 550
.meas tran vdout1_12ck109 FIND v(dout1_12) AT=550.025n

* CHECK dout1_13 Vdout1_13ck109 = 0 time = 550
.meas tran vdout1_13ck109 FIND v(dout1_13) AT=550.025n

* CHECK dout1_0 Vdout1_0ck110 = 1.0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 1.0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 1.0 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 1.0 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 0 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_8 Vdout1_8ck110 = 1.0 time = 555
.meas tran vdout1_8ck110 FIND v(dout1_8) AT=555.025n

* CHECK dout1_9 Vdout1_9ck110 = 0 time = 555
.meas tran vdout1_9ck110 FIND v(dout1_9) AT=555.025n

* CHECK dout1_10 Vdout1_10ck110 = 1.0 time = 555
.meas tran vdout1_10ck110 FIND v(dout1_10) AT=555.025n

* CHECK dout1_11 Vdout1_11ck110 = 1.0 time = 555
.meas tran vdout1_11ck110 FIND v(dout1_11) AT=555.025n

* CHECK dout1_12 Vdout1_12ck110 = 0 time = 555
.meas tran vdout1_12ck110 FIND v(dout1_12) AT=555.025n

* CHECK dout1_13 Vdout1_13ck110 = 0 time = 555
.meas tran vdout1_13ck110 FIND v(dout1_13) AT=555.025n

* CHECK dout1_0 Vdout1_0ck111 = 1.0 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 1.0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 1.0 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 1.0 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 0 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 0 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_8 Vdout1_8ck111 = 1.0 time = 560
.meas tran vdout1_8ck111 FIND v(dout1_8) AT=560.025n

* CHECK dout1_9 Vdout1_9ck111 = 0 time = 560
.meas tran vdout1_9ck111 FIND v(dout1_9) AT=560.025n

* CHECK dout1_10 Vdout1_10ck111 = 1.0 time = 560
.meas tran vdout1_10ck111 FIND v(dout1_10) AT=560.025n

* CHECK dout1_11 Vdout1_11ck111 = 1.0 time = 560
.meas tran vdout1_11ck111 FIND v(dout1_11) AT=560.025n

* CHECK dout1_12 Vdout1_12ck111 = 0 time = 560
.meas tran vdout1_12ck111 FIND v(dout1_12) AT=560.025n

* CHECK dout1_13 Vdout1_13ck111 = 0 time = 560
.meas tran vdout1_13ck111 FIND v(dout1_13) AT=560.025n

* CHECK dout1_0 Vdout1_0ck112 = 1.0 time = 565
.meas tran vdout1_0ck112 FIND v(dout1_0) AT=565.025n

* CHECK dout1_1 Vdout1_1ck112 = 1.0 time = 565
.meas tran vdout1_1ck112 FIND v(dout1_1) AT=565.025n

* CHECK dout1_2 Vdout1_2ck112 = 1.0 time = 565
.meas tran vdout1_2ck112 FIND v(dout1_2) AT=565.025n

* CHECK dout1_3 Vdout1_3ck112 = 1.0 time = 565
.meas tran vdout1_3ck112 FIND v(dout1_3) AT=565.025n

* CHECK dout1_4 Vdout1_4ck112 = 1.0 time = 565
.meas tran vdout1_4ck112 FIND v(dout1_4) AT=565.025n

* CHECK dout1_5 Vdout1_5ck112 = 0 time = 565
.meas tran vdout1_5ck112 FIND v(dout1_5) AT=565.025n

* CHECK dout1_6 Vdout1_6ck112 = 0 time = 565
.meas tran vdout1_6ck112 FIND v(dout1_6) AT=565.025n

* CHECK dout1_7 Vdout1_7ck112 = 1.0 time = 565
.meas tran vdout1_7ck112 FIND v(dout1_7) AT=565.025n

* CHECK dout1_8 Vdout1_8ck112 = 1.0 time = 565
.meas tran vdout1_8ck112 FIND v(dout1_8) AT=565.025n

* CHECK dout1_9 Vdout1_9ck112 = 1.0 time = 565
.meas tran vdout1_9ck112 FIND v(dout1_9) AT=565.025n

* CHECK dout1_10 Vdout1_10ck112 = 0 time = 565
.meas tran vdout1_10ck112 FIND v(dout1_10) AT=565.025n

* CHECK dout1_11 Vdout1_11ck112 = 0 time = 565
.meas tran vdout1_11ck112 FIND v(dout1_11) AT=565.025n

* CHECK dout1_12 Vdout1_12ck112 = 0 time = 565
.meas tran vdout1_12ck112 FIND v(dout1_12) AT=565.025n

* CHECK dout1_13 Vdout1_13ck112 = 0 time = 565
.meas tran vdout1_13ck112 FIND v(dout1_13) AT=565.025n

* CHECK dout1_0 Vdout1_0ck113 = 1.0 time = 570
.meas tran vdout1_0ck113 FIND v(dout1_0) AT=570.025n

* CHECK dout1_1 Vdout1_1ck113 = 1.0 time = 570
.meas tran vdout1_1ck113 FIND v(dout1_1) AT=570.025n

* CHECK dout1_2 Vdout1_2ck113 = 0 time = 570
.meas tran vdout1_2ck113 FIND v(dout1_2) AT=570.025n

* CHECK dout1_3 Vdout1_3ck113 = 0 time = 570
.meas tran vdout1_3ck113 FIND v(dout1_3) AT=570.025n

* CHECK dout1_4 Vdout1_4ck113 = 1.0 time = 570
.meas tran vdout1_4ck113 FIND v(dout1_4) AT=570.025n

* CHECK dout1_5 Vdout1_5ck113 = 1.0 time = 570
.meas tran vdout1_5ck113 FIND v(dout1_5) AT=570.025n

* CHECK dout1_6 Vdout1_6ck113 = 1.0 time = 570
.meas tran vdout1_6ck113 FIND v(dout1_6) AT=570.025n

* CHECK dout1_7 Vdout1_7ck113 = 1.0 time = 570
.meas tran vdout1_7ck113 FIND v(dout1_7) AT=570.025n

* CHECK dout1_8 Vdout1_8ck113 = 1.0 time = 570
.meas tran vdout1_8ck113 FIND v(dout1_8) AT=570.025n

* CHECK dout1_9 Vdout1_9ck113 = 0 time = 570
.meas tran vdout1_9ck113 FIND v(dout1_9) AT=570.025n

* CHECK dout1_10 Vdout1_10ck113 = 0 time = 570
.meas tran vdout1_10ck113 FIND v(dout1_10) AT=570.025n

* CHECK dout1_11 Vdout1_11ck113 = 1.0 time = 570
.meas tran vdout1_11ck113 FIND v(dout1_11) AT=570.025n

* CHECK dout1_12 Vdout1_12ck113 = 1.0 time = 570
.meas tran vdout1_12ck113 FIND v(dout1_12) AT=570.025n

* CHECK dout1_13 Vdout1_13ck113 = 0 time = 570
.meas tran vdout1_13ck113 FIND v(dout1_13) AT=570.025n

* CHECK dout1_0 Vdout1_0ck114 = 1.0 time = 575
.meas tran vdout1_0ck114 FIND v(dout1_0) AT=575.025n

* CHECK dout1_1 Vdout1_1ck114 = 0 time = 575
.meas tran vdout1_1ck114 FIND v(dout1_1) AT=575.025n

* CHECK dout1_2 Vdout1_2ck114 = 1.0 time = 575
.meas tran vdout1_2ck114 FIND v(dout1_2) AT=575.025n

* CHECK dout1_3 Vdout1_3ck114 = 1.0 time = 575
.meas tran vdout1_3ck114 FIND v(dout1_3) AT=575.025n

* CHECK dout1_4 Vdout1_4ck114 = 1.0 time = 575
.meas tran vdout1_4ck114 FIND v(dout1_4) AT=575.025n

* CHECK dout1_5 Vdout1_5ck114 = 0 time = 575
.meas tran vdout1_5ck114 FIND v(dout1_5) AT=575.025n

* CHECK dout1_6 Vdout1_6ck114 = 0 time = 575
.meas tran vdout1_6ck114 FIND v(dout1_6) AT=575.025n

* CHECK dout1_7 Vdout1_7ck114 = 1.0 time = 575
.meas tran vdout1_7ck114 FIND v(dout1_7) AT=575.025n

* CHECK dout1_8 Vdout1_8ck114 = 0 time = 575
.meas tran vdout1_8ck114 FIND v(dout1_8) AT=575.025n

* CHECK dout1_9 Vdout1_9ck114 = 0 time = 575
.meas tran vdout1_9ck114 FIND v(dout1_9) AT=575.025n

* CHECK dout1_10 Vdout1_10ck114 = 0 time = 575
.meas tran vdout1_10ck114 FIND v(dout1_10) AT=575.025n

* CHECK dout1_11 Vdout1_11ck114 = 0 time = 575
.meas tran vdout1_11ck114 FIND v(dout1_11) AT=575.025n

* CHECK dout1_12 Vdout1_12ck114 = 1.0 time = 575
.meas tran vdout1_12ck114 FIND v(dout1_12) AT=575.025n

* CHECK dout1_13 Vdout1_13ck114 = 1.0 time = 575
.meas tran vdout1_13ck114 FIND v(dout1_13) AT=575.025n

* CHECK dout1_0 Vdout1_0ck115 = 1.0 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 1.0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 1.0 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 1.0 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 1.0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 0 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_8 Vdout1_8ck115 = 1.0 time = 580
.meas tran vdout1_8ck115 FIND v(dout1_8) AT=580.025n

* CHECK dout1_9 Vdout1_9ck115 = 1.0 time = 580
.meas tran vdout1_9ck115 FIND v(dout1_9) AT=580.025n

* CHECK dout1_10 Vdout1_10ck115 = 0 time = 580
.meas tran vdout1_10ck115 FIND v(dout1_10) AT=580.025n

* CHECK dout1_11 Vdout1_11ck115 = 0 time = 580
.meas tran vdout1_11ck115 FIND v(dout1_11) AT=580.025n

* CHECK dout1_12 Vdout1_12ck115 = 0 time = 580
.meas tran vdout1_12ck115 FIND v(dout1_12) AT=580.025n

* CHECK dout1_13 Vdout1_13ck115 = 0 time = 580
.meas tran vdout1_13ck115 FIND v(dout1_13) AT=580.025n

* CHECK dout1_0 Vdout1_0ck117 = 1.0 time = 590
.meas tran vdout1_0ck117 FIND v(dout1_0) AT=590.025n

* CHECK dout1_1 Vdout1_1ck117 = 0 time = 590
.meas tran vdout1_1ck117 FIND v(dout1_1) AT=590.025n

* CHECK dout1_2 Vdout1_2ck117 = 1.0 time = 590
.meas tran vdout1_2ck117 FIND v(dout1_2) AT=590.025n

* CHECK dout1_3 Vdout1_3ck117 = 0 time = 590
.meas tran vdout1_3ck117 FIND v(dout1_3) AT=590.025n

* CHECK dout1_4 Vdout1_4ck117 = 1.0 time = 590
.meas tran vdout1_4ck117 FIND v(dout1_4) AT=590.025n

* CHECK dout1_5 Vdout1_5ck117 = 0 time = 590
.meas tran vdout1_5ck117 FIND v(dout1_5) AT=590.025n

* CHECK dout1_6 Vdout1_6ck117 = 0 time = 590
.meas tran vdout1_6ck117 FIND v(dout1_6) AT=590.025n

* CHECK dout1_7 Vdout1_7ck117 = 0 time = 590
.meas tran vdout1_7ck117 FIND v(dout1_7) AT=590.025n

* CHECK dout1_8 Vdout1_8ck117 = 0 time = 590
.meas tran vdout1_8ck117 FIND v(dout1_8) AT=590.025n

* CHECK dout1_9 Vdout1_9ck117 = 1.0 time = 590
.meas tran vdout1_9ck117 FIND v(dout1_9) AT=590.025n

* CHECK dout1_10 Vdout1_10ck117 = 1.0 time = 590
.meas tran vdout1_10ck117 FIND v(dout1_10) AT=590.025n

* CHECK dout1_11 Vdout1_11ck117 = 0 time = 590
.meas tran vdout1_11ck117 FIND v(dout1_11) AT=590.025n

* CHECK dout1_12 Vdout1_12ck117 = 0 time = 590
.meas tran vdout1_12ck117 FIND v(dout1_12) AT=590.025n

* CHECK dout1_13 Vdout1_13ck117 = 1.0 time = 590
.meas tran vdout1_13ck117 FIND v(dout1_13) AT=590.025n

* CHECK dout1_0 Vdout1_0ck118 = 1.0 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 0 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 0 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 1.0 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 1.0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 0 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_8 Vdout1_8ck118 = 0 time = 595
.meas tran vdout1_8ck118 FIND v(dout1_8) AT=595.025n

* CHECK dout1_9 Vdout1_9ck118 = 0 time = 595
.meas tran vdout1_9ck118 FIND v(dout1_9) AT=595.025n

* CHECK dout1_10 Vdout1_10ck118 = 1.0 time = 595
.meas tran vdout1_10ck118 FIND v(dout1_10) AT=595.025n

* CHECK dout1_11 Vdout1_11ck118 = 1.0 time = 595
.meas tran vdout1_11ck118 FIND v(dout1_11) AT=595.025n

* CHECK dout1_12 Vdout1_12ck118 = 0 time = 595
.meas tran vdout1_12ck118 FIND v(dout1_12) AT=595.025n

* CHECK dout1_13 Vdout1_13ck118 = 1.0 time = 595
.meas tran vdout1_13ck118 FIND v(dout1_13) AT=595.025n

* CHECK dout1_0 Vdout1_0ck119 = 1.0 time = 600
.meas tran vdout1_0ck119 FIND v(dout1_0) AT=600.025n

* CHECK dout1_1 Vdout1_1ck119 = 0 time = 600
.meas tran vdout1_1ck119 FIND v(dout1_1) AT=600.025n

* CHECK dout1_2 Vdout1_2ck119 = 1.0 time = 600
.meas tran vdout1_2ck119 FIND v(dout1_2) AT=600.025n

* CHECK dout1_3 Vdout1_3ck119 = 0 time = 600
.meas tran vdout1_3ck119 FIND v(dout1_3) AT=600.025n

* CHECK dout1_4 Vdout1_4ck119 = 1.0 time = 600
.meas tran vdout1_4ck119 FIND v(dout1_4) AT=600.025n

* CHECK dout1_5 Vdout1_5ck119 = 0 time = 600
.meas tran vdout1_5ck119 FIND v(dout1_5) AT=600.025n

* CHECK dout1_6 Vdout1_6ck119 = 0 time = 600
.meas tran vdout1_6ck119 FIND v(dout1_6) AT=600.025n

* CHECK dout1_7 Vdout1_7ck119 = 0 time = 600
.meas tran vdout1_7ck119 FIND v(dout1_7) AT=600.025n

* CHECK dout1_8 Vdout1_8ck119 = 0 time = 600
.meas tran vdout1_8ck119 FIND v(dout1_8) AT=600.025n

* CHECK dout1_9 Vdout1_9ck119 = 1.0 time = 600
.meas tran vdout1_9ck119 FIND v(dout1_9) AT=600.025n

* CHECK dout1_10 Vdout1_10ck119 = 1.0 time = 600
.meas tran vdout1_10ck119 FIND v(dout1_10) AT=600.025n

* CHECK dout1_11 Vdout1_11ck119 = 0 time = 600
.meas tran vdout1_11ck119 FIND v(dout1_11) AT=600.025n

* CHECK dout1_12 Vdout1_12ck119 = 0 time = 600
.meas tran vdout1_12ck119 FIND v(dout1_12) AT=600.025n

* CHECK dout1_13 Vdout1_13ck119 = 1.0 time = 600
.meas tran vdout1_13ck119 FIND v(dout1_13) AT=600.025n

* CHECK dout1_0 Vdout1_0ck120 = 0 time = 605
.meas tran vdout1_0ck120 FIND v(dout1_0) AT=605.025n

* CHECK dout1_1 Vdout1_1ck120 = 1.0 time = 605
.meas tran vdout1_1ck120 FIND v(dout1_1) AT=605.025n

* CHECK dout1_2 Vdout1_2ck120 = 1.0 time = 605
.meas tran vdout1_2ck120 FIND v(dout1_2) AT=605.025n

* CHECK dout1_3 Vdout1_3ck120 = 1.0 time = 605
.meas tran vdout1_3ck120 FIND v(dout1_3) AT=605.025n

* CHECK dout1_4 Vdout1_4ck120 = 0 time = 605
.meas tran vdout1_4ck120 FIND v(dout1_4) AT=605.025n

* CHECK dout1_5 Vdout1_5ck120 = 0 time = 605
.meas tran vdout1_5ck120 FIND v(dout1_5) AT=605.025n

* CHECK dout1_6 Vdout1_6ck120 = 0 time = 605
.meas tran vdout1_6ck120 FIND v(dout1_6) AT=605.025n

* CHECK dout1_7 Vdout1_7ck120 = 1.0 time = 605
.meas tran vdout1_7ck120 FIND v(dout1_7) AT=605.025n

* CHECK dout1_8 Vdout1_8ck120 = 0 time = 605
.meas tran vdout1_8ck120 FIND v(dout1_8) AT=605.025n

* CHECK dout1_9 Vdout1_9ck120 = 1.0 time = 605
.meas tran vdout1_9ck120 FIND v(dout1_9) AT=605.025n

* CHECK dout1_10 Vdout1_10ck120 = 0 time = 605
.meas tran vdout1_10ck120 FIND v(dout1_10) AT=605.025n

* CHECK dout1_11 Vdout1_11ck120 = 0 time = 605
.meas tran vdout1_11ck120 FIND v(dout1_11) AT=605.025n

* CHECK dout1_12 Vdout1_12ck120 = 0 time = 605
.meas tran vdout1_12ck120 FIND v(dout1_12) AT=605.025n

* CHECK dout1_13 Vdout1_13ck120 = 1.0 time = 605
.meas tran vdout1_13ck120 FIND v(dout1_13) AT=605.025n

* CHECK dout1_0 Vdout1_0ck122 = 1.0 time = 615
.meas tran vdout1_0ck122 FIND v(dout1_0) AT=615.025n

* CHECK dout1_1 Vdout1_1ck122 = 0 time = 615
.meas tran vdout1_1ck122 FIND v(dout1_1) AT=615.025n

* CHECK dout1_2 Vdout1_2ck122 = 1.0 time = 615
.meas tran vdout1_2ck122 FIND v(dout1_2) AT=615.025n

* CHECK dout1_3 Vdout1_3ck122 = 0 time = 615
.meas tran vdout1_3ck122 FIND v(dout1_3) AT=615.025n

* CHECK dout1_4 Vdout1_4ck122 = 1.0 time = 615
.meas tran vdout1_4ck122 FIND v(dout1_4) AT=615.025n

* CHECK dout1_5 Vdout1_5ck122 = 0 time = 615
.meas tran vdout1_5ck122 FIND v(dout1_5) AT=615.025n

* CHECK dout1_6 Vdout1_6ck122 = 0 time = 615
.meas tran vdout1_6ck122 FIND v(dout1_6) AT=615.025n

* CHECK dout1_7 Vdout1_7ck122 = 0 time = 615
.meas tran vdout1_7ck122 FIND v(dout1_7) AT=615.025n

* CHECK dout1_8 Vdout1_8ck122 = 0 time = 615
.meas tran vdout1_8ck122 FIND v(dout1_8) AT=615.025n

* CHECK dout1_9 Vdout1_9ck122 = 1.0 time = 615
.meas tran vdout1_9ck122 FIND v(dout1_9) AT=615.025n

* CHECK dout1_10 Vdout1_10ck122 = 1.0 time = 615
.meas tran vdout1_10ck122 FIND v(dout1_10) AT=615.025n

* CHECK dout1_11 Vdout1_11ck122 = 0 time = 615
.meas tran vdout1_11ck122 FIND v(dout1_11) AT=615.025n

* CHECK dout1_12 Vdout1_12ck122 = 0 time = 615
.meas tran vdout1_12ck122 FIND v(dout1_12) AT=615.025n

* CHECK dout1_13 Vdout1_13ck122 = 1.0 time = 615
.meas tran vdout1_13ck122 FIND v(dout1_13) AT=615.025n

* CHECK dout1_0 Vdout1_0ck123 = 1.0 time = 620
.meas tran vdout1_0ck123 FIND v(dout1_0) AT=620.025n

* CHECK dout1_1 Vdout1_1ck123 = 0 time = 620
.meas tran vdout1_1ck123 FIND v(dout1_1) AT=620.025n

* CHECK dout1_2 Vdout1_2ck123 = 0 time = 620
.meas tran vdout1_2ck123 FIND v(dout1_2) AT=620.025n

* CHECK dout1_3 Vdout1_3ck123 = 0 time = 620
.meas tran vdout1_3ck123 FIND v(dout1_3) AT=620.025n

* CHECK dout1_4 Vdout1_4ck123 = 1.0 time = 620
.meas tran vdout1_4ck123 FIND v(dout1_4) AT=620.025n

* CHECK dout1_5 Vdout1_5ck123 = 1.0 time = 620
.meas tran vdout1_5ck123 FIND v(dout1_5) AT=620.025n

* CHECK dout1_6 Vdout1_6ck123 = 0 time = 620
.meas tran vdout1_6ck123 FIND v(dout1_6) AT=620.025n

* CHECK dout1_7 Vdout1_7ck123 = 0 time = 620
.meas tran vdout1_7ck123 FIND v(dout1_7) AT=620.025n

* CHECK dout1_8 Vdout1_8ck123 = 0 time = 620
.meas tran vdout1_8ck123 FIND v(dout1_8) AT=620.025n

* CHECK dout1_9 Vdout1_9ck123 = 0 time = 620
.meas tran vdout1_9ck123 FIND v(dout1_9) AT=620.025n

* CHECK dout1_10 Vdout1_10ck123 = 1.0 time = 620
.meas tran vdout1_10ck123 FIND v(dout1_10) AT=620.025n

* CHECK dout1_11 Vdout1_11ck123 = 1.0 time = 620
.meas tran vdout1_11ck123 FIND v(dout1_11) AT=620.025n

* CHECK dout1_12 Vdout1_12ck123 = 0 time = 620
.meas tran vdout1_12ck123 FIND v(dout1_12) AT=620.025n

* CHECK dout1_13 Vdout1_13ck123 = 1.0 time = 620
.meas tran vdout1_13ck123 FIND v(dout1_13) AT=620.025n

* CHECK dout1_0 Vdout1_0ck126 = 1.0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 0 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 0 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 0 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_4 Vdout1_4ck126 = 0 time = 635
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=635.025n

* CHECK dout1_5 Vdout1_5ck126 = 1.0 time = 635
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=635.025n

* CHECK dout1_6 Vdout1_6ck126 = 0 time = 635
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=635.025n

* CHECK dout1_7 Vdout1_7ck126 = 0 time = 635
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=635.025n

* CHECK dout1_8 Vdout1_8ck126 = 1.0 time = 635
.meas tran vdout1_8ck126 FIND v(dout1_8) AT=635.025n

* CHECK dout1_9 Vdout1_9ck126 = 0 time = 635
.meas tran vdout1_9ck126 FIND v(dout1_9) AT=635.025n

* CHECK dout1_10 Vdout1_10ck126 = 0 time = 635
.meas tran vdout1_10ck126 FIND v(dout1_10) AT=635.025n

* CHECK dout1_11 Vdout1_11ck126 = 1.0 time = 635
.meas tran vdout1_11ck126 FIND v(dout1_11) AT=635.025n

* CHECK dout1_12 Vdout1_12ck126 = 0 time = 635
.meas tran vdout1_12ck126 FIND v(dout1_12) AT=635.025n

* CHECK dout1_13 Vdout1_13ck126 = 0 time = 635
.meas tran vdout1_13ck126 FIND v(dout1_13) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 1.0 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 1.0 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 1.0 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 1.0 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 1.0 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 0 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 0 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 1.0 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_8 Vdout1_8ck127 = 1.0 time = 640
.meas tran vdout1_8ck127 FIND v(dout1_8) AT=640.025n

* CHECK dout1_9 Vdout1_9ck127 = 1.0 time = 640
.meas tran vdout1_9ck127 FIND v(dout1_9) AT=640.025n

* CHECK dout1_10 Vdout1_10ck127 = 0 time = 640
.meas tran vdout1_10ck127 FIND v(dout1_10) AT=640.025n

* CHECK dout1_11 Vdout1_11ck127 = 0 time = 640
.meas tran vdout1_11ck127 FIND v(dout1_11) AT=640.025n

* CHECK dout1_12 Vdout1_12ck127 = 0 time = 640
.meas tran vdout1_12ck127 FIND v(dout1_12) AT=640.025n

* CHECK dout1_13 Vdout1_13ck127 = 0 time = 640
.meas tran vdout1_13ck127 FIND v(dout1_13) AT=640.025n

* CHECK dout1_0 Vdout1_0ck129 = 1.0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 0 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 1.0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 0 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 1.0 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 0 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 0 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 0 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 1.0 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 1.0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_11 Vdout1_11ck129 = 0 time = 650
.meas tran vdout1_11ck129 FIND v(dout1_11) AT=650.025n

* CHECK dout1_12 Vdout1_12ck129 = 0 time = 650
.meas tran vdout1_12ck129 FIND v(dout1_12) AT=650.025n

* CHECK dout1_13 Vdout1_13ck129 = 1.0 time = 650
.meas tran vdout1_13ck129 FIND v(dout1_13) AT=650.025n

* CHECK dout1_0 Vdout1_0ck132 = 1.0 time = 665
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=665.025n

* CHECK dout1_1 Vdout1_1ck132 = 0 time = 665
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=665.025n

* CHECK dout1_2 Vdout1_2ck132 = 0 time = 665
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=665.025n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 665
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=665.025n

* CHECK dout1_4 Vdout1_4ck132 = 1.0 time = 665
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=665.025n

* CHECK dout1_5 Vdout1_5ck132 = 0 time = 665
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=665.025n

* CHECK dout1_6 Vdout1_6ck132 = 1.0 time = 665
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=665.025n

* CHECK dout1_7 Vdout1_7ck132 = 1.0 time = 665
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=665.025n

* CHECK dout1_8 Vdout1_8ck132 = 0 time = 665
.meas tran vdout1_8ck132 FIND v(dout1_8) AT=665.025n

* CHECK dout1_9 Vdout1_9ck132 = 0 time = 665
.meas tran vdout1_9ck132 FIND v(dout1_9) AT=665.025n

* CHECK dout1_10 Vdout1_10ck132 = 1.0 time = 665
.meas tran vdout1_10ck132 FIND v(dout1_10) AT=665.025n

* CHECK dout1_11 Vdout1_11ck132 = 1.0 time = 665
.meas tran vdout1_11ck132 FIND v(dout1_11) AT=665.025n

* CHECK dout1_12 Vdout1_12ck132 = 0 time = 665
.meas tran vdout1_12ck132 FIND v(dout1_12) AT=665.025n

* CHECK dout1_13 Vdout1_13ck132 = 1.0 time = 665
.meas tran vdout1_13ck132 FIND v(dout1_13) AT=665.025n

* CHECK dout1_0 Vdout1_0ck137 = 0 time = 690
.meas tran vdout1_0ck137 FIND v(dout1_0) AT=690.025n

* CHECK dout1_1 Vdout1_1ck137 = 1.0 time = 690
.meas tran vdout1_1ck137 FIND v(dout1_1) AT=690.025n

* CHECK dout1_2 Vdout1_2ck137 = 1.0 time = 690
.meas tran vdout1_2ck137 FIND v(dout1_2) AT=690.025n

* CHECK dout1_3 Vdout1_3ck137 = 1.0 time = 690
.meas tran vdout1_3ck137 FIND v(dout1_3) AT=690.025n

* CHECK dout1_4 Vdout1_4ck137 = 1.0 time = 690
.meas tran vdout1_4ck137 FIND v(dout1_4) AT=690.025n

* CHECK dout1_5 Vdout1_5ck137 = 0 time = 690
.meas tran vdout1_5ck137 FIND v(dout1_5) AT=690.025n

* CHECK dout1_6 Vdout1_6ck137 = 0 time = 690
.meas tran vdout1_6ck137 FIND v(dout1_6) AT=690.025n

* CHECK dout1_7 Vdout1_7ck137 = 1.0 time = 690
.meas tran vdout1_7ck137 FIND v(dout1_7) AT=690.025n

* CHECK dout1_8 Vdout1_8ck137 = 0 time = 690
.meas tran vdout1_8ck137 FIND v(dout1_8) AT=690.025n

* CHECK dout1_9 Vdout1_9ck137 = 0 time = 690
.meas tran vdout1_9ck137 FIND v(dout1_9) AT=690.025n

* CHECK dout1_10 Vdout1_10ck137 = 1.0 time = 690
.meas tran vdout1_10ck137 FIND v(dout1_10) AT=690.025n

* CHECK dout1_11 Vdout1_11ck137 = 0 time = 690
.meas tran vdout1_11ck137 FIND v(dout1_11) AT=690.025n

* CHECK dout1_12 Vdout1_12ck137 = 0 time = 690
.meas tran vdout1_12ck137 FIND v(dout1_12) AT=690.025n

* CHECK dout1_13 Vdout1_13ck137 = 1.0 time = 690
.meas tran vdout1_13ck137 FIND v(dout1_13) AT=690.025n

* CHECK dout1_0 Vdout1_0ck138 = 1.0 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 1.0 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 1.0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 0 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_4 Vdout1_4ck138 = 1.0 time = 695
.meas tran vdout1_4ck138 FIND v(dout1_4) AT=695.025n

* CHECK dout1_5 Vdout1_5ck138 = 0 time = 695
.meas tran vdout1_5ck138 FIND v(dout1_5) AT=695.025n

* CHECK dout1_6 Vdout1_6ck138 = 0 time = 695
.meas tran vdout1_6ck138 FIND v(dout1_6) AT=695.025n

* CHECK dout1_7 Vdout1_7ck138 = 0 time = 695
.meas tran vdout1_7ck138 FIND v(dout1_7) AT=695.025n

* CHECK dout1_8 Vdout1_8ck138 = 1.0 time = 695
.meas tran vdout1_8ck138 FIND v(dout1_8) AT=695.025n

* CHECK dout1_9 Vdout1_9ck138 = 0 time = 695
.meas tran vdout1_9ck138 FIND v(dout1_9) AT=695.025n

* CHECK dout1_10 Vdout1_10ck138 = 1.0 time = 695
.meas tran vdout1_10ck138 FIND v(dout1_10) AT=695.025n

* CHECK dout1_11 Vdout1_11ck138 = 1.0 time = 695
.meas tran vdout1_11ck138 FIND v(dout1_11) AT=695.025n

* CHECK dout1_12 Vdout1_12ck138 = 0 time = 695
.meas tran vdout1_12ck138 FIND v(dout1_12) AT=695.025n

* CHECK dout1_13 Vdout1_13ck138 = 0 time = 695
.meas tran vdout1_13ck138 FIND v(dout1_13) AT=695.025n

* CHECK dout1_0 Vdout1_0ck139 = 1.0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 0 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 1.0 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 1.0 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 1.0 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_8 Vdout1_8ck139 = 0 time = 700
.meas tran vdout1_8ck139 FIND v(dout1_8) AT=700.025n

* CHECK dout1_9 Vdout1_9ck139 = 0 time = 700
.meas tran vdout1_9ck139 FIND v(dout1_9) AT=700.025n

* CHECK dout1_10 Vdout1_10ck139 = 1.0 time = 700
.meas tran vdout1_10ck139 FIND v(dout1_10) AT=700.025n

* CHECK dout1_11 Vdout1_11ck139 = 1.0 time = 700
.meas tran vdout1_11ck139 FIND v(dout1_11) AT=700.025n

* CHECK dout1_12 Vdout1_12ck139 = 0 time = 700
.meas tran vdout1_12ck139 FIND v(dout1_12) AT=700.025n

* CHECK dout1_13 Vdout1_13ck139 = 1.0 time = 700
.meas tran vdout1_13ck139 FIND v(dout1_13) AT=700.025n

* CHECK dout1_0 Vdout1_0ck140 = 1.0 time = 705
.meas tran vdout1_0ck140 FIND v(dout1_0) AT=705.025n

* CHECK dout1_1 Vdout1_1ck140 = 1.0 time = 705
.meas tran vdout1_1ck140 FIND v(dout1_1) AT=705.025n

* CHECK dout1_2 Vdout1_2ck140 = 1.0 time = 705
.meas tran vdout1_2ck140 FIND v(dout1_2) AT=705.025n

* CHECK dout1_3 Vdout1_3ck140 = 0 time = 705
.meas tran vdout1_3ck140 FIND v(dout1_3) AT=705.025n

* CHECK dout1_4 Vdout1_4ck140 = 1.0 time = 705
.meas tran vdout1_4ck140 FIND v(dout1_4) AT=705.025n

* CHECK dout1_5 Vdout1_5ck140 = 0 time = 705
.meas tran vdout1_5ck140 FIND v(dout1_5) AT=705.025n

* CHECK dout1_6 Vdout1_6ck140 = 0 time = 705
.meas tran vdout1_6ck140 FIND v(dout1_6) AT=705.025n

* CHECK dout1_7 Vdout1_7ck140 = 0 time = 705
.meas tran vdout1_7ck140 FIND v(dout1_7) AT=705.025n

* CHECK dout1_8 Vdout1_8ck140 = 1.0 time = 705
.meas tran vdout1_8ck140 FIND v(dout1_8) AT=705.025n

* CHECK dout1_9 Vdout1_9ck140 = 0 time = 705
.meas tran vdout1_9ck140 FIND v(dout1_9) AT=705.025n

* CHECK dout1_10 Vdout1_10ck140 = 1.0 time = 705
.meas tran vdout1_10ck140 FIND v(dout1_10) AT=705.025n

* CHECK dout1_11 Vdout1_11ck140 = 1.0 time = 705
.meas tran vdout1_11ck140 FIND v(dout1_11) AT=705.025n

* CHECK dout1_12 Vdout1_12ck140 = 0 time = 705
.meas tran vdout1_12ck140 FIND v(dout1_12) AT=705.025n

* CHECK dout1_13 Vdout1_13ck140 = 0 time = 705
.meas tran vdout1_13ck140 FIND v(dout1_13) AT=705.025n

* CHECK dout1_0 Vdout1_0ck142 = 0 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 1.0 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 1.0 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 1.0 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_4 Vdout1_4ck142 = 1.0 time = 715
.meas tran vdout1_4ck142 FIND v(dout1_4) AT=715.025n

* CHECK dout1_5 Vdout1_5ck142 = 0 time = 715
.meas tran vdout1_5ck142 FIND v(dout1_5) AT=715.025n

* CHECK dout1_6 Vdout1_6ck142 = 0 time = 715
.meas tran vdout1_6ck142 FIND v(dout1_6) AT=715.025n

* CHECK dout1_7 Vdout1_7ck142 = 1.0 time = 715
.meas tran vdout1_7ck142 FIND v(dout1_7) AT=715.025n

* CHECK dout1_8 Vdout1_8ck142 = 0 time = 715
.meas tran vdout1_8ck142 FIND v(dout1_8) AT=715.025n

* CHECK dout1_9 Vdout1_9ck142 = 0 time = 715
.meas tran vdout1_9ck142 FIND v(dout1_9) AT=715.025n

* CHECK dout1_10 Vdout1_10ck142 = 1.0 time = 715
.meas tran vdout1_10ck142 FIND v(dout1_10) AT=715.025n

* CHECK dout1_11 Vdout1_11ck142 = 0 time = 715
.meas tran vdout1_11ck142 FIND v(dout1_11) AT=715.025n

* CHECK dout1_12 Vdout1_12ck142 = 0 time = 715
.meas tran vdout1_12ck142 FIND v(dout1_12) AT=715.025n

* CHECK dout1_13 Vdout1_13ck142 = 1.0 time = 715
.meas tran vdout1_13ck142 FIND v(dout1_13) AT=715.025n

* CHECK dout1_0 Vdout1_0ck145 = 1.0 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 1.0 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 0 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_4 Vdout1_4ck145 = 0 time = 730
.meas tran vdout1_4ck145 FIND v(dout1_4) AT=730.025n

* CHECK dout1_5 Vdout1_5ck145 = 0 time = 730
.meas tran vdout1_5ck145 FIND v(dout1_5) AT=730.025n

* CHECK dout1_6 Vdout1_6ck145 = 1.0 time = 730
.meas tran vdout1_6ck145 FIND v(dout1_6) AT=730.025n

* CHECK dout1_7 Vdout1_7ck145 = 1.0 time = 730
.meas tran vdout1_7ck145 FIND v(dout1_7) AT=730.025n

* CHECK dout1_8 Vdout1_8ck145 = 1.0 time = 730
.meas tran vdout1_8ck145 FIND v(dout1_8) AT=730.025n

* CHECK dout1_9 Vdout1_9ck145 = 1.0 time = 730
.meas tran vdout1_9ck145 FIND v(dout1_9) AT=730.025n

* CHECK dout1_10 Vdout1_10ck145 = 1.0 time = 730
.meas tran vdout1_10ck145 FIND v(dout1_10) AT=730.025n

* CHECK dout1_11 Vdout1_11ck145 = 1.0 time = 730
.meas tran vdout1_11ck145 FIND v(dout1_11) AT=730.025n

* CHECK dout1_12 Vdout1_12ck145 = 0 time = 730
.meas tran vdout1_12ck145 FIND v(dout1_12) AT=730.025n

* CHECK dout1_13 Vdout1_13ck145 = 0 time = 730
.meas tran vdout1_13ck145 FIND v(dout1_13) AT=730.025n

* CHECK dout1_0 Vdout1_0ck146 = 0 time = 735
.meas tran vdout1_0ck146 FIND v(dout1_0) AT=735.025n

* CHECK dout1_1 Vdout1_1ck146 = 1.0 time = 735
.meas tran vdout1_1ck146 FIND v(dout1_1) AT=735.025n

* CHECK dout1_2 Vdout1_2ck146 = 1.0 time = 735
.meas tran vdout1_2ck146 FIND v(dout1_2) AT=735.025n

* CHECK dout1_3 Vdout1_3ck146 = 1.0 time = 735
.meas tran vdout1_3ck146 FIND v(dout1_3) AT=735.025n

* CHECK dout1_4 Vdout1_4ck146 = 1.0 time = 735
.meas tran vdout1_4ck146 FIND v(dout1_4) AT=735.025n

* CHECK dout1_5 Vdout1_5ck146 = 0 time = 735
.meas tran vdout1_5ck146 FIND v(dout1_5) AT=735.025n

* CHECK dout1_6 Vdout1_6ck146 = 0 time = 735
.meas tran vdout1_6ck146 FIND v(dout1_6) AT=735.025n

* CHECK dout1_7 Vdout1_7ck146 = 1.0 time = 735
.meas tran vdout1_7ck146 FIND v(dout1_7) AT=735.025n

* CHECK dout1_8 Vdout1_8ck146 = 0 time = 735
.meas tran vdout1_8ck146 FIND v(dout1_8) AT=735.025n

* CHECK dout1_9 Vdout1_9ck146 = 0 time = 735
.meas tran vdout1_9ck146 FIND v(dout1_9) AT=735.025n

* CHECK dout1_10 Vdout1_10ck146 = 1.0 time = 735
.meas tran vdout1_10ck146 FIND v(dout1_10) AT=735.025n

* CHECK dout1_11 Vdout1_11ck146 = 0 time = 735
.meas tran vdout1_11ck146 FIND v(dout1_11) AT=735.025n

* CHECK dout1_12 Vdout1_12ck146 = 0 time = 735
.meas tran vdout1_12ck146 FIND v(dout1_12) AT=735.025n

* CHECK dout1_13 Vdout1_13ck146 = 1.0 time = 735
.meas tran vdout1_13ck146 FIND v(dout1_13) AT=735.025n

* CHECK dout1_0 Vdout1_0ck149 = 0 time = 750
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=750.025n

* CHECK dout1_1 Vdout1_1ck149 = 0 time = 750
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=750.025n

* CHECK dout1_2 Vdout1_2ck149 = 1.0 time = 750
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=750.025n

* CHECK dout1_3 Vdout1_3ck149 = 0 time = 750
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=750.025n

* CHECK dout1_4 Vdout1_4ck149 = 0 time = 750
.meas tran vdout1_4ck149 FIND v(dout1_4) AT=750.025n

* CHECK dout1_5 Vdout1_5ck149 = 0 time = 750
.meas tran vdout1_5ck149 FIND v(dout1_5) AT=750.025n

* CHECK dout1_6 Vdout1_6ck149 = 1.0 time = 750
.meas tran vdout1_6ck149 FIND v(dout1_6) AT=750.025n

* CHECK dout1_7 Vdout1_7ck149 = 1.0 time = 750
.meas tran vdout1_7ck149 FIND v(dout1_7) AT=750.025n

* CHECK dout1_8 Vdout1_8ck149 = 0 time = 750
.meas tran vdout1_8ck149 FIND v(dout1_8) AT=750.025n

* CHECK dout1_9 Vdout1_9ck149 = 1.0 time = 750
.meas tran vdout1_9ck149 FIND v(dout1_9) AT=750.025n

* CHECK dout1_10 Vdout1_10ck149 = 1.0 time = 750
.meas tran vdout1_10ck149 FIND v(dout1_10) AT=750.025n

* CHECK dout1_11 Vdout1_11ck149 = 0 time = 750
.meas tran vdout1_11ck149 FIND v(dout1_11) AT=750.025n

* CHECK dout1_12 Vdout1_12ck149 = 0 time = 750
.meas tran vdout1_12ck149 FIND v(dout1_12) AT=750.025n

* CHECK dout1_13 Vdout1_13ck149 = 1.0 time = 750
.meas tran vdout1_13ck149 FIND v(dout1_13) AT=750.025n

* CHECK dout1_0 Vdout1_0ck150 = 1.0 time = 755
.meas tran vdout1_0ck150 FIND v(dout1_0) AT=755.025n

* CHECK dout1_1 Vdout1_1ck150 = 0 time = 755
.meas tran vdout1_1ck150 FIND v(dout1_1) AT=755.025n

* CHECK dout1_2 Vdout1_2ck150 = 0 time = 755
.meas tran vdout1_2ck150 FIND v(dout1_2) AT=755.025n

* CHECK dout1_3 Vdout1_3ck150 = 0 time = 755
.meas tran vdout1_3ck150 FIND v(dout1_3) AT=755.025n

* CHECK dout1_4 Vdout1_4ck150 = 0 time = 755
.meas tran vdout1_4ck150 FIND v(dout1_4) AT=755.025n

* CHECK dout1_5 Vdout1_5ck150 = 1.0 time = 755
.meas tran vdout1_5ck150 FIND v(dout1_5) AT=755.025n

* CHECK dout1_6 Vdout1_6ck150 = 0 time = 755
.meas tran vdout1_6ck150 FIND v(dout1_6) AT=755.025n

* CHECK dout1_7 Vdout1_7ck150 = 0 time = 755
.meas tran vdout1_7ck150 FIND v(dout1_7) AT=755.025n

* CHECK dout1_8 Vdout1_8ck150 = 1.0 time = 755
.meas tran vdout1_8ck150 FIND v(dout1_8) AT=755.025n

* CHECK dout1_9 Vdout1_9ck150 = 0 time = 755
.meas tran vdout1_9ck150 FIND v(dout1_9) AT=755.025n

* CHECK dout1_10 Vdout1_10ck150 = 0 time = 755
.meas tran vdout1_10ck150 FIND v(dout1_10) AT=755.025n

* CHECK dout1_11 Vdout1_11ck150 = 1.0 time = 755
.meas tran vdout1_11ck150 FIND v(dout1_11) AT=755.025n

* CHECK dout1_12 Vdout1_12ck150 = 0 time = 755
.meas tran vdout1_12ck150 FIND v(dout1_12) AT=755.025n

* CHECK dout1_13 Vdout1_13ck150 = 0 time = 755
.meas tran vdout1_13ck150 FIND v(dout1_13) AT=755.025n

* CHECK dout1_0 Vdout1_0ck155 = 0 time = 780
.meas tran vdout1_0ck155 FIND v(dout1_0) AT=780.025n

* CHECK dout1_1 Vdout1_1ck155 = 1.0 time = 780
.meas tran vdout1_1ck155 FIND v(dout1_1) AT=780.025n

* CHECK dout1_2 Vdout1_2ck155 = 1.0 time = 780
.meas tran vdout1_2ck155 FIND v(dout1_2) AT=780.025n

* CHECK dout1_3 Vdout1_3ck155 = 1.0 time = 780
.meas tran vdout1_3ck155 FIND v(dout1_3) AT=780.025n

* CHECK dout1_4 Vdout1_4ck155 = 1.0 time = 780
.meas tran vdout1_4ck155 FIND v(dout1_4) AT=780.025n

* CHECK dout1_5 Vdout1_5ck155 = 0 time = 780
.meas tran vdout1_5ck155 FIND v(dout1_5) AT=780.025n

* CHECK dout1_6 Vdout1_6ck155 = 0 time = 780
.meas tran vdout1_6ck155 FIND v(dout1_6) AT=780.025n

* CHECK dout1_7 Vdout1_7ck155 = 1.0 time = 780
.meas tran vdout1_7ck155 FIND v(dout1_7) AT=780.025n

* CHECK dout1_8 Vdout1_8ck155 = 0 time = 780
.meas tran vdout1_8ck155 FIND v(dout1_8) AT=780.025n

* CHECK dout1_9 Vdout1_9ck155 = 0 time = 780
.meas tran vdout1_9ck155 FIND v(dout1_9) AT=780.025n

* CHECK dout1_10 Vdout1_10ck155 = 1.0 time = 780
.meas tran vdout1_10ck155 FIND v(dout1_10) AT=780.025n

* CHECK dout1_11 Vdout1_11ck155 = 0 time = 780
.meas tran vdout1_11ck155 FIND v(dout1_11) AT=780.025n

* CHECK dout1_12 Vdout1_12ck155 = 0 time = 780
.meas tran vdout1_12ck155 FIND v(dout1_12) AT=780.025n

* CHECK dout1_13 Vdout1_13ck155 = 1.0 time = 780
.meas tran vdout1_13ck155 FIND v(dout1_13) AT=780.025n

* CHECK dout1_0 Vdout1_0ck156 = 0 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 0 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 1.0 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 0 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_4 Vdout1_4ck156 = 0 time = 785
.meas tran vdout1_4ck156 FIND v(dout1_4) AT=785.025n

* CHECK dout1_5 Vdout1_5ck156 = 0 time = 785
.meas tran vdout1_5ck156 FIND v(dout1_5) AT=785.025n

* CHECK dout1_6 Vdout1_6ck156 = 1.0 time = 785
.meas tran vdout1_6ck156 FIND v(dout1_6) AT=785.025n

* CHECK dout1_7 Vdout1_7ck156 = 1.0 time = 785
.meas tran vdout1_7ck156 FIND v(dout1_7) AT=785.025n

* CHECK dout1_8 Vdout1_8ck156 = 0 time = 785
.meas tran vdout1_8ck156 FIND v(dout1_8) AT=785.025n

* CHECK dout1_9 Vdout1_9ck156 = 1.0 time = 785
.meas tran vdout1_9ck156 FIND v(dout1_9) AT=785.025n

* CHECK dout1_10 Vdout1_10ck156 = 1.0 time = 785
.meas tran vdout1_10ck156 FIND v(dout1_10) AT=785.025n

* CHECK dout1_11 Vdout1_11ck156 = 0 time = 785
.meas tran vdout1_11ck156 FIND v(dout1_11) AT=785.025n

* CHECK dout1_12 Vdout1_12ck156 = 0 time = 785
.meas tran vdout1_12ck156 FIND v(dout1_12) AT=785.025n

* CHECK dout1_13 Vdout1_13ck156 = 1.0 time = 785
.meas tran vdout1_13ck156 FIND v(dout1_13) AT=785.025n

* CHECK dout1_0 Vdout1_0ck157 = 0 time = 790
.meas tran vdout1_0ck157 FIND v(dout1_0) AT=790.025n

* CHECK dout1_1 Vdout1_1ck157 = 0 time = 790
.meas tran vdout1_1ck157 FIND v(dout1_1) AT=790.025n

* CHECK dout1_2 Vdout1_2ck157 = 1.0 time = 790
.meas tran vdout1_2ck157 FIND v(dout1_2) AT=790.025n

* CHECK dout1_3 Vdout1_3ck157 = 0 time = 790
.meas tran vdout1_3ck157 FIND v(dout1_3) AT=790.025n

* CHECK dout1_4 Vdout1_4ck157 = 0 time = 790
.meas tran vdout1_4ck157 FIND v(dout1_4) AT=790.025n

* CHECK dout1_5 Vdout1_5ck157 = 0 time = 790
.meas tran vdout1_5ck157 FIND v(dout1_5) AT=790.025n

* CHECK dout1_6 Vdout1_6ck157 = 1.0 time = 790
.meas tran vdout1_6ck157 FIND v(dout1_6) AT=790.025n

* CHECK dout1_7 Vdout1_7ck157 = 1.0 time = 790
.meas tran vdout1_7ck157 FIND v(dout1_7) AT=790.025n

* CHECK dout1_8 Vdout1_8ck157 = 0 time = 790
.meas tran vdout1_8ck157 FIND v(dout1_8) AT=790.025n

* CHECK dout1_9 Vdout1_9ck157 = 1.0 time = 790
.meas tran vdout1_9ck157 FIND v(dout1_9) AT=790.025n

* CHECK dout1_10 Vdout1_10ck157 = 1.0 time = 790
.meas tran vdout1_10ck157 FIND v(dout1_10) AT=790.025n

* CHECK dout1_11 Vdout1_11ck157 = 0 time = 790
.meas tran vdout1_11ck157 FIND v(dout1_11) AT=790.025n

* CHECK dout1_12 Vdout1_12ck157 = 0 time = 790
.meas tran vdout1_12ck157 FIND v(dout1_12) AT=790.025n

* CHECK dout1_13 Vdout1_13ck157 = 1.0 time = 790
.meas tran vdout1_13ck157 FIND v(dout1_13) AT=790.025n

* CHECK dout1_0 Vdout1_0ck159 = 0 time = 800
.meas tran vdout1_0ck159 FIND v(dout1_0) AT=800.025n

* CHECK dout1_1 Vdout1_1ck159 = 1.0 time = 800
.meas tran vdout1_1ck159 FIND v(dout1_1) AT=800.025n

* CHECK dout1_2 Vdout1_2ck159 = 0 time = 800
.meas tran vdout1_2ck159 FIND v(dout1_2) AT=800.025n

* CHECK dout1_3 Vdout1_3ck159 = 1.0 time = 800
.meas tran vdout1_3ck159 FIND v(dout1_3) AT=800.025n

* CHECK dout1_4 Vdout1_4ck159 = 1.0 time = 800
.meas tran vdout1_4ck159 FIND v(dout1_4) AT=800.025n

* CHECK dout1_5 Vdout1_5ck159 = 0 time = 800
.meas tran vdout1_5ck159 FIND v(dout1_5) AT=800.025n

* CHECK dout1_6 Vdout1_6ck159 = 1.0 time = 800
.meas tran vdout1_6ck159 FIND v(dout1_6) AT=800.025n

* CHECK dout1_7 Vdout1_7ck159 = 1.0 time = 800
.meas tran vdout1_7ck159 FIND v(dout1_7) AT=800.025n

* CHECK dout1_8 Vdout1_8ck159 = 0 time = 800
.meas tran vdout1_8ck159 FIND v(dout1_8) AT=800.025n

* CHECK dout1_9 Vdout1_9ck159 = 0 time = 800
.meas tran vdout1_9ck159 FIND v(dout1_9) AT=800.025n

* CHECK dout1_10 Vdout1_10ck159 = 1.0 time = 800
.meas tran vdout1_10ck159 FIND v(dout1_10) AT=800.025n

* CHECK dout1_11 Vdout1_11ck159 = 1.0 time = 800
.meas tran vdout1_11ck159 FIND v(dout1_11) AT=800.025n

* CHECK dout1_12 Vdout1_12ck159 = 0 time = 800
.meas tran vdout1_12ck159 FIND v(dout1_12) AT=800.025n

* CHECK dout1_13 Vdout1_13ck159 = 1.0 time = 800
.meas tran vdout1_13ck159 FIND v(dout1_13) AT=800.025n

* CHECK dout1_0 Vdout1_0ck160 = 1.0 time = 805
.meas tran vdout1_0ck160 FIND v(dout1_0) AT=805.025n

* CHECK dout1_1 Vdout1_1ck160 = 1.0 time = 805
.meas tran vdout1_1ck160 FIND v(dout1_1) AT=805.025n

* CHECK dout1_2 Vdout1_2ck160 = 0 time = 805
.meas tran vdout1_2ck160 FIND v(dout1_2) AT=805.025n

* CHECK dout1_3 Vdout1_3ck160 = 0 time = 805
.meas tran vdout1_3ck160 FIND v(dout1_3) AT=805.025n

* CHECK dout1_4 Vdout1_4ck160 = 1.0 time = 805
.meas tran vdout1_4ck160 FIND v(dout1_4) AT=805.025n

* CHECK dout1_5 Vdout1_5ck160 = 0 time = 805
.meas tran vdout1_5ck160 FIND v(dout1_5) AT=805.025n

* CHECK dout1_6 Vdout1_6ck160 = 1.0 time = 805
.meas tran vdout1_6ck160 FIND v(dout1_6) AT=805.025n

* CHECK dout1_7 Vdout1_7ck160 = 1.0 time = 805
.meas tran vdout1_7ck160 FIND v(dout1_7) AT=805.025n

* CHECK dout1_8 Vdout1_8ck160 = 1.0 time = 805
.meas tran vdout1_8ck160 FIND v(dout1_8) AT=805.025n

* CHECK dout1_9 Vdout1_9ck160 = 0 time = 805
.meas tran vdout1_9ck160 FIND v(dout1_9) AT=805.025n

* CHECK dout1_10 Vdout1_10ck160 = 1.0 time = 805
.meas tran vdout1_10ck160 FIND v(dout1_10) AT=805.025n

* CHECK dout1_11 Vdout1_11ck160 = 0 time = 805
.meas tran vdout1_11ck160 FIND v(dout1_11) AT=805.025n

* CHECK dout1_12 Vdout1_12ck160 = 1.0 time = 805
.meas tran vdout1_12ck160 FIND v(dout1_12) AT=805.025n

* CHECK dout1_13 Vdout1_13ck160 = 1.0 time = 805
.meas tran vdout1_13ck160 FIND v(dout1_13) AT=805.025n

* CHECK dout1_0 Vdout1_0ck162 = 0 time = 815
.meas tran vdout1_0ck162 FIND v(dout1_0) AT=815.025n

* CHECK dout1_1 Vdout1_1ck162 = 0 time = 815
.meas tran vdout1_1ck162 FIND v(dout1_1) AT=815.025n

* CHECK dout1_2 Vdout1_2ck162 = 1.0 time = 815
.meas tran vdout1_2ck162 FIND v(dout1_2) AT=815.025n

* CHECK dout1_3 Vdout1_3ck162 = 0 time = 815
.meas tran vdout1_3ck162 FIND v(dout1_3) AT=815.025n

* CHECK dout1_4 Vdout1_4ck162 = 0 time = 815
.meas tran vdout1_4ck162 FIND v(dout1_4) AT=815.025n

* CHECK dout1_5 Vdout1_5ck162 = 0 time = 815
.meas tran vdout1_5ck162 FIND v(dout1_5) AT=815.025n

* CHECK dout1_6 Vdout1_6ck162 = 0 time = 815
.meas tran vdout1_6ck162 FIND v(dout1_6) AT=815.025n

* CHECK dout1_7 Vdout1_7ck162 = 0 time = 815
.meas tran vdout1_7ck162 FIND v(dout1_7) AT=815.025n

* CHECK dout1_8 Vdout1_8ck162 = 1.0 time = 815
.meas tran vdout1_8ck162 FIND v(dout1_8) AT=815.025n

* CHECK dout1_9 Vdout1_9ck162 = 0 time = 815
.meas tran vdout1_9ck162 FIND v(dout1_9) AT=815.025n

* CHECK dout1_10 Vdout1_10ck162 = 0 time = 815
.meas tran vdout1_10ck162 FIND v(dout1_10) AT=815.025n

* CHECK dout1_11 Vdout1_11ck162 = 1.0 time = 815
.meas tran vdout1_11ck162 FIND v(dout1_11) AT=815.025n

* CHECK dout1_12 Vdout1_12ck162 = 0 time = 815
.meas tran vdout1_12ck162 FIND v(dout1_12) AT=815.025n

* CHECK dout1_13 Vdout1_13ck162 = 0 time = 815
.meas tran vdout1_13ck162 FIND v(dout1_13) AT=815.025n

* CHECK dout1_0 Vdout1_0ck165 = 0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 1.0 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 1.0 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 1.0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_4 Vdout1_4ck165 = 0 time = 830
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=830.025n

* CHECK dout1_5 Vdout1_5ck165 = 0 time = 830
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=830.025n

* CHECK dout1_6 Vdout1_6ck165 = 0 time = 830
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=830.025n

* CHECK dout1_7 Vdout1_7ck165 = 1.0 time = 830
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=830.025n

* CHECK dout1_8 Vdout1_8ck165 = 1.0 time = 830
.meas tran vdout1_8ck165 FIND v(dout1_8) AT=830.025n

* CHECK dout1_9 Vdout1_9ck165 = 0 time = 830
.meas tran vdout1_9ck165 FIND v(dout1_9) AT=830.025n

* CHECK dout1_10 Vdout1_10ck165 = 0 time = 830
.meas tran vdout1_10ck165 FIND v(dout1_10) AT=830.025n

* CHECK dout1_11 Vdout1_11ck165 = 1.0 time = 830
.meas tran vdout1_11ck165 FIND v(dout1_11) AT=830.025n

* CHECK dout1_12 Vdout1_12ck165 = 0 time = 830
.meas tran vdout1_12ck165 FIND v(dout1_12) AT=830.025n

* CHECK dout1_13 Vdout1_13ck165 = 0 time = 830
.meas tran vdout1_13ck165 FIND v(dout1_13) AT=830.025n

* CHECK dout1_0 Vdout1_0ck168 = 0 time = 845
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=845.025n

* CHECK dout1_1 Vdout1_1ck168 = 1.0 time = 845
.meas tran vdout1_1ck168 FIND v(dout1_1) AT=845.025n

* CHECK dout1_2 Vdout1_2ck168 = 0 time = 845
.meas tran vdout1_2ck168 FIND v(dout1_2) AT=845.025n

* CHECK dout1_3 Vdout1_3ck168 = 0 time = 845
.meas tran vdout1_3ck168 FIND v(dout1_3) AT=845.025n

* CHECK dout1_4 Vdout1_4ck168 = 1.0 time = 845
.meas tran vdout1_4ck168 FIND v(dout1_4) AT=845.025n

* CHECK dout1_5 Vdout1_5ck168 = 1.0 time = 845
.meas tran vdout1_5ck168 FIND v(dout1_5) AT=845.025n

* CHECK dout1_6 Vdout1_6ck168 = 0 time = 845
.meas tran vdout1_6ck168 FIND v(dout1_6) AT=845.025n

* CHECK dout1_7 Vdout1_7ck168 = 0 time = 845
.meas tran vdout1_7ck168 FIND v(dout1_7) AT=845.025n

* CHECK dout1_8 Vdout1_8ck168 = 0 time = 845
.meas tran vdout1_8ck168 FIND v(dout1_8) AT=845.025n

* CHECK dout1_9 Vdout1_9ck168 = 1.0 time = 845
.meas tran vdout1_9ck168 FIND v(dout1_9) AT=845.025n

* CHECK dout1_10 Vdout1_10ck168 = 1.0 time = 845
.meas tran vdout1_10ck168 FIND v(dout1_10) AT=845.025n

* CHECK dout1_11 Vdout1_11ck168 = 1.0 time = 845
.meas tran vdout1_11ck168 FIND v(dout1_11) AT=845.025n

* CHECK dout1_12 Vdout1_12ck168 = 0 time = 845
.meas tran vdout1_12ck168 FIND v(dout1_12) AT=845.025n

* CHECK dout1_13 Vdout1_13ck168 = 1.0 time = 845
.meas tran vdout1_13ck168 FIND v(dout1_13) AT=845.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 1.0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 1.0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_4 Vdout1_4ck170 = 1.0 time = 855
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=855.025n

* CHECK dout1_5 Vdout1_5ck170 = 0 time = 855
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=855.025n

* CHECK dout1_6 Vdout1_6ck170 = 1.0 time = 855
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=855.025n

* CHECK dout1_7 Vdout1_7ck170 = 1.0 time = 855
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=855.025n

* CHECK dout1_8 Vdout1_8ck170 = 0 time = 855
.meas tran vdout1_8ck170 FIND v(dout1_8) AT=855.025n

* CHECK dout1_9 Vdout1_9ck170 = 0 time = 855
.meas tran vdout1_9ck170 FIND v(dout1_9) AT=855.025n

* CHECK dout1_10 Vdout1_10ck170 = 1.0 time = 855
.meas tran vdout1_10ck170 FIND v(dout1_10) AT=855.025n

* CHECK dout1_11 Vdout1_11ck170 = 1.0 time = 855
.meas tran vdout1_11ck170 FIND v(dout1_11) AT=855.025n

* CHECK dout1_12 Vdout1_12ck170 = 0 time = 855
.meas tran vdout1_12ck170 FIND v(dout1_12) AT=855.025n

* CHECK dout1_13 Vdout1_13ck170 = 1.0 time = 855
.meas tran vdout1_13ck170 FIND v(dout1_13) AT=855.025n

* CHECK dout1_0 Vdout1_0ck176 = 0 time = 885
.meas tran vdout1_0ck176 FIND v(dout1_0) AT=885.025n

* CHECK dout1_1 Vdout1_1ck176 = 0 time = 885
.meas tran vdout1_1ck176 FIND v(dout1_1) AT=885.025n

* CHECK dout1_2 Vdout1_2ck176 = 1.0 time = 885
.meas tran vdout1_2ck176 FIND v(dout1_2) AT=885.025n

* CHECK dout1_3 Vdout1_3ck176 = 0 time = 885
.meas tran vdout1_3ck176 FIND v(dout1_3) AT=885.025n

* CHECK dout1_4 Vdout1_4ck176 = 1.0 time = 885
.meas tran vdout1_4ck176 FIND v(dout1_4) AT=885.025n

* CHECK dout1_5 Vdout1_5ck176 = 0 time = 885
.meas tran vdout1_5ck176 FIND v(dout1_5) AT=885.025n

* CHECK dout1_6 Vdout1_6ck176 = 1.0 time = 885
.meas tran vdout1_6ck176 FIND v(dout1_6) AT=885.025n

* CHECK dout1_7 Vdout1_7ck176 = 1.0 time = 885
.meas tran vdout1_7ck176 FIND v(dout1_7) AT=885.025n

* CHECK dout1_8 Vdout1_8ck176 = 1.0 time = 885
.meas tran vdout1_8ck176 FIND v(dout1_8) AT=885.025n

* CHECK dout1_9 Vdout1_9ck176 = 1.0 time = 885
.meas tran vdout1_9ck176 FIND v(dout1_9) AT=885.025n

* CHECK dout1_10 Vdout1_10ck176 = 1.0 time = 885
.meas tran vdout1_10ck176 FIND v(dout1_10) AT=885.025n

* CHECK dout1_11 Vdout1_11ck176 = 0 time = 885
.meas tran vdout1_11ck176 FIND v(dout1_11) AT=885.025n

* CHECK dout1_12 Vdout1_12ck176 = 1.0 time = 885
.meas tran vdout1_12ck176 FIND v(dout1_12) AT=885.025n

* CHECK dout1_13 Vdout1_13ck176 = 1.0 time = 885
.meas tran vdout1_13ck176 FIND v(dout1_13) AT=885.025n

* CHECK dout1_0 Vdout1_0ck177 = 1.0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 1.0 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 1.0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_4 Vdout1_4ck177 = 1.0 time = 890
.meas tran vdout1_4ck177 FIND v(dout1_4) AT=890.025n

* CHECK dout1_5 Vdout1_5ck177 = 0 time = 890
.meas tran vdout1_5ck177 FIND v(dout1_5) AT=890.025n

* CHECK dout1_6 Vdout1_6ck177 = 1.0 time = 890
.meas tran vdout1_6ck177 FIND v(dout1_6) AT=890.025n

* CHECK dout1_7 Vdout1_7ck177 = 0 time = 890
.meas tran vdout1_7ck177 FIND v(dout1_7) AT=890.025n

* CHECK dout1_8 Vdout1_8ck177 = 1.0 time = 890
.meas tran vdout1_8ck177 FIND v(dout1_8) AT=890.025n

* CHECK dout1_9 Vdout1_9ck177 = 1.0 time = 890
.meas tran vdout1_9ck177 FIND v(dout1_9) AT=890.025n

* CHECK dout1_10 Vdout1_10ck177 = 0 time = 890
.meas tran vdout1_10ck177 FIND v(dout1_10) AT=890.025n

* CHECK dout1_11 Vdout1_11ck177 = 0 time = 890
.meas tran vdout1_11ck177 FIND v(dout1_11) AT=890.025n

* CHECK dout1_12 Vdout1_12ck177 = 1.0 time = 890
.meas tran vdout1_12ck177 FIND v(dout1_12) AT=890.025n

* CHECK dout1_13 Vdout1_13ck177 = 1.0 time = 890
.meas tran vdout1_13ck177 FIND v(dout1_13) AT=890.025n

* CHECK dout1_0 Vdout1_0ck182 = 0 time = 915
.meas tran vdout1_0ck182 FIND v(dout1_0) AT=915.025n

* CHECK dout1_1 Vdout1_1ck182 = 0 time = 915
.meas tran vdout1_1ck182 FIND v(dout1_1) AT=915.025n

* CHECK dout1_2 Vdout1_2ck182 = 1.0 time = 915
.meas tran vdout1_2ck182 FIND v(dout1_2) AT=915.025n

* CHECK dout1_3 Vdout1_3ck182 = 0 time = 915
.meas tran vdout1_3ck182 FIND v(dout1_3) AT=915.025n

* CHECK dout1_4 Vdout1_4ck182 = 1.0 time = 915
.meas tran vdout1_4ck182 FIND v(dout1_4) AT=915.025n

* CHECK dout1_5 Vdout1_5ck182 = 0 time = 915
.meas tran vdout1_5ck182 FIND v(dout1_5) AT=915.025n

* CHECK dout1_6 Vdout1_6ck182 = 1.0 time = 915
.meas tran vdout1_6ck182 FIND v(dout1_6) AT=915.025n

* CHECK dout1_7 Vdout1_7ck182 = 1.0 time = 915
.meas tran vdout1_7ck182 FIND v(dout1_7) AT=915.025n

* CHECK dout1_8 Vdout1_8ck182 = 1.0 time = 915
.meas tran vdout1_8ck182 FIND v(dout1_8) AT=915.025n

* CHECK dout1_9 Vdout1_9ck182 = 1.0 time = 915
.meas tran vdout1_9ck182 FIND v(dout1_9) AT=915.025n

* CHECK dout1_10 Vdout1_10ck182 = 1.0 time = 915
.meas tran vdout1_10ck182 FIND v(dout1_10) AT=915.025n

* CHECK dout1_11 Vdout1_11ck182 = 0 time = 915
.meas tran vdout1_11ck182 FIND v(dout1_11) AT=915.025n

* CHECK dout1_12 Vdout1_12ck182 = 1.0 time = 915
.meas tran vdout1_12ck182 FIND v(dout1_12) AT=915.025n

* CHECK dout1_13 Vdout1_13ck182 = 1.0 time = 915
.meas tran vdout1_13ck182 FIND v(dout1_13) AT=915.025n

* CHECK dout1_0 Vdout1_0ck183 = 1.0 time = 920
.meas tran vdout1_0ck183 FIND v(dout1_0) AT=920.025n

* CHECK dout1_1 Vdout1_1ck183 = 0 time = 920
.meas tran vdout1_1ck183 FIND v(dout1_1) AT=920.025n

* CHECK dout1_2 Vdout1_2ck183 = 1.0 time = 920
.meas tran vdout1_2ck183 FIND v(dout1_2) AT=920.025n

* CHECK dout1_3 Vdout1_3ck183 = 0 time = 920
.meas tran vdout1_3ck183 FIND v(dout1_3) AT=920.025n

* CHECK dout1_4 Vdout1_4ck183 = 1.0 time = 920
.meas tran vdout1_4ck183 FIND v(dout1_4) AT=920.025n

* CHECK dout1_5 Vdout1_5ck183 = 0 time = 920
.meas tran vdout1_5ck183 FIND v(dout1_5) AT=920.025n

* CHECK dout1_6 Vdout1_6ck183 = 1.0 time = 920
.meas tran vdout1_6ck183 FIND v(dout1_6) AT=920.025n

* CHECK dout1_7 Vdout1_7ck183 = 1.0 time = 920
.meas tran vdout1_7ck183 FIND v(dout1_7) AT=920.025n

* CHECK dout1_8 Vdout1_8ck183 = 0 time = 920
.meas tran vdout1_8ck183 FIND v(dout1_8) AT=920.025n

* CHECK dout1_9 Vdout1_9ck183 = 1.0 time = 920
.meas tran vdout1_9ck183 FIND v(dout1_9) AT=920.025n

* CHECK dout1_10 Vdout1_10ck183 = 0 time = 920
.meas tran vdout1_10ck183 FIND v(dout1_10) AT=920.025n

* CHECK dout1_11 Vdout1_11ck183 = 1.0 time = 920
.meas tran vdout1_11ck183 FIND v(dout1_11) AT=920.025n

* CHECK dout1_12 Vdout1_12ck183 = 1.0 time = 920
.meas tran vdout1_12ck183 FIND v(dout1_12) AT=920.025n

* CHECK dout1_13 Vdout1_13ck183 = 1.0 time = 920
.meas tran vdout1_13ck183 FIND v(dout1_13) AT=920.025n

* CHECK dout1_0 Vdout1_0ck188 = 1.0 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 1.0 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 1.0 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_4 Vdout1_4ck188 = 1.0 time = 945
.meas tran vdout1_4ck188 FIND v(dout1_4) AT=945.025n

* CHECK dout1_5 Vdout1_5ck188 = 0 time = 945
.meas tran vdout1_5ck188 FIND v(dout1_5) AT=945.025n

* CHECK dout1_6 Vdout1_6ck188 = 1.0 time = 945
.meas tran vdout1_6ck188 FIND v(dout1_6) AT=945.025n

* CHECK dout1_7 Vdout1_7ck188 = 0 time = 945
.meas tran vdout1_7ck188 FIND v(dout1_7) AT=945.025n

* CHECK dout1_8 Vdout1_8ck188 = 1.0 time = 945
.meas tran vdout1_8ck188 FIND v(dout1_8) AT=945.025n

* CHECK dout1_9 Vdout1_9ck188 = 1.0 time = 945
.meas tran vdout1_9ck188 FIND v(dout1_9) AT=945.025n

* CHECK dout1_10 Vdout1_10ck188 = 0 time = 945
.meas tran vdout1_10ck188 FIND v(dout1_10) AT=945.025n

* CHECK dout1_11 Vdout1_11ck188 = 0 time = 945
.meas tran vdout1_11ck188 FIND v(dout1_11) AT=945.025n

* CHECK dout1_12 Vdout1_12ck188 = 1.0 time = 945
.meas tran vdout1_12ck188 FIND v(dout1_12) AT=945.025n

* CHECK dout1_13 Vdout1_13ck188 = 1.0 time = 945
.meas tran vdout1_13ck188 FIND v(dout1_13) AT=945.025n

* CHECK dout1_0 Vdout1_0ck190 = 1.0 time = 955
.meas tran vdout1_0ck190 FIND v(dout1_0) AT=955.025n

* CHECK dout1_1 Vdout1_1ck190 = 0 time = 955
.meas tran vdout1_1ck190 FIND v(dout1_1) AT=955.025n

* CHECK dout1_2 Vdout1_2ck190 = 1.0 time = 955
.meas tran vdout1_2ck190 FIND v(dout1_2) AT=955.025n

* CHECK dout1_3 Vdout1_3ck190 = 0 time = 955
.meas tran vdout1_3ck190 FIND v(dout1_3) AT=955.025n

* CHECK dout1_4 Vdout1_4ck190 = 1.0 time = 955
.meas tran vdout1_4ck190 FIND v(dout1_4) AT=955.025n

* CHECK dout1_5 Vdout1_5ck190 = 0 time = 955
.meas tran vdout1_5ck190 FIND v(dout1_5) AT=955.025n

* CHECK dout1_6 Vdout1_6ck190 = 1.0 time = 955
.meas tran vdout1_6ck190 FIND v(dout1_6) AT=955.025n

* CHECK dout1_7 Vdout1_7ck190 = 1.0 time = 955
.meas tran vdout1_7ck190 FIND v(dout1_7) AT=955.025n

* CHECK dout1_8 Vdout1_8ck190 = 0 time = 955
.meas tran vdout1_8ck190 FIND v(dout1_8) AT=955.025n

* CHECK dout1_9 Vdout1_9ck190 = 1.0 time = 955
.meas tran vdout1_9ck190 FIND v(dout1_9) AT=955.025n

* CHECK dout1_10 Vdout1_10ck190 = 0 time = 955
.meas tran vdout1_10ck190 FIND v(dout1_10) AT=955.025n

* CHECK dout1_11 Vdout1_11ck190 = 1.0 time = 955
.meas tran vdout1_11ck190 FIND v(dout1_11) AT=955.025n

* CHECK dout1_12 Vdout1_12ck190 = 1.0 time = 955
.meas tran vdout1_12ck190 FIND v(dout1_12) AT=955.025n

* CHECK dout1_13 Vdout1_13ck190 = 1.0 time = 955
.meas tran vdout1_13ck190 FIND v(dout1_13) AT=955.025n

* CHECK dout1_0 Vdout1_0ck191 = 0 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 1.0 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 1.0 time = 960
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=960.025n

* CHECK dout1_3 Vdout1_3ck191 = 1.0 time = 960
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=960.025n

* CHECK dout1_4 Vdout1_4ck191 = 1.0 time = 960
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=960.025n

* CHECK dout1_5 Vdout1_5ck191 = 1.0 time = 960
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=960.025n

* CHECK dout1_6 Vdout1_6ck191 = 0 time = 960
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=960.025n

* CHECK dout1_7 Vdout1_7ck191 = 1.0 time = 960
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=960.025n

* CHECK dout1_8 Vdout1_8ck191 = 0 time = 960
.meas tran vdout1_8ck191 FIND v(dout1_8) AT=960.025n

* CHECK dout1_9 Vdout1_9ck191 = 0 time = 960
.meas tran vdout1_9ck191 FIND v(dout1_9) AT=960.025n

* CHECK dout1_10 Vdout1_10ck191 = 0 time = 960
.meas tran vdout1_10ck191 FIND v(dout1_10) AT=960.025n

* CHECK dout1_11 Vdout1_11ck191 = 0 time = 960
.meas tran vdout1_11ck191 FIND v(dout1_11) AT=960.025n

* CHECK dout1_12 Vdout1_12ck191 = 1.0 time = 960
.meas tran vdout1_12ck191 FIND v(dout1_12) AT=960.025n

* CHECK dout1_13 Vdout1_13ck191 = 1.0 time = 960
.meas tran vdout1_13ck191 FIND v(dout1_13) AT=960.025n

* CHECK dout1_0 Vdout1_0ck192 = 1.0 time = 965
.meas tran vdout1_0ck192 FIND v(dout1_0) AT=965.025n

* CHECK dout1_1 Vdout1_1ck192 = 1.0 time = 965
.meas tran vdout1_1ck192 FIND v(dout1_1) AT=965.025n

* CHECK dout1_2 Vdout1_2ck192 = 1.0 time = 965
.meas tran vdout1_2ck192 FIND v(dout1_2) AT=965.025n

* CHECK dout1_3 Vdout1_3ck192 = 0 time = 965
.meas tran vdout1_3ck192 FIND v(dout1_3) AT=965.025n

* CHECK dout1_4 Vdout1_4ck192 = 1.0 time = 965
.meas tran vdout1_4ck192 FIND v(dout1_4) AT=965.025n

* CHECK dout1_5 Vdout1_5ck192 = 0 time = 965
.meas tran vdout1_5ck192 FIND v(dout1_5) AT=965.025n

* CHECK dout1_6 Vdout1_6ck192 = 1.0 time = 965
.meas tran vdout1_6ck192 FIND v(dout1_6) AT=965.025n

* CHECK dout1_7 Vdout1_7ck192 = 0 time = 965
.meas tran vdout1_7ck192 FIND v(dout1_7) AT=965.025n

* CHECK dout1_8 Vdout1_8ck192 = 1.0 time = 965
.meas tran vdout1_8ck192 FIND v(dout1_8) AT=965.025n

* CHECK dout1_9 Vdout1_9ck192 = 0 time = 965
.meas tran vdout1_9ck192 FIND v(dout1_9) AT=965.025n

* CHECK dout1_10 Vdout1_10ck192 = 1.0 time = 965
.meas tran vdout1_10ck192 FIND v(dout1_10) AT=965.025n

* CHECK dout1_11 Vdout1_11ck192 = 0 time = 965
.meas tran vdout1_11ck192 FIND v(dout1_11) AT=965.025n

* CHECK dout1_12 Vdout1_12ck192 = 0 time = 965
.meas tran vdout1_12ck192 FIND v(dout1_12) AT=965.025n

* CHECK dout1_13 Vdout1_13ck192 = 1.0 time = 965
.meas tran vdout1_13ck192 FIND v(dout1_13) AT=965.025n

* CHECK dout1_0 Vdout1_0ck194 = 1.0 time = 975
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=975.025n

* CHECK dout1_1 Vdout1_1ck194 = 1.0 time = 975
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=975.025n

* CHECK dout1_2 Vdout1_2ck194 = 1.0 time = 975
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=975.025n

* CHECK dout1_3 Vdout1_3ck194 = 0 time = 975
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=975.025n

* CHECK dout1_4 Vdout1_4ck194 = 1.0 time = 975
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=975.025n

* CHECK dout1_5 Vdout1_5ck194 = 0 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 1.0 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 0 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_8 Vdout1_8ck194 = 1.0 time = 975
.meas tran vdout1_8ck194 FIND v(dout1_8) AT=975.025n

* CHECK dout1_9 Vdout1_9ck194 = 0 time = 975
.meas tran vdout1_9ck194 FIND v(dout1_9) AT=975.025n

* CHECK dout1_10 Vdout1_10ck194 = 1.0 time = 975
.meas tran vdout1_10ck194 FIND v(dout1_10) AT=975.025n

* CHECK dout1_11 Vdout1_11ck194 = 0 time = 975
.meas tran vdout1_11ck194 FIND v(dout1_11) AT=975.025n

* CHECK dout1_12 Vdout1_12ck194 = 0 time = 975
.meas tran vdout1_12ck194 FIND v(dout1_12) AT=975.025n

* CHECK dout1_13 Vdout1_13ck194 = 1.0 time = 975
.meas tran vdout1_13ck194 FIND v(dout1_13) AT=975.025n

* CHECK dout1_0 Vdout1_0ck195 = 0 time = 980
.meas tran vdout1_0ck195 FIND v(dout1_0) AT=980.025n

* CHECK dout1_1 Vdout1_1ck195 = 0 time = 980
.meas tran vdout1_1ck195 FIND v(dout1_1) AT=980.025n

* CHECK dout1_2 Vdout1_2ck195 = 1.0 time = 980
.meas tran vdout1_2ck195 FIND v(dout1_2) AT=980.025n

* CHECK dout1_3 Vdout1_3ck195 = 0 time = 980
.meas tran vdout1_3ck195 FIND v(dout1_3) AT=980.025n

* CHECK dout1_4 Vdout1_4ck195 = 1.0 time = 980
.meas tran vdout1_4ck195 FIND v(dout1_4) AT=980.025n

* CHECK dout1_5 Vdout1_5ck195 = 0 time = 980
.meas tran vdout1_5ck195 FIND v(dout1_5) AT=980.025n

* CHECK dout1_6 Vdout1_6ck195 = 1.0 time = 980
.meas tran vdout1_6ck195 FIND v(dout1_6) AT=980.025n

* CHECK dout1_7 Vdout1_7ck195 = 1.0 time = 980
.meas tran vdout1_7ck195 FIND v(dout1_7) AT=980.025n

* CHECK dout1_8 Vdout1_8ck195 = 1.0 time = 980
.meas tran vdout1_8ck195 FIND v(dout1_8) AT=980.025n

* CHECK dout1_9 Vdout1_9ck195 = 1.0 time = 980
.meas tran vdout1_9ck195 FIND v(dout1_9) AT=980.025n

* CHECK dout1_10 Vdout1_10ck195 = 1.0 time = 980
.meas tran vdout1_10ck195 FIND v(dout1_10) AT=980.025n

* CHECK dout1_11 Vdout1_11ck195 = 0 time = 980
.meas tran vdout1_11ck195 FIND v(dout1_11) AT=980.025n

* CHECK dout1_12 Vdout1_12ck195 = 1.0 time = 980
.meas tran vdout1_12ck195 FIND v(dout1_12) AT=980.025n

* CHECK dout1_13 Vdout1_13ck195 = 1.0 time = 980
.meas tran vdout1_13ck195 FIND v(dout1_13) AT=980.025n

* CHECK dout1_0 Vdout1_0ck200 = 0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 0 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 1.0 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_4 Vdout1_4ck200 = 1.0 time = 1005
.meas tran vdout1_4ck200 FIND v(dout1_4) AT=1005.025n

* CHECK dout1_5 Vdout1_5ck200 = 0 time = 1005
.meas tran vdout1_5ck200 FIND v(dout1_5) AT=1005.025n

* CHECK dout1_6 Vdout1_6ck200 = 1.0 time = 1005
.meas tran vdout1_6ck200 FIND v(dout1_6) AT=1005.025n

* CHECK dout1_7 Vdout1_7ck200 = 1.0 time = 1005
.meas tran vdout1_7ck200 FIND v(dout1_7) AT=1005.025n

* CHECK dout1_8 Vdout1_8ck200 = 1.0 time = 1005
.meas tran vdout1_8ck200 FIND v(dout1_8) AT=1005.025n

* CHECK dout1_9 Vdout1_9ck200 = 1.0 time = 1005
.meas tran vdout1_9ck200 FIND v(dout1_9) AT=1005.025n

* CHECK dout1_10 Vdout1_10ck200 = 1.0 time = 1005
.meas tran vdout1_10ck200 FIND v(dout1_10) AT=1005.025n

* CHECK dout1_11 Vdout1_11ck200 = 0 time = 1005
.meas tran vdout1_11ck200 FIND v(dout1_11) AT=1005.025n

* CHECK dout1_12 Vdout1_12ck200 = 1.0 time = 1005
.meas tran vdout1_12ck200 FIND v(dout1_12) AT=1005.025n

* CHECK dout1_13 Vdout1_13ck200 = 1.0 time = 1005
.meas tran vdout1_13ck200 FIND v(dout1_13) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck201 = 1.0 time = 1010
.meas tran vdout1_0ck201 FIND v(dout1_0) AT=1010.025n

* CHECK dout1_1 Vdout1_1ck201 = 0 time = 1010
.meas tran vdout1_1ck201 FIND v(dout1_1) AT=1010.025n

* CHECK dout1_2 Vdout1_2ck201 = 1.0 time = 1010
.meas tran vdout1_2ck201 FIND v(dout1_2) AT=1010.025n

* CHECK dout1_3 Vdout1_3ck201 = 1.0 time = 1010
.meas tran vdout1_3ck201 FIND v(dout1_3) AT=1010.025n

* CHECK dout1_4 Vdout1_4ck201 = 1.0 time = 1010
.meas tran vdout1_4ck201 FIND v(dout1_4) AT=1010.025n

* CHECK dout1_5 Vdout1_5ck201 = 0 time = 1010
.meas tran vdout1_5ck201 FIND v(dout1_5) AT=1010.025n

* CHECK dout1_6 Vdout1_6ck201 = 0 time = 1010
.meas tran vdout1_6ck201 FIND v(dout1_6) AT=1010.025n

* CHECK dout1_7 Vdout1_7ck201 = 0 time = 1010
.meas tran vdout1_7ck201 FIND v(dout1_7) AT=1010.025n

* CHECK dout1_8 Vdout1_8ck201 = 1.0 time = 1010
.meas tran vdout1_8ck201 FIND v(dout1_8) AT=1010.025n

* CHECK dout1_9 Vdout1_9ck201 = 1.0 time = 1010
.meas tran vdout1_9ck201 FIND v(dout1_9) AT=1010.025n

* CHECK dout1_10 Vdout1_10ck201 = 1.0 time = 1010
.meas tran vdout1_10ck201 FIND v(dout1_10) AT=1010.025n

* CHECK dout1_11 Vdout1_11ck201 = 0 time = 1010
.meas tran vdout1_11ck201 FIND v(dout1_11) AT=1010.025n

* CHECK dout1_12 Vdout1_12ck201 = 0 time = 1010
.meas tran vdout1_12ck201 FIND v(dout1_12) AT=1010.025n

* CHECK dout1_13 Vdout1_13ck201 = 1.0 time = 1010
.meas tran vdout1_13ck201 FIND v(dout1_13) AT=1010.025n

* CHECK dout1_0 Vdout1_0ck204 = 1.0 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 1.0 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 1.0 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 0 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* CHECK dout1_4 Vdout1_4ck204 = 1.0 time = 1025
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=1025.025n

* CHECK dout1_5 Vdout1_5ck204 = 0 time = 1025
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=1025.025n

* CHECK dout1_6 Vdout1_6ck204 = 1.0 time = 1025
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=1025.025n

* CHECK dout1_7 Vdout1_7ck204 = 0 time = 1025
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=1025.025n

* CHECK dout1_8 Vdout1_8ck204 = 1.0 time = 1025
.meas tran vdout1_8ck204 FIND v(dout1_8) AT=1025.025n

* CHECK dout1_9 Vdout1_9ck204 = 0 time = 1025
.meas tran vdout1_9ck204 FIND v(dout1_9) AT=1025.025n

* CHECK dout1_10 Vdout1_10ck204 = 1.0 time = 1025
.meas tran vdout1_10ck204 FIND v(dout1_10) AT=1025.025n

* CHECK dout1_11 Vdout1_11ck204 = 0 time = 1025
.meas tran vdout1_11ck204 FIND v(dout1_11) AT=1025.025n

* CHECK dout1_12 Vdout1_12ck204 = 0 time = 1025
.meas tran vdout1_12ck204 FIND v(dout1_12) AT=1025.025n

* CHECK dout1_13 Vdout1_13ck204 = 1.0 time = 1025
.meas tran vdout1_13ck204 FIND v(dout1_13) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end


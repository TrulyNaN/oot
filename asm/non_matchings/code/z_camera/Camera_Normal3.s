.late_rodata
glabel D_80139EF0
    .float 0.01

glabel D_80139EF4
    .float 182.04167

glabel D_80139EF8
    .float 0.01

glabel D_80139EFC
    .float 0.01

glabel D_80139F00
    .float 0.01

glabel D_80139F04
    .float 0.01

glabel D_80139F08
    .float 0.01

glabel D_80139F0C
    .float 0.001

glabel D_80139F10
    .float 0.002

.text
glabel Camera_Normal3
/* ABF9A4 80048804 27BDFF58 */  addiu $sp, $sp, -0xa8
/* ABF9A8 80048808 AFB0001C */  sw    $s0, 0x1c($sp)
/* ABF9AC 8004880C 00808025 */  move  $s0, $a0
/* ABF9B0 80048810 AFBF0024 */  sw    $ra, 0x24($sp)
/* ABF9B4 80048814 AFB10020 */  sw    $s1, 0x20($sp)
/* ABF9B8 80048818 0C00B721 */  jal   Player_GetCameraYOffset
/* ABF9BC 8004881C 8C840090 */   lw    $a0, 0x90($a0)
/* ABF9C0 80048820 8602015E */  lh    $v0, 0x15e($s0)
/* ABF9C4 80048824 10400009 */  beqz  $v0, .L8004884C
/* ABF9C8 80048828 2401000A */   li    $at, 10
/* ABF9CC 8004882C 10410007 */  beq   $v0, $at, .L8004884C
/* ABF9D0 80048830 24010014 */   li    $at, 20
/* ABF9D4 80048834 10410005 */  beq   $v0, $at, .L8004884C
/* ABF9D8 80048838 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABF9DC 8004883C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABF9E0 80048840 85C30314 */  lh    $v1, 0x314($t6)
/* ABF9E4 80048844 10600048 */  beqz  $v1, .L80048968
/* ABF9E8 80048848 00000000 */   nop
.L8004884C:
/* ABF9EC 8004884C 860F0142 */  lh    $t7, 0x142($s0)
/* ABF9F0 80048850 3C198012 */  lui   $t9, %hi(sCameraSettings)
/* ABF9F4 80048854 86080144 */  lh    $t0, 0x144($s0)
/* ABF9F8 80048858 000FC0C0 */  sll   $t8, $t7, 3
/* ABF9FC 8004885C 0338C821 */  addu  $t9, $t9, $t8
/* ABFA00 80048860 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* ABFA04 80048864 000848C0 */  sll   $t1, $t0, 3
/* ABFA08 80048868 3C018014 */  lui   $at, %hi(D_80139EF0)
/* ABFA0C 8004886C 03295021 */  addu  $t2, $t9, $t1
/* ABFA10 80048870 8D420004 */  lw    $v0, 4($t2)
/* ABFA14 80048874 C4249EF0 */  lwc1  $f4, %lo(D_80139EF0)($at)
/* ABFA18 80048878 3C018014 */  lui   $at, %hi(D_80139EF4)
/* ABFA1C 8004887C 844B0000 */  lh    $t3, ($v0)
/* ABFA20 80048880 46040082 */  mul.s $f2, $f0, $f4
/* ABFA24 80048884 24420020 */  addiu $v0, $v0, 0x20
/* ABFA28 80048888 448B3000 */  mtc1  $t3, $f6
/* ABFA2C 8004888C 00000000 */  nop
/* ABFA30 80048890 46803220 */  cvt.s.w $f8, $f6
/* ABFA34 80048894 46024282 */  mul.s $f10, $f8, $f2
/* ABFA38 80048898 E60A0000 */  swc1  $f10, ($s0)
/* ABFA3C 8004889C 844CFFE4 */  lh    $t4, -0x1c($v0)
/* ABFA40 800488A0 448C9000 */  mtc1  $t4, $f18
/* ABFA44 800488A4 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* ABFA48 800488A8 46809120 */  cvt.s.w $f4, $f18
/* ABFA4C 800488AC 46022182 */  mul.s $f6, $f4, $f2
/* ABFA50 800488B0 E6060004 */  swc1  $f6, 4($s0)
/* ABFA54 800488B4 844DFFE8 */  lh    $t5, -0x18($v0)
/* ABFA58 800488B8 448D4000 */  mtc1  $t5, $f8
/* ABFA5C 800488BC 00000000 */  nop
/* ABFA60 800488C0 468042A0 */  cvt.s.w $f10, $f8
/* ABFA64 800488C4 46025482 */  mul.s $f18, $f10, $f2
/* ABFA68 800488C8 E6120008 */  swc1  $f18, 8($s0)
/* ABFA6C 800488CC 844EFFEC */  lh    $t6, -0x14($v0)
/* ABFA70 800488D0 C4289EF4 */  lwc1  $f8, %lo(D_80139EF4)($at)
/* ABFA74 800488D4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFA78 800488D8 448E2000 */  mtc1  $t6, $f4
/* ABFA7C 800488DC 44819000 */  mtc1  $at, $f18
/* ABFA80 800488E0 3C018014 */  lui   $at, %hi(D_80139EF8)
/* ABFA84 800488E4 468021A0 */  cvt.s.w $f6, $f4
/* ABFA88 800488E8 46083282 */  mul.s $f10, $f6, $f8
/* ABFA8C 800488EC 46125100 */  add.s $f4, $f10, $f18
/* ABFA90 800488F0 4600218D */  trunc.w.s $f6, $f4
/* ABFA94 800488F4 44183000 */  mfc1  $t8, $f6
/* ABFA98 800488F8 00000000 */  nop
/* ABFA9C 800488FC A618001C */  sh    $t8, 0x1c($s0)
/* ABFAA0 80048900 8448FFF0 */  lh    $t0, -0x10($v0)
/* ABFAA4 80048904 44884000 */  mtc1  $t0, $f8
/* ABFAA8 80048908 00000000 */  nop
/* ABFAAC 8004890C 468042A0 */  cvt.s.w $f10, $f8
/* ABFAB0 80048910 E60A000C */  swc1  $f10, 0xc($s0)
/* ABFAB4 80048914 8459FFF4 */  lh    $t9, -0xc($v0)
/* ABFAB8 80048918 44999000 */  mtc1  $t9, $f18
/* ABFABC 8004891C 00000000 */  nop
/* ABFAC0 80048920 46809120 */  cvt.s.w $f4, $f18
/* ABFAC4 80048924 E6040010 */  swc1  $f4, 0x10($s0)
/* ABFAC8 80048928 8449FFF8 */  lh    $t1, -8($v0)
/* ABFACC 8004892C 44893000 */  mtc1  $t1, $f6
/* ABFAD0 80048930 00000000 */  nop
/* ABFAD4 80048934 46803220 */  cvt.s.w $f8, $f6
/* ABFAD8 80048938 E6080014 */  swc1  $f8, 0x14($s0)
/* ABFADC 8004893C 844AFFFC */  lh    $t2, -4($v0)
/* ABFAE0 80048940 C4249EF8 */  lwc1  $f4, %lo(D_80139EF8)($at)
/* ABFAE4 80048944 448A5000 */  mtc1  $t2, $f10
/* ABFAE8 80048948 00000000 */  nop
/* ABFAEC 8004894C 468054A0 */  cvt.s.w $f18, $f10
/* ABFAF0 80048950 46049182 */  mul.s $f6, $f18, $f4
/* ABFAF4 80048954 E6060018 */  swc1  $f6, 0x18($s0)
/* ABFAF8 80048958 844B0000 */  lh    $t3, ($v0)
/* ABFAFC 8004895C A60B001E */  sh    $t3, 0x1e($s0)
/* ABFB00 80048960 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABFB04 80048964 85830314 */  lh    $v1, 0x314($t4)
.L80048968:
/* ABFB08 80048968 50600004 */  beql  $v1, $zero, .L8004897C
/* ABFB0C 8004896C 26050050 */   addiu $a1, $s0, 0x50
/* ABFB10 80048970 0C011495 */  jal   Camera_CopyPREGToModeValues
/* ABFB14 80048974 02002025 */   move  $a0, $s0
/* ABFB18 80048978 26050050 */  addiu $a1, $s0, 0x50
.L8004897C:
/* ABFB1C 8004897C 2606005C */  addiu $a2, $s0, 0x5c
/* ABFB20 80048980 AFA60048 */  sw    $a2, 0x48($sp)
/* ABFB24 80048984 AFA50044 */  sw    $a1, 0x44($sp)
/* ABFB28 80048988 0C01F124 */  jal   func_8007C490
/* ABFB2C 8004898C 27A4007C */   addiu $a0, $sp, 0x7c
/* ABFB30 80048990 26060074 */  addiu $a2, $s0, 0x74
/* ABFB34 80048994 AFA60040 */  sw    $a2, 0x40($sp)
/* ABFB38 80048998 27A40074 */  addiu $a0, $sp, 0x74
/* ABFB3C 8004899C 0C01F124 */  jal   func_8007C490
/* ABFB40 800489A0 8FA50044 */   lw    $a1, 0x44($sp)
/* ABFB44 800489A4 24040001 */  li    $a0, 1
/* ABFB48 800489A8 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* ABFB4C 800489AC AC24D3E8 */  sw    $a0, %lo(D_8011D3E8)($at)
/* ABFB50 800489B0 860D001E */  lh    $t5, 0x1e($s0)
/* ABFB54 800489B4 3C018012 */  lui   $at, %hi(D_8011D3A0)
/* ABFB58 800489B8 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* ABFB5C 800489BC 8603015E */  lh    $v1, 0x15e($s0)
/* ABFB60 800489C0 1060000A */  beqz  $v1, .L800489EC
/* ABFB64 800489C4 2401000A */   li    $at, 10
/* ABFB68 800489C8 10610008 */  beq   $v1, $at, .L800489EC
/* ABFB6C 800489CC 24010014 */   li    $at, 20
/* ABFB70 800489D0 10610006 */  beq   $v1, $at, .L800489EC
/* ABFB74 800489D4 24010019 */   li    $at, 25
/* ABFB78 800489D8 10610004 */  beq   $v1, $at, .L800489EC
/* ABFB7C 800489DC 260E0094 */   addiu $t6, $s0, 0x94
/* ABFB80 800489E0 AFAE003C */  sw    $t6, 0x3c($sp)
/* ABFB84 800489E4 1000002D */  b     .L80048A9C
/* ABFB88 800489E8 26110020 */   addiu $s1, $s0, 0x20
.L800489EC:
/* ABFB8C 800489EC 44804000 */  mtc1  $zero, $f8
/* ABFB90 800489F0 26110020 */  addiu $s1, $s0, 0x20
/* ABFB94 800489F4 AE20000C */  sw    $zero, 0xc($s1)
/* ABFB98 800489F8 A6200024 */  sh    $zero, 0x24($s1)
/* ABFB9C 800489FC E628001C */  swc1  $f8, 0x1c($s1)
/* ABFBA0 80048A00 C60A0104 */  lwc1  $f10, 0x104($s0)
/* ABFBA4 80048A04 A6200018 */  sh    $zero, 0x18($s1)
/* ABFBA8 80048A08 86220018 */  lh    $v0, 0x18($s1)
/* ABFBAC 80048A0C E62A0020 */  swc1  $f10, 0x20($s1)
/* ABFBB0 80048A10 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFBB4 80048A14 A6220014 */  sh    $v0, 0x14($s1)
/* ABFBB8 80048A18 A6220016 */  sh    $v0, 0x16($s1)
/* ABFBBC 80048A1C C612000C */  lwc1  $f18, 0xc($s0)
/* ABFBC0 80048A20 260F0094 */  addiu $t7, $s0, 0x94
/* ABFBC4 80048A24 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABFBC8 80048A28 E6320010 */  swc1  $f18, 0x10($s1)
/* ABFBCC 80048A2C 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFBD0 80048A30 AFAF003C */  sw    $t7, 0x3c($sp)
/* ABFBD4 80048A34 44812000 */  mtc1  $at, $f4
/* ABFBD8 80048A38 870801C2 */  lh    $t0, 0x1c2($t8)
/* ABFBDC 80048A3C 85E9000E */  lh    $t1, 0xe($t7)
/* ABFBE0 80048A40 87AD0082 */  lh    $t5, 0x82($sp)
/* ABFBE4 80048A44 44883000 */  mtc1  $t0, $f6
/* ABFBE8 80048A48 252C8001 */  addiu $t4, $t1, -0x7fff
/* ABFBEC 80048A4C 018D7023 */  subu  $t6, $t4, $t5
/* ABFBF0 80048A50 46803220 */  cvt.s.w $f8, $f6
/* ABFBF4 80048A54 000E7C00 */  sll   $t7, $t6, 0x10
/* ABFBF8 80048A58 000FC403 */  sra   $t8, $t7, 0x10
/* ABFBFC 80048A5C 44989000 */  mtc1  $t8, $f18
/* ABFC00 80048A60 2409000A */  li    $t1, 10
/* ABFC04 80048A64 A629002A */  sh    $t1, 0x2a($s1)
/* ABFC08 80048A68 46082283 */  div.s $f10, $f4, $f8
/* ABFC0C 80048A6C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* ABFC10 80048A70 468091A0 */  cvt.s.w $f6, $f18
/* ABFC14 80048A74 46065102 */  mul.s $f4, $f10, $f6
/* ABFC18 80048A78 4600220D */  trunc.w.s $f8, $f4
/* ABFC1C 80048A7C 44194000 */  mfc1  $t9, $f8
/* ABFC20 80048A80 00000000 */  nop
/* ABFC24 80048A84 A6390026 */  sh    $t9, 0x26($s1)
/* ABFC28 80048A88 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* ABFC2C 80048A8C 854B01C2 */  lh    $t3, 0x1c2($t2)
/* ABFC30 80048A90 A62B0028 */  sh    $t3, 0x28($s1)
/* ABFC34 80048A94 A604015E */  sh    $a0, 0x15e($s0)
/* ABFC38 80048A98 A620001A */  sh    $zero, 0x1a($s1)
.L80048A9C:
/* ABFC3C 80048A9C 8622002A */  lh    $v0, 0x2a($s1)
/* ABFC40 80048AA0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABFC44 80048AA4 10400002 */  beqz  $v0, .L80048AB0
/* ABFC48 80048AA8 244CFFFF */   addiu $t4, $v0, -1
/* ABFC4C 80048AAC A62C002A */  sh    $t4, 0x2a($s1)
.L80048AB0:
/* ABFC50 80048AB0 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABFC54 80048AB4 3C018014 */  lui   $at, %hi(D_80139EFC)
/* ABFC58 80048AB8 C4209EFC */  lwc1  $f0, %lo(D_80139EFC)($at)
/* ABFC5C 80048ABC 846D01C6 */  lh    $t5, 0x1c6($v1)
/* ABFC60 80048AC0 846E01C8 */  lh    $t6, 0x1c8($v1)
/* ABFC64 80048AC4 C60200E0 */  lwc1  $f2, 0xe0($s0)
/* ABFC68 80048AC8 448D9000 */  mtc1  $t5, $f18
/* ABFC6C 80048ACC 448E2000 */  mtc1  $t6, $f4
/* ABFC70 80048AD0 468092A0 */  cvt.s.w $f10, $f18
/* ABFC74 80048AD4 46802220 */  cvt.s.w $f8, $f4
/* ABFC78 80048AD8 46005182 */  mul.s $f6, $f10, $f0
/* ABFC7C 80048ADC 00000000 */  nop
/* ABFC80 80048AE0 46023402 */  mul.s $f16, $f6, $f2
/* ABFC84 80048AE4 00000000 */  nop
/* ABFC88 80048AE8 46004482 */  mul.s $f18, $f8, $f0
/* ABFC8C 80048AEC 00000000 */  nop
/* ABFC90 80048AF0 46029282 */  mul.s $f10, $f18, $f2
/* ABFC94 80048AF4 E7AA0094 */  swc1  $f10, 0x94($sp)
/* ABFC98 80048AF8 8622001A */  lh    $v0, 0x1a($s1)
/* ABFC9C 80048AFC 10400022 */  beqz  $v0, .L80048B88
/* ABFCA0 80048B00 00000000 */   nop
/* ABFCA4 80048B04 00027840 */  sll   $t7, $v0, 1
/* ABFCA8 80048B08 448F2000 */  mtc1  $t7, $f4
/* ABFCAC 80048B0C C606000C */  lwc1  $f6, 0xc($s0)
/* ABFCB0 80048B10 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABFCB4 80048B14 46802220 */  cvt.s.w $f8, $f4
/* ABFCB8 80048B18 44068000 */  mfc1  $a2, $f16
/* ABFCBC 80048B1C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFCC0 80048B20 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFCC4 80048B24 E7B00098 */  swc1  $f16, 0x98($sp)
/* ABFCC8 80048B28 0C010E27 */  jal   func_8004389C
/* ABFCCC 80048B2C 46083300 */   add.s $f12, $f6, $f8
/* ABFCD0 80048B30 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABFCD4 80048B34 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFCD8 80048B38 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFCDC 80048B3C 8639001A */  lh    $t9, 0x1a($s1)
/* ABFCE0 80048B40 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFCE4 80048B44 870801A2 */  lh    $t0, 0x1a2($t8)
/* ABFCE8 80048B48 00194840 */  sll   $t1, $t9, 1
/* ABFCEC 80048B4C 44892000 */  mtc1  $t1, $f4
/* ABFCF0 80048B50 44889000 */  mtc1  $t0, $f18
/* ABFCF4 80048B54 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFCF8 80048B58 468021A0 */  cvt.s.w $f6, $f4
/* ABFCFC 80048B5C 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFD00 80048B60 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABFD04 80048B64 468092A0 */  cvt.s.w $f10, $f18
/* ABFD08 80048B68 0C010E27 */  jal   func_8004389C
/* ABFD0C 80048B6C 46065300 */   add.s $f12, $f10, $f6
/* ABFD10 80048B70 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ABFD14 80048B74 E60000C4 */  swc1  $f0, 0xc4($s0)
/* ABFD18 80048B78 862A001A */  lh    $t2, 0x1a($s1)
/* ABFD1C 80048B7C 254BFFFF */  addiu $t3, $t2, -1
/* ABFD20 80048B80 10000015 */  b     .L80048BD8
/* ABFD24 80048B84 A62B001A */   sh    $t3, 0x1a($s1)
.L80048B88:
/* ABFD28 80048B88 C60C000C */  lwc1  $f12, 0xc($s0)
/* ABFD2C 80048B8C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* ABFD30 80048B90 44068000 */  mfc1  $a2, $f16
/* ABFD34 80048B94 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFD38 80048B98 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD3C 80048B9C 0C010E27 */  jal   func_8004389C
/* ABFD40 80048BA0 E7B00098 */   swc1  $f16, 0x98($sp)
/* ABFD44 80048BA4 E60000C8 */  swc1  $f0, 0xc8($s0)
/* ABFD48 80048BA8 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* ABFD4C 80048BAC 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABFD50 80048BB0 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABFD54 80048BB4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD58 80048BB8 858D01A2 */  lh    $t5, 0x1a2($t4)
/* ABFD5C 80048BBC 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFD60 80048BC0 C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* ABFD64 80048BC4 448D4000 */  mtc1  $t5, $f8
/* ABFD68 80048BC8 0C010E27 */  jal   func_8004389C
/* ABFD6C 80048BCC 46804320 */   cvt.s.w $f12, $f8
/* ABFD70 80048BD0 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ABFD74 80048BD4 E60000C4 */  swc1  $f0, 0xc4($s0)
.L80048BD8:
/* ABFD78 80048BD8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ABFD7C 80048BDC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ABFD80 80048BE0 3C018014 */  lui   $at, %hi(D_80139F00)
/* ABFD84 80048BE4 C42A9F00 */  lwc1  $f10, %lo(D_80139F00)($at)
/* ABFD88 80048BE8 85CF0198 */  lh    $t7, 0x198($t6)
/* ABFD8C 80048BEC 44068000 */  mfc1  $a2, $f16
/* ABFD90 80048BF0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFD94 80048BF4 448F9000 */  mtc1  $t7, $f18
/* ABFD98 80048BF8 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFD9C 80048BFC C60E00CC */  lwc1  $f14, 0xcc($s0)
/* ABFDA0 80048C00 46809120 */  cvt.s.w $f4, $f18
/* ABFDA4 80048C04 460A2302 */  mul.s $f12, $f4, $f10
/* ABFDA8 80048C08 0C010E27 */  jal   func_8004389C
/* ABFDAC 80048C0C 00000000 */   nop
/* ABFDB0 80048C10 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABFDB4 80048C14 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABFDB8 80048C18 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABFDBC 80048C1C 3C018014 */  lui   $at, %hi(D_80139F04)
/* ABFDC0 80048C20 C4329F04 */  lwc1  $f18, %lo(D_80139F04)($at)
/* ABFDC4 80048C24 8708019A */  lh    $t0, 0x19a($t8)
/* ABFDC8 80048C28 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFDCC 80048C2C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFDD0 80048C30 44883000 */  mtc1  $t0, $f6
/* ABFDD4 80048C34 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFDD8 80048C38 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* ABFDDC 80048C3C 46803220 */  cvt.s.w $f8, $f6
/* ABFDE0 80048C40 46124302 */  mul.s $f12, $f8, $f18
/* ABFDE4 80048C44 0C010E27 */  jal   func_8004389C
/* ABFDE8 80048C48 00000000 */   nop
/* ABFDEC 80048C4C E60000D0 */  swc1  $f0, 0xd0($s0)
/* ABFDF0 80048C50 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ABFDF4 80048C54 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ABFDF8 80048C58 3C018014 */  lui   $at, %hi(D_80139F08)
/* ABFDFC 80048C5C C4269F08 */  lwc1  $f6, %lo(D_80139F08)($at)
/* ABFE00 80048C60 8729019C */  lh    $t1, 0x19c($t9)
/* ABFE04 80048C64 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* ABFE08 80048C68 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABFE0C 80048C6C 44892000 */  mtc1  $t1, $f4
/* ABFE10 80048C70 8FA60094 */  lw    $a2, 0x94($sp)
/* ABFE14 80048C74 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* ABFE18 80048C78 468022A0 */  cvt.s.w $f10, $f4
/* ABFE1C 80048C7C 46065302 */  mul.s $f12, $f10, $f6
/* ABFE20 80048C80 0C010E27 */  jal   func_8004389C
/* ABFE24 80048C84 00000000 */   nop
/* ABFE28 80048C88 E60000D4 */  swc1  $f0, 0xd4($s0)
/* ABFE2C 80048C8C 87A50082 */  lh    $a1, 0x82($sp)
/* ABFE30 80048C90 02002025 */  move  $a0, $s0
/* ABFE34 80048C94 24060001 */  li    $a2, 1
/* ABFE38 80048C98 24A58001 */  addiu $a1, $a1, -0x7fff
/* ABFE3C 80048C9C 00052C00 */  sll   $a1, $a1, 0x10
/* ABFE40 80048CA0 0C0112B7 */  jal   func_80044ADC
/* ABFE44 80048CA4 00052C03 */   sra   $a1, $a1, 0x10
/* ABFE48 80048CA8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABFE4C 80048CAC 44816000 */  mtc1  $at, $f12
/* ABFE50 80048CB0 C6080010 */  lwc1  $f8, 0x10($s0)
/* ABFE54 80048CB4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFE58 80048CB8 44812000 */  mtc1  $at, $f4
/* ABFE5C 80048CBC 46086483 */  div.s $f18, $f12, $f8
/* ABFE60 80048CC0 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* ABFE64 80048CC4 00022400 */  sll   $a0, $v0, 0x10
/* ABFE68 80048CC8 00042403 */  sra   $a0, $a0, 0x10
/* ABFE6C 80048CCC 460A6181 */  sub.s $f6, $f12, $f10
/* ABFE70 80048CD0 86250024 */  lh    $a1, 0x24($s1)
/* ABFE74 80048CD4 2407000F */  li    $a3, 15
/* ABFE78 80048CD8 46049002 */  mul.s $f0, $f18, $f4
/* ABFE7C 80048CDC 00000000 */  nop
/* ABFE80 80048CE0 46060082 */  mul.s $f2, $f0, $f6
/* ABFE84 80048CE4 46020200 */  add.s $f8, $f0, $f2
/* ABFE88 80048CE8 44064000 */  mfc1  $a2, $f8
/* ABFE8C 80048CEC 0C010E47 */  jal   func_8004391C
/* ABFE90 80048CF0 00000000 */   nop
/* ABFE94 80048CF4 A6220024 */  sh    $v0, 0x24($s1)
/* ABFE98 80048CF8 8E060000 */  lw    $a2, ($s0)
/* ABFE9C 80048CFC 240A0001 */  li    $t2, 1
/* ABFEA0 80048D00 AFAA0010 */  sw    $t2, 0x10($sp)
/* ABFEA4 80048D04 02002025 */  move  $a0, $s0
/* ABFEA8 80048D08 27A50074 */  addiu $a1, $sp, 0x74
/* ABFEAC 80048D0C 0C0119BE */  jal   func_800466F8
/* ABFEB0 80048D10 26270020 */   addiu $a3, $s1, 0x20
/* ABFEB4 80048D14 C6120008 */  lwc1  $f18, 8($s0)
/* ABFEB8 80048D18 C6040004 */  lwc1  $f4, 4($s0)
/* ABFEBC 80048D1C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ABFEC0 80048D20 44813000 */  mtc1  $at, $f6
/* ABFEC4 80048D24 46049280 */  add.s $f10, $f18, $f4
/* ABFEC8 80048D28 27A40084 */  addiu $a0, $sp, 0x84
/* ABFECC 80048D2C 8FA50044 */  lw    $a1, 0x44($sp)
/* ABFED0 80048D30 8FA60040 */  lw    $a2, 0x40($sp)
/* ABFED4 80048D34 46065202 */  mul.s $f8, $f10, $f6
/* ABFED8 80048D38 0C01F124 */  jal   func_8007C490
/* ABFEDC 80048D3C E7A80090 */   swc1  $f8, 0x90($sp)
/* ABFEE0 80048D40 862B002A */  lh    $t3, 0x2a($s1)
/* ABFEE4 80048D44 8E060004 */  lw    $a2, 4($s0)
/* ABFEE8 80048D48 8E070008 */  lw    $a3, 8($s0)
/* ABFEEC 80048D4C 02002025 */  move  $a0, $s0
/* ABFEF0 80048D50 8FA50084 */  lw    $a1, 0x84($sp)
/* ABFEF4 80048D54 0C011A70 */  jal   func_800469C0
/* ABFEF8 80048D58 AFAB0010 */   sw    $t3, 0x10($sp)
/* ABFEFC 80048D5C E7A00084 */  swc1  $f0, 0x84($sp)
/* ABFF00 80048D60 E60000DC */  swc1  $f0, 0xdc($s0)
/* ABFF04 80048D64 3C018014 */  lui   $at, %hi(D_80139F0C)
/* ABFF08 80048D68 C4329F0C */  lwc1  $f18, %lo(D_80139F0C)($at)
/* ABFF0C 80048D6C C60400D8 */  lwc1  $f4, 0xd8($s0)
/* ABFF10 80048D70 4604903C */  c.lt.s $f18, $f4
/* ABFF14 80048D74 00000000 */  nop
/* ABFF18 80048D78 4502000A */  bc1fl .L80048DA4
/* ABFF1C 80048D7C 3C013F80 */   lui   $at, 0x3f80
/* ABFF20 80048D80 C7A00084 */  lwc1  $f0, 0x84($sp)
/* ABFF24 80048D84 C7AA0090 */  lwc1  $f10, 0x90($sp)
/* ABFF28 80048D88 3C018014 */  lui   $at, %hi(D_80139F10)
/* ABFF2C 80048D8C C4289F10 */  lwc1  $f8, %lo(D_80139F10)($at)
/* ABFF30 80048D90 46005181 */  sub.s $f6, $f10, $f0
/* ABFF34 80048D94 46083482 */  mul.s $f18, $f6, $f8
/* ABFF38 80048D98 46120000 */  add.s $f0, $f0, $f18
/* ABFF3C 80048D9C E7A00084 */  swc1  $f0, 0x84($sp)
/* ABFF40 80048DA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L80048DA4:
/* ABFF44 80048DA4 44812000 */  mtc1  $at, $f4
/* ABFF48 80048DA8 C60A00C4 */  lwc1  $f10, 0xc4($s0)
/* ABFF4C 80048DAC 860C001C */  lh    $t4, 0x1c($s0)
/* ABFF50 80048DB0 862D0024 */  lh    $t5, 0x24($s1)
/* ABFF54 80048DB4 460A2183 */  div.s $f6, $f4, $f10
/* ABFF58 80048DB8 87A50078 */  lh    $a1, 0x78($sp)
/* ABFF5C 80048DBC 018D2023 */  subu  $a0, $t4, $t5
/* ABFF60 80048DC0 00042400 */  sll   $a0, $a0, 0x10
/* ABFF64 80048DC4 00042403 */  sra   $a0, $a0, 0x10
/* ABFF68 80048DC8 2407000A */  li    $a3, 10
/* ABFF6C 80048DCC 44063000 */  mfc1  $a2, $f6
/* ABFF70 80048DD0 0C010E47 */  jal   func_8004391C
/* ABFF74 80048DD4 00000000 */   nop
/* ABFF78 80048DD8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABFF7C 80048DDC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABFF80 80048DE0 A7A20088 */  sh    $v0, 0x88($sp)
/* ABFF84 80048DE4 27A60084 */  addiu $a2, $sp, 0x84
/* ABFF88 80048DE8 8464019E */  lh    $a0, 0x19e($v1)
/* ABFF8C 80048DEC 0082082A */  slt   $at, $a0, $v0
/* ABFF90 80048DF0 50200003 */  beql  $at, $zero, .L80048E00
/* ABFF94 80048DF4 846201D8 */   lh    $v0, 0x1d8($v1)
/* ABFF98 80048DF8 A7A40088 */  sh    $a0, 0x88($sp)
/* ABFF9C 80048DFC 846201D8 */  lh    $v0, 0x1d8($v1)
.L80048E00:
/* ABFFA0 80048E00 87AE0088 */  lh    $t6, 0x88($sp)
/* ABFFA4 80048E04 01C2082A */  slt   $at, $t6, $v0
/* ABFFA8 80048E08 50200003 */  beql  $at, $zero, .L80048E18
/* ABFFAC 80048E0C 8FAF003C */   lw    $t7, 0x3c($sp)
/* ABFFB0 80048E10 A7A20088 */  sh    $v0, 0x88($sp)
/* ABFFB4 80048E14 8FAF003C */  lw    $t7, 0x3c($sp)
.L80048E18:
/* ABFFB8 80048E18 87A8007A */  lh    $t0, 0x7a($sp)
/* ABFFBC 80048E1C 85F8000E */  lh    $t8, 0xe($t7)
/* ABFFC0 80048E20 250A8001 */  addiu $t2, $t0, -0x7fff
/* ABFFC4 80048E24 030A2023 */  subu  $a0, $t8, $t2
/* ABFFC8 80048E28 00042400 */  sll   $a0, $a0, 0x10
/* ABFFCC 80048E2C 00042403 */  sra   $a0, $a0, 0x10
/* ABFFD0 80048E30 04800003 */  bltz  $a0, .L80048E40
/* ABFFD4 80048E34 00041823 */   negu  $v1, $a0
/* ABFFD8 80048E38 10000001 */  b     .L80048E40
/* ABFFDC 80048E3C 00801825 */   move  $v1, $a0
.L80048E40:
/* ABFFE0 80048E40 28612AF9 */  slti  $at, $v1, 0x2af9
/* ABFFE4 80048E44 14200006 */  bnez  $at, .L80048E60
/* ABFFE8 80048E48 87AE007A */   lh    $t6, 0x7a($sp)
/* ABFFEC 80048E4C 58800004 */  blezl $a0, .L80048E60
/* ABFFF0 80048E50 2404D508 */   li    $a0, -11000
/* ABFFF4 80048E54 10000002 */  b     .L80048E60
/* ABFFF8 80048E58 24042AF8 */   li    $a0, 11000
/* ABFFFC 80048E5C 2404D508 */  li    $a0, -11000
.L80048E60:
/* AC0000 80048E60 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC0004 80048E64 44816000 */  mtc1  $at, $f12
/* AC0008 80048E68 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC000C 80048E6C 44812000 */  mtc1  $at, $f4
/* AC0010 80048E70 C60200E0 */  lwc1  $f2, 0xe0($s0)
/* AC0014 80048E74 44844000 */  mtc1  $a0, $f8
/* AC0018 80048E78 460C2281 */  sub.s $f10, $f4, $f12
/* AC001C 80048E7C 3C014316 */  li    $at, 0x43160000 # 0.000000
/* AC0020 80048E80 87AB007A */  lh    $t3, 0x7a($sp)
/* AC0024 80048E84 468044A0 */  cvt.s.w $f18, $f8
/* AC0028 80048E88 460A1182 */  mul.s $f6, $f2, $f10
/* AC002C 80048E8C C60A00C8 */  lwc1  $f10, 0xc8($s0)
/* AC0030 80048E90 460C3200 */  add.s $f8, $f6, $f12
/* AC0034 80048E94 44813000 */  mtc1  $at, $f6
/* AC0038 80048E98 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC003C 80048E9C 46089102 */  mul.s $f4, $f18, $f8
/* AC0040 80048EA0 44819000 */  mtc1  $at, $f18
/* AC0044 80048EA4 00000000 */  nop
/* AC0048 80048EA8 46029201 */  sub.s $f8, $f18, $f2
/* AC004C 80048EAC 460A2403 */  div.s $f16, $f4, $f10
/* AC0050 80048EB0 46083102 */  mul.s $f4, $f6, $f8
/* AC0054 80048EB4 46008005 */  abs.s $f0, $f16
/* AC0058 80048EB8 4600203C */  c.lt.s $f4, $f0
/* AC005C 80048EBC 00000000 */  nop
/* AC0060 80048EC0 4502000A */  bc1fl .L80048EEC
/* AC0064 80048EC4 A7AE008A */   sh    $t6, 0x8a($sp)
/* AC0068 80048EC8 448B5000 */  mtc1  $t3, $f10
/* AC006C 80048ECC 00000000 */  nop
/* AC0070 80048ED0 468054A0 */  cvt.s.w $f18, $f10
/* AC0074 80048ED4 46109180 */  add.s $f6, $f18, $f16
/* AC0078 80048ED8 4600320D */  trunc.w.s $f8, $f6
/* AC007C 80048EDC 440D4000 */  mfc1  $t5, $f8
/* AC0080 80048EE0 10000002 */  b     .L80048EEC
/* AC0084 80048EE4 A7AD008A */   sh    $t5, 0x8a($sp)
/* AC0088 80048EE8 A7AE008A */  sh    $t6, 0x8a($sp)
.L80048EEC:
/* AC008C 80048EEC 862F0028 */  lh    $t7, 0x28($s1)
/* AC0090 80048EF0 87A8008A */  lh    $t0, 0x8a($sp)
/* AC0094 80048EF4 59E00008 */  blezl $t7, .L80048F18
/* AC0098 80048EF8 8FA40040 */   lw    $a0, 0x40($sp)
/* AC009C 80048EFC 86390026 */  lh    $t9, 0x26($s1)
/* AC00A0 80048F00 01194821 */  addu  $t1, $t0, $t9
/* AC00A4 80048F04 A7A9008A */  sh    $t1, 0x8a($sp)
/* AC00A8 80048F08 86380028 */  lh    $t8, 0x28($s1)
/* AC00AC 80048F0C 270AFFFF */  addiu $t2, $t8, -1
/* AC00B0 80048F10 A62A0028 */  sh    $t2, 0x28($s1)
/* AC00B4 80048F14 8FA40040 */  lw    $a0, 0x40($sp)
.L80048F18:
/* AC00B8 80048F18 0C010F0A */  jal   func_80043C28
/* AC00BC 80048F1C 8FA50044 */   lw    $a1, 0x44($sp)
/* AC00C0 80048F20 860B0140 */  lh    $t3, 0x140($s0)
/* AC00C4 80048F24 24010007 */  li    $at, 7
/* AC00C8 80048F28 02002025 */  move  $a0, $s0
/* AC00CC 80048F2C 1561000A */  bne   $t3, $at, .L80048F58
/* AC00D0 80048F30 8FAE0040 */   lw    $t6, 0x40($sp)
/* AC00D4 80048F34 8E060004 */  lw    $a2, 4($s0)
/* AC00D8 80048F38 8E07000C */  lw    $a3, 0xc($s0)
/* AC00DC 80048F3C 27AC008C */  addiu $t4, $sp, 0x8c
/* AC00E0 80048F40 AFAC0010 */  sw    $t4, 0x10($sp)
/* AC00E4 80048F44 AFB10014 */  sw    $s1, 0x14($sp)
/* AC00E8 80048F48 0C011B88 */  jal   func_80046E20
/* AC00EC 80048F4C 27A50084 */   addiu $a1, $sp, 0x84
/* AC00F0 80048F50 10000009 */  b     .L80048F78
/* AC00F4 80048F54 C60C0014 */   lwc1  $f12, 0x14($s0)
.L80048F58:
/* AC00F8 80048F58 8FAD0048 */  lw    $t5, 0x48($sp)
/* AC00FC 80048F5C 8DC80000 */  lw    $t0, ($t6)
/* AC0100 80048F60 ADA80000 */  sw    $t0, ($t5)
/* AC0104 80048F64 8DCF0004 */  lw    $t7, 4($t6)
/* AC0108 80048F68 ADAF0004 */  sw    $t7, 4($t5)
/* AC010C 80048F6C 8DC80008 */  lw    $t0, 8($t6)
/* AC0110 80048F70 ADA80008 */  sw    $t0, 8($t5)
/* AC0114 80048F74 C60C0014 */  lwc1  $f12, 0x14($s0)
.L80048F78:
/* AC0118 80048F78 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC011C 80048F7C 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC0120 80048F80 0C010E27 */  jal   func_8004389C
/* AC0124 80048F84 3C073F80 */   lui   $a3, 0x3f80
/* AC0128 80048F88 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC012C 80048F8C 00002025 */  move  $a0, $zero
/* AC0130 80048F90 8605015A */  lh    $a1, 0x15a($s0)
/* AC0134 80048F94 3C063F00 */  lui   $a2, 0x3f00
/* AC0138 80048F98 0C010E47 */  jal   func_8004391C
/* AC013C 80048F9C 2407000A */   li    $a3, 10
/* AC0140 80048FA0 A602015A */  sh    $v0, 0x15a($s0)
/* AC0144 80048FA4 02002025 */  move  $a0, $s0
/* AC0148 80048FA8 0C011429 */  jal   func_800450A4
/* AC014C 80048FAC 8E050018 */   lw    $a1, 0x18($s0)
/* AC0150 80048FB0 E6000100 */  swc1  $f0, 0x100($s0)
/* AC0154 80048FB4 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC0158 80048FB8 8FB10020 */  lw    $s1, 0x20($sp)
/* AC015C 80048FBC 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC0160 80048FC0 27BD00A8 */  addiu $sp, $sp, 0xa8
/* AC0164 80048FC4 03E00008 */  jr    $ra
/* AC0168 80048FC8 24020001 */   li    $v0, 1
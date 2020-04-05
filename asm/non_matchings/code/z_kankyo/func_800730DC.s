glabel func_800730DC
/* AEA27C 800730DC 27BDFF78 */  addiu $sp, $sp, -0x88
/* AEA280 800730E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AEA284 800730E4 AFB10020 */  sw    $s1, 0x20($sp)
/* AEA288 800730E8 AFB0001C */  sw    $s0, 0x1c($sp)
/* AEA28C 800730EC 8C850000 */  lw    $a1, ($a0)
/* AEA290 800730F0 00808825 */  move  $s1, $a0
/* AEA294 800730F4 3C068014 */  lui   $a2, %hi(D_8013C55C) # $a2, 0x8014
/* AEA298 800730F8 24C6C55C */  addiu $a2, %lo(D_8013C55C) # addiu $a2, $a2, -0x3aa4
/* AEA29C 800730FC 27A40060 */  addiu $a0, $sp, 0x60
/* AEA2A0 80073100 240708DA */  li    $a3, 2266
/* AEA2A4 80073104 0C031AB1 */  jal   Graph_OpenDisps
/* AEA2A8 80073108 00A08025 */   move  $s0, $a1
/* AEA2AC 8007310C 922E1D6C */  lbu   $t6, 0x1d6c($s1)
/* AEA2B0 80073110 3C028016 */  lui   $v0, %hi(gSaveContext+0xc)
/* AEA2B4 80073114 11C0004C */  beqz  $t6, .L80073248
/* AEA2B8 80073118 00000000 */   nop   
/* AEA2BC 8007311C 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEA2C0 80073120 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA2C4 80073124 24018000 */  li    $at, -32768
/* AEA2C8 80073128 00412021 */  addu  $a0, $v0, $at
/* AEA2CC 8007312C 00042400 */  sll   $a0, $a0, 0x10
/* AEA2D0 80073130 0C01DE1C */  jal   Math_Sins
/* AEA2D4 80073134 00042403 */   sra   $a0, $a0, 0x10
/* AEA2D8 80073138 3C018014 */  lui   $at, %hi(D_8013C7AC)
/* AEA2DC 8007313C C422C7AC */  lwc1  $f2, %lo(D_8013C7AC)($at)
/* AEA2E0 80073140 3C010001 */  lui   $at, (0x00010A28 >> 16) # lui $at, 1
/* AEA2E4 80073144 34210A28 */  ori   $at, (0x00010A28 & 0xFFFF) # ori $at, $at, 0xa28
/* AEA2E8 80073148 02212021 */  addu  $a0, $s1, $at
/* AEA2EC 8007314C 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEA2F0 80073150 44812000 */  mtc1  $at, $f4
/* AEA2F4 80073154 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA2F8 80073158 44815000 */  mtc1  $at, $f10
/* AEA2FC 8007315C 46040182 */  mul.s $f6, $f0, $f4
/* AEA300 80073160 44071000 */  mfc1  $a3, $f2
/* AEA304 80073164 3C063F80 */  lui   $a2, 0x3f80
/* AEA308 80073168 E7A20010 */  swc1  $f2, 0x10($sp)
/* AEA30C 8007316C 46003207 */  neg.s $f8, $f6
/* AEA310 80073170 460A4102 */  mul.s $f4, $f8, $f10
/* AEA314 80073174 44052000 */  mfc1  $a1, $f4
/* AEA318 80073178 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* AEA31C 8007317C 00000000 */   nop   
/* AEA320 80073180 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEA324 80073184 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA328 80073188 24018000 */  li    $at, -32768
/* AEA32C 8007318C 00412021 */  addu  $a0, $v0, $at
/* AEA330 80073190 00042400 */  sll   $a0, $a0, 0x10
/* AEA334 80073194 0C01DE0D */  jal   Math_Coss
/* AEA338 80073198 00042403 */   sra   $a0, $a0, 0x10
/* AEA33C 8007319C 3C018014 */  lui   $at, %hi(D_8013C7B0)
/* AEA340 800731A0 C422C7B0 */  lwc1  $f2, %lo(D_8013C7B0)($at)
/* AEA344 800731A4 3C010001 */  lui   $at, (0x00010A2C >> 16) # lui $at, 1
/* AEA348 800731A8 34210A2C */  ori   $at, (0x00010A2C & 0xFFFF) # ori $at, $at, 0xa2c
/* AEA34C 800731AC 02212021 */  addu  $a0, $s1, $at
/* AEA350 800731B0 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEA354 800731B4 44813000 */  mtc1  $at, $f6
/* AEA358 800731B8 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA35C 800731BC 44815000 */  mtc1  $at, $f10
/* AEA360 800731C0 46060202 */  mul.s $f8, $f0, $f6
/* AEA364 800731C4 44071000 */  mfc1  $a3, $f2
/* AEA368 800731C8 AFA40030 */  sw    $a0, 0x30($sp)
/* AEA36C 800731CC 3C063F80 */  lui   $a2, 0x3f80
/* AEA370 800731D0 E7A20010 */  swc1  $f2, 0x10($sp)
/* AEA374 800731D4 460A4102 */  mul.s $f4, $f8, $f10
/* AEA378 800731D8 44052000 */  mfc1  $a1, $f4
/* AEA37C 800731DC 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* AEA380 800731E0 00000000 */   nop   
/* AEA384 800731E4 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEA388 800731E8 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA38C 800731EC 24018000 */  li    $at, -32768
/* AEA390 800731F0 00412021 */  addu  $a0, $v0, $at
/* AEA394 800731F4 00042400 */  sll   $a0, $a0, 0x10
/* AEA398 800731F8 0C01DE0D */  jal   Math_Coss
/* AEA39C 800731FC 00042403 */   sra   $a0, $a0, 0x10
/* AEA3A0 80073200 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AEA3A4 80073204 44813000 */  mtc1  $at, $f6
/* AEA3A8 80073208 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA3AC 8007320C 44815000 */  mtc1  $at, $f10
/* AEA3B0 80073210 46060202 */  mul.s $f8, $f0, $f6
/* AEA3B4 80073214 3C018014 */  lui   $at, %hi(D_8013C7B4)
/* AEA3B8 80073218 C426C7B4 */  lwc1  $f6, %lo(D_8013C7B4)($at)
/* AEA3BC 8007321C 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* AEA3C0 80073220 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AEA3C4 80073224 8FA40030 */  lw    $a0, 0x30($sp)
/* AEA3C8 80073228 3C063F80 */  lui   $a2, 0x3f80
/* AEA3CC 8007322C 460A4102 */  mul.s $f4, $f8, $f10
/* AEA3D0 80073230 E7A60010 */  swc1  $f6, 0x10($sp)
/* AEA3D4 80073234 44052000 */  mfc1  $a1, $f4
/* AEA3D8 80073238 0C01E0C4 */  jal   Math_SmoothScaleMaxMinF
/* AEA3DC 8007323C 00000000 */   nop   
/* AEA3E0 80073240 10000031 */  b     .L80073308
/* AEA3E4 80073244 00000000 */   nop   
.L80073248:
/* AEA3E8 80073248 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA3EC 8007324C 24018000 */  li    $at, -32768
/* AEA3F0 80073250 00412021 */  addu  $a0, $v0, $at
/* AEA3F4 80073254 00042400 */  sll   $a0, $a0, 0x10
/* AEA3F8 80073258 0C01DE1C */  jal   Math_Sins
/* AEA3FC 8007325C 00042403 */   sra   $a0, $a0, 0x10
/* AEA400 80073260 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEA404 80073264 44814000 */  mtc1  $at, $f8
/* AEA408 80073268 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA40C 8007326C 44813000 */  mtc1  $at, $f6
/* AEA410 80073270 46080282 */  mul.s $f10, $f0, $f8
/* AEA414 80073274 3C010001 */  lui   $at, 1
/* AEA418 80073278 00310821 */  addu  $at, $at, $s1
/* AEA41C 8007327C 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEA420 80073280 46005107 */  neg.s $f4, $f10
/* AEA424 80073284 46062202 */  mul.s $f8, $f4, $f6
/* AEA428 80073288 E4280A28 */  swc1  $f8, 0xa28($at)
/* AEA42C 8007328C 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA430 80073290 24018000 */  li    $at, -32768
/* AEA434 80073294 00412021 */  addu  $a0, $v0, $at
/* AEA438 80073298 00042400 */  sll   $a0, $a0, 0x10
/* AEA43C 8007329C 0C01DE0D */  jal   Math_Coss
/* AEA440 800732A0 00042403 */   sra   $a0, $a0, 0x10
/* AEA444 800732A4 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEA448 800732A8 44815000 */  mtc1  $at, $f10
/* AEA44C 800732AC 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA450 800732B0 44813000 */  mtc1  $at, $f6
/* AEA454 800732B4 460A0102 */  mul.s $f4, $f0, $f10
/* AEA458 800732B8 3C010001 */  lui   $at, 1
/* AEA45C 800732BC 00310821 */  addu  $at, $at, $s1
/* AEA460 800732C0 3C028016 */  lui   $v0, %hi(gSaveContext+0xc) # $v0, 0x8016
/* AEA464 800732C4 46062202 */  mul.s $f8, $f4, $f6
/* AEA468 800732C8 E4280A2C */  swc1  $f8, 0xa2c($at)
/* AEA46C 800732CC 9442E66C */  lhu   $v0, %lo(gSaveContext+0xc)($v0)
/* AEA470 800732D0 24018000 */  li    $at, -32768
/* AEA474 800732D4 00412021 */  addu  $a0, $v0, $at
/* AEA478 800732D8 00042400 */  sll   $a0, $a0, 0x10
/* AEA47C 800732DC 0C01DE0D */  jal   Math_Coss
/* AEA480 800732E0 00042403 */   sra   $a0, $a0, 0x10
/* AEA484 800732E4 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* AEA488 800732E8 44815000 */  mtc1  $at, $f10
/* AEA48C 800732EC 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA490 800732F0 44813000 */  mtc1  $at, $f6
/* AEA494 800732F4 460A0102 */  mul.s $f4, $f0, $f10
/* AEA498 800732F8 3C010001 */  lui   $at, 1
/* AEA49C 800732FC 00310821 */  addu  $at, $at, $s1
/* AEA4A0 80073300 46062202 */  mul.s $f8, $f4, $f6
/* AEA4A4 80073304 E4280A30 */  swc1  $f8, 0xa30($at)
.L80073308:
/* AEA4A8 80073308 3C028016 */  lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* AEA4AC 8007330C 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* AEA4B0 80073310 8C4F0000 */  lw    $t7, ($v0)
/* AEA4B4 80073314 240100CD */  li    $at, 205
/* AEA4B8 80073318 55E10006 */  bnel  $t7, $at, .L80073334
/* AEA4BC 8007331C C63200E8 */   lwc1  $f18, 0xe8($s1)
/* AEA4C0 80073320 8C581360 */  lw    $t8, 0x1360($v0)
/* AEA4C4 80073324 24010005 */  li    $at, 5
/* AEA4C8 80073328 1301018C */  beq   $t8, $at, .L8007395C
/* AEA4CC 8007332C 00000000 */   nop   
/* AEA4D0 80073330 C63200E8 */  lwc1  $f18, 0xe8($s1)
.L80073334:
/* AEA4D4 80073334 C63000E0 */  lwc1  $f16, 0xe0($s1)
/* AEA4D8 80073338 C62A00E4 */  lwc1  $f10, 0xe4($s1)
/* AEA4DC 8007333C 3C010001 */  li    $at, 0x00010000 # 0.000000
/* AEA4E0 80073340 02214021 */  addu  $t0, $s1, $at
/* AEA4E4 80073344 C5080A30 */  lwc1  $f8, 0xa30($t0)
/* AEA4E8 80073348 C5060A28 */  lwc1  $f6, 0xa28($t0)
/* AEA4EC 8007334C C5040A2C */  lwc1  $f4, 0xa2c($t0)
/* AEA4F0 80073350 46089200 */  add.s $f8, $f18, $f8
/* AEA4F4 80073354 00003825 */  move  $a3, $zero
/* AEA4F8 80073358 AFA80030 */  sw    $t0, 0x30($sp)
/* AEA4FC 8007335C 46068300 */  add.s $f12, $f16, $f6
/* AEA500 80073360 44064000 */  mfc1  $a2, $f8
/* AEA504 80073364 0C034261 */  jal   Matrix_Translate
/* AEA508 80073368 46045380 */   add.s $f14, $f10, $f4
/* AEA50C 8007336C 8FA80030 */  lw    $t0, 0x30($sp)
/* AEA510 80073370 3C01437F */  li    $at, 0x437F0000 # 0.000000
/* AEA514 80073374 44818000 */  mtc1  $at, $f16
/* AEA518 80073378 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA51C 8007337C 44815000 */  mtc1  $at, $f10
/* AEA520 80073380 C5080A2C */  lwc1  $f8, 0xa2c($t0)
/* AEA524 80073384 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* AEA528 80073388 44809000 */  mtc1  $zero, $f18
/* AEA52C 8007338C 460A4103 */  div.s $f4, $f8, $f10
/* AEA530 80073390 44814000 */  mtc1  $at, $f8
/* AEA534 80073394 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AEA538 80073398 44815000 */  mtc1  $at, $f10
/* AEA53C 8007339C E7A4007C */  swc1  $f4, 0x7c($sp)
/* AEA540 800733A0 C7A6007C */  lwc1  $f6, 0x7c($sp)
/* AEA544 800733A4 46083083 */  div.s $f2, $f6, $f8
/* AEA548 800733A8 46101302 */  mul.s $f12, $f2, $f16
/* AEA54C 800733AC 4612603C */  c.lt.s $f12, $f18
/* AEA550 800733B0 00000000 */  nop   
/* AEA554 800733B4 45020003 */  bc1fl .L800733C4
/* AEA558 800733B8 460C803C */   c.lt.s $f16, $f12
/* AEA55C 800733BC 46009306 */  mov.s $f12, $f18
/* AEA560 800733C0 460C803C */  c.lt.s $f16, $f12
.L800733C4:
/* AEA564 800733C4 00000000 */  nop   
/* AEA568 800733C8 45020003 */  bc1fl .L800733D8
/* AEA56C 800733CC 4612103C */   c.lt.s $f2, $f18
/* AEA570 800733D0 46008306 */  mov.s $f12, $f16
/* AEA574 800733D4 4612103C */  c.lt.s $f2, $f18
.L800733D8:
/* AEA578 800733D8 46001006 */  mov.s $f0, $f2
/* AEA57C 800733DC 460C8301 */  sub.s $f12, $f16, $f12
/* AEA580 800733E0 45020003 */  bc1fl .L800733F0
/* AEA584 800733E4 4600503C */   c.lt.s $f10, $f0
/* AEA588 800733E8 46009006 */  mov.s $f0, $f18
/* AEA58C 800733EC 4600503C */  c.lt.s $f10, $f0
.L800733F0:
/* AEA590 800733F0 00000000 */  nop   
/* AEA594 800733F4 45000003 */  bc1f  .L80073404
/* AEA598 800733F8 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AEA59C 800733FC 44810000 */  mtc1  $at, $f0
/* AEA5A0 80073400 00000000 */  nop   
.L80073404:
/* AEA5A4 80073404 3C014296 */  li    $at, 0x42960000 # 0.000000
/* AEA5A8 80073408 44812000 */  mtc1  $at, $f4
/* AEA5AC 8007340C 240B0001 */  li    $t3, 1
/* AEA5B0 80073410 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* AEA5B4 80073414 46040182 */  mul.s $f6, $f0, $f4
/* AEA5B8 80073418 3C09FA00 */  lui   $t1, 0xfa00
/* AEA5BC 8007341C 24790008 */  addiu $t9, $v1, 8
/* AEA5C0 80073420 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AEA5C4 80073424 3C05FF00 */  lui   $a1, 0xff00
/* AEA5C8 80073428 AC690000 */  sw    $t1, ($v1)
/* AEA5CC 8007342C 444AF800 */  cfc1  $t2, $31
/* AEA5D0 80073430 44CBF800 */  ctc1  $t3, $31
/* AEA5D4 80073434 00000000 */  nop   
/* AEA5D8 80073438 46003224 */  cvt.w.s $f8, $f6
/* AEA5DC 8007343C 444BF800 */  cfc1  $t3, $31
/* AEA5E0 80073440 00000000 */  nop   
/* AEA5E4 80073444 316B0078 */  andi  $t3, $t3, 0x78
/* AEA5E8 80073448 11600012 */  beqz  $t3, .L80073494
/* AEA5EC 8007344C 3C014F00 */   li    $at, 0x4F000000 # 0.000000
/* AEA5F0 80073450 44814000 */  mtc1  $at, $f8
/* AEA5F4 80073454 240B0001 */  li    $t3, 1
/* AEA5F8 80073458 46083201 */  sub.s $f8, $f6, $f8
/* AEA5FC 8007345C 44CBF800 */  ctc1  $t3, $31
/* AEA600 80073460 00000000 */  nop   
/* AEA604 80073464 46004224 */  cvt.w.s $f8, $f8
/* AEA608 80073468 444BF800 */  cfc1  $t3, $31
/* AEA60C 8007346C 00000000 */  nop   
/* AEA610 80073470 316B0078 */  andi  $t3, $t3, 0x78
/* AEA614 80073474 15600005 */  bnez  $t3, .L8007348C
/* AEA618 80073478 00000000 */   nop   
/* AEA61C 8007347C 440B4000 */  mfc1  $t3, $f8
/* AEA620 80073480 3C018000 */  lui   $at, 0x8000
/* AEA624 80073484 10000007 */  b     .L800734A4
/* AEA628 80073488 01615825 */   or    $t3, $t3, $at
.L8007348C:
/* AEA62C 8007348C 10000005 */  b     .L800734A4
/* AEA630 80073490 240BFFFF */   li    $t3, -1
.L80073494:
/* AEA634 80073494 440B4000 */  mfc1  $t3, $f8
/* AEA638 80073498 00000000 */  nop   
/* AEA63C 8007349C 0560FFFB */  bltz  $t3, .L8007348C
/* AEA640 800734A0 00000000 */   nop   
.L800734A4:
/* AEA644 800734A4 3C01431B */  li    $at, 0x431B0000 # 0.000000
/* AEA648 800734A8 44CAF800 */  ctc1  $t2, $31
/* AEA64C 800734AC 44815000 */  mtc1  $at, $f10
/* AEA650 800734B0 24090001 */  li    $t1, 1
/* AEA654 800734B4 256D00B4 */  addiu $t5, $t3, 0xb4
/* AEA658 800734B8 460A0102 */  mul.s $f4, $f0, $f10
/* AEA65C 800734BC 31AE00FF */  andi  $t6, $t5, 0xff
/* AEA660 800734C0 000E7C00 */  sll   $t7, $t6, 0x10
/* AEA664 800734C4 01E5C025 */  or    $t8, $t7, $a1
/* AEA668 800734C8 4459F800 */  cfc1  $t9, $31
/* AEA66C 800734CC 44C9F800 */  ctc1  $t1, $31
/* AEA670 800734D0 00000000 */  nop   
/* AEA674 800734D4 460021A4 */  cvt.w.s $f6, $f4
/* AEA678 800734D8 4449F800 */  cfc1  $t1, $31
/* AEA67C 800734DC 00000000 */  nop   
/* AEA680 800734E0 31290078 */  andi  $t1, $t1, 0x78
/* AEA684 800734E4 11200012 */  beqz  $t1, .L80073530
/* AEA688 800734E8 3C014F00 */   li    $at, 0x4F000000 # 0.000000
/* AEA68C 800734EC 44813000 */  mtc1  $at, $f6
/* AEA690 800734F0 24090001 */  li    $t1, 1
/* AEA694 800734F4 46062181 */  sub.s $f6, $f4, $f6
/* AEA698 800734F8 44C9F800 */  ctc1  $t1, $31
/* AEA69C 800734FC 00000000 */  nop   
/* AEA6A0 80073500 460031A4 */  cvt.w.s $f6, $f6
/* AEA6A4 80073504 4449F800 */  cfc1  $t1, $31
/* AEA6A8 80073508 00000000 */  nop   
/* AEA6AC 8007350C 31290078 */  andi  $t1, $t1, 0x78
/* AEA6B0 80073510 15200005 */  bnez  $t1, .L80073528
/* AEA6B4 80073514 00000000 */   nop   
/* AEA6B8 80073518 44093000 */  mfc1  $t1, $f6
/* AEA6BC 8007351C 3C018000 */  lui   $at, 0x8000
/* AEA6C0 80073520 10000007 */  b     .L80073540
/* AEA6C4 80073524 01214825 */   or    $t1, $t1, $at
.L80073528:
/* AEA6C8 80073528 10000005 */  b     .L80073540
/* AEA6CC 8007352C 2409FFFF */   li    $t1, -1
.L80073530:
/* AEA6D0 80073530 44093000 */  mfc1  $t1, $f6
/* AEA6D4 80073534 00000000 */  nop   
/* AEA6D8 80073538 0520FFFB */  bltz  $t1, .L80073528
/* AEA6DC 8007353C 00000000 */   nop   
.L80073540:
/* AEA6E0 80073540 44D9F800 */  ctc1  $t9, $31
/* AEA6E4 80073544 01205025 */  move  $t2, $t1
/* AEA6E8 80073548 254B0064 */  addiu $t3, $t2, 0x64
/* AEA6EC 8007354C 46100202 */  mul.s $f8, $f0, $f16
/* AEA6F0 80073550 24040001 */  li    $a0, 1
/* AEA6F4 80073554 316C00FF */  andi  $t4, $t3, 0xff
/* AEA6F8 80073558 000C6A00 */  sll   $t5, $t4, 8
/* AEA6FC 8007355C 030D7025 */  or    $t6, $t8, $t5
/* AEA700 80073560 35CF00FF */  ori   $t7, $t6, 0xff
/* AEA704 80073564 AC6F0004 */  sw    $t7, 4($v1)
/* AEA708 80073568 444AF800 */  cfc1  $t2, $31
/* AEA70C 8007356C 44C4F800 */  ctc1  $a0, $31
/* AEA710 80073570 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* AEA714 80073574 3C09FB00 */  lui   $t1, 0xfb00
/* AEA718 80073578 460042A4 */  cvt.w.s $f10, $f8
/* AEA71C 8007357C 24790008 */  addiu $t9, $v1, 8
/* AEA720 80073580 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AEA724 80073584 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* AEA728 80073588 4444F800 */  cfc1  $a0, $31
/* AEA72C 8007358C AC690000 */  sw    $t1, ($v1)
/* AEA730 80073590 30840078 */  andi  $a0, $a0, 0x78
/* AEA734 80073594 50800013 */  beql  $a0, $zero, .L800735E4
/* AEA738 80073598 44045000 */   mfc1  $a0, $f10
/* AEA73C 8007359C 44815000 */  mtc1  $at, $f10
/* AEA740 800735A0 24040001 */  li    $a0, 1
/* AEA744 800735A4 460A4281 */  sub.s $f10, $f8, $f10
/* AEA748 800735A8 44C4F800 */  ctc1  $a0, $31
/* AEA74C 800735AC 00000000 */  nop   
/* AEA750 800735B0 460052A4 */  cvt.w.s $f10, $f10
/* AEA754 800735B4 4444F800 */  cfc1  $a0, $31
/* AEA758 800735B8 00000000 */  nop   
/* AEA75C 800735BC 30840078 */  andi  $a0, $a0, 0x78
/* AEA760 800735C0 14800005 */  bnez  $a0, .L800735D8
/* AEA764 800735C4 00000000 */   nop   
/* AEA768 800735C8 44045000 */  mfc1  $a0, $f10
/* AEA76C 800735CC 3C018000 */  lui   $at, 0x8000
/* AEA770 800735D0 10000007 */  b     .L800735F0
/* AEA774 800735D4 00812025 */   or    $a0, $a0, $at
.L800735D8:
/* AEA778 800735D8 10000005 */  b     .L800735F0
/* AEA77C 800735DC 2404FFFF */   li    $a0, -1
/* AEA780 800735E0 44045000 */  mfc1  $a0, $f10
.L800735E4:
/* AEA784 800735E4 00000000 */  nop   
/* AEA788 800735E8 0480FFFB */  bltz  $a0, .L800735D8
/* AEA78C 800735EC 00000000 */   nop   
.L800735F0:
/* AEA790 800735F0 44CAF800 */  ctc1  $t2, $31
/* AEA794 800735F4 240F0001 */  li    $t7, 1
/* AEA798 800735F8 308400FF */  andi  $a0, $a0, 0xff
/* AEA79C 800735FC 00045C00 */  sll   $t3, $a0, 0x10
/* AEA7A0 80073600 444EF800 */  cfc1  $t6, $31
/* AEA7A4 80073604 44CFF800 */  ctc1  $t7, $31
/* AEA7A8 80073608 01656025 */  or    $t4, $t3, $a1
/* AEA7AC 8007360C 0004C200 */  sll   $t8, $a0, 8
/* AEA7B0 80073610 46006124 */  cvt.w.s $f4, $f12
/* AEA7B4 80073614 01986825 */  or    $t5, $t4, $t8
/* AEA7B8 80073618 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* AEA7BC 8007361C 444FF800 */  cfc1  $t7, $31
/* AEA7C0 80073620 00000000 */  nop   
/* AEA7C4 80073624 31EF0078 */  andi  $t7, $t7, 0x78
/* AEA7C8 80073628 51E00013 */  beql  $t7, $zero, .L80073678
/* AEA7CC 8007362C 440F2000 */   mfc1  $t7, $f4
/* AEA7D0 80073630 44812000 */  mtc1  $at, $f4
/* AEA7D4 80073634 240F0001 */  li    $t7, 1
/* AEA7D8 80073638 46046101 */  sub.s $f4, $f12, $f4
/* AEA7DC 8007363C 44CFF800 */  ctc1  $t7, $31
/* AEA7E0 80073640 00000000 */  nop   
/* AEA7E4 80073644 46002124 */  cvt.w.s $f4, $f4
/* AEA7E8 80073648 444FF800 */  cfc1  $t7, $31
/* AEA7EC 8007364C 00000000 */  nop   
/* AEA7F0 80073650 31EF0078 */  andi  $t7, $t7, 0x78
/* AEA7F4 80073654 15E00005 */  bnez  $t7, .L8007366C
/* AEA7F8 80073658 00000000 */   nop   
/* AEA7FC 8007365C 440F2000 */  mfc1  $t7, $f4
/* AEA800 80073660 3C018000 */  lui   $at, 0x8000
/* AEA804 80073664 10000007 */  b     .L80073684
/* AEA808 80073668 01E17825 */   or    $t7, $t7, $at
.L8007366C:
/* AEA80C 8007366C 10000005 */  b     .L80073684
/* AEA810 80073670 240FFFFF */   li    $t7, -1
/* AEA814 80073674 440F2000 */  mfc1  $t7, $f4
.L80073678:
/* AEA818 80073678 00000000 */  nop   
/* AEA81C 8007367C 05E0FFFB */  bltz  $t7, .L8007366C
/* AEA820 80073680 00000000 */   nop   
.L80073684:
/* AEA824 80073684 44CEF800 */  ctc1  $t6, $31
/* AEA828 80073688 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AEA82C 8007368C 44814000 */  mtc1  $at, $f8
/* AEA830 80073690 46000180 */  add.s $f6, $f0, $f0
/* AEA834 80073694 31F900FF */  andi  $t9, $t7, 0xff
/* AEA838 80073698 01B94825 */  or    $t1, $t5, $t9
/* AEA83C 8007369C AC690004 */  sw    $t1, 4($v1)
/* AEA840 800736A0 46083300 */  add.s $f12, $f6, $f8
/* AEA844 800736A4 AFA80030 */  sw    $t0, 0x30($sp)
/* AEA848 800736A8 24070001 */  li    $a3, 1
/* AEA84C 800736AC 44066000 */  mfc1  $a2, $f12
/* AEA850 800736B0 0C0342A3 */  jal   Matrix_Scale
/* AEA854 800736B4 46006386 */   mov.s $f14, $f12
/* AEA858 800736B8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEA85C 800736BC 8FA80030 */  lw    $t0, 0x30($sp)
/* AEA860 800736C0 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* AEA864 800736C4 244A0008 */  addiu $t2, $v0, 8
/* AEA868 800736C8 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AEA86C 800736CC 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* AEA870 800736D0 AC4B0000 */  sw    $t3, ($v0)
/* AEA874 800736D4 8E240000 */  lw    $a0, ($s1)
/* AEA878 800736D8 3C058014 */  lui   $a1, %hi(D_8013C56C) # $a1, 0x8014
/* AEA87C 800736DC 24A5C56C */  addiu $a1, %lo(D_8013C56C) # addiu $a1, $a1, -0x3a94
/* AEA880 800736E0 2406093C */  li    $a2, 2364
/* AEA884 800736E4 AFA20054 */  sw    $v0, 0x54($sp)
/* AEA888 800736E8 0C0346A2 */  jal   Matrix_NewMtx
/* AEA88C 800736EC AFA80030 */   sw    $t0, 0x30($sp)
/* AEA890 800736F0 8FA30054 */  lw    $v1, 0x54($sp)
/* AEA894 800736F4 8FA80030 */  lw    $t0, 0x30($sp)
/* AEA898 800736F8 AC620004 */  sw    $v0, 4($v1)
/* AEA89C 800736FC 8E240000 */  lw    $a0, ($s1)
/* AEA8A0 80073700 0C024EB4 */  jal   func_80093AD0
/* AEA8A4 80073704 AFA80030 */   sw    $t0, 0x30($sp)
/* AEA8A8 80073708 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEA8AC 8007370C 8FA80030 */  lw    $t0, 0x30($sp)
/* AEA8B0 80073710 3C0E0405 */  li    $t6, 0x04050000 # 0.000000
/* AEA8B4 80073714 244C0008 */  addiu $t4, $v0, 8
/* AEA8B8 80073718 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AEA8BC 8007371C 25CED1C0 */  addiu $t6, %lo(D_0404D1C0) # addiu $t6, $t6, -0x2e40
/* AEA8C0 80073720 3C18DE00 */  li    $t8, 0xDE000000 # 0.000000
/* AEA8C4 80073724 AC580000 */  sw    $t8, ($v0)
/* AEA8C8 80073728 AC4E0004 */  sw    $t6, 4($v0)
/* AEA8CC 8007372C C62A00E0 */  lwc1  $f10, 0xe0($s1)
/* AEA8D0 80073730 C5040A28 */  lwc1  $f4, 0xa28($t0)
/* AEA8D4 80073734 C62600E4 */  lwc1  $f6, 0xe4($s1)
/* AEA8D8 80073738 C5080A2C */  lwc1  $f8, 0xa2c($t0)
/* AEA8DC 8007373C 46045301 */  sub.s $f12, $f10, $f4
/* AEA8E0 80073740 C62A00E8 */  lwc1  $f10, 0xe8($s1)
/* AEA8E4 80073744 C5040A30 */  lwc1  $f4, 0xa30($t0)
/* AEA8E8 80073748 46083381 */  sub.s $f14, $f6, $f8
/* AEA8EC 8007374C 00003825 */  move  $a3, $zero
/* AEA8F0 80073750 46045181 */  sub.s $f6, $f10, $f4
/* AEA8F4 80073754 44063000 */  mfc1  $a2, $f6
/* AEA8F8 80073758 0C034261 */  jal   Matrix_Translate
/* AEA8FC 8007375C 00000000 */   nop   
/* AEA900 80073760 C7B0007C */  lwc1  $f16, 0x7c($sp)
/* AEA904 80073764 3C0142F0 */  li    $at, 0x42F00000 # 0.000000
/* AEA908 80073768 44814000 */  mtc1  $at, $f8
/* AEA90C 8007376C 46008407 */  neg.s $f16, $f16
/* AEA910 80073770 44809000 */  mtc1  $zero, $f18
/* AEA914 80073774 46088003 */  div.s $f0, $f16, $f8
/* AEA918 80073778 3C01C170 */  li    $at, 0xC1700000 # 0.000000
/* AEA91C 8007377C 44815000 */  mtc1  $at, $f10
/* AEA920 80073780 4612003C */  c.lt.s $f0, $f18
/* AEA924 80073784 00000000 */  nop   
/* AEA928 80073788 45000002 */  bc1f  .L80073794
/* AEA92C 8007378C 00000000 */   nop   
/* AEA930 80073790 46009006 */  mov.s $f0, $f18
.L80073794:
/* AEA934 80073794 46005102 */  mul.s $f4, $f10, $f0
/* AEA938 80073798 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* AEA93C 8007379C 44813000 */  mtc1  $at, $f6
/* AEA940 800737A0 24070001 */  li    $a3, 1
/* AEA944 800737A4 E7B00030 */  swc1  $f16, 0x30($sp)
/* AEA948 800737A8 46062300 */  add.s $f12, $f4, $f6
/* AEA94C 800737AC 44066000 */  mfc1  $a2, $f12
/* AEA950 800737B0 0C0342A3 */  jal   Matrix_Scale
/* AEA954 800737B4 46006386 */   mov.s $f14, $f12
/* AEA958 800737B8 3C0142A0 */  li    $at, 0x42A00000 # 0.000000
/* AEA95C 800737BC C7B00030 */  lwc1  $f16, 0x30($sp)
/* AEA960 800737C0 44814000 */  mtc1  $at, $f8
/* AEA964 800737C4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AEA968 800737C8 44815000 */  mtc1  $at, $f10
/* AEA96C 800737CC 46088083 */  div.s $f2, $f16, $f8
/* AEA970 800737D0 44809000 */  mtc1  $zero, $f18
/* AEA974 800737D4 3C0DDA38 */  lui   $t5, (0xDA380003 >> 16) # lui $t5, 0xda38
/* AEA978 800737D8 3C013F80 */  lui   $at, 0x3f80
/* AEA97C 800737DC 35AD0003 */  ori   $t5, (0xDA380003 & 0xFFFF) # ori $t5, $t5, 3
/* AEA980 800737E0 3C058014 */  lui   $a1, %hi(D_8013C57C) # $a1, 0x8014
/* AEA984 800737E4 4602503C */  c.lt.s $f10, $f2
/* AEA988 800737E8 00000000 */  nop   
/* AEA98C 800737EC 45020004 */  bc1fl .L80073800
/* AEA990 800737F0 3C01437F */   li    $at, 0x437F0000 # 0.000000
/* AEA994 800737F4 44811000 */  mtc1  $at, $f2
/* AEA998 800737F8 00000000 */  nop   
/* AEA99C 800737FC 3C01437F */  li    $at, 0x437F0000 # 0.000000
.L80073800:
/* AEA9A0 80073800 44812000 */  mtc1  $at, $f4
/* AEA9A4 80073804 00000000 */  nop   
/* AEA9A8 80073808 46041002 */  mul.s $f0, $f2, $f4
/* AEA9AC 8007380C 4600903C */  c.lt.s $f18, $f0
/* AEA9B0 80073810 00000000 */  nop   
/* AEA9B4 80073814 45000051 */  bc1f  .L8007395C
/* AEA9B8 80073818 00000000 */   nop   
/* AEA9BC 8007381C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEA9C0 80073820 24A5C57C */  addiu $a1, %lo(D_8013C57C) # addiu $a1, $a1, -0x3a84
/* AEA9C4 80073824 24060966 */  li    $a2, 2406
/* AEA9C8 80073828 244F0008 */  addiu $t7, $v0, 8
/* AEA9CC 8007382C AE0F02C0 */  sw    $t7, 0x2c0($s0)
/* AEA9D0 80073830 AC4D0000 */  sw    $t5, ($v0)
/* AEA9D4 80073834 8E240000 */  lw    $a0, ($s1)
/* AEA9D8 80073838 E7A00030 */  swc1  $f0, 0x30($sp)
/* AEA9DC 8007383C 0C0346A2 */  jal   Matrix_NewMtx
/* AEA9E0 80073840 AFA2004C */   sw    $v0, 0x4c($sp)
/* AEA9E4 80073844 8FA3004C */  lw    $v1, 0x4c($sp)
/* AEA9E8 80073848 C7A00030 */  lwc1  $f0, 0x30($sp)
/* AEA9EC 8007384C AC620004 */  sw    $v0, 4($v1)
/* AEA9F0 80073850 8E240000 */  lw    $a0, ($s1)
/* AEA9F4 80073854 0C024E63 */  jal   func_8009398C
/* AEA9F8 80073858 E7A00030 */   swc1  $f0, 0x30($sp)
/* AEA9FC 8007385C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEAA00 80073860 444CF800 */  cfc1  $t4, $31
/* AEAA04 80073864 24040001 */  li    $a0, 1
/* AEAA08 80073868 44C4F800 */  ctc1  $a0, $31
/* AEAA0C 8007386C C7A00030 */  lwc1  $f0, 0x30($sp)
/* AEAA10 80073870 24590008 */  addiu $t9, $v0, 8
/* AEAA14 80073874 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AEAA18 80073878 460001A4 */  cvt.w.s $f6, $f0
/* AEAA1C 8007387C 3C09E700 */  lui   $t1, 0xe700
/* AEAA20 80073880 AC490000 */  sw    $t1, ($v0)
/* AEAA24 80073884 AC400004 */  sw    $zero, 4($v0)
/* AEAA28 80073888 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* AEAA2C 8007388C 4444F800 */  cfc1  $a0, $31
/* AEAA30 80073890 3C0BFA00 */  lui   $t3, 0xfa00
/* AEAA34 80073894 246A0008 */  addiu $t2, $v1, 8
/* AEAA38 80073898 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AEAA3C 8007389C 30840078 */  andi  $a0, $a0, 0x78
/* AEAA40 800738A0 10800013 */  beqz  $a0, .L800738F0
/* AEAA44 800738A4 AC6B0000 */   sw    $t3, ($v1)
/* AEAA48 800738A8 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* AEAA4C 800738AC 44813000 */  mtc1  $at, $f6
/* AEAA50 800738B0 24040001 */  li    $a0, 1
/* AEAA54 800738B4 46060181 */  sub.s $f6, $f0, $f6
/* AEAA58 800738B8 44C4F800 */  ctc1  $a0, $31
/* AEAA5C 800738BC 00000000 */  nop   
/* AEAA60 800738C0 460031A4 */  cvt.w.s $f6, $f6
/* AEAA64 800738C4 4444F800 */  cfc1  $a0, $31
/* AEAA68 800738C8 00000000 */  nop   
/* AEAA6C 800738CC 30840078 */  andi  $a0, $a0, 0x78
/* AEAA70 800738D0 14800005 */  bnez  $a0, .L800738E8
/* AEAA74 800738D4 00000000 */   nop   
/* AEAA78 800738D8 44043000 */  mfc1  $a0, $f6
/* AEAA7C 800738DC 3C018000 */  lui   $at, 0x8000
/* AEAA80 800738E0 10000007 */  b     .L80073900
/* AEAA84 800738E4 00812025 */   or    $a0, $a0, $at
.L800738E8:
/* AEAA88 800738E8 10000005 */  b     .L80073900
/* AEAA8C 800738EC 2404FFFF */   li    $a0, -1
.L800738F0:
/* AEAA90 800738F0 44043000 */  mfc1  $a0, $f6
/* AEAA94 800738F4 00000000 */  nop   
/* AEAA98 800738F8 0480FFFB */  bltz  $a0, .L800738E8
/* AEAA9C 800738FC 00000000 */   nop   
.L80073900:
/* AEAAA0 80073900 3C01F0FF */  lui   $at, (0xF0FFB400 >> 16) # lui $at, 0xf0ff
/* AEAAA4 80073904 3421B400 */  ori   $at, (0xF0FFB400 & 0xFFFF) # ori $at, $at, 0xb400
/* AEAAA8 80073908 308400FF */  andi  $a0, $a0, 0xff
/* AEAAAC 8007390C 0081C025 */  or    $t8, $a0, $at
/* AEAAB0 80073910 AC780004 */  sw    $t8, 4($v1)
/* AEAAB4 80073914 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEAAB8 80073918 3C015046 */  lui   $at, (0x50461400 >> 16) # lui $at, 0x5046
/* AEAABC 8007391C 34211400 */  ori   $at, (0x50461400 & 0xFFFF) # ori $at, $at, 0x1400
/* AEAAC0 80073920 244E0008 */  addiu $t6, $v0, 8
/* AEAAC4 80073924 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AEAAC8 80073928 00816825 */  or    $t5, $a0, $at
/* AEAACC 8007392C 3C0FFB00 */  lui   $t7, 0xfb00
/* AEAAD0 80073930 AC4F0000 */  sw    $t7, ($v0)
/* AEAAD4 80073934 AC4D0004 */  sw    $t5, 4($v0)
/* AEAAD8 80073938 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AEAADC 8007393C 3C0A0404 */  lui   $t2, %hi(D_04038F00) # $t2, 0x404
/* AEAAE0 80073940 44CCF800 */  ctc1  $t4, $31
/* AEAAE4 80073944 24590008 */  addiu $t9, $v0, 8
/* AEAAE8 80073948 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AEAAEC 8007394C 254A8F00 */  addiu $t2, %lo(D_04038F00) # addiu $t2, $t2, -0x7100
/* AEAAF0 80073950 3C09DE00 */  lui   $t1, 0xde00
/* AEAAF4 80073954 AC490000 */  sw    $t1, ($v0)
/* AEAAF8 80073958 AC4A0004 */  sw    $t2, 4($v0)
.L8007395C:
/* AEAAFC 8007395C 3C068014 */  lui   $a2, %hi(D_8013C58C) # $a2, 0x8014
/* AEAB00 80073960 24C6C58C */  addiu $a2, %lo(D_8013C58C) # addiu $a2, $a2, -0x3a74
/* AEAB04 80073964 27A40060 */  addiu $a0, $sp, 0x60
/* AEAB08 80073968 8E250000 */  lw    $a1, ($s1)
/* AEAB0C 8007396C 0C031AD5 */  jal   Graph_CloseDisps
/* AEAB10 80073970 2407097D */   li    $a3, 2429
/* AEAB14 80073974 8FBF0024 */  lw    $ra, 0x24($sp)
/* AEAB18 80073978 8FB0001C */  lw    $s0, 0x1c($sp)
/* AEAB1C 8007397C 8FB10020 */  lw    $s1, 0x20($sp)
/* AEAB20 80073980 03E00008 */  jr    $ra
/* AEAB24 80073984 27BD0088 */   addiu $sp, $sp, 0x88


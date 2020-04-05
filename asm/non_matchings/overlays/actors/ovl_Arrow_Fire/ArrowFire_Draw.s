glabel ArrowFire_Draw
/* 00580 80866290 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00584 80866294 AFBF003C */  sw      $ra, 0x003C($sp)
/* 00588 80866298 AFB00038 */  sw      $s0, 0x0038($sp)
/* 0058C 8086629C AFA40098 */  sw      $a0, 0x0098($sp)
/* 00590 808662A0 AFA5009C */  sw      $a1, 0x009C($sp)
/* 00594 808662A4 8CAF009C */  lw      $t7, 0x009C($a1)           ## 0000009C
/* 00598 808662A8 AFAF008C */  sw      $t7, 0x008C($sp)
/* 0059C 808662AC 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 005A0 808662B0 50600106 */  beql    $v1, $zero, .L808666CC
/* 005A4 808662B4 8FBF003C */  lw      $ra, 0x003C($sp)
/* 005A8 808662B8 8C790130 */  lw      $t9, 0x0130($v1)           ## 00000130
/* 005AC 808662BC 53200103 */  beql    $t9, $zero, .L808666CC
/* 005B0 808662C0 8FBF003C */  lw      $ra, 0x003C($sp)
/* 005B4 808662C4 948C0166 */  lhu     $t4, 0x0166($a0)           ## 00000166
/* 005B8 808662C8 3C068086 */  lui     $a2, %hi(D_80867B5C)       ## $a2 = 80860000
/* 005BC 808662CC 24C67B5C */  addiu   $a2, $a2, %lo(D_80867B5C)  ## $a2 = 80867B5C
/* 005C0 808662D0 298100FF */  slti    $at, $t4, 0x00FF
/* 005C4 808662D4 102000FC */  beq     $at, $zero, .L808666C8
/* 005C8 808662D8 8FAF009C */  lw      $t7, 0x009C($sp)
/* 005CC 808662DC 906D0249 */  lbu     $t5, 0x0249($v1)           ## 00000249
/* 005D0 808662E0 2407026A */  addiu   $a3, $zero, 0x026A         ## $a3 = 0000026A
/* 005D4 808662E4 31AE0002 */  andi    $t6, $t5, 0x0002           ## $t6 = 00000000
/* 005D8 808662E8 51C00004 */  beql    $t6, $zero, .L808662FC
/* 005DC 808662EC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 005E0 808662F0 10000002 */  beq     $zero, $zero, .L808662FC
/* 005E4 808662F4 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 005E8 808662F8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L808662FC:
/* 005EC 808662FC 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 005F0 80866300 AFA20084 */  sw      $v0, 0x0084($sp)
/* 005F4 80866304 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFD8
/* 005F8 80866308 0C031AB1 */  jal     Graph_OpenDisps
/* 005FC 8086630C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00600 80866310 8FA20084 */  lw      $v0, 0x0084($sp)
/* 00604 80866314 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00608 80866318 C44C0024 */  lwc1    $f12, 0x0024($v0)          ## 00000024
/* 0060C 8086631C C44E0028 */  lwc1    $f14, 0x0028($v0)          ## 00000028
/* 00610 80866320 0C034261 */  jal     Matrix_Translate
/* 00614 80866324 8C46002C */  lw      $a2, 0x002C($v0)           ## 0000002C
/* 00618 80866328 8FA20084 */  lw      $v0, 0x0084($sp)
/* 0061C 8086632C 3C018086 */  lui     $at, %hi(D_80867BAC)       ## $at = 80860000
/* 00620 80866330 C4287BAC */  lwc1    $f8, %lo(D_80867BAC)($at)
/* 00624 80866334 845800B6 */  lh      $t8, 0x00B6($v0)           ## 000000B6
/* 00628 80866338 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0062C 8086633C 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 00630 80866340 00000000 */  nop
/* 00634 80866344 468021A0 */  cvt.s.w $f6, $f4
/* 00638 80866348 46083302 */  mul.s   $f12, $f6, $f8
/* 0063C 8086634C 0C034348 */  jal     Matrix_RotateY
/* 00640 80866350 00000000 */  nop
/* 00644 80866354 8FA20084 */  lw      $v0, 0x0084($sp)
/* 00648 80866358 3C018086 */  lui     $at, %hi(D_80867BB0)       ## $at = 80860000
/* 0064C 8086635C C4327BB0 */  lwc1    $f18, %lo(D_80867BB0)($at)
/* 00650 80866360 845900B4 */  lh      $t9, 0x00B4($v0)           ## 000000B4
/* 00654 80866364 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00658 80866368 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 0065C 8086636C 00000000 */  nop
/* 00660 80866370 46805420 */  cvt.s.w $f16, $f10
/* 00664 80866374 46128302 */  mul.s   $f12, $f16, $f18
/* 00668 80866378 0C0342DC */  jal     Matrix_RotateX
/* 0066C 8086637C 00000000 */  nop
/* 00670 80866380 8FA20084 */  lw      $v0, 0x0084($sp)
/* 00674 80866384 3C018086 */  lui     $at, %hi(D_80867BB4)       ## $at = 80860000
/* 00678 80866388 C4287BB4 */  lwc1    $f8, %lo(D_80867BB4)($at)
/* 0067C 8086638C 844B00B8 */  lh      $t3, 0x00B8($v0)           ## 000000B8
/* 00680 80866390 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00684 80866394 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00688 80866398 00000000 */  nop
/* 0068C 8086639C 468021A0 */  cvt.s.w $f6, $f4
/* 00690 808663A0 46083302 */  mul.s   $f12, $f6, $f8
/* 00694 808663A4 0C0343B5 */  jal     Matrix_RotateZ
/* 00698 808663A8 00000000 */  nop
/* 0069C 808663AC 3C018086 */  lui     $at, %hi(D_80867BB8)       ## $at = 80860000
/* 006A0 808663B0 C42C7BB8 */  lwc1    $f12, %lo(D_80867BB8)($at)
/* 006A4 808663B4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 006A8 808663B8 44066000 */  mfc1    $a2, $f12
/* 006AC 808663BC 0C0342A3 */  jal     Matrix_Scale
/* 006B0 808663C0 46006386 */  mov.s   $f14, $f12
/* 006B4 808663C4 8FAC0098 */  lw      $t4, 0x0098($sp)
/* 006B8 808663C8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 006BC 808663CC C590015C */  lwc1    $f16, 0x015C($t4)          ## 0000015C
/* 006C0 808663D0 4610503C */  c.lt.s  $f10, $f16
/* 006C4 808663D4 00000000 */  nop
/* 006C8 808663D8 45020030 */  bc1fl   .L8086649C
/* 006CC 808663DC 8FAE009C */  lw      $t6, 0x009C($sp)
/* 006D0 808663E0 0C024DF0 */  jal     func_800937C0
/* 006D4 808663E4 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 006D8 808663E8 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 006DC 808663EC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 006E0 808663F0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 006E4 808663F4 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 006E8 808663F8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 006EC 808663FC 8FAF0098 */  lw      $t7, 0x0098($sp)
/* 006F0 80866400 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 006F4 80866404 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 006F8 80866408 C5E0015C */  lwc1    $f0, 0x015C($t7)           ## 0000015C
/* 006FC 8086640C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00700 80866410 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 00704 80866414 46120102 */  mul.s   $f4, $f0, $f18
/* 00708 80866418 3C0EE300 */  lui     $t6, 0xE300                ## $t6 = E3000000
/* 0070C 8086641C 35CE1A01 */  ori     $t6, $t6, 0x1A01           ## $t6 = E3001A01
/* 00710 80866420 46004282 */  mul.s   $f10, $f8, $f0
/* 00714 80866424 240F0030 */  addiu   $t7, $zero, 0x0030         ## $t7 = 00000030
/* 00718 80866428 4600218D */  trunc.w.s $f6, $f4
/* 0071C 8086642C 4600540D */  trunc.w.s $f16, $f10
/* 00720 80866430 440C3000 */  mfc1    $t4, $f6
/* 00724 80866434 44188000 */  mfc1    $t8, $f16
/* 00728 80866438 000C6E00 */  sll     $t5, $t4, 24
/* 0072C 8086643C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 00730 80866440 01B95825 */  or      $t3, $t5, $t9              ## $t3 = 00000008
/* 00734 80866444 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00738 80866448 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0073C 8086644C 3C0DE300 */  lui     $t5, 0xE300                ## $t5 = E3000000
/* 00740 80866450 35AD1801 */  ori     $t5, $t5, 0x1801           ## $t5 = E3001801
/* 00744 80866454 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00748 80866458 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 0074C 8086645C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00750 80866460 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00754 80866464 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00758 80866468 241900C0 */  addiu   $t9, $zero, 0x00C0         ## $t9 = 000000C0
/* 0075C 8086646C 3C0CF64F */  lui     $t4, 0xF64F                ## $t4 = F64F0000
/* 00760 80866470 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00764 80866474 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00768 80866478 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0076C 8086647C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00770 80866480 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00774 80866484 358CC3BC */  ori     $t4, $t4, 0xC3BC           ## $t4 = F64FC3BC
/* 00778 80866488 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0077C 8086648C AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00780 80866490 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00784 80866494 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00788 80866498 8FAE009C */  lw      $t6, 0x009C($sp)
.L8086649C:
/* 0078C 8086649C 0C024F61 */  jal     func_80093D84
/* 00790 808664A0 8DC40000 */  lw      $a0, 0x0000($t6)           ## E3001A01
/* 00794 808664A4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00798 808664A8 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 0079C 808664AC 37188080 */  ori     $t8, $t8, 0x8080           ## $t8 = FA008080
/* 007A0 808664B0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 007A4 808664B4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 007A8 808664B8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 007AC 808664BC 8FAD0098 */  lw      $t5, 0x0098($sp)
/* 007B0 808664C0 3C01FFC8 */  lui     $at, 0xFFC8                ## $at = FFC80000
/* 007B4 808664C4 3C18FF00 */  lui     $t8, 0xFF00                ## $t8 = FF000000
/* 007B8 808664C8 91AB0168 */  lbu     $t3, 0x0168($t5)           ## 00000168
/* 007BC 808664CC 37180080 */  ori     $t8, $t8, 0x0080           ## $t8 = FF000080
/* 007C0 808664D0 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 007C4 808664D4 01616025 */  or      $t4, $t3, $at              ## $t4 = FFC80000
/* 007C8 808664D8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 007CC 808664DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 007D0 808664E0 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
/* 007D4 808664E4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007D8 808664E8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 007DC 808664EC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 007E0 808664F0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 007E4 808664F4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 007E8 808664F8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 007EC 808664FC 0C034421 */  jal     Matrix_RotateZYX
/* 007F0 80866500 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 007F4 80866504 8FAD0098 */  lw      $t5, 0x0098($sp)
/* 007F8 80866508 3C018086 */  lui     $at, %hi(D_80867BBC)       ## $at = 80860000
/* 007FC 8086650C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00800 80866510 95B90166 */  lhu     $t9, 0x0166($t5)           ## 00000166
/* 00804 80866514 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00808 80866518 53200009 */  beql    $t9, $zero, .L80866540
/* 0080C 8086651C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00810 80866520 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00814 80866524 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00818 80866528 44066000 */  mfc1    $a2, $f12
/* 0081C 8086652C 0C034261 */  jal     Matrix_Translate
/* 00820 80866530 46006386 */  mov.s   $f14, $f12
/* 00824 80866534 10000005 */  beq     $zero, $zero, .L8086654C
/* 00828 80866538 8FAB0098 */  lw      $t3, 0x0098($sp)
/* 0082C 8086653C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
.L80866540:
/* 00830 80866540 0C034261 */  jal     Matrix_Translate
/* 00834 80866544 C42E7BBC */  lwc1    $f14, %lo(D_80867BBC)($at)
/* 00838 80866548 8FAB0098 */  lw      $t3, 0x0098($sp)
.L8086654C:
/* 0083C 8086654C 3C018086 */  lui     $at, %hi(D_80867BC0)       ## $at = 80860000
/* 00840 80866550 C4267BC0 */  lwc1    $f6, %lo(D_80867BC0)($at)
/* 00844 80866554 856C0164 */  lh      $t4, 0x0164($t3)           ## 00000164
/* 00848 80866558 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0084C 8086655C 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 00850 80866560 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 00854 80866564 C5680158 */  lwc1    $f8, 0x0158($t3)           ## 00000158
/* 00858 80866568 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0085C 8086656C 46809120 */  cvt.s.w $f4, $f18
/* 00860 80866570 46062302 */  mul.s   $f12, $f4, $f6
/* 00864 80866574 44066000 */  mfc1    $a2, $f12
/* 00868 80866578 460A4382 */  mul.s   $f14, $f8, $f10
/* 0086C 8086657C 0C0342A3 */  jal     Matrix_Scale
/* 00870 80866580 00000000 */  nop
/* 00874 80866584 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00878 80866588 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 0087C 8086658C 44817000 */  mtc1    $at, $f14                  ## $f14 = -700.00
/* 00880 80866590 44066000 */  mfc1    $a2, $f12
/* 00884 80866594 0C034261 */  jal     Matrix_Translate
/* 00888 80866598 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0088C 8086659C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00890 808665A0 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00894 808665A4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00898 808665A8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0089C 808665AC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 008A0 808665B0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 008A4 808665B4 8FB8009C */  lw      $t8, 0x009C($sp)
/* 008A8 808665B8 3C058086 */  lui     $a1, %hi(D_80867B70)       ## $a1 = 80860000
/* 008AC 808665BC 24A57B70 */  addiu   $a1, $a1, %lo(D_80867B70)  ## $a1 = 80867B70
/* 008B0 808665C0 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 008B4 808665C4 2406029A */  addiu   $a2, $zero, 0x029A         ## $a2 = 0000029A
/* 008B8 808665C8 0C0346A2 */  jal     Matrix_NewMtx
/* 008BC 808665CC AFA20054 */  sw      $v0, 0x0054($sp)
/* 008C0 808665D0 8FA30054 */  lw      $v1, 0x0054($sp)
/* 008C4 808665D4 3C198086 */  lui     $t9, %hi(D_80867990)       ## $t9 = 80860000
/* 008C8 808665D8 27397990 */  addiu   $t9, $t9, %lo(D_80867990)  ## $t9 = 80867990
/* 008CC 808665DC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 008D0 808665E0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 008D4 808665E4 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 008D8 808665E8 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 008DC 808665EC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 008E0 808665F0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 008E4 808665F4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 008E8 808665F8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 008EC 808665FC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 008F0 80866600 8FAA008C */  lw      $t2, 0x008C($sp)
/* 008F4 80866604 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 008F8 80866608 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 008FC 8086660C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00900 80866610 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00904 80866614 8FAB009C */  lw      $t3, 0x009C($sp)
/* 00908 80866618 000A7040 */  sll     $t6, $t2,  1
/* 0090C 8086661C 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00910 80866620 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 00914 80866624 000A7080 */  sll     $t6, $t2,  2
/* 00918 80866628 01CA7021 */  addu    $t6, $t6, $t2
/* 0091C 8086662C 000E7040 */  sll     $t6, $t6,  1
/* 00920 80866630 AFB80010 */  sw      $t8, 0x0010($sp)
/* 00924 80866634 010F3023 */  subu    $a2, $t0, $t7
/* 00928 80866638 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0092C 8086663C 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 00930 80866640 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 00000000
/* 00934 80866644 010C5823 */  subu    $t3, $t0, $t4
/* 00938 80866648 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 0093C 8086664C AFB90018 */  sw      $t9, 0x0018($sp)
/* 00940 80866650 31CF01FF */  andi    $t7, $t6, 0x01FF           ## $t7 = 00000000
/* 00944 80866654 241801FF */  addiu   $t8, $zero, 0x01FF         ## $t8 = 000001FF
/* 00948 80866658 030F6823 */  subu    $t5, $t8, $t7
/* 0094C 8086665C 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00950 80866660 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 00954 80866664 AFAC0028 */  sw      $t4, 0x0028($sp)
/* 00958 80866668 AFB90024 */  sw      $t9, 0x0024($sp)
/* 0095C 8086666C AFAD0020 */  sw      $t5, 0x0020($sp)
/* 00960 80866670 AFAB001C */  sw      $t3, 0x001C($sp)
/* 00964 80866674 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00968 80866678 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0096C 8086667C 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 00970 80866680 AFA2004C */  sw      $v0, 0x004C($sp)
/* 00974 80866684 8FA3004C */  lw      $v1, 0x004C($sp)
/* 00978 80866688 3C188086 */  lui     $t8, %hi(D_80867A40)       ## $t8 = 80860000
/* 0097C 8086668C 27187A40 */  addiu   $t8, $t8, %lo(D_80867A40)  ## $t8 = 80867A40
/* 00980 80866690 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00984 80866694 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00988 80866698 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 0098C 8086669C 3C068086 */  lui     $a2, %hi(D_80867B84)       ## $a2 = 80860000
/* 00990 808666A0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00994 808666A4 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00998 808666A8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0099C 808666AC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 009A0 808666B0 8FAF009C */  lw      $t7, 0x009C($sp)
/* 009A4 808666B4 24C67B84 */  addiu   $a2, $a2, %lo(D_80867B84)  ## $a2 = 80867B84
/* 009A8 808666B8 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFD8
/* 009AC 808666BC 240702AA */  addiu   $a3, $zero, 0x02AA         ## $a3 = 000002AA
/* 009B0 808666C0 0C031AD5 */  jal     Graph_CloseDisps
/* 009B4 808666C4 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
.L808666C8:
/* 009B8 808666C8 8FBF003C */  lw      $ra, 0x003C($sp)
.L808666CC:
/* 009BC 808666CC 8FB00038 */  lw      $s0, 0x0038($sp)
/* 009C0 808666D0 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 009C4 808666D4 03E00008 */  jr      $ra
/* 009C8 808666D8 00000000 */  nop
/* 009CC 808666DC 00000000 */  nop


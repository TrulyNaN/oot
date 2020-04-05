glabel EnSsh_Draw
/* 02048 80B042B8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0204C 80B042BC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02050 80B042C0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02054 80B042C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02058 80B042C8 0C2C0C18 */  jal     func_80B03060              
/* 0205C 80B042CC AFA50054 */  sw      $a1, 0x0054($sp)           
/* 02060 80B042D0 0C2C0BC7 */  jal     func_80B02F1C              
/* 02064 80B042D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02068 80B042D8 8FAE0054 */  lw      $t6, 0x0054($sp)           
/* 0206C 80B042DC 3C0680B0 */  lui     $a2, %hi(D_80B045D0)       ## $a2 = 80B00000
/* 02070 80B042E0 24C645D0 */  addiu   $a2, $a2, %lo(D_80B045D0)  ## $a2 = 80B045D0
/* 02074 80B042E4 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 02078 80B042E8 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 0207C 80B042EC 2407091D */  addiu   $a3, $zero, 0x091D         ## $a3 = 0000091D
/* 02080 80B042F0 0C031AB1 */  jal     Graph_OpenDisps              
/* 02084 80B042F4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02088 80B042F8 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 0208C 80B042FC 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 02090 80B04300 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 02094 80B04304 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 02098 80B04308 3C0480B0 */  lui     $a0, %hi(D_80B045B8)       ## $a0 = 80B00000
/* 0209C 80B0430C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 020A0 80B04310 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 020A4 80B04314 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 020A8 80B04318 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 020AC 80B0431C 861905CE */  lh      $t9, 0x05CE($s0)           ## 000005CE
/* 020B0 80B04320 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 020B4 80B04324 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 020B8 80B04328 00194880 */  sll     $t1, $t9,  2               
/* 020BC 80B0432C 00892021 */  addu    $a0, $a0, $t1              
/* 020C0 80B04330 8C8445B8 */  lw      $a0, %lo(D_80B045B8)($a0)  
/* 020C4 80B04334 3C0680B0 */  lui     $a2, %hi(D_80B045E0)       ## $a2 = 80B00000
/* 020C8 80B04338 24C645E0 */  addiu   $a2, $a2, %lo(D_80B045E0)  ## $a2 = 80B045E0
/* 020CC 80B0433C 00045900 */  sll     $t3, $a0,  4               
/* 020D0 80B04340 000B6702 */  srl     $t4, $t3, 28               
/* 020D4 80B04344 000C6880 */  sll     $t5, $t4,  2               
/* 020D8 80B04348 01CD7021 */  addu    $t6, $t6, $t5              
/* 020DC 80B0434C 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 020E0 80B04350 00815024 */  and     $t2, $a0, $at              
/* 020E4 80B04354 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 020E8 80B04358 014E7821 */  addu    $t7, $t2, $t6              
/* 020EC 80B0435C 01E1C021 */  addu    $t8, $t7, $at              
/* 020F0 80B04360 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 020F4 80B04364 8FB90054 */  lw      $t9, 0x0054($sp)           
/* 020F8 80B04368 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 020FC 80B0436C 24070920 */  addiu   $a3, $zero, 0x0920         ## $a3 = 00000920
/* 02100 80B04370 0C031AD5 */  jal     Graph_CloseDisps              
/* 02104 80B04374 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 02108 80B04378 3C0980B0 */  lui     $t1, %hi(func_80B04280)    ## $t1 = 80B00000
/* 0210C 80B0437C 25294280 */  addiu   $t1, $t1, %lo(func_80B04280) ## $t1 = 80B04280
/* 02110 80B04380 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02114 80B04384 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02118 80B04388 3C0780B0 */  lui     $a3, %hi(func_80B04190)    ## $a3 = 80B00000
/* 0211C 80B0438C 24E74190 */  addiu   $a3, $a3, %lo(func_80B04190) ## $a3 = 80B04190
/* 02120 80B04390 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02124 80B04394 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02128 80B04398 0C028572 */  jal     SkelAnime_Draw
              
/* 0212C 80B0439C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 02130 80B043A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02134 80B043A4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02138 80B043A8 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 0213C 80B043AC 03E00008 */  jr      $ra                        
/* 02140 80B043B0 00000000 */  nop
/* 02144 80B043B4 00000000 */  nop
/* 02148 80B043B8 00000000 */  nop
/* 0214C 80B043BC 00000000 */  nop


glabel func_809060E8
/* 091A8 809060E8 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 091AC 809060EC AFB40048 */  sw      $s4, 0x0048($sp)           
/* 091B0 809060F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 091B4 809060F4 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 091B8 809060F8 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 091BC 809060FC AFB70054 */  sw      $s7, 0x0054($sp)           
/* 091C0 80906100 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 091C4 80906104 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 091C8 80906108 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 091CC 8090610C AFB20040 */  sw      $s2, 0x0040($sp)           
/* 091D0 80906110 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 091D4 80906114 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 091D8 80906118 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 091DC 8090611C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 091E0 80906120 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 091E4 80906124 A3A000CD */  sb      $zero, 0x00CD($sp)         
/* 091E8 80906128 0081A021 */  addu    $s4, $a0, $at              
/* 091EC 8090612C 8E911E10 */  lw      $s1, 0x1E10($s4)           ## 00001E10
/* 091F0 80906130 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 091F4 80906134 3C068091 */  lui     $a2, %hi(D_8090D9F8)       ## $a2 = 80910000
/* 091F8 80906138 AFB100C0 */  sw      $s1, 0x00C0($sp)           
/* 091FC 8090613C 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 09200 80906140 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFDC
/* 09204 80906144 24C6D9F8 */  addiu   $a2, $a2, %lo(D_8090D9F8)  ## $a2 = 8090D9F8
/* 09208 80906148 240717C6 */  addiu   $a3, $zero, 0x17C6         ## $a3 = 000017C6
/* 0920C 8090614C 0C031AB1 */  jal     Graph_OpenDisps              
/* 09210 80906150 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 09214 80906154 0C024F46 */  jal     func_80093D18              
/* 09218 80906158 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 0921C 8090615C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 09220 80906160 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 09224 80906164 3C018091 */  lui     $at, %hi(D_8090DD80)       ## $at = 80910000
/* 09228 80906168 C436DD80 */  lwc1    $f22, %lo(D_8090DD80)($at) 
/* 0922C 8090616C 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
/* 09230 80906170 922E0000 */  lbu     $t6, 0x0000($s1)           ## 00000000
.L80906174:
/* 09234 80906174 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 09238 80906178 26300004 */  addiu   $s0, $s1, 0x0004           ## $s0 = 00000004
/* 0923C 8090617C 15C10096 */  bne     $t6, $at, .L809063D8       
/* 09240 80906180 26B300E0 */  addiu   $s3, $s5, 0x00E0           ## $s3 = 000000E0
/* 09244 80906184 3C178091 */  lui     $s7, %hi(D_8090D2E8)       ## $s7 = 80910000
/* 09248 80906188 3C1E8091 */  lui     $s8, %hi(D_8090C0C8)       ## $s8 = 80910000
/* 0924C 8090618C 27DEC0C8 */  addiu   $s8, $s8, %lo(D_8090C0C8)  ## $s8 = 8090C0C8
/* 09250 80906190 26F7D2E8 */  addiu   $s7, $s7, %lo(D_8090D2E8)  ## $s7 = 8090D2E8
/* 09254 80906194 0C024F61 */  jal     func_80093D84              
/* 09258 80906198 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 0925C 8090619C 828F0A4E */  lb      $t7, 0x0A4E($s4)           ## 00000A4E
/* 09260 809061A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000004
/* 09264 809061A4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 000000E0
/* 09268 809061A8 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0926C 809061AC 27A600A0 */  addiu   $a2, $sp, 0x00A0           ## $a2 = FFFFFFD0
/* 09270 809061B0 468021A0 */  cvt.s.w $f6, $f4                   
/* 09274 809061B4 E7A600A0 */  swc1    $f6, 0x00A0($sp)           
/* 09278 809061B8 82980A4F */  lb      $t8, 0x0A4F($s4)           ## 00000A4F
/* 0927C 809061BC 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 09280 809061C0 00000000 */  nop
/* 09284 809061C4 468042A0 */  cvt.s.w $f10, $f8                  
/* 09288 809061C8 E7AA00A4 */  swc1    $f10, 0x00A4($sp)          
/* 0928C 809061CC 82990A50 */  lb      $t9, 0x0A50($s4)           ## 00000A50
/* 09290 809061D0 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 09294 809061D4 00000000 */  nop
/* 09298 809061D8 468084A0 */  cvt.s.w $f18, $f16                 
/* 0929C 809061DC E7B200A8 */  swc1    $f18, 0x00A8($sp)          
/* 092A0 809061E0 0C00BAAF */  jal     func_8002EABC              
/* 092A4 809061E4 8EA70000 */  lw      $a3, 0x0000($s5)           ## 00000000
/* 092A8 809061E8 C62C0004 */  lwc1    $f12, 0x0004($s1)          ## 00000004
/* 092AC 809061EC C62E0008 */  lwc1    $f14, 0x0008($s1)          ## 00000008
/* 092B0 809061F0 8E26000C */  lw      $a2, 0x000C($s1)           ## 0000000C
/* 092B4 809061F4 0C034261 */  jal     Matrix_Translate              
/* 092B8 809061F8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 092BC 809061FC 4406B000 */  mfc1    $a2, $f22                  
/* 092C0 80906200 4600B306 */  mov.s   $f12, $f22                 
/* 092C4 80906204 4600B386 */  mov.s   $f14, $f22                 
/* 092C8 80906208 0C0342A3 */  jal     Matrix_Scale              
/* 092CC 8090620C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 092D0 80906210 C62C0040 */  lwc1    $f12, 0x0040($s1)          ## 00000040
/* 092D4 80906214 0C034348 */  jal     Matrix_RotateY              
/* 092D8 80906218 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 092DC 8090621C C62C003C */  lwc1    $f12, 0x003C($s1)          ## 0000003C
/* 092E0 80906220 0C0342DC */  jal     Matrix_RotateX              
/* 092E4 80906224 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 092E8 80906228 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 092EC 8090622C 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 092F0 80906230 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 092F4 80906234 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 092F8 80906238 AE4802C0 */  sw      $t0, 0x02C0($s2)           ## 000002C0
/* 092FC 8090623C 3C058091 */  lui     $a1, %hi(D_8090DA0C)       ## $a1 = 80910000
/* 09300 80906240 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 09304 80906244 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 09308 80906248 24A5DA0C */  addiu   $a1, $a1, %lo(D_8090DA0C)  ## $a1 = 8090DA0C
/* 0930C 8090624C 240617E4 */  addiu   $a2, $zero, 0x17E4         ## $a2 = 000017E4
/* 09310 80906250 0C0346A2 */  jal     Matrix_NewMtx              
/* 09314 80906254 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 09318 80906258 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0931C 8090625C 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 09320 80906260 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 09324 80906264 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 09328 80906268 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0932C 8090626C AE4A02C0 */  sw      $t2, 0x02C0($s2)           ## 000002C0
/* 09330 80906270 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 09334 80906274 8E861DE4 */  lw      $a2, 0x1DE4($s4)           ## 00001DE4
/* 09338 80906278 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 0933C 8090627C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 09340 80906280 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 09344 80906284 00063023 */  subu    $a2, $zero, $a2            
/* 09348 80906288 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0934C 8090628C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09350 80906290 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 09354 80906294 0C0253A7 */  jal     Gfx_TexScroll              
/* 09358 80906298 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0935C 8090629C AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 09360 809062A0 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 09364 809062A4 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 09368 809062A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0936C 809062AC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 09370 809062B0 AE4D02C0 */  sw      $t5, 0x02C0($s2)           ## 000002C0
/* 09374 809062B4 AC570004 */  sw      $s7, 0x0004($v0)           ## 00000004
/* 09378 809062B8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0937C 809062BC 92820AE1 */  lbu     $v0, 0x0AE1($s4)           ## 00000AE1
/* 09380 809062C0 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 09384 809062C4 10410003 */  beq     $v0, $at, .L809062D4       
/* 09388 809062C8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0938C 809062CC 14410010 */  bne     $v0, $at, .L80906310       
/* 09390 809062D0 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
.L809062D4:
/* 09394 809062D4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 09398 809062D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 0939C 809062DC C6840AFC */  lwc1    $f4, 0x0AFC($s4)           ## 00000AFC
/* 093A0 809062E0 3C018091 */  lui     $at, %hi(D_8090DD84)       ## $at = 80910000
/* 093A4 809062E4 C434DD84 */  lwc1    $f20, %lo(D_8090DD84)($at) 
/* 093A8 809062E8 46062202 */  mul.s   $f8, $f4, $f6              
/* 093AC 809062EC 4600428D */  trunc.w.s $f10, $f8                  
/* 093B0 809062F0 44045000 */  mfc1    $a0, $f10                  
/* 093B4 809062F4 00000000 */  nop
/* 093B8 809062F8 00042400 */  sll     $a0, $a0, 16               
/* 093BC 809062FC 00042403 */  sra     $a0, $a0, 16               
/* 093C0 80906300 24840032 */  addiu   $a0, $a0, 0x0032           ## $a0 = 00000096
/* 093C4 80906304 00042400 */  sll     $a0, $a0, 16               
/* 093C8 80906308 10000003 */  beq     $zero, $zero, .L80906318   
/* 093CC 8090630C 00042403 */  sra     $a0, $a0, 16               
.L80906310:
/* 093D0 80906310 3C018091 */  lui     $at, %hi(D_8090DD88)       ## $at = 80910000
/* 093D4 80906314 C434DD88 */  lwc1    $f20, %lo(D_8090DD88)($at) 
.L80906318:
/* 093D8 80906318 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 093DC 8090631C 308800FF */  andi    $t0, $a0, 0x00FF           ## $t0 = 00000096
/* 093E0 80906320 3C018091 */  lui     $at, %hi(D_8090DD8C)       ## $at = 80910000
/* 093E4 80906324 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 093E8 80906328 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 093EC 8090632C AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 093F0 80906330 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 093F4 80906334 C432DD8C */  lwc1    $f18, %lo(D_8090DD8C)($at) 
/* 093F8 80906338 C6300008 */  lwc1    $f16, 0x0008($s1)          ## 00000008
/* 093FC 8090633C C626000C */  lwc1    $f6, 0x000C($s1)           ## 0000000C
/* 09400 80906340 C6240004 */  lwc1    $f4, 0x0004($s1)           ## 00000004
/* 09404 80906344 46128001 */  sub.s   $f0, $f16, $f18            
/* 09408 80906348 3C018091 */  lui     $at, %hi(D_8090DD90)       ## $at = 80910000
/* 0940C 8090634C C42EDD90 */  lwc1    $f14, %lo(D_8090DD90)($at) 
/* 09410 80906350 46183201 */  sub.s   $f8, $f6, $f24             
/* 09414 80906354 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09418 80906358 46002300 */  add.s   $f12, $f4, $f0             
/* 0941C 8090635C 46004280 */  add.s   $f10, $f8, $f0             
/* 09420 80906360 44065000 */  mfc1    $a2, $f10                  
/* 09424 80906364 0C034261 */  jal     Matrix_Translate              
/* 09428 80906368 00000000 */  nop
/* 0942C 8090636C 4600A306 */  mov.s   $f12, $f20                 
/* 09430 80906370 0C034348 */  jal     Matrix_RotateY              
/* 09434 80906374 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09438 80906378 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 0943C 8090637C 4406C000 */  mfc1    $a2, $f24                  
/* 09440 80906380 4600C306 */  mov.s   $f12, $f24                 
/* 09444 80906384 0C0342A3 */  jal     Matrix_Scale              
/* 09448 80906388 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0944C 8090638C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 09450 80906390 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 09454 80906394 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 09458 80906398 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0945C 8090639C AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 09460 809063A0 3C058091 */  lui     $a1, %hi(D_8090DA20)       ## $a1 = 80910000
/* 09464 809063A4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 09468 809063A8 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 0946C 809063AC 24A5DA20 */  addiu   $a1, $a1, %lo(D_8090DA20)  ## $a1 = 8090DA20
/* 09470 809063B0 2406180B */  addiu   $a2, $zero, 0x180B         ## $a2 = 0000180B
/* 09474 809063B4 0C0346A2 */  jal     Matrix_NewMtx              
/* 09478 809063B8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0947C 809063BC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 09480 809063C0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 09484 809063C4 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 09488 809063C8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0948C 809063CC AE4B02D0 */  sw      $t3, 0x02D0($s2)           ## 000002D0
/* 09490 809063D0 AC5E0004 */  sw      $s8, 0x0004($v0)           ## 00000004
/* 09494 809063D4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L809063D8:
/* 09498 809063D8 26D60001 */  addiu   $s6, $s6, 0x0001           ## $s6 = 00000001
/* 0949C 809063DC 0016B400 */  sll     $s6, $s6, 16               
/* 094A0 809063E0 0016B403 */  sra     $s6, $s6, 16               
/* 094A4 809063E4 5AC0FF63 */  blezl   $s6, .L80906174            
/* 094A8 809063E8 922E0000 */  lbu     $t6, 0x0000($s1)           ## 00000000
/* 094AC 809063EC 3C148091 */  lui     $s4, %hi(D_8090DA34)       ## $s4 = 80910000
/* 094B0 809063F0 8FB100C0 */  lw      $s1, 0x00C0($sp)           
/* 094B4 809063F4 2694DA34 */  addiu   $s4, $s4, %lo(D_8090DA34)  ## $s4 = 8090DA34
/* 094B8 809063F8 0000B025 */  or      $s6, $zero, $zero          ## $s6 = 00000000
.L809063FC:
/* 094BC 809063FC 922D0000 */  lbu     $t5, 0x0000($s1)           ## 00000000
/* 094C0 80906400 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 094C4 80906404 93AE00CD */  lbu     $t6, 0x00CD($sp)           
/* 094C8 80906408 15A10030 */  bne     $t5, $at, .L809064CC       
/* 094CC 8090640C 3C130600 */  lui     $s3, 0x0600                ## $s3 = 06000000
/* 094D0 80906410 15C00009 */  bne     $t6, $zero, .L80906438     
/* 094D4 80906414 26730EA0 */  addiu   $s3, $s3, 0x0EA0           ## $s3 = 06000EA0
/* 094D8 80906418 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 094DC 8090641C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 094E0 80906420 24060186 */  addiu   $a2, $zero, 0x0186         ## $a2 = 00000186
/* 094E4 80906424 0C23F442 */  jal     func_808FD108              
/* 094E8 80906428 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 094EC 8090642C 93AF00CD */  lbu     $t7, 0x00CD($sp)           
/* 094F0 80906430 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 094F4 80906434 A3B800CD */  sb      $t8, 0x00CD($sp)           
.L80906438:
/* 094F8 80906438 C62C0004 */  lwc1    $f12, 0x0004($s1)          ## 00000004
/* 094FC 8090643C C62E0008 */  lwc1    $f14, 0x0008($s1)          ## 00000008
/* 09500 80906440 8E26000C */  lw      $a2, 0x000C($s1)           ## 0000000C
/* 09504 80906444 0C034261 */  jal     Matrix_Translate              
/* 09508 80906448 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0950C 8090644C C62C0034 */  lwc1    $f12, 0x0034($s1)          ## 00000034
/* 09510 80906450 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09514 80906454 44066000 */  mfc1    $a2, $f12                  
/* 09518 80906458 0C0342A3 */  jal     Matrix_Scale              
/* 0951C 8090645C 46006386 */  mov.s   $f14, $f12                 
/* 09520 80906460 C62C0040 */  lwc1    $f12, 0x0040($s1)          ## 00000040
/* 09524 80906464 0C034348 */  jal     Matrix_RotateY              
/* 09528 80906468 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0952C 8090646C C62C003C */  lwc1    $f12, 0x003C($s1)          ## 0000003C
/* 09530 80906470 0C0342DC */  jal     Matrix_RotateX              
/* 09534 80906474 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09538 80906478 C62C0038 */  lwc1    $f12, 0x0038($s1)          ## 00000038
/* 0953C 8090647C 0C0343B5 */  jal     Matrix_RotateZ              
/* 09540 80906480 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09544 80906484 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 09548 80906488 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 0954C 8090648C 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 09550 80906490 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 09554 80906494 AE5902C0 */  sw      $t9, 0x02C0($s2)           ## 000002C0
/* 09558 80906498 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0955C 8090649C 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 09560 809064A0 02802825 */  or      $a1, $s4, $zero            ## $a1 = 8090DA34
/* 09564 809064A4 24061823 */  addiu   $a2, $zero, 0x1823         ## $a2 = 00001823
/* 09568 809064A8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0956C 809064AC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 09570 809064B0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 09574 809064B4 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 09578 809064B8 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 0957C 809064BC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 09580 809064C0 AE4902C0 */  sw      $t1, 0x02C0($s2)           ## 000002C0
/* 09584 809064C4 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 09588 809064C8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
.L809064CC:
/* 0958C 809064CC 26D60001 */  addiu   $s6, $s6, 0x0001           ## $s6 = 00000001
/* 09590 809064D0 0016B400 */  sll     $s6, $s6, 16               
/* 09594 809064D4 0016B403 */  sra     $s6, $s6, 16               
/* 09598 809064D8 2AC10064 */  slti    $at, $s6, 0x0064           
/* 0959C 809064DC 1420FFC7 */  bne     $at, $zero, .L809063FC     
/* 095A0 809064E0 26310044 */  addiu   $s1, $s1, 0x0044           ## $s1 = 00000044
/* 095A4 809064E4 3C068091 */  lui     $a2, %hi(D_8090DA48)       ## $a2 = 80910000
/* 095A8 809064E8 24C6DA48 */  addiu   $a2, $a2, %lo(D_8090DA48)  ## $a2 = 8090DA48
/* 095AC 809064EC 27A400AC */  addiu   $a0, $sp, 0x00AC           ## $a0 = FFFFFFDC
/* 095B0 809064F0 8EA50000 */  lw      $a1, 0x0000($s5)           ## 00000000
/* 095B4 809064F4 0C031AD5 */  jal     Graph_CloseDisps              
/* 095B8 809064F8 24071829 */  addiu   $a3, $zero, 0x1829         ## $a3 = 00001829
/* 095BC 809064FC 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 095C0 80906500 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 095C4 80906504 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 095C8 80906508 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 095CC 8090650C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 095D0 80906510 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 095D4 80906514 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 095D8 80906518 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 095DC 8090651C 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 095E0 80906520 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 095E4 80906524 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 095E8 80906528 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 095EC 8090652C 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 095F0 80906530 03E00008 */  jr      $ra                        
/* 095F4 80906534 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000



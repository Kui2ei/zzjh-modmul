	.file	"Mont64.cpp"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._ZStanSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStanSt13_Ios_FmtflagsS_,comdat
	.align	1
	.weak	_ZStanSt13_Ios_FmtflagsS_
	.type	_ZStanSt13_Ios_FmtflagsS_, @function
_ZStanSt13_Ios_FmtflagsS_:
.LFB2214:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2214:
	.size	_ZStanSt13_Ios_FmtflagsS_, .-_ZStanSt13_Ios_FmtflagsS_
	.section	.text._ZStorSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStorSt13_Ios_FmtflagsS_,comdat
	.align	1
	.weak	_ZStorSt13_Ios_FmtflagsS_
	.type	_ZStorSt13_Ios_FmtflagsS_, @function
_ZStorSt13_Ios_FmtflagsS_:
.LFB2215:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	or	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2215:
	.size	_ZStorSt13_Ios_FmtflagsS_, .-_ZStorSt13_Ios_FmtflagsS_
	.section	.text._ZStcoSt13_Ios_Fmtflags,"axG",@progbits,_ZStcoSt13_Ios_Fmtflags,comdat
	.align	1
	.weak	_ZStcoSt13_Ios_Fmtflags
	.type	_ZStcoSt13_Ios_Fmtflags, @function
_ZStcoSt13_Ios_Fmtflags:
.LFB2217:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	not	a5,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2217:
	.size	_ZStcoSt13_Ios_Fmtflags, .-_ZStcoSt13_Ios_Fmtflags
	.section	.text._ZStoRRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStoRRSt13_Ios_FmtflagsS_,comdat
	.align	1
	.weak	_ZStoRRSt13_Ios_FmtflagsS_
	.type	_ZStoRRSt13_Ios_FmtflagsS_, @function
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB2218:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	_ZStorSt13_Ios_FmtflagsS_
	mv	a5,a0
	mv	a4,a5
	ld	a5,-24(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2218:
	.size	_ZStoRRSt13_Ios_FmtflagsS_, .-_ZStoRRSt13_Ios_FmtflagsS_
	.section	.text._ZStaNRSt13_Ios_FmtflagsS_,"axG",@progbits,_ZStaNRSt13_Ios_FmtflagsS_,comdat
	.align	1
	.weak	_ZStaNRSt13_Ios_FmtflagsS_
	.type	_ZStaNRSt13_Ios_FmtflagsS_, @function
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB2219:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	lw	a5,0(a5)
	lw	a4,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	_ZStanSt13_Ios_FmtflagsS_
	mv	a5,a0
	mv	a4,a5
	ld	a5,-24(s0)
	sw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2219:
	.size	_ZStaNRSt13_Ios_FmtflagsS_, .-_ZStaNRSt13_Ios_FmtflagsS_
	.section	.text._ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"axG",@progbits,_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,comdat
	.align	1
	.weak	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.type	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, @function
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB2248:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	ld	a5,-40(s0)
	lw	a5,24(a5)
	sw	a5,-20(s0)
	lw	a5,-48(s0)
	mv	a0,a5
	call	_ZStcoSt13_Ios_Fmtflags
	mv	a5,a0
	mv	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,24
	mv	a1,a4
	mv	a0,a5
	call	_ZStaNRSt13_Ios_FmtflagsS_
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	_ZStanSt13_Ios_FmtflagsS_
	mv	a5,a0
	mv	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,24
	mv	a1,a4
	mv	a0,a5
	call	_ZStoRRSt13_Ios_FmtflagsS_
	lw	a5,-20(s0)
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2248:
	.size	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_, .-_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.section	.text._ZSt3hexRSt8ios_base,"axG",@progbits,_ZSt3hexRSt8ios_base,comdat
	.align	1
	.weak	_ZSt3hexRSt8ios_base
	.type	_ZSt3hexRSt8ios_base, @function
_ZSt3hexRSt8ios_base:
.LFB2276:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	li	a2,74
	li	a1,8
	ld	a0,-24(s0)
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2276:
	.size	_ZSt3hexRSt8ios_base, .-_ZSt3hexRSt8ios_base
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
	.align	3
.LC7:
	.string	"hello"
#NO_APP
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2628:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	lla	a5,.LC0
	ld	a5,0(a5)
	sd	a5,-32(s0)
	lla	a5,.LC1
	ld	a5,0(a5)
	sd	a5,-72(s0)
	lla	a5,.LC2
	ld	a5,0(a5)
	sd	a5,-64(s0)
	lla	a5,.LC3
	ld	a5,0(a5)
	sd	a5,-88(s0)
	lla	a5,.LC4
	ld	a5,0(a5)
	sd	a5,-80(s0)
	sd	zero,-120(s0)
	sd	zero,-112(s0)
	sd	zero,-104(s0)
	sd	zero,-96(s0)
	lla	a5,.LC5
	ld	a5,0(a5)
	sd	a5,-136(s0)
	lla	a5,.LC6
	ld	a5,0(a5)
	sd	a5,-128(s0)
	addi	a3,s0,-136
	addi	a2,s0,-88
	addi	a1,s0,-72
	addi	a0,s0,-120
	ld	a5,-32(s0)
	li	a4,2
	call	_Z16modular_multiplyPmPKmS1_S1_mm
	addi	a5,s0,-120
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-40(s0)
	addi	a5,a5,32
	sd	a5,-48(s0)
	j	.L16
.L17:
	ld	a5,-24(s0)
	ld	a5,0(a5)
	sd	a5,-56(s0)
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a5,a0
	ld	a1,-56(s0)
	mv	a0,a5
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	ld	a5,-24(s0)
	addi	a5,a5,8
	sd	a5,-24(s0)
.L16:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bne	a4,a5,.L17
	lla	a1,.LC7
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a4,a0
	ld	a5,-120(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a4,a0
	ld	a5,-112(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	li	a5,0
	mv	a0,a5
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2628:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC8:
	.string	"m = "
	.align	3
.LC9:
	.string	"after shift"
	.text
	.align	1
	.globl	_Z16modular_multiplyPmPKmS1_S1_mm
	.type	_Z16modular_multiplyPmPKmS1_S1_mm, @function
_Z16modular_multiplyPmPKmS1_S1_mm:
.LFB2629:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-152(s0)
	sd	a1,-160(s0)
	sd	a2,-168(s0)
	sd	a3,-176(s0)
	sd	a4,-184(s0)
	sd	a5,-192(s0)
	ld	a5,-184(s0)
	addi	a5,a5,2
	li	a4,-1
	srli	a4,a4,4
	bgtu	a5,a4,.L20
	slli	a5,a5,3
	mv	a0,a5
	call	_Znam@plt
	mv	a5,a0
	sd	a5,-80(s0)
	sd	zero,-88(s0)
	sd	zero,-24(s0)
	j	.L22
.L20:
	call	__cxa_throw_bad_array_new_length@plt
.L35:
	sd	zero,-96(s0)
	sd	zero,-32(s0)
	j	.L23
.L24:
	sd	zero,-112(s0)
	sd	zero,-120(s0)
	ld	a5,-24(s0)
	slli	a5,a5,3
	ld	a4,-160(s0)
	add	a5,a4,a5
	ld	a0,0(a5)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-168(s0)
	add	a5,a4,a5
	ld	a1,0(a5)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a2,0(a5)
	addi	a5,s0,-88
	addi	a4,s0,-112
	addi	a3,s0,-120
	call	_Z6madd64mmmRmS_S_
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a4,-112(s0)
	sd	a4,0(a5)
	ld	a0,-112(s0)
	ld	a1,-96(s0)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-96
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	ld	a5,-120(s0)
	ld	a4,-96(s0)
	addi	a3,s0,-96
	addi	a2,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	_Z5add64mmRmS_
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L23:
	ld	a4,-32(s0)
	ld	a5,-184(s0)
	bltu	a4,a5,.L24
	ld	a5,-184(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a0,0(a5)
	ld	a1,-96(s0)
	ld	a5,-184(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-96
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	ld	a0,-96(s0)
	ld	a5,-184(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a1,0(a5)
	ld	a5,-184(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-88
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	sd	zero,-40(s0)
	j	.L25
.L26:
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a3,a0
	ld	a5,-40(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L25:
	ld	a5,-184(s0)
	addi	a5,a5,2
	ld	a4,-40(s0)
	bltu	a4,a5,.L26
	sd	zero,-96(s0)
	sd	zero,-104(s0)
	ld	a5,-80(s0)
	ld	a5,0(a5)
	addi	a3,s0,-104
	addi	a4,s0,-88
	mv	a2,a4
	ld	a1,-192(s0)
	mv	a0,a5
	call	_Z5mul64mmRmS_
	lla	a1,.LC8
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a5,a0
	lla	a1,_ZSt3hexRSt8ios_base
	mv	a0,a5
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a4,a0
	ld	a5,-104(s0)
	mv	a1,a5
	mv	a0,a4
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	sd	zero,-48(s0)
	j	.L27
.L28:
	sd	zero,-128(s0)
	sd	zero,-136(s0)
	ld	a0,-104(s0)
	ld	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-176(s0)
	add	a5,a4,a5
	ld	a1,0(a5)
	ld	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a2,0(a5)
	addi	a5,s0,-88
	addi	a4,s0,-128
	addi	a3,s0,-136
	call	_Z6madd64mmmRmS_S_
	ld	a0,-128(s0)
	ld	a1,-96(s0)
	ld	a5,-48(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-96
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	ld	a5,-136(s0)
	ld	a4,-96(s0)
	addi	a3,s0,-96
	addi	a2,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	_Z5add64mmRmS_
	ld	a5,-48(s0)
	addi	a5,a5,1
	sd	a5,-48(s0)
.L27:
	ld	a4,-48(s0)
	ld	a5,-184(s0)
	bltu	a4,a5,.L28
	ld	a5,-184(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a0,0(a5)
	ld	a1,-96(s0)
	ld	a5,-184(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-96
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	ld	a0,-96(s0)
	ld	a5,-184(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a1,0(a5)
	ld	a5,-184(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	addi	a5,s0,-88
	mv	a3,a4
	mv	a2,a5
	call	_Z5add64mmRmS_
	sd	zero,-56(s0)
	j	.L29
.L30:
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a3,a0
	ld	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	ld	a5,-56(s0)
	addi	a5,a5,1
	sd	a5,-56(s0)
.L29:
	ld	a5,-184(s0)
	addi	a5,a5,2
	ld	a4,-56(s0)
	bltu	a4,a5,.L30
	sd	zero,-64(s0)
	j	.L31
.L32:
	ld	a5,-64(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a4,a4,a5
	ld	a5,-64(s0)
	slli	a5,a5,3
	ld	a3,-80(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
.L31:
	ld	a4,-64(s0)
	ld	a5,-184(s0)
	bleu	a4,a5,.L32
	lla	a1,.LC9
	la	a0,_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	sd	zero,-72(s0)
	j	.L33
.L34:
	lla	a1,_ZSt3hexRSt8ios_base
	la	a0,_ZSt4cout
	call	_ZNSolsEPFRSt8ios_baseS0_E@plt
	mv	a3,a0
	ld	a5,-72(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	_ZNSolsEm@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L33:
	ld	a5,-184(s0)
	addi	a5,a5,1
	ld	a4,-72(s0)
	bltu	a4,a5,.L34
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L22:
	ld	a4,-24(s0)
	ld	a5,-184(s0)
	bltu	a4,a5,.L35
	ld	a2,-184(s0)
	ld	a1,-176(s0)
	ld	a0,-80(s0)
	call	_Z7comparePKmS0_m
	mv	a5,a0
	not	a5,a5
	srliw	a5,a5,31
	andi	a5,a5,0xff
	beq	a5,zero,.L36
	ld	a2,-184(s0)
	ld	a1,-176(s0)
	ld	a0,-80(s0)
	call	_Z8subtractPmPKmm
.L36:
	li	a2,16
	ld	a1,-80(s0)
	ld	a0,-152(s0)
	call	memcpy@plt
	nop
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2629:
	.size	_Z16modular_multiplyPmPKmS1_S1_mm, .-_Z16modular_multiplyPmPKmS1_S1_mm
	.align	1
	.globl	_Z8subtractPmPKmm
	.type	_Z8subtractPmPKmm, @function
_Z8subtractPmPKmm:
.LFB2630:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sd	zero,-24(s0)
	sd	zero,-32(s0)
	j	.L38
.L42:
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a3,-64(s0)
	add	a5,a3,a5
	ld	a5,0(a5)
	sub	a4,a4,a5
	ld	a5,-24(s0)
	sub	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a4,-40(s0)
	bgtu	a4,a5,.L39
	ld	a5,-24(s0)
	beq	a5,zero,.L40
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a4,-40(s0)
	bltu	a4,a5,.L40
.L39:
	li	a5,1
	j	.L41
.L40:
	li	a5,0
.L41:
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L38:
	ld	a4,-32(s0)
	ld	a5,-72(s0)
	bltu	a4,a5,.L42
	nop
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2630:
	.size	_Z8subtractPmPKmm, .-_Z8subtractPmPKmm
	.align	1
	.globl	_Z7comparePKmS0_m
	.type	_Z7comparePKmS0_m, @function
_Z7comparePKmS0_m:
.LFB2631:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-56(s0)
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	sw	a5,-20(s0)
	j	.L44
.L48:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a5,0(a5)
	bgeu	a4,a5,.L45
	li	a5,-1
	j	.L46
.L45:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a5,0(a5)
	bleu	a4,a5,.L47
	li	a5,1
	j	.L46
.L47:
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sw	a5,-20(s0)
.L44:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,zero,.L48
	li	a5,0
.L46:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2631:
	.size	_Z7comparePKmS0_m, .-_Z7comparePKmS0_m
	.align	1
	.globl	_Z6madd64mmmRmS_S_
	.type	_Z6madd64mmmRmS_S_, @function
_Z6madd64mmmRmS_S_:
.LFB2632:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-120(s0)
	sd	a1,-128(s0)
	sd	a2,-136(s0)
	sd	a3,-144(s0)
	sd	a4,-152(s0)
	sd	a5,-160(s0)
	ld	a5,-120(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-24(s0)
	ld	a5,-120(s0)
	srli	a5,a5,32
	sd	a5,-32(s0)
	ld	a5,-128(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-40(s0)
	ld	a5,-128(s0)
	srli	a5,a5,32
	sd	a5,-48(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	mul	a5,a4,a5
	sd	a5,-56(s0)
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	mul	a5,a4,a5
	sd	a5,-64(s0)
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-72(s0)
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-80(s0)
	ld	a5,-56(s0)
	srli	a4,a5,32
	ld	a5,-64(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	add	a4,a4,a5
	ld	a5,-72(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	sd	a5,-88(s0)
	ld	a5,-64(s0)
	srli	a4,a5,32
	ld	a5,-80(s0)
	add	a4,a4,a5
	ld	a5,-72(s0)
	srli	a5,a5,32
	add	a4,a4,a5
	ld	a5,-88(s0)
	srli	a5,a5,32
	add	a5,a4,a5
	sd	a5,-96(s0)
	ld	a5,-88(s0)
	slli	a4,a5,32
	ld	a5,-56(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	or	a5,a4,a5
	sd	a5,-104(s0)
	ld	a4,-104(s0)
	ld	a5,-136(s0)
	add	a4,a4,a5
	ld	a5,-152(s0)
	sd	a4,0(a5)
	ld	a5,-152(s0)
	ld	a5,0(a5)
	ld	a4,-136(s0)
	bleu	a4,a5,.L50
	li	a5,1
	j	.L51
.L50:
	li	a5,0
.L51:
	ld	a4,-160(s0)
	sd	a5,0(a4)
	ld	a5,-160(s0)
	ld	a4,0(a5)
	ld	a5,-96(s0)
	add	a4,a4,a5
	ld	a5,-144(s0)
	sd	a4,0(a5)
	ld	a5,-160(s0)
	ld	a4,0(a5)
	ld	a5,-144(s0)
	ld	a5,0(a5)
	ld	a3,-96(s0)
	bleu	a3,a5,.L52
	li	a5,1
	j	.L53
.L52:
	li	a5,0
.L53:
	add	a4,a5,a4
	ld	a5,-160(s0)
	sd	a4,0(a5)
	nop
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2632:
	.size	_Z6madd64mmmRmS_S_, .-_Z6madd64mmmRmS_S_
	.align	1
	.globl	_Z5mul64mmRmS_
	.type	_Z5mul64mmRmS_, @function
_Z5mul64mmRmS_:
.LFB2633:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	sd	a2,-120(s0)
	sd	a3,-128(s0)
	ld	a5,-104(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-24(s0)
	ld	a5,-104(s0)
	srli	a5,a5,32
	sd	a5,-32(s0)
	ld	a5,-112(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-40(s0)
	ld	a5,-112(s0)
	srli	a5,a5,32
	sd	a5,-48(s0)
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	mul	a5,a4,a5
	sd	a5,-56(s0)
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	mul	a5,a4,a5
	sd	a5,-64(s0)
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-72(s0)
	ld	a4,-32(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-80(s0)
	ld	a5,-56(s0)
	srli	a4,a5,32
	ld	a5,-64(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	add	a5,a4,a5
	ld	a4,-72(s0)
	add	a5,a4,a5
	sd	a5,-88(s0)
	ld	a5,-64(s0)
	srli	a4,a5,32
	ld	a5,-80(s0)
	add	a4,a4,a5
	ld	a5,-88(s0)
	srli	a5,a5,32
	add	a4,a4,a5
	ld	a5,-120(s0)
	sd	a4,0(a5)
	ld	a5,-88(s0)
	slli	a4,a5,32
	ld	a5,-56(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	or	a4,a4,a5
	ld	a5,-128(s0)
	sd	a4,0(a5)
	nop
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2633:
	.size	_Z5mul64mmRmS_, .-_Z5mul64mmRmS_
	.align	1
	.globl	_Z5add64mmRmS_
	.type	_Z5add64mmRmS_, @function
_Z5add64mmRmS_:
.LFB2634:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	add	a4,a4,a5
	ld	a5,-48(s0)
	sd	a4,0(a5)
	ld	a5,-48(s0)
	ld	a5,0(a5)
	ld	a4,-24(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a4,a5
	ld	a5,-40(s0)
	sd	a4,0(a5)
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2634:
	.size	_Z5add64mmRmS_, .-_Z5add64mmRmS_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.align	3
.LC0:
	.dword	-6818507734401602043
	.align	3
.LC1:
	.dword	-7421744465483517116
	.align	3
.LC2:
	.dword	-7421744464338192504
	.align	3
.LC3:
	.dword	-7421744463204013381
	.align	3
.LC4:
	.dword	-7421744462333931230
	.align	3
.LC5:
	.dword	-3347566996438675149
	.align	3
.LC6:
	.dword	-9162669588566012614
	.ident	"GCC: (Debian 14.2.0-19) 14.2.0"
	.section	.note.GNU-stack,"",@progbits

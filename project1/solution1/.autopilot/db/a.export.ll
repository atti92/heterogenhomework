; ModuleID = 'D:/hetero/project1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@smpl_V = internal unnamed_addr global [128 x i18] zeroinitializer
@p_str = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@p_str2 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@fir_hw_str = internal unnamed_addr constant [7 x i8] c"fir_hw\00"
@coeff_hw_V = internal unnamed_addr constant [128 x i15] [i15 25, i15 -22, i15 -44, i15 -82, i15 -140, i15 -218, i15 -321, i15 -451, i15 -608, i15 -793, i15 -1004, i15 -1237, i15 -1487, i15 -1747, i15 -2007, i15 -2256, i15 -2484, i15 -2676, i15 -2820, i15 -2906, i15 -2921, i15 -2859, i15 -2714, i15 -2486, i15 -2177, i15 -1794, i15 -1350, i15 -861, i15 -346, i15 171, i15 667, i15 1117, i15 1495, i15 1780, i15 1955, i15 2005, i15 1924, i15 1713, i15 1378, i15 937, i15 411, i15 -170, i15 -770, i15 -1352, i15 -1874, i15 -2297, i15 -2583, i15 -2700, i15 -2621, i15 -2330, i15 -1818, i15 -1089, i15 -159, i15 948, i15 2196, i15 3540, i15 4932, i15 6315, i15 7633, i15 8832, i15 9860, i15 10674, i15 11237, i15 11525, i15 11525, i15 11237, i15 10674, i15 9860, i15 8832, i15 7633, i15 6315, i15 4932, i15 3540, i15 2196, i15 948, i15 -159, i15 -1089, i15 -1818, i15 -2330, i15 -2621, i15 -2700, i15 -2583, i15 -2297, i15 -1874, i15 -1352, i15 -770, i15 -170, i15 411, i15 937, i15 1378, i15 1713, i15 1924, i15 2005, i15 1955, i15 1780, i15 1495, i15 1117, i15 667, i15 171, i15 -346, i15 -861, i15 -1350, i15 -1794, i15 -2177, i15 -2486, i15 -2714, i15 -2859, i15 -2921, i15 -2906, i15 -2820, i15 -2676, i15 -2484, i15 -2256, i15 -2007, i15 -1747, i15 -1487, i15 -1237, i15 -1004, i15 -793, i15 -608, i15 -451, i15 -321, i15 -218, i15 -140, i15 -82, i15 -44, i15 -22, i15 25]

define void @fir_hw(i18* %input_V, i18* %res_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %input_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %res_V), !map !11
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @fir_hw_str) nounwind
  br label %0

; <label>:0                                       ; preds = %1, %.preheader.preheader
  %i = phi i7 [ 0, %.preheader.preheader ], [ %i_1, %1 ]
  %exitcond1 = icmp eq i7 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 127, i64 127, i64 127)
  %i_1 = add i7 %i, 1
  br i1 %exitcond1, label %2, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind
  %tmp = zext i7 %i to i64
  %tmp_2 = zext i7 %i_1 to i64
  %smpl_V_addr = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp_2
  %smpl_V_load = load i18* %smpl_V_addr, align 4
  %smpl_V_addr_1 = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp
  store i18 %smpl_V_load, i18* %smpl_V_addr_1, align 4
  br label %0

; <label>:2                                       ; preds = %0
  %input_V_read = call i18 @_ssdm_op_Read.ap_auto.i18P(i18* %input_V)
  store i18 %input_V_read, i18* getelementptr inbounds ([128 x i18]* @smpl_V, i64 0, i64 127), align 4
  br label %3

; <label>:3                                       ; preds = %4, %2
  %p_Val2_s = phi i39 [ 0, %2 ], [ %accu_V, %4 ]
  %i1 = phi i8 [ 0, %2 ], [ %i_2, %4 ]
  %exitcond = icmp eq i8 %i1, -128
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128)
  %i_2 = add i8 %i1, 1
  br i1 %exitcond, label %_ifconv, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str2) nounwind
  %tmp_1 = zext i8 %i1 to i64
  %coeff_hw_V_addr = getelementptr [128 x i15]* @coeff_hw_V, i64 0, i64 %tmp_1
  %coeff_hw_V_load = load i15* %coeff_hw_V_addr, align 2
  %OP1_V_cast_cast = sext i15 %coeff_hw_V_load to i33
  %smpl_V_addr_2 = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp_1
  %smpl_V_load_1 = load i18* %smpl_V_addr_2, align 4
  %OP2_V_cast_cast = sext i18 %smpl_V_load_1 to i33
  %r_V = mul i33 %OP2_V_cast_cast, %OP1_V_cast_cast
  %tmp_9_cast = sext i33 %r_V to i39
  %accu_V = add i39 %p_Val2_s, %tmp_9_cast
  br label %3

_ifconv:                                          ; preds = %3
  %signbit = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 38)
  %p_Val2_1 = call i18 @_ssdm_op_PartSelect.i18.i39.i32.i32(i39 %p_Val2_s, i32 17, i32 34)
  %qbit = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 16)
  %tmp_14 = trunc i39 %p_Val2_s to i16
  %r = icmp ne i16 %tmp_14, 0
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 34)
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 17)
  %r_i_i = or i1 %tmp_16, %r
  %qb_assign_1 = and i1 %r_i_i, %qbit
  %tmp_s = zext i1 %qb_assign_1 to i18
  %p_Val2_2 = add i18 %p_Val2_1, %tmp_s
  %newsignbit = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %p_Val2_2, i32 17)
  %tmp_6 = xor i1 %newsignbit, true
  %carry = and i1 %tmp_15, %tmp_6
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 35)
  %tmp_9 = call i3 @_ssdm_op_PartSelect.i3.i39.i32.i32(i39 %p_Val2_s, i32 36, i32 38)
  %Range2_all_ones = icmp eq i3 %tmp_9, -1
  %tmp_4 = call i4 @_ssdm_op_PartSelect.i4.i39.i32.i32(i39 %p_Val2_s, i32 35, i32 38)
  %Range1_all_ones = icmp eq i4 %tmp_4, -1
  %Range1_all_zeros = icmp eq i4 %tmp_4, 0
  %deleted_zeros = select i1 %carry, i1 %Range1_all_ones, i1 %Range1_all_zeros
  %tmp_7 = xor i1 %tmp_18, true
  %p_41_i = and i1 %Range2_all_ones, %tmp_7
  %deleted_ones = select i1 %carry, i1 %p_41_i, i1 %Range1_all_ones
  %p_38_i = and i1 %carry, %Range1_all_ones
  %tmp_8 = xor i1 %p_38_i, true
  %p_not_i = xor i1 %deleted_zeros, true
  %brmerge_i = or i1 %newsignbit, %p_not_i
  %tmp_3 = xor i1 %signbit, true
  %overflow = and i1 %brmerge_i, %tmp_3
  %brmerge40_demorgan_i = and i1 %newsignbit, %deleted_ones
  %brmerge40_i = xor i1 %brmerge40_demorgan_i, true
  %tmp_19 = trunc i18 %p_Val2_2 to i17
  %tmp_5 = icmp eq i17 %tmp_19, 0
  %tmp_10 = or i1 %tmp_5, %brmerge40_i
  %tmp2 = and i1 %tmp_10, %tmp_8
  %underflow = and i1 %tmp2, %signbit
  %brmerge_i_i = or i1 %underflow, %overflow
  %underflow_2_not = xor i1 %underflow, true
  %brmerge = or i1 %overflow, %underflow_2_not
  %p_Val2_5_mux = select i1 %brmerge_i_i, i18 131071, i18 %p_Val2_2
  %p_Val2_5 = select i1 %underflow, i18 -131071, i18 %p_Val2_2
  %tmp_11 = select i1 %brmerge, i18 %p_Val2_5_mux, i18 %p_Val2_5
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %res_V, i18 %tmp_11)
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i4 @_ssdm_op_PartSelect.i4.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_5 = trunc i39 %empty to i4
  ret i4 %empty_5
}

define weak i3 @_ssdm_op_PartSelect.i3.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_6 = trunc i39 %empty to i3
  ret i3 %empty_6
}

define weak i18 @_ssdm_op_PartSelect.i18.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2)
  %empty_7 = trunc i39 %empty to i18
  ret i18 %empty_7
}

define weak i18 @_ssdm_op_Read.ap_auto.i18P(i18*) {
entry:
  %empty = load i18* %0
  ret i18 %empty
}

define weak void @_ssdm_op_Write.ap_auto.i18P(i18*, i18) {
entry:
  store i18 %1, i18* %0
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i39.i32(i39, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i39
  %empty_8 = shl i39 1, %empty
  %empty_9 = and i39 %0, %empty_8
  %empty_10 = icmp ne i39 %empty_9, 0
  ret i1 %empty_10
}

define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18
  %empty_11 = shl i18 1, %empty
  %empty_12 = and i18 %0, %empty_11
  %empty_13 = icmp ne i18 %empty_12, 0
  ret i1 %empty_13
}

declare i39 @llvm.part.select.i39(i39, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i18.i32.i32(i18, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i39.i32.i32(i39, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 17, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input.V", metadata !5, metadata !"int18", i32 0, i32 17}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 17, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"res.V", metadata !5, metadata !"int18", i32 0, i32 17}

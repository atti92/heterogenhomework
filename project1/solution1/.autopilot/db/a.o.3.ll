; ModuleID = 'D:/hetero/project1/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@smpl_V = internal unnamed_addr global [128 x i18] zeroinitializer ; [#uses=4 type=[128 x i18]*]
@p_str = private unnamed_addr constant [6 x i8] c"shift\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [4 x i8] c"mac\00", align 1 ; [#uses=1 type=[4 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@fir_hw_str = internal unnamed_addr constant [7 x i8] c"fir_hw\00" ; [#uses=1 type=[7 x i8]*]
@coeff_hw_V = internal unnamed_addr constant [128 x i15] [i15 25, i15 -22, i15 -44, i15 -82, i15 -140, i15 -218, i15 -321, i15 -451, i15 -608, i15 -793, i15 -1004, i15 -1237, i15 -1487, i15 -1747, i15 -2007, i15 -2256, i15 -2484, i15 -2676, i15 -2820, i15 -2906, i15 -2921, i15 -2859, i15 -2714, i15 -2486, i15 -2177, i15 -1794, i15 -1350, i15 -861, i15 -346, i15 171, i15 667, i15 1117, i15 1495, i15 1780, i15 1955, i15 2005, i15 1924, i15 1713, i15 1378, i15 937, i15 411, i15 -170, i15 -770, i15 -1352, i15 -1874, i15 -2297, i15 -2583, i15 -2700, i15 -2621, i15 -2330, i15 -1818, i15 -1089, i15 -159, i15 948, i15 2196, i15 3540, i15 4932, i15 6315, i15 7633, i15 8832, i15 9860, i15 10674, i15 11237, i15 11525, i15 11525, i15 11237, i15 10674, i15 9860, i15 8832, i15 7633, i15 6315, i15 4932, i15 3540, i15 2196, i15 948, i15 -159, i15 -1089, i15 -1818, i15 -2330, i15 -2621, i15 -2700, i15 -2583, i15 -2297, i15 -1874, i15 -1352, i15 -770, i15 -170, i15 411, i15 937, i15 1378, i15 1713, i15 1924, i15 2005, i15 1955, i15 1780, i15 1495, i15 1117, i15 667, i15 171, i15 -346, i15 -861, i15 -1350, i15 -1794, i15 -2177, i15 -2486, i15 -2714, i15 -2859, i15 -2921, i15 -2906, i15 -2820, i15 -2676, i15 -2484, i15 -2256, i15 -2007, i15 -1747, i15 -1487, i15 -1237, i15 -1004, i15 -793, i15 -608, i15 -451, i15 -321, i15 -218, i15 -140, i15 -82, i15 -44, i15 -22, i15 25] ; [#uses=1 type=[128 x i15]*]

; [#uses=0]
define void @fir_hw(i18* %input_V, i18* %res_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %input_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %res_V), !map !11
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @fir_hw_str) nounwind
  call void @llvm.dbg.value(metadata !{i18* %input_V}, i64 0, metadata !15), !dbg !2125 ; [debug line = 12:20] [debug variable = input.V]
  call void @llvm.dbg.value(metadata !{i18* %res_V}, i64 0, metadata !2126), !dbg !2132 ; [debug line = 12:35] [debug variable = res.V]
  br label %0, !dbg !2133                         ; [debug line = 20:20]

; <label>:0                                       ; preds = %1, %.preheader.preheader
  %i = phi i7 [ 0, %.preheader.preheader ], [ %i_1, %1 ] ; [#uses=3 type=i7]
  %exitcond1 = icmp eq i7 %i, -1, !dbg !2133      ; [#uses=1 type=i1] [debug line = 20:20]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 127, i64 127, i64 127) ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !2136                 ; [#uses=2 type=i7] [debug line = 22:2]
  br i1 %exitcond1, label %2, label %1, !dbg !2133 ; [debug line = 20:20]

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind, !dbg !2138 ; [debug line = 21:2]
  %tmp = zext i7 %i to i64, !dbg !2136            ; [#uses=1 type=i64] [debug line = 22:2]
  %tmp_2 = zext i7 %i_1 to i64, !dbg !2136        ; [#uses=1 type=i64] [debug line = 22:2]
  %smpl_V_addr = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp_2, !dbg !2139 ; [#uses=1 type=i18*] [debug line = 382:9@22:2]
  %smpl_V_load = load i18* %smpl_V_addr, align 4, !dbg !2139 ; [#uses=1 type=i18] [debug line = 382:9@22:2]
  %smpl_V_addr_1 = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp, !dbg !2139 ; [#uses=1 type=i18*] [debug line = 382:9@22:2]
  store i18 %smpl_V_load, i18* %smpl_V_addr_1, align 4, !dbg !2139 ; [debug line = 382:9@22:2]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !2142), !dbg !2143 ; [debug line = 20:34] [debug variable = i]
  br label %0, !dbg !2143                         ; [debug line = 20:34]

; <label>:2                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i18* %input_V}, i64 0, metadata !2144), !dbg !2147 ; [debug line = 381:49@26:1] [debug variable = op.V]
  %input_V_read = call i18 @_ssdm_op_Read.ap_auto.i18P(i18* %input_V), !dbg !2149 ; [#uses=1 type=i18] [debug line = 382:9@26:1]
  store i18 %input_V_read, i18* getelementptr inbounds ([128 x i18]* @smpl_V, i64 0, i64 127), align 4, !dbg !2149 ; [debug line = 382:9@26:1]
  br label %3, !dbg !2150                         ; [debug line = 28:19]

; <label>:3                                       ; preds = %4, %2
  %p_Val2_s = phi i39 [ 0, %2 ], [ %accu_V, %4 ]  ; [#uses=10 type=i39]
  %i1 = phi i8 [ 0, %2 ], [ %i_2, %4 ]            ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i1, -128, !dbg !2150    ; [#uses=1 type=i1] [debug line = 28:19]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) ; [#uses=0 type=i32]
  %i_2 = add i8 %i1, 1, !dbg !2152                ; [#uses=1 type=i8] [debug line = 28:28]
  br i1 %exitcond, label %_ifconv, label %4, !dbg !2150 ; [debug line = 28:19]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str2) nounwind, !dbg !2153 ; [debug line = 28:33]
  %tmp_1 = zext i8 %i1 to i64, !dbg !2155         ; [#uses=2 type=i64] [debug line = 30:6]
  %coeff_hw_V_addr = getelementptr [128 x i15]* @coeff_hw_V, i64 0, i64 %tmp_1, !dbg !2156 ; [#uses=1 type=i15*] [debug line = 1293:9@30:6]
  %coeff_hw_V_load = load i15* %coeff_hw_V_addr, align 2, !dbg !2156 ; [#uses=1 type=i15] [debug line = 1293:9@30:6]
  %OP1_V_cast_cast = sext i15 %coeff_hw_V_load to i33, !dbg !2409 ; [#uses=1 type=i33] [debug line = 1295:9@30:6]
  %smpl_V_addr_2 = getelementptr [128 x i18]* @smpl_V, i64 0, i64 %tmp_1, !dbg !2409 ; [#uses=1 type=i18*] [debug line = 1295:9@30:6]
  %smpl_V_load_1 = load i18* %smpl_V_addr_2, align 4, !dbg !2409 ; [#uses=1 type=i18] [debug line = 1295:9@30:6]
  %OP2_V_cast_cast = sext i18 %smpl_V_load_1 to i33, !dbg !2410 ; [#uses=1 type=i33] [debug line = 1296:9@30:6]
  %r_V = mul i33 %OP2_V_cast_cast, %OP1_V_cast_cast, !dbg !2410 ; [#uses=1 type=i33] [debug line = 1296:9@30:6]
  call void @llvm.dbg.value(metadata !{i33 %r_V}, i64 0, metadata !2411), !dbg !2410 ; [debug line = 1296:9@30:6] [debug variable = r.V]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2418) nounwind, !dbg !2436 ; [debug line = 673:0@771:5@1329:0@1347:243@31:2] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i33 %r_V}, i64 0, metadata !2437) nounwind, !dbg !2443 ; [debug line = 673:0@771:5@1329:0@1347:243@31:2] [debug variable = __Val2__]
  %tmp_9_cast = sext i33 %r_V to i39, !dbg !2444  ; [#uses=1 type=i39] [debug line = 677:13@771:5@1347:243@31:2]
  %accu_V = add i39 %p_Val2_s, %tmp_9_cast, !dbg !2444 ; [#uses=1 type=i39] [debug line = 677:13@771:5@1347:243@31:2]
  call void @llvm.dbg.value(metadata !{i39 %accu_V}, i64 0, metadata !2451), !dbg !2460 ; [debug line = 998:9@1347:243@31:2] [debug variable = accu.V]
  call void @llvm.dbg.value(metadata !{i8 %i_2}, i64 0, metadata !2463), !dbg !2152 ; [debug line = 28:28] [debug variable = i]
  br label %3, !dbg !2152                         ; [debug line = 28:28]

_ifconv:                                          ; preds = %3
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2464) nounwind, !dbg !2475 ; [debug line = 673:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %signbit = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 38), !dbg !2475 ; [#uses=2 type=i1] [debug line = 673:0@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %signbit}, i64 0, metadata !2476) nounwind, !dbg !2475 ; [debug line = 673:0@296:62@296:63@33:1] [debug variable = signbit]
  call void @llvm.dbg.value(metadata !{i1 %signbit}, i64 0, metadata !2477) nounwind, !dbg !2478 ; [debug line = 675:14@296:62@296:63@33:1] [debug variable = isneg]
  %p_Val2_1 = call i18 @_ssdm_op_PartSelect.i18.i39.i32.i32(i39 %p_Val2_s, i32 17, i32 34), !dbg !2479 ; [#uses=1 type=i18] [debug line = 680:17@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2481) nounwind, !dbg !2484 ; [debug line = 687:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %qbit = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 16), !dbg !2484 ; [#uses=1 type=i1] [debug line = 687:0@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %qbit}, i64 0, metadata !2485) nounwind, !dbg !2484 ; [debug line = 687:0@296:62@296:63@33:1] [debug variable = qbit]
  call void @llvm.dbg.value(metadata !{i1 %qbit}, i64 0, metadata !2486) nounwind, !dbg !2487 ; [debug line = 689:73@296:62@296:63@33:1] [debug variable = qb]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2488) nounwind, !dbg !2490 ; [debug line = 692:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_14 = trunc i39 %p_Val2_s to i16, !dbg !2490 ; [#uses=1 type=i16] [debug line = 692:0@296:62@296:63@33:1]
  %r = icmp ne i16 %tmp_14, 0, !dbg !2490         ; [#uses=1 type=i1] [debug line = 692:0@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %r}, i64 0, metadata !2491) nounwind, !dbg !2490 ; [debug line = 692:0@296:62@296:63@33:1] [debug variable = r]
  call void @llvm.dbg.value(metadata !{i1 %qbit}, i64 0, metadata !2492) nounwind, !dbg !2495 ; [debug line = 593:61@695:25@296:62@296:63@33:1] [debug variable = qb]
  call void @llvm.dbg.value(metadata !{i1 %r}, i64 0, metadata !2496) nounwind, !dbg !2497 ; [debug line = 593:70@695:25@296:62@296:63@33:1] [debug variable = r]
  call void @llvm.dbg.value(metadata !{i1 %signbit}, i64 0, metadata !2498) nounwind, !dbg !2499 ; [debug line = 593:78@695:25@296:62@296:63@33:1] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i18 %p_Val2_1}, i64 0, metadata !2500) nounwind, !dbg !2503 ; [debug line = 597:95@695:25@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 34), !dbg !2504 ; [#uses=1 type=i1] [debug line = 597:97@695:25@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i18 %p_Val2_1}, i64 0, metadata !2505) nounwind, !dbg !2507 ; [debug line = 607:88@695:25@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 17), !dbg !2508 ; [#uses=1 type=i1] [debug line = 607:90@695:25@296:62@296:63@33:1]
  %r_i_i = or i1 %tmp_16, %r, !dbg !2509          ; [#uses=1 type=i1] [debug line = 607:189@695:25@296:62@296:63@33:1]
  %qb_assign_1 = and i1 %r_i_i, %qbit, !dbg !2509 ; [#uses=1 type=i1] [debug line = 607:189@695:25@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %qb_assign_1}, i64 0, metadata !2492) nounwind, !dbg !2509 ; [debug line = 607:189@695:25@296:62@296:63@33:1] [debug variable = qb]
  %tmp_s = zext i1 %qb_assign_1 to i18, !dbg !2510 ; [#uses=1 type=i18] [debug line = 610:9@695:25@296:62@296:63@33:1]
  %p_Val2_2 = add i18 %p_Val2_1, %tmp_s, !dbg !2510 ; [#uses=4 type=i18] [debug line = 610:9@695:25@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i18 %p_Val2_2}, i64 0, metadata !2511) nounwind, !dbg !2513 ; [debug line = 612:100@695:25@296:62@296:63@33:1] [debug variable = __Val2__]
  %newsignbit = call i1 @_ssdm_op_BitSelect.i1.i18.i32(i18 %p_Val2_2, i32 17), !dbg !2514 ; [#uses=3 type=i1] [debug line = 612:102@695:25@296:62@296:63@33:1]
  %tmp_6 = xor i1 %newsignbit, true, !dbg !2515   ; [#uses=1 type=i1] [debug line = 612:213@695:25@296:62@296:63@33:1]
  %carry = and i1 %tmp_15, %tmp_6, !dbg !2494     ; [#uses=3 type=i1] [debug line = 695:25@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %carry}, i64 0, metadata !2516) nounwind, !dbg !2494 ; [debug line = 695:25@296:62@296:63@33:1] [debug variable = carry]
  call void @llvm.dbg.value(metadata !{i1 %signbit}, i64 0, metadata !2517) nounwind, !dbg !2519 ; [debug line = 712:33@296:62@296:63@33:1] [debug variable = neg_src]
  call void @llvm.dbg.value(metadata !{i18 %p_Val2_2}, i64 0, metadata !2520) nounwind, !dbg !2522 ; [debug line = 715:100@296:62@296:63@33:1] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i1 %newsignbit}, i64 0, metadata !2523) nounwind, !dbg !2524 ; [debug line = 715:213@296:62@296:63@33:1] [debug variable = newsignbit]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2525) nounwind, !dbg !2527 ; [debug line = 719:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i39.i32(i39 %p_Val2_s, i32 35), !dbg !2527 ; [#uses=1 type=i1] [debug line = 719:0@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2528) nounwind, !dbg !2532 ; [debug line = 733:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_9 = call i3 @_ssdm_op_PartSelect.i3.i39.i32.i32(i39 %p_Val2_s, i32 36, i32 38), !dbg !2532 ; [#uses=1 type=i3] [debug line = 733:0@296:62@296:63@33:1]
  %Range2_all_ones = icmp eq i3 %tmp_9, -1, !dbg !2533 ; [#uses=1 type=i1] [debug line = 1975:9@736:50@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %Range2_all_ones}, i64 0, metadata !2782) nounwind, !dbg !2781 ; [debug line = 736:50@296:62@296:63@33:1] [debug variable = Range2_all_ones]
  call void @llvm.dbg.value(metadata !{i39 %p_Val2_s}, i64 0, metadata !2783) nounwind, !dbg !2786 ; [debug line = 741:0@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_4 = call i4 @_ssdm_op_PartSelect.i4.i39.i32.i32(i39 %p_Val2_s, i32 35, i32 38), !dbg !2786 ; [#uses=2 type=i4] [debug line = 741:0@296:62@296:63@33:1]
  %Range1_all_ones = icmp eq i4 %tmp_4, -1, !dbg !2787 ; [#uses=3 type=i1] [debug line = 1975:9@745:50@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %Range1_all_ones}, i64 0, metadata !2789) nounwind, !dbg !2788 ; [debug line = 745:50@296:62@296:63@33:1] [debug variable = Range1_all_ones]
  %Range1_all_zeros = icmp eq i4 %tmp_4, 0, !dbg !2790 ; [#uses=1 type=i1] [debug line = 746:21@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %Range1_all_zeros}, i64 0, metadata !2791) nounwind, !dbg !2790 ; [debug line = 746:21@296:62@296:63@33:1] [debug variable = Range1_all_zeros]
  %deleted_zeros = select i1 %carry, i1 %Range1_all_ones, i1 %Range1_all_zeros, !dbg !2792 ; [#uses=1 type=i1] [debug line = 756:17@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %deleted_zeros}, i64 0, metadata !2793) nounwind, !dbg !2794 ; [debug line = 710:18@296:62@296:63@33:1] [debug variable = deleted_zeros]
  %tmp_7 = xor i1 %tmp_18, true, !dbg !2795       ; [#uses=1 type=i1] [debug line = 757:17@296:62@296:63@33:1]
  %p_41_i = and i1 %Range2_all_ones, %tmp_7, !dbg !2795 ; [#uses=1 type=i1] [debug line = 757:17@296:62@296:63@33:1]
  %deleted_ones = select i1 %carry, i1 %p_41_i, i1 %Range1_all_ones, !dbg !2796 ; [#uses=1 type=i1] [debug line = 711:18@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %deleted_ones}, i64 0, metadata !2797) nounwind, !dbg !2796 ; [debug line = 711:18@296:62@296:63@33:1] [debug variable = deleted_ones]
  %p_38_i = and i1 %carry, %Range1_all_ones, !dbg !2798 ; [#uses=1 type=i1] [debug line = 759:17@296:62@296:63@33:1]
  %tmp_8 = xor i1 %p_38_i, true                   ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %newsignbit}, i64 0, metadata !2799) nounwind, !dbg !2800 ; [debug line = 762:47@296:62@296:63@33:1] [debug variable = neg_trg]
  %p_not_i = xor i1 %deleted_zeros, true, !dbg !2801 ; [#uses=1 type=i1] [debug line = 763:66@296:62@296:63@33:1]
  %brmerge_i = or i1 %newsignbit, %p_not_i, !dbg !2801 ; [#uses=1 type=i1] [debug line = 763:66@296:62@296:63@33:1]
  %tmp_3 = xor i1 %signbit, true, !dbg !2801      ; [#uses=1 type=i1] [debug line = 763:66@296:62@296:63@33:1]
  %overflow = and i1 %brmerge_i, %tmp_3, !dbg !2801 ; [#uses=2 type=i1] [debug line = 763:66@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i1 %overflow}, i64 0, metadata !2802) nounwind, !dbg !2803 ; [debug line = 763:18@296:62@296:63@33:1] [debug variable = overflow]
  %brmerge40_demorgan_i = and i1 %newsignbit, %deleted_ones, !dbg !2804 ; [#uses=1 type=i1] [debug line = 764:68@296:62@296:63@33:1]
  %brmerge40_i = xor i1 %brmerge40_demorgan_i, true, !dbg !2804 ; [#uses=1 type=i1] [debug line = 764:68@296:62@296:63@33:1]
  call void @llvm.dbg.value(metadata !{i18 %p_Val2_2}, i64 0, metadata !2805) nounwind, !dbg !2807 ; [debug line = 767:88@296:62@296:63@33:1] [debug variable = __Val2__]
  %tmp_19 = trunc i18 %p_Val2_2 to i17, !dbg !2808 ; [#uses=1 type=i17] [debug line = 767:90@296:62@296:63@33:1]
  %tmp_5 = icmp eq i17 %tmp_19, 0, !dbg !2809     ; [#uses=1 type=i1] [debug line = 767:185@296:62@296:63@33:1]
  %tmp_10 = or i1 %tmp_5, %brmerge40_i            ; [#uses=1 type=i1]
  %tmp2 = and i1 %tmp_10, %tmp_8                  ; [#uses=1 type=i1]
  %underflow = and i1 %tmp2, %signbit             ; [#uses=3 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %underflow}, i64 0, metadata !2810) nounwind, !dbg !2811 ; [debug line = 764:18@296:62@296:63@33:1] [debug variable = underflow]
  call void @llvm.dbg.value(metadata !{i1 %underflow}, i64 0, metadata !2812) nounwind, !dbg !2815 ; [debug line = 520:57@769:13@296:62@296:63@33:1] [debug variable = underflow]
  call void @llvm.dbg.value(metadata !{i1 %overflow}, i64 0, metadata !2816) nounwind, !dbg !2817 ; [debug line = 520:73@769:13@296:62@296:63@33:1] [debug variable = overflow]
  %brmerge_i_i = or i1 %underflow, %overflow, !dbg !2818 ; [#uses=1 type=i1] [debug line = 525:9@769:13@296:62@296:63@33:1]
  %underflow_2_not = xor i1 %underflow, true, !dbg !2818 ; [#uses=1 type=i1] [debug line = 525:9@769:13@296:62@296:63@33:1]
  %brmerge = or i1 %overflow, %underflow_2_not, !dbg !2818 ; [#uses=1 type=i1] [debug line = 525:9@769:13@296:62@296:63@33:1]
  %p_Val2_5_mux = select i1 %brmerge_i_i, i18 131071, i18 %p_Val2_2, !dbg !2818 ; [#uses=1 type=i18] [debug line = 525:9@769:13@296:62@296:63@33:1]
  %p_Val2_5 = select i1 %underflow, i18 -131071, i18 %p_Val2_2, !dbg !2820 ; [#uses=1 type=i18] [debug line = 577:24@769:13@296:62@296:63@33:1]
  %tmp_11 = select i1 %brmerge, i18 %p_Val2_5_mux, i18 %p_Val2_5 ; [#uses=1 type=i18]
  call void @llvm.dbg.value(metadata !{i18* %res_V}, i64 0, metadata !2823), !dbg !2827 ; [debug line = 380:53@33:1] [debug variable = ssdm_int<18 + 1024 * 0, true>.V]
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %res_V, i18 %tmp_11), !dbg !2828 ; [debug line = 382:9@33:1]
  ret void, !dbg !2830                            ; [debug line = 34:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_5 = trunc i39 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_5
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_6 = trunc i39 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_6
}

; [#uses=1]
define weak i18 @_ssdm_op_PartSelect.i18.i39.i32.i32(i39, i32, i32) nounwind readnone {
entry:
  %empty = call i39 @llvm.part.select.i39(i39 %0, i32 %1, i32 %2) ; [#uses=1 type=i39]
  %empty_7 = trunc i39 %empty to i18              ; [#uses=1 type=i18]
  ret i18 %empty_7
}

; [#uses=1]
define weak i18 @_ssdm_op_Read.ap_auto.i18P(i18*) {
entry:
  %empty = load i18* %0                           ; [#uses=1 type=i18]
  ret i18 %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i18P(i18*, i18) {
entry:
  store i18 %1, i18* %0
  ret void
}

; [#uses=5]
define weak i1 @_ssdm_op_BitSelect.i1.i39.i32(i39, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i39                     ; [#uses=1 type=i39]
  %empty_8 = shl i39 1, %empty                    ; [#uses=1 type=i39]
  %empty_9 = and i39 %0, %empty_8                 ; [#uses=1 type=i39]
  %empty_10 = icmp ne i39 %empty_9, 0             ; [#uses=1 type=i1]
  ret i1 %empty_10
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i18.i32(i18, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i18                    ; [#uses=1 type=i18]
  %empty_11 = shl i18 1, %empty                   ; [#uses=1 type=i18]
  %empty_12 = and i18 %0, %empty_11               ; [#uses=1 type=i18]
  %empty_13 = icmp ne i18 %empty_12, 0            ; [#uses=1 type=i1]
  ret i1 %empty_13
}

; [#uses=3]
declare i39 @llvm.part.select.i39(i39, i32, i32) nounwind readnone

; [#uses=0]
declare i17 @_ssdm_op_PartSelect.i17.i18.i32.i32(i18, i32, i32) nounwind readnone

; [#uses=0]
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
!15 = metadata !{i32 790531, metadata !16, metadata !"input.V", null, i32 12, metadata !2118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!16 = metadata !{i32 786689, metadata !17, metadata !"input", metadata !18, i32 16777228, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"fir_hw", metadata !"fir_hw", metadata !"_Z6fir_hwP8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEPS_ILi18ELi1ELS0_4ELS1_2ELi0EE", metadata !18, i32 12, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !40, i32 13} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"_src/fir_hw.cpp", metadata !"d:/hetero", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !649}
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786454, null, metadata !"din_t", metadata !18, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 786434, null, metadata !"ap_fixed<18, 1, 6, 3, 0>", metadata !24, i32 287, i64 32, i64 32, i32 0, i32 0, null, metadata !25, i32 0, null, metadata !648} ; [ DW_TAG_class_type ]
!24 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.2/common/technology/autopilot\5Cap_int.h", metadata !"d:/hetero", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !586, metadata !590, metadata !593, metadata !596, metadata !599, metadata !602, metadata !605, metadata !608, metadata !611, metadata !614, metadata !617, metadata !620, metadata !623, metadata !626, metadata !629, metadata !632, metadata !635, metadata !641, metadata !642, metadata !647}
!26 = metadata !{i32 786460, metadata !23, null, metadata !24, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_inheritance ]
!27 = metadata !{i32 786434, null, metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !28, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !29, i32 0, null, metadata !584} ; [ DW_TAG_class_type ]
!28 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.2/common/technology/autopilot/ap_fixed_syn.h", metadata !"d:/hetero", null} ; [ DW_TAG_file_type ]
!29 = metadata !{metadata !30, metadata !52, metadata !56, metadata !59, metadata !62, metadata !91, metadata !92, metadata !95, metadata !99, metadata !103, metadata !107, metadata !111, metadata !115, metadata !118, metadata !122, metadata !126, metadata !130, metadata !135, metadata !140, metadata !145, metadata !148, metadata !153, metadata !157, metadata !160, metadata !163, metadata !166, metadata !170, metadata !171, metadata !176, metadata !177, metadata !180, metadata !183, metadata !187, metadata !190, metadata !193, metadata !196, metadata !199, metadata !202, metadata !205, metadata !206, metadata !207, metadata !210, metadata !213, metadata !216, metadata !219, metadata !222, metadata !223, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !237, metadata !240, metadata !243, metadata !244, metadata !247, metadata !248, metadata !251, metadata !255, metadata !256, metadata !259, metadata !513, metadata !516, metadata !519, metadata !520, metadata !521, metadata !524, metadata !527, metadata !528, metadata !529, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !541, metadata !544, metadata !545, metadata !546, metadata !549, metadata !552, metadata !556, metadata !557, metadata !560, metadata !561, metadata !564, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !574, metadata !577, metadata !578, metadata !581}
!30 = metadata !{i32 786460, metadata !27, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_inheritance ]
!31 = metadata !{i32 786434, null, metadata !"ssdm_int<18 + 1024 * 0, true>", metadata !32, i32 20, i64 32, i64 32, i32 0, i32 0, null, metadata !33, i32 0, null, metadata !47} ; [ DW_TAG_class_type ]
!32 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"d:/hetero", null} ; [ DW_TAG_file_type ]
!33 = metadata !{metadata !34, metadata !36, metadata !42}
!34 = metadata !{i32 786445, metadata !31, metadata !"V", metadata !32, i32 20, i64 18, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 786468, null, metadata !"int18", null, i32 0, i64 18, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 20, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 20} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !39}
!39 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !31} ; [ DW_TAG_pointer_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 20, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 20} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !39, metadata !45}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 18, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!49 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !51, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!51 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786478, i32 0, metadata !27, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55, metadata !51, metadata !51, metadata !51, metadata !51}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !27} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !27, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{metadata !51, metadata !55, metadata !51, metadata !51, metadata !51}
!59 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !55}
!62 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !"", metadata !28, i32 661, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !67, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !55, metadata !65}
!65 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_reference_type ]
!66 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !82, metadata !90}
!68 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !49, i64 18, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!69 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !49, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!70 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !51, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!71 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !72, i64 6, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!72 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !73, i32 655, i64 3, i64 4, i32 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!73 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.2/common/technology/autopilot/ap_int_syn.h", metadata !"d:/hetero", null} ; [ DW_TAG_file_type ]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!75 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!76 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!77 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!78 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!79 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!80 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!81 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!82 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !83, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!83 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !73, i32 665, i64 3, i64 4, i32 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!85 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!86 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!87 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!88 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!89 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!90 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !49, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!91 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !"", metadata !28, i32 775, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !67, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !55, metadata !51}
!95 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !55, metadata !98}
!98 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!99 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !55, metadata !102}
!102 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !55, metadata !106}
!106 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!107 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{null, metadata !55, metadata !110}
!110 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!111 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !55, metadata !114}
!114 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!115 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{null, metadata !55, metadata !49}
!118 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{null, metadata !55, metadata !121}
!121 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!122 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !55, metadata !125}
!125 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!126 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !55, metadata !129}
!129 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!130 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{null, metadata !55, metadata !133}
!133 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !28, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !134} ; [ DW_TAG_typedef ]
!134 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !55, metadata !138}
!138 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !28, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!140 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{null, metadata !55, metadata !143}
!143 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!144 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_const_type ]
!145 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !55, metadata !143, metadata !102}
!148 = metadata !{i32 786478, i32 0, metadata !27, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !139, metadata !151, metadata !152}
!151 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !66} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 786478, i32 0, metadata !27, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !121, metadata !151, metadata !156}
!156 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!157 = metadata !{i32 786478, i32 0, metadata !27, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !152, metadata !151, metadata !139}
!160 = metadata !{i32 786478, i32 0, metadata !27, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{metadata !156, metadata !151, metadata !121}
!163 = metadata !{i32 786478, i32 0, metadata !27, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !55, metadata !152}
!166 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !169, metadata !55, metadata !65}
!169 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_reference_type ]
!170 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !174, metadata !65}
!174 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !175} ; [ DW_TAG_pointer_type ]
!175 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_volatile_type ]
!176 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786478, i32 0, metadata !27, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!179 = metadata !{metadata !169, metadata !55, metadata !139}
!180 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !27, metadata !139}
!183 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !186, metadata !151, metadata !51}
!186 = metadata !{i32 786434, null, metadata !"ap_int_base<1, true, true>", metadata !73, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!187 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !49, metadata !151}
!190 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !121, metadata !151}
!193 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{metadata !133, metadata !151}
!196 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !138, metadata !151}
!199 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{metadata !152, metadata !151}
!202 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !156, metadata !151}
!205 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !98, metadata !151}
!210 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !102, metadata !151}
!213 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!215 = metadata !{metadata !106, metadata !151}
!216 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !110, metadata !151}
!219 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{metadata !114, metadata !151}
!222 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !125, metadata !151}
!227 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !129, metadata !151}
!230 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !139, metadata !151}
!233 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !134, metadata !151}
!236 = metadata !{i32 786478, i32 0, metadata !27, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786478, i32 0, metadata !27, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !49, metadata !55}
!240 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !169, metadata !55}
!243 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{metadata !66, metadata !55, metadata !49}
!247 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !27, metadata !55}
!251 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !254, metadata !151}
!254 = metadata !{i32 786434, null, metadata !"ap_fixed_base<19, 2, true, 5, 3, 0>", metadata !28, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!255 = metadata !{i32 786478, i32 0, metadata !27, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !51, metadata !151}
!259 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{metadata !262, metadata !151}
!262 = metadata !{i32 786434, null, metadata !"ap_fixed_base<18, 1, true, 5, 3, 0>", metadata !28, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !263, i32 0, null, metadata !507} ; [ DW_TAG_class_type ]
!263 = metadata !{metadata !264, metadata !265, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !296, metadata !299, metadata !302, metadata !305, metadata !308, metadata !311, metadata !314, metadata !317, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !339, metadata !340, metadata !345, metadata !346, metadata !349, metadata !352, metadata !355, metadata !358, metadata !361, metadata !364, metadata !367, metadata !370, metadata !373, metadata !374, metadata !375, metadata !378, metadata !381, metadata !384, metadata !387, metadata !390, metadata !391, metadata !392, metadata !395, metadata !398, metadata !401, metadata !404, metadata !405, metadata !408, metadata !411, metadata !412, metadata !415, metadata !416, metadata !419, metadata !422, metadata !423, metadata !426, metadata !429, metadata !432, metadata !435, metadata !436, metadata !437, metadata !440, metadata !443, metadata !444, metadata !445, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !457, metadata !460, metadata !461, metadata !462, metadata !465, metadata !468, metadata !472, metadata !473, metadata !476, metadata !477, metadata !480, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !490, metadata !493, metadata !494, metadata !504}
!264 = metadata !{i32 786460, metadata !262, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_inheritance ]
!265 = metadata !{i32 786478, i32 0, metadata !262, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{null, metadata !268, metadata !51, metadata !51, metadata !51, metadata !51}
!268 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !262} ; [ DW_TAG_pointer_type ]
!269 = metadata !{i32 786478, i32 0, metadata !262, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{metadata !51, metadata !268, metadata !51, metadata !51, metadata !51}
!272 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!274 = metadata !{null, metadata !268}
!275 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !268, metadata !51}
!278 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{null, metadata !268, metadata !98}
!281 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{null, metadata !268, metadata !102}
!284 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{null, metadata !268, metadata !106}
!287 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{null, metadata !268, metadata !110}
!290 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !268, metadata !114}
!293 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{null, metadata !268, metadata !49}
!296 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !268, metadata !121}
!299 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{null, metadata !268, metadata !125}
!302 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{null, metadata !268, metadata !129}
!305 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!307 = metadata !{null, metadata !268, metadata !133}
!308 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{null, metadata !268, metadata !138}
!311 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{null, metadata !268, metadata !143}
!314 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{null, metadata !268, metadata !143, metadata !102}
!317 = metadata !{i32 786478, i32 0, metadata !262, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!319 = metadata !{metadata !139, metadata !320, metadata !152}
!320 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !321} ; [ DW_TAG_pointer_type ]
!321 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_const_type ]
!322 = metadata !{i32 786478, i32 0, metadata !262, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !121, metadata !320, metadata !156}
!325 = metadata !{i32 786478, i32 0, metadata !262, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{metadata !152, metadata !320, metadata !139}
!328 = metadata !{i32 786478, i32 0, metadata !262, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !156, metadata !320, metadata !121}
!331 = metadata !{i32 786478, i32 0, metadata !262, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{null, metadata !268, metadata !152}
!334 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{metadata !337, metadata !268, metadata !338}
!337 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_reference_type ]
!338 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_reference_type ]
!339 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{null, metadata !343, metadata !338}
!343 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !344} ; [ DW_TAG_pointer_type ]
!344 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_volatile_type ]
!345 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786478, i32 0, metadata !262, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !337, metadata !268, metadata !139}
!349 = metadata !{i32 786478, i32 0, metadata !262, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !350, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!351 = metadata !{metadata !262, metadata !139}
!352 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{metadata !186, metadata !320, metadata !51}
!355 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{metadata !49, metadata !320}
!358 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{metadata !121, metadata !320}
!361 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{metadata !133, metadata !320}
!364 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{metadata !138, metadata !320}
!367 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{metadata !152, metadata !320}
!370 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{metadata !156, metadata !320}
!373 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{metadata !98, metadata !320}
!378 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{metadata !102, metadata !320}
!381 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{metadata !106, metadata !320}
!384 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{metadata !110, metadata !320}
!387 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{metadata !114, metadata !320}
!390 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{metadata !125, metadata !320}
!395 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{metadata !129, metadata !320}
!398 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{metadata !139, metadata !320}
!401 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{metadata !134, metadata !320}
!404 = metadata !{i32 786478, i32 0, metadata !262, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786478, i32 0, metadata !262, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{metadata !49, metadata !268}
!408 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !337, metadata !268}
!411 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!413 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !414, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!414 = metadata !{metadata !321, metadata !268, metadata !49}
!415 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !413, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!416 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{metadata !262, metadata !268}
!419 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{metadata !254, metadata !320}
!422 = metadata !{i32 786478, i32 0, metadata !262, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{metadata !51, metadata !320}
!426 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!428 = metadata !{metadata !262, metadata !320}
!429 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{metadata !262, metadata !320, metadata !49}
!432 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{metadata !262, metadata !320, metadata !121}
!435 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{metadata !337, metadata !268, metadata !49}
!440 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!442 = metadata !{metadata !337, metadata !268, metadata !121}
!443 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !441, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{metadata !51, metadata !320, metadata !152}
!448 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!451 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!455 = metadata !{metadata !456, metadata !268, metadata !121}
!456 = metadata !{i32 786434, null, metadata !"af_bit_ref<18, 1, true, 5, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!457 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{metadata !51, metadata !320, metadata !121}
!460 = metadata !{i32 786478, i32 0, metadata !262, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786478, i32 0, metadata !262, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786478, i32 0, metadata !262, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!464 = metadata !{metadata !51, metadata !320, metadata !49}
!465 = metadata !{i32 786478, i32 0, metadata !262, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{metadata !456, metadata !268, metadata !49}
!468 = metadata !{i32 786478, i32 0, metadata !262, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{metadata !471, metadata !268, metadata !49, metadata !49}
!471 = metadata !{i32 786434, null, metadata !"af_range_ref<18, 1, true, 5, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!472 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786478, i32 0, metadata !262, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!474 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!475 = metadata !{metadata !471, metadata !320, metadata !49, metadata !49}
!476 = metadata !{i32 786478, i32 0, metadata !262, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786478, i32 0, metadata !262, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !478, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!479 = metadata !{metadata !471, metadata !268}
!480 = metadata !{i32 786478, i32 0, metadata !262, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!482 = metadata !{metadata !471, metadata !320}
!483 = metadata !{i32 786478, i32 0, metadata !262, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 786478, i32 0, metadata !262, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786478, i32 0, metadata !262, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786478, i32 0, metadata !262, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786478, i32 0, metadata !262, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{metadata !72, metadata !320}
!490 = metadata !{i32 786478, i32 0, metadata !262, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !83, metadata !320}
!493 = metadata !{i32 786478, i32 0, metadata !262, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !495, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !496, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!496 = metadata !{metadata !497, metadata !268, metadata !498}
!497 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ]
!498 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !73, i32 601, i64 5, i64 8, i32 0, i32 0, null, metadata !499, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!499 = metadata !{metadata !500, metadata !501, metadata !502, metadata !503}
!500 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!501 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!502 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!503 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!504 = metadata !{i32 786478, i32 0, metadata !262, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!505 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!506 = metadata !{metadata !497, metadata !268, metadata !102}
!507 = metadata !{metadata !508, metadata !509, metadata !50, metadata !510, metadata !511, metadata !512}
!508 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !49, i64 18, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!509 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !49, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!510 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !72, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!511 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !83, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!512 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!513 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !27, metadata !151, metadata !49}
!516 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !27, metadata !151, metadata !121}
!519 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!522 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !523, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!523 = metadata !{metadata !169, metadata !55, metadata !49}
!524 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!526 = metadata !{metadata !169, metadata !55, metadata !121}
!527 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !51, metadata !151, metadata !152}
!532 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !540, metadata !55, metadata !121}
!540 = metadata !{i32 786434, null, metadata !"af_bit_ref<18, 1, true, 6, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!541 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!543 = metadata !{metadata !51, metadata !151, metadata !121}
!544 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786478, i32 0, metadata !27, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 786478, i32 0, metadata !27, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !547, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!547 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!548 = metadata !{metadata !51, metadata !151, metadata !49}
!549 = metadata !{i32 786478, i32 0, metadata !27, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!551 = metadata !{metadata !540, metadata !55, metadata !49}
!552 = metadata !{i32 786478, i32 0, metadata !27, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !555, metadata !55, metadata !49, metadata !49}
!555 = metadata !{i32 786434, null, metadata !"af_range_ref<18, 1, true, 6, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!556 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786478, i32 0, metadata !27, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!559 = metadata !{metadata !555, metadata !151, metadata !49, metadata !49}
!560 = metadata !{i32 786478, i32 0, metadata !27, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786478, i32 0, metadata !27, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !555, metadata !55}
!564 = metadata !{i32 786478, i32 0, metadata !27, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !555, metadata !151}
!567 = metadata !{i32 786478, i32 0, metadata !27, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786478, i32 0, metadata !27, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!569 = metadata !{i32 786478, i32 0, metadata !27, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!570 = metadata !{i32 786478, i32 0, metadata !27, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786478, i32 0, metadata !27, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!573 = metadata !{metadata !72, metadata !151}
!574 = metadata !{i32 786478, i32 0, metadata !27, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{metadata !83, metadata !151}
!577 = metadata !{i32 786478, i32 0, metadata !27, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!580 = metadata !{metadata !497, metadata !55, metadata !498}
!581 = metadata !{i32 786478, i32 0, metadata !27, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode6EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !582, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!582 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!583 = metadata !{metadata !497, metadata !55, metadata !102}
!584 = metadata !{metadata !508, metadata !509, metadata !50, metadata !585, metadata !511, metadata !512}
!585 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !72, i64 6, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!586 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 290, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 290} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{null, metadata !589}
!589 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !23} ; [ DW_TAG_pointer_type ]
!590 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 362, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 362} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!592 = metadata !{null, metadata !589, metadata !51}
!593 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 363, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 363} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!595 = metadata !{null, metadata !589, metadata !102}
!596 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 364, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 364} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!598 = metadata !{null, metadata !589, metadata !106}
!599 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 365, metadata !600, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 365} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!601 = metadata !{null, metadata !589, metadata !110}
!602 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 366, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 366} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!604 = metadata !{null, metadata !589, metadata !114}
!605 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 367, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 367} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!607 = metadata !{null, metadata !589, metadata !49}
!608 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 368, metadata !609, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 368} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!610 = metadata !{null, metadata !589, metadata !121}
!611 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 369, metadata !612, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 369} ; [ DW_TAG_subprogram ]
!612 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!613 = metadata !{null, metadata !589, metadata !125}
!614 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 370, metadata !615, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 370} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!616 = metadata !{null, metadata !589, metadata !129}
!617 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 371, metadata !618, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 371} ; [ DW_TAG_subprogram ]
!618 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !619, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!619 = metadata !{null, metadata !589, metadata !139}
!620 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 372, metadata !621, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 372} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!622 = metadata !{null, metadata !589, metadata !134}
!623 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 373, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 373} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{null, metadata !589, metadata !156}
!626 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 374, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 374} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{null, metadata !589, metadata !152}
!629 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 376, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 376} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{null, metadata !589, metadata !143}
!632 = metadata !{i32 786478, i32 0, metadata !23, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 377, metadata !633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 377} ; [ DW_TAG_subprogram ]
!633 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !634, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!634 = metadata !{null, metadata !589, metadata !143, metadata !102}
!635 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERKS2_", metadata !24, i32 380, metadata !636, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 380} ; [ DW_TAG_subprogram ]
!636 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !637, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!637 = metadata !{metadata !638, metadata !589, metadata !639}
!638 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_reference_type ]
!639 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !640} ; [ DW_TAG_reference_type ]
!640 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ]
!641 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !24, i32 386, metadata !636, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 386} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERKS2_", metadata !24, i32 391, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 391} ; [ DW_TAG_subprogram ]
!643 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!644 = metadata !{null, metadata !645, metadata !639}
!645 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !646} ; [ DW_TAG_pointer_type ]
!646 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_volatile_type ]
!647 = metadata !{i32 786478, i32 0, metadata !23, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !24, i32 396, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 396} ; [ DW_TAG_subprogram ]
!648 = metadata !{metadata !508, metadata !509, metadata !585, metadata !511, metadata !512}
!649 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !650} ; [ DW_TAG_pointer_type ]
!650 = metadata !{i32 786454, null, metadata !"dout_t", metadata !18, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_typedef ]
!651 = metadata !{i32 786434, null, metadata !"ap_fixed<18, 1, 4, 2, 0>", metadata !24, i32 287, i64 32, i64 32, i32 0, i32 0, null, metadata !652, i32 0, null, metadata !2117} ; [ DW_TAG_class_type ]
!652 = metadata !{metadata !653, metadata !902, metadata !906, metadata !2054, metadata !2055, metadata !2058, metadata !2061, metadata !2064, metadata !2067, metadata !2070, metadata !2073, metadata !2076, metadata !2079, metadata !2082, metadata !2085, metadata !2088, metadata !2091, metadata !2094, metadata !2097, metadata !2100, metadata !2103, metadata !2109, metadata !2110, metadata !2115, metadata !2116}
!653 = metadata !{i32 786460, metadata !651, null, metadata !24, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !654} ; [ DW_TAG_inheritance ]
!654 = metadata !{i32 786434, null, metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !28, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !655, i32 0, null, metadata !899} ; [ DW_TAG_class_type ]
!655 = metadata !{metadata !656, metadata !657, metadata !661, metadata !664, metadata !667, metadata !675, metadata !676, metadata !679, metadata !682, metadata !685, metadata !688, metadata !691, metadata !694, metadata !697, metadata !700, metadata !703, metadata !706, metadata !709, metadata !712, metadata !715, metadata !718, metadata !722, metadata !725, metadata !728, metadata !731, metadata !734, metadata !738, metadata !739, metadata !744, metadata !745, metadata !748, metadata !751, metadata !754, metadata !757, metadata !760, metadata !763, metadata !766, metadata !769, metadata !772, metadata !773, metadata !774, metadata !777, metadata !780, metadata !783, metadata !786, metadata !789, metadata !790, metadata !791, metadata !794, metadata !797, metadata !800, metadata !803, metadata !804, metadata !807, metadata !810, metadata !811, metadata !814, metadata !815, metadata !818, metadata !821, metadata !822, metadata !825, metadata !828, metadata !831, metadata !834, metadata !835, metadata !836, metadata !839, metadata !842, metadata !843, metadata !844, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !856, metadata !859, metadata !860, metadata !861, metadata !864, metadata !867, metadata !871, metadata !872, metadata !875, metadata !876, metadata !879, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !889, metadata !892, metadata !893, metadata !896}
!656 = metadata !{i32 786460, metadata !654, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_inheritance ]
!657 = metadata !{i32 786478, i32 0, metadata !654, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{null, metadata !660, metadata !51, metadata !51, metadata !51, metadata !51}
!660 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !654} ; [ DW_TAG_pointer_type ]
!661 = metadata !{i32 786478, i32 0, metadata !654, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{metadata !51, metadata !660, metadata !51, metadata !51, metadata !51}
!664 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{null, metadata !660}
!667 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !"", metadata !28, i32 661, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !672, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{null, metadata !660, metadata !670}
!670 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !671} ; [ DW_TAG_reference_type ]
!671 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !654} ; [ DW_TAG_const_type ]
!672 = metadata !{metadata !68, metadata !69, metadata !70, metadata !673, metadata !674, metadata !90}
!673 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !72, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!674 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !83, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!675 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !"", metadata !28, i32 775, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !672, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!676 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !677, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!678 = metadata !{null, metadata !660, metadata !51}
!679 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !680, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !681, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!681 = metadata !{null, metadata !660, metadata !98}
!682 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !683, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!683 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!684 = metadata !{null, metadata !660, metadata !102}
!685 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !686, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!686 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !687, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!687 = metadata !{null, metadata !660, metadata !106}
!688 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !689, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!689 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !690, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!690 = metadata !{null, metadata !660, metadata !110}
!691 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !692, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!692 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !693, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!693 = metadata !{null, metadata !660, metadata !114}
!694 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!695 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!696 = metadata !{null, metadata !660, metadata !49}
!697 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !698, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!698 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !699, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!699 = metadata !{null, metadata !660, metadata !121}
!700 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !701, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!701 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !702, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!702 = metadata !{null, metadata !660, metadata !125}
!703 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !704, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!704 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !705, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!705 = metadata !{null, metadata !660, metadata !129}
!706 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !707, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!707 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !708, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!708 = metadata !{null, metadata !660, metadata !133}
!709 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!710 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !711, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!711 = metadata !{null, metadata !660, metadata !138}
!712 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !713, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!713 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !714, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!714 = metadata !{null, metadata !660, metadata !143}
!715 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !716, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!716 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!717 = metadata !{null, metadata !660, metadata !143, metadata !102}
!718 = metadata !{i32 786478, i32 0, metadata !654, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!720 = metadata !{metadata !139, metadata !721, metadata !152}
!721 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !671} ; [ DW_TAG_pointer_type ]
!722 = metadata !{i32 786478, i32 0, metadata !654, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !724, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!724 = metadata !{metadata !121, metadata !721, metadata !156}
!725 = metadata !{i32 786478, i32 0, metadata !654, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !726, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!727 = metadata !{metadata !152, metadata !721, metadata !139}
!728 = metadata !{i32 786478, i32 0, metadata !654, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !729, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!730 = metadata !{metadata !156, metadata !721, metadata !121}
!731 = metadata !{i32 786478, i32 0, metadata !654, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !732, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!732 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !733, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!733 = metadata !{null, metadata !660, metadata !152}
!734 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERKS2_", metadata !28, i32 995, metadata !735, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!735 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !736, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!736 = metadata !{metadata !737, metadata !660, metadata !670}
!737 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !654} ; [ DW_TAG_reference_type ]
!738 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !735, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!741 = metadata !{null, metadata !742, metadata !670}
!742 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !743} ; [ DW_TAG_pointer_type ]
!743 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !654} ; [ DW_TAG_volatile_type ]
!744 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 786478, i32 0, metadata !654, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !746, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!746 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !747, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!747 = metadata !{metadata !737, metadata !660, metadata !139}
!748 = metadata !{i32 786478, i32 0, metadata !654, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !749, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!749 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !750, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!750 = metadata !{metadata !654, metadata !139}
!751 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !752, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!752 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !753, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!753 = metadata !{metadata !186, metadata !721, metadata !51}
!754 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6to_intEv", metadata !28, i32 1074, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !756, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!756 = metadata !{metadata !49, metadata !721}
!757 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{metadata !121, metadata !721}
!760 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !761, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!761 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !762, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!762 = metadata !{metadata !133, metadata !721}
!763 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!765 = metadata !{metadata !138, metadata !721}
!766 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !767, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!768 = metadata !{metadata !152, metadata !721}
!769 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !770, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!770 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !771, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!771 = metadata !{metadata !156, metadata !721}
!772 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvdEv", metadata !28, i32 1190, metadata !767, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!773 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvfEv", metadata !28, i32 1194, metadata !770, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!774 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvcEv", metadata !28, i32 1198, metadata !775, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!775 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!776 = metadata !{metadata !98, metadata !721}
!777 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvaEv", metadata !28, i32 1202, metadata !778, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!779 = metadata !{metadata !102, metadata !721}
!780 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvhEv", metadata !28, i32 1206, metadata !781, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!781 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!782 = metadata !{metadata !106, metadata !721}
!783 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvsEv", metadata !28, i32 1210, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!785 = metadata !{metadata !110, metadata !721}
!786 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvtEv", metadata !28, i32 1214, metadata !787, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!787 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !788, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!788 = metadata !{metadata !114, metadata !721}
!789 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcviEv", metadata !28, i32 1219, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!790 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvjEv", metadata !28, i32 1223, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!791 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvlEv", metadata !28, i32 1228, metadata !792, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!792 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !793, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!793 = metadata !{metadata !125, metadata !721}
!794 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvmEv", metadata !28, i32 1232, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!795 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !796, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!796 = metadata !{metadata !129, metadata !721}
!797 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvyEv", metadata !28, i32 1245, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !139, metadata !721}
!800 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcvxEv", metadata !28, i32 1249, metadata !801, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!802 = metadata !{metadata !134, metadata !721}
!803 = metadata !{i32 786478, i32 0, metadata !654, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6lengthEv", metadata !28, i32 1253, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!804 = metadata !{i32 786478, i32 0, metadata !654, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !49, metadata !660}
!807 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEppEv", metadata !28, i32 1358, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{metadata !737, metadata !660}
!810 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEmmEv", metadata !28, i32 1362, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEppEi", metadata !28, i32 1370, metadata !812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!812 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !813, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!813 = metadata !{metadata !671, metadata !660, metadata !49}
!814 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEmmEi", metadata !28, i32 1376, metadata !812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!815 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEpsEv", metadata !28, i32 1384, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!817 = metadata !{metadata !654, metadata !660}
!818 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEngEv", metadata !28, i32 1388, metadata !819, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!819 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!820 = metadata !{metadata !254, metadata !721}
!821 = metadata !{i32 786478, i32 0, metadata !654, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6getNegEv", metadata !28, i32 1394, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!822 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEntEv", metadata !28, i32 1402, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{metadata !51, metadata !721}
!825 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEcoEv", metadata !28, i32 1408, metadata !826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!827 = metadata !{metadata !262, metadata !721}
!828 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EElsEi", metadata !28, i32 1431, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!829 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!830 = metadata !{metadata !654, metadata !721, metadata !49}
!831 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EElsEj", metadata !28, i32 1490, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!833 = metadata !{metadata !654, metadata !721, metadata !121}
!834 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EErsEi", metadata !28, i32 1534, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EErsEj", metadata !28, i32 1592, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!836 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EElSEi", metadata !28, i32 1644, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!837 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!838 = metadata !{metadata !737, metadata !660, metadata !49}
!839 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EElSEj", metadata !28, i32 1707, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!841 = metadata !{metadata !737, metadata !660, metadata !121}
!842 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EErSEi", metadata !28, i32 1754, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EErSEj", metadata !28, i32 1816, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEeqEd", metadata !28, i32 1894, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!845 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !846, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!846 = metadata !{metadata !51, metadata !721, metadata !152}
!847 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEneEd", metadata !28, i32 1895, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!848 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEgtEd", metadata !28, i32 1896, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEgeEd", metadata !28, i32 1897, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEltEd", metadata !28, i32 1898, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEleEd", metadata !28, i32 1899, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!852 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEixEj", metadata !28, i32 1902, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!854 = metadata !{metadata !855, metadata !660, metadata !121}
!855 = metadata !{i32 786434, null, metadata !"af_bit_ref<18, 1, true, 4, 2, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!856 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEixEj", metadata !28, i32 1914, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !858, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!858 = metadata !{metadata !51, metadata !721, metadata !121}
!859 = metadata !{i32 786478, i32 0, metadata !654, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE3bitEj", metadata !28, i32 1919, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!860 = metadata !{i32 786478, i32 0, metadata !654, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE3bitEj", metadata !28, i32 1932, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786478, i32 0, metadata !654, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !862, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!862 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !863, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!863 = metadata !{metadata !51, metadata !721, metadata !49}
!864 = metadata !{i32 786478, i32 0, metadata !654, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!865 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !866, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!866 = metadata !{metadata !855, metadata !660, metadata !49}
!867 = metadata !{i32 786478, i32 0, metadata !654, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE5rangeEii", metadata !28, i32 1965, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!868 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!869 = metadata !{metadata !870, metadata !660, metadata !49, metadata !49}
!870 = metadata !{i32 786434, null, metadata !"af_range_ref<18, 1, true, 4, 2, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!871 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEclEii", metadata !28, i32 1971, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!872 = metadata !{i32 786478, i32 0, metadata !654, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE5rangeEii", metadata !28, i32 1977, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!874 = metadata !{metadata !870, metadata !721, metadata !49, metadata !49}
!875 = metadata !{i32 786478, i32 0, metadata !654, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEclEii", metadata !28, i32 2026, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!876 = metadata !{i32 786478, i32 0, metadata !654, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE5rangeEv", metadata !28, i32 2031, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!877 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !878, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!878 = metadata !{metadata !870, metadata !660}
!879 = metadata !{i32 786478, i32 0, metadata !654, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE5rangeEv", metadata !28, i32 2036, metadata !880, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!880 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !881, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!881 = metadata !{metadata !870, metadata !721}
!882 = metadata !{i32 786478, i32 0, metadata !654, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!883 = metadata !{i32 786478, i32 0, metadata !654, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6is_negEv", metadata !28, i32 2044, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786478, i32 0, metadata !654, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE2wlEv", metadata !28, i32 2050, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!885 = metadata !{i32 786478, i32 0, metadata !654, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE3iwlEv", metadata !28, i32 2054, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!886 = metadata !{i32 786478, i32 0, metadata !654, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !887, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!888 = metadata !{metadata !72, metadata !721}
!889 = metadata !{i32 786478, i32 0, metadata !654, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !890, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !891, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!891 = metadata !{metadata !83, metadata !721}
!892 = metadata !{i32 786478, i32 0, metadata !654, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !894, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!894 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !895, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!895 = metadata !{metadata !497, metadata !660, metadata !498}
!896 = metadata !{i32 786478, i32 0, metadata !654, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !897, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!897 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !898, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!898 = metadata !{metadata !497, metadata !660, metadata !102}
!899 = metadata !{metadata !508, metadata !509, metadata !50, metadata !900, metadata !901, metadata !512}
!900 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !72, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!901 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !83, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!902 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 290, metadata !903, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 290} ; [ DW_TAG_subprogram ]
!903 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!904 = metadata !{null, metadata !905}
!905 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !651} ; [ DW_TAG_pointer_type ]
!906 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"", metadata !24, i32 294, metadata !907, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, i32 0, metadata !40, i32 294} ; [ DW_TAG_subprogram ]
!907 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !908, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!908 = metadata !{null, metadata !905, metadata !909}
!909 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !910} ; [ DW_TAG_reference_type ]
!910 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !911} ; [ DW_TAG_const_type ]
!911 = metadata !{i32 786434, null, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !24, i32 287, i64 64, i64 64, i32 0, i32 0, null, metadata !912, i32 0, null, metadata !2053} ; [ DW_TAG_class_type ]
!912 = metadata !{metadata !913, metadata !1983, metadata !1987, metadata !1991, metadata !1992, metadata !1995, metadata !1998, metadata !2001, metadata !2004, metadata !2007, metadata !2010, metadata !2013, metadata !2016, metadata !2019, metadata !2022, metadata !2025, metadata !2028, metadata !2031, metadata !2034, metadata !2037, metadata !2040, metadata !2044, metadata !2045, metadata !2050, metadata !2051, metadata !2052}
!913 = metadata !{i32 786460, metadata !911, null, metadata !24, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_inheritance ]
!914 = metadata !{i32 786434, null, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !28, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !915, i32 0, null, metadata !1980} ; [ DW_TAG_class_type ]
!915 = metadata !{metadata !916, metadata !932, metadata !936, metadata !939, metadata !942, metadata !951, metadata !952, metadata !955, metadata !958, metadata !961, metadata !964, metadata !967, metadata !970, metadata !973, metadata !976, metadata !979, metadata !982, metadata !985, metadata !988, metadata !991, metadata !994, metadata !998, metadata !1001, metadata !1004, metadata !1007, metadata !1010, metadata !1014, metadata !1015, metadata !1020, metadata !1021, metadata !1024, metadata !1027, metadata !1296, metadata !1299, metadata !1302, metadata !1305, metadata !1308, metadata !1311, metadata !1314, metadata !1315, metadata !1316, metadata !1319, metadata !1322, metadata !1325, metadata !1328, metadata !1331, metadata !1332, metadata !1333, metadata !1336, metadata !1339, metadata !1342, metadata !1345, metadata !1346, metadata !1349, metadata !1613, metadata !1616, metadata !1617, metadata !1620, metadata !1621, metadata !1624, metadata !1901, metadata !1902, metadata !1905, metadata !1908, metadata !1911, metadata !1914, metadata !1915, metadata !1916, metadata !1919, metadata !1922, metadata !1923, metadata !1924, metadata !1927, metadata !1928, metadata !1929, metadata !1930, metadata !1931, metadata !1932, metadata !1936, metadata !1939, metadata !1940, metadata !1941, metadata !1944, metadata !1947, metadata !1951, metadata !1952, metadata !1955, metadata !1956, metadata !1959, metadata !1962, metadata !1963, metadata !1964, metadata !1965, metadata !1966, metadata !1969, metadata !1972, metadata !1973, metadata !1976, metadata !1979}
!916 = metadata !{i32 786460, metadata !914, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_inheritance ]
!917 = metadata !{i32 786434, null, metadata !"ssdm_int<43 + 1024 * 0, true>", metadata !32, i32 45, i64 64, i64 64, i32 0, i32 0, null, metadata !918, i32 0, null, metadata !930} ; [ DW_TAG_class_type ]
!918 = metadata !{metadata !919, metadata !921, metadata !925}
!919 = metadata !{i32 786445, metadata !917, metadata !"V", metadata !32, i32 45, i64 43, i64 64, i64 0, i32 0, metadata !920} ; [ DW_TAG_member ]
!920 = metadata !{i32 786468, null, metadata !"int43", null, i32 0, i64 43, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!921 = metadata !{i32 786478, i32 0, metadata !917, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 45, metadata !922, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 45} ; [ DW_TAG_subprogram ]
!922 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !923, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!923 = metadata !{null, metadata !924}
!924 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !917} ; [ DW_TAG_pointer_type ]
!925 = metadata !{i32 786478, i32 0, metadata !917, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 45, metadata !926, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 45} ; [ DW_TAG_subprogram ]
!926 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !927, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!927 = metadata !{null, metadata !924, metadata !928}
!928 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_reference_type ]
!929 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_const_type ]
!930 = metadata !{metadata !931, metadata !50}
!931 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 43, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!932 = metadata !{i32 786478, i32 0, metadata !914, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !934, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!934 = metadata !{null, metadata !935, metadata !51, metadata !51, metadata !51, metadata !51}
!935 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !914} ; [ DW_TAG_pointer_type ]
!936 = metadata !{i32 786478, i32 0, metadata !914, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !937, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!937 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !938, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!938 = metadata !{metadata !51, metadata !935, metadata !51, metadata !51, metadata !51}
!939 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !940, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!940 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !941, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!941 = metadata !{null, metadata !935}
!942 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"", metadata !28, i32 661, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!943 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !944, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!944 = metadata !{null, metadata !935, metadata !945}
!945 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !946} ; [ DW_TAG_reference_type ]
!946 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_const_type ]
!947 = metadata !{metadata !948, metadata !949, metadata !70, metadata !950, metadata !82, metadata !90}
!948 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !49, i64 43, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!949 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !49, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!950 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !72, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!951 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"", metadata !28, i32 775, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!952 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !953, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!953 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !954, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!954 = metadata !{null, metadata !935, metadata !51}
!955 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !956, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!956 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !957, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!957 = metadata !{null, metadata !935, metadata !98}
!958 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!959 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !960, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!960 = metadata !{null, metadata !935, metadata !102}
!961 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !962, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!962 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !963, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!963 = metadata !{null, metadata !935, metadata !106}
!964 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!965 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!966 = metadata !{null, metadata !935, metadata !110}
!967 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !968, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!968 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!969 = metadata !{null, metadata !935, metadata !114}
!970 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !971, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!971 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!972 = metadata !{null, metadata !935, metadata !49}
!973 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!974 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !975, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!975 = metadata !{null, metadata !935, metadata !121}
!976 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !977, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!977 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !978, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!978 = metadata !{null, metadata !935, metadata !125}
!979 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !980, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!980 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !981, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!981 = metadata !{null, metadata !935, metadata !129}
!982 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !983, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!983 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !984, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!984 = metadata !{null, metadata !935, metadata !133}
!985 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !986, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!986 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!987 = metadata !{null, metadata !935, metadata !138}
!988 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !989, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!989 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !990, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!990 = metadata !{null, metadata !935, metadata !143}
!991 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !992, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!992 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !993, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!993 = metadata !{null, metadata !935, metadata !143, metadata !102}
!994 = metadata !{i32 786478, i32 0, metadata !914, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !995, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!995 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !996, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!996 = metadata !{metadata !139, metadata !997, metadata !152}
!997 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !946} ; [ DW_TAG_pointer_type ]
!998 = metadata !{i32 786478, i32 0, metadata !914, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !999, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!999 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1000, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1000 = metadata !{metadata !121, metadata !997, metadata !156}
!1001 = metadata !{i32 786478, i32 0, metadata !914, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !1002, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!1002 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1003, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1003 = metadata !{metadata !152, metadata !997, metadata !139}
!1004 = metadata !{i32 786478, i32 0, metadata !914, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !1005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!1005 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1006, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1006 = metadata !{metadata !156, metadata !997, metadata !121}
!1007 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !1008, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!1008 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1009, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1009 = metadata !{null, metadata !935, metadata !152}
!1010 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!1011 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1012, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1012 = metadata !{metadata !1013, metadata !935, metadata !945}
!1013 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_reference_type ]
!1014 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!1015 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !1016, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!1016 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1017, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1017 = metadata !{null, metadata !1018, metadata !945}
!1018 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1019} ; [ DW_TAG_pointer_type ]
!1019 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_volatile_type ]
!1020 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !1016, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!1021 = metadata !{i32 786478, i32 0, metadata !914, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !1022, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!1022 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1023, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1023 = metadata !{metadata !1013, metadata !935, metadata !139}
!1024 = metadata !{i32 786478, i32 0, metadata !914, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!1025 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1026, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1026 = metadata !{metadata !914, metadata !139}
!1027 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !1028, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!1028 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1029, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1029 = metadata !{metadata !1030, metadata !997, metadata !51}
!1030 = metadata !{i32 786434, null, metadata !"ap_int_base<9, true, true>", metadata !73, i32 1396, i64 16, i64 16, i32 0, i32 0, null, metadata !1031, i32 0, null, metadata !1294} ; [ DW_TAG_class_type ]
!1031 = metadata !{metadata !1032, metadata !1043, metadata !1047, metadata !1050, metadata !1053, metadata !1056, metadata !1059, metadata !1062, metadata !1065, metadata !1068, metadata !1071, metadata !1074, metadata !1077, metadata !1080, metadata !1083, metadata !1086, metadata !1089, metadata !1092, metadata !1097, metadata !1102, metadata !1103, metadata !1104, metadata !1108, metadata !1109, metadata !1112, metadata !1115, metadata !1118, metadata !1121, metadata !1124, metadata !1127, metadata !1130, metadata !1133, metadata !1136, metadata !1139, metadata !1149, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1159, metadata !1162, metadata !1165, metadata !1168, metadata !1171, metadata !1174, metadata !1177, metadata !1178, metadata !1183, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1194, metadata !1195, metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1202, metadata !1203, metadata !1206, metadata !1207, metadata !1208, metadata !1211, metadata !1212, metadata !1215, metadata !1216, metadata !1220, metadata !1224, metadata !1225, metadata !1228, metadata !1229, metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1274, metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1288, metadata !1291}
!1032 = metadata !{i32 786460, metadata !1030, null, metadata !73, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1033} ; [ DW_TAG_inheritance ]
!1033 = metadata !{i32 786434, null, metadata !"ssdm_int<9 + 1024 * 0, true>", metadata !32, i32 11, i64 16, i64 16, i32 0, i32 0, null, metadata !1034, i32 0, null, metadata !1041} ; [ DW_TAG_class_type ]
!1034 = metadata !{metadata !1035, metadata !1037}
!1035 = metadata !{i32 786445, metadata !1033, metadata !"V", metadata !32, i32 11, i64 9, i64 16, i64 0, i32 0, metadata !1036} ; [ DW_TAG_member ]
!1036 = metadata !{i32 786468, null, metadata !"int9", null, i32 0, i64 9, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1037 = metadata !{i32 786478, i32 0, metadata !1033, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 11, metadata !1038, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 11} ; [ DW_TAG_subprogram ]
!1038 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1039, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1039 = metadata !{null, metadata !1040}
!1040 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1033} ; [ DW_TAG_pointer_type ]
!1041 = metadata !{metadata !1042, metadata !50}
!1042 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1043 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1437, metadata !1044, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1437} ; [ DW_TAG_subprogram ]
!1044 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1045, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1045 = metadata !{null, metadata !1046}
!1046 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1030} ; [ DW_TAG_pointer_type ]
!1047 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1459, metadata !1048, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1459} ; [ DW_TAG_subprogram ]
!1048 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1049, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1049 = metadata !{null, metadata !1046, metadata !51}
!1050 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1460, metadata !1051, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1460} ; [ DW_TAG_subprogram ]
!1051 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1052 = metadata !{null, metadata !1046, metadata !102}
!1053 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1461, metadata !1054, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1461} ; [ DW_TAG_subprogram ]
!1054 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1055, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1055 = metadata !{null, metadata !1046, metadata !106}
!1056 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1462, metadata !1057, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1462} ; [ DW_TAG_subprogram ]
!1057 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1058, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1058 = metadata !{null, metadata !1046, metadata !110}
!1059 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1463, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1463} ; [ DW_TAG_subprogram ]
!1060 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1061 = metadata !{null, metadata !1046, metadata !114}
!1062 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1464, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1464} ; [ DW_TAG_subprogram ]
!1063 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1064 = metadata !{null, metadata !1046, metadata !49}
!1065 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1465, metadata !1066, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1465} ; [ DW_TAG_subprogram ]
!1066 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1067 = metadata !{null, metadata !1046, metadata !121}
!1068 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1466, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1466} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1070 = metadata !{null, metadata !1046, metadata !125}
!1071 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1467, metadata !1072, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1467} ; [ DW_TAG_subprogram ]
!1072 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1073 = metadata !{null, metadata !1046, metadata !129}
!1074 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1468, metadata !1075, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1468} ; [ DW_TAG_subprogram ]
!1075 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1076, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1076 = metadata !{null, metadata !1046, metadata !133}
!1077 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1469, metadata !1078, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1469} ; [ DW_TAG_subprogram ]
!1078 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1079, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1079 = metadata !{null, metadata !1046, metadata !138}
!1080 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1470, metadata !1081, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1470} ; [ DW_TAG_subprogram ]
!1081 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1082, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1082 = metadata !{null, metadata !1046, metadata !156}
!1083 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1471, metadata !1084, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1471} ; [ DW_TAG_subprogram ]
!1084 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1085, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1085 = metadata !{null, metadata !1046, metadata !152}
!1086 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1498, metadata !1087, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1498} ; [ DW_TAG_subprogram ]
!1087 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1088 = metadata !{null, metadata !1046, metadata !143}
!1089 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1505, metadata !1090, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1505} ; [ DW_TAG_subprogram ]
!1090 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1091, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1091 = metadata !{null, metadata !1046, metadata !143, metadata !102}
!1092 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE4readEv", metadata !73, i32 1526, metadata !1093, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1526} ; [ DW_TAG_subprogram ]
!1093 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1094 = metadata !{metadata !1030, metadata !1095}
!1095 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1096} ; [ DW_TAG_pointer_type ]
!1096 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1030} ; [ DW_TAG_volatile_type ]
!1097 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE5writeERKS0_", metadata !73, i32 1532, metadata !1098, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1532} ; [ DW_TAG_subprogram ]
!1098 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1099, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1099 = metadata !{null, metadata !1095, metadata !1100}
!1100 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1101} ; [ DW_TAG_reference_type ]
!1101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1030} ; [ DW_TAG_const_type ]
!1102 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !73, i32 1544, metadata !1098, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1544} ; [ DW_TAG_subprogram ]
!1103 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !73, i32 1553, metadata !1098, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1553} ; [ DW_TAG_subprogram ]
!1104 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !73, i32 1576, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1576} ; [ DW_TAG_subprogram ]
!1105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1106 = metadata !{metadata !1107, metadata !1046, metadata !1100}
!1107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1030} ; [ DW_TAG_reference_type ]
!1108 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !73, i32 1581, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1581} ; [ DW_TAG_subprogram ]
!1109 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEPKc", metadata !73, i32 1585, metadata !1110, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1585} ; [ DW_TAG_subprogram ]
!1110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1111 = metadata !{metadata !1107, metadata !1046, metadata !143}
!1112 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEPKca", metadata !73, i32 1593, metadata !1113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1593} ; [ DW_TAG_subprogram ]
!1113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1114 = metadata !{metadata !1107, metadata !1046, metadata !143, metadata !102}
!1115 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEc", metadata !73, i32 1607, metadata !1116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1607} ; [ DW_TAG_subprogram ]
!1116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1117 = metadata !{metadata !1107, metadata !1046, metadata !98}
!1118 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEh", metadata !73, i32 1608, metadata !1119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1608} ; [ DW_TAG_subprogram ]
!1119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1120 = metadata !{metadata !1107, metadata !1046, metadata !106}
!1121 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEs", metadata !73, i32 1609, metadata !1122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1609} ; [ DW_TAG_subprogram ]
!1122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1123 = metadata !{metadata !1107, metadata !1046, metadata !110}
!1124 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEt", metadata !73, i32 1610, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1610} ; [ DW_TAG_subprogram ]
!1125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1126 = metadata !{metadata !1107, metadata !1046, metadata !114}
!1127 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEi", metadata !73, i32 1611, metadata !1128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1611} ; [ DW_TAG_subprogram ]
!1128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1129 = metadata !{metadata !1107, metadata !1046, metadata !49}
!1130 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEj", metadata !73, i32 1612, metadata !1131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1612} ; [ DW_TAG_subprogram ]
!1131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1132 = metadata !{metadata !1107, metadata !1046, metadata !121}
!1133 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEx", metadata !73, i32 1613, metadata !1134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1613} ; [ DW_TAG_subprogram ]
!1134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1135 = metadata !{metadata !1107, metadata !1046, metadata !133}
!1136 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEy", metadata !73, i32 1614, metadata !1137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1614} ; [ DW_TAG_subprogram ]
!1137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1138 = metadata !{metadata !1107, metadata !1046, metadata !138}
!1139 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEcvsEv", metadata !73, i32 1652, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1652} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1141 = metadata !{metadata !1142, metadata !1148}
!1142 = metadata !{i32 786454, metadata !1030, metadata !"RetType", metadata !73, i32 1401, i64 0, i64 0, i64 0, i32 0, metadata !1143} ; [ DW_TAG_typedef ]
!1143 = metadata !{i32 786454, metadata !1144, metadata !"Type", metadata !73, i32 1372, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ]
!1144 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !73, i32 1371, i64 8, i64 8, i32 0, i32 0, null, metadata !1145, i32 0, null, metadata !1146} ; [ DW_TAG_class_type ]
!1145 = metadata !{i32 0}
!1146 = metadata !{metadata !1147, metadata !50}
!1147 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1148 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1101} ; [ DW_TAG_pointer_type ]
!1149 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_boolEv", metadata !73, i32 1658, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1658} ; [ DW_TAG_subprogram ]
!1150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1151 = metadata !{metadata !51, metadata !1148}
!1152 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ucharEv", metadata !73, i32 1659, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1659} ; [ DW_TAG_subprogram ]
!1153 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_charEv", metadata !73, i32 1660, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1660} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_ushortEv", metadata !73, i32 1661, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1661} ; [ DW_TAG_subprogram ]
!1155 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_shortEv", metadata !73, i32 1662, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1662} ; [ DW_TAG_subprogram ]
!1156 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6to_intEv", metadata !73, i32 1663, metadata !1157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1663} ; [ DW_TAG_subprogram ]
!1157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1158 = metadata !{metadata !49, metadata !1148}
!1159 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_uintEv", metadata !73, i32 1664, metadata !1160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1664} ; [ DW_TAG_subprogram ]
!1160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1161 = metadata !{metadata !121, metadata !1148}
!1162 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_longEv", metadata !73, i32 1665, metadata !1163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1665} ; [ DW_TAG_subprogram ]
!1163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1164 = metadata !{metadata !125, metadata !1148}
!1165 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ulongEv", metadata !73, i32 1666, metadata !1166, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1666} ; [ DW_TAG_subprogram ]
!1166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1167 = metadata !{metadata !129, metadata !1148}
!1168 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_int64Ev", metadata !73, i32 1667, metadata !1169, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1667} ; [ DW_TAG_subprogram ]
!1169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1170 = metadata !{metadata !133, metadata !1148}
!1171 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_uint64Ev", metadata !73, i32 1668, metadata !1172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1668} ; [ DW_TAG_subprogram ]
!1172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1173 = metadata !{metadata !138, metadata !1148}
!1174 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_doubleEv", metadata !73, i32 1669, metadata !1175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1669} ; [ DW_TAG_subprogram ]
!1175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1176 = metadata !{metadata !152, metadata !1148}
!1177 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !73, i32 1682, metadata !1157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1682} ; [ DW_TAG_subprogram ]
!1178 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !73, i32 1683, metadata !1179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1683} ; [ DW_TAG_subprogram ]
!1179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1180 = metadata !{metadata !49, metadata !1181}
!1181 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1182} ; [ DW_TAG_pointer_type ]
!1182 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1096} ; [ DW_TAG_const_type ]
!1183 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7reverseEv", metadata !73, i32 1688, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1688} ; [ DW_TAG_subprogram ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1185 = metadata !{metadata !1107, metadata !1046}
!1186 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6iszeroEv", metadata !73, i32 1694, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1694} ; [ DW_TAG_subprogram ]
!1187 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7is_zeroEv", metadata !73, i32 1699, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1699} ; [ DW_TAG_subprogram ]
!1188 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4signEv", metadata !73, i32 1704, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1704} ; [ DW_TAG_subprogram ]
!1189 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5clearEi", metadata !73, i32 1712, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1712} ; [ DW_TAG_subprogram ]
!1190 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE6invertEi", metadata !73, i32 1718, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1718} ; [ DW_TAG_subprogram ]
!1191 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4testEi", metadata !73, i32 1726, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1726} ; [ DW_TAG_subprogram ]
!1192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1193 = metadata !{metadata !51, metadata !1148, metadata !49}
!1194 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEi", metadata !73, i32 1732, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1732} ; [ DW_TAG_subprogram ]
!1195 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEib", metadata !73, i32 1738, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1738} ; [ DW_TAG_subprogram ]
!1196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1197 = metadata !{null, metadata !1046, metadata !49, metadata !51}
!1198 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7lrotateEi", metadata !73, i32 1745, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1745} ; [ DW_TAG_subprogram ]
!1199 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7rrotateEi", metadata !73, i32 1754, metadata !1063, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!1200 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7set_bitEib", metadata !73, i32 1762, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1762} ; [ DW_TAG_subprogram ]
!1201 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7get_bitEi", metadata !73, i32 1767, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1767} ; [ DW_TAG_subprogram ]
!1202 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5b_notEv", metadata !73, i32 1772, metadata !1044, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1772} ; [ DW_TAG_subprogram ]
!1203 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE17countLeadingZerosEv", metadata !73, i32 1779, metadata !1204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1779} ; [ DW_TAG_subprogram ]
!1204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1205 = metadata !{metadata !49, metadata !1046}
!1206 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEv", metadata !73, i32 1836, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1836} ; [ DW_TAG_subprogram ]
!1207 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEv", metadata !73, i32 1840, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1840} ; [ DW_TAG_subprogram ]
!1208 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEi", metadata !73, i32 1848, metadata !1209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1848} ; [ DW_TAG_subprogram ]
!1209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1210 = metadata !{metadata !1101, metadata !1046, metadata !49}
!1211 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEi", metadata !73, i32 1853, metadata !1209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1853} ; [ DW_TAG_subprogram ]
!1212 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEpsEv", metadata !73, i32 1862, metadata !1213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1862} ; [ DW_TAG_subprogram ]
!1213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1214 = metadata !{metadata !1030, metadata !1148}
!1215 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEntEv", metadata !73, i32 1868, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1868} ; [ DW_TAG_subprogram ]
!1216 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEngEv", metadata !73, i32 1873, metadata !1217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1873} ; [ DW_TAG_subprogram ]
!1217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1218 = metadata !{metadata !1219, metadata !1148}
!1219 = metadata !{i32 786434, null, metadata !"ap_int_base<10, true, true>", metadata !73, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1220 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !73, i32 2003, metadata !1221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2003} ; [ DW_TAG_subprogram ]
!1221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1222 = metadata !{metadata !1223, metadata !1046, metadata !49, metadata !49}
!1223 = metadata !{i32 786434, null, metadata !"ap_range_ref<9, true>", metadata !73, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1224 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEclEii", metadata !73, i32 2009, metadata !1221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2009} ; [ DW_TAG_subprogram ]
!1225 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !73, i32 2015, metadata !1226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2015} ; [ DW_TAG_subprogram ]
!1226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1227 = metadata !{metadata !1223, metadata !1148, metadata !49, metadata !49}
!1228 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEclEii", metadata !73, i32 2021, metadata !1226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2021} ; [ DW_TAG_subprogram ]
!1229 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEixEi", metadata !73, i32 2040, metadata !1230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!1230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1231 = metadata !{metadata !1232, metadata !1046, metadata !49}
!1232 = metadata !{i32 786434, null, metadata !"ap_bit_ref<9, true>", metadata !73, i32 1192, i64 128, i64 64, i32 0, i32 0, null, metadata !1233, i32 0, null, metadata !1266} ; [ DW_TAG_class_type ]
!1233 = metadata !{metadata !1234, metadata !1235, metadata !1236, metadata !1242, metadata !1246, metadata !1250, metadata !1251, metadata !1255, metadata !1258, metadata !1259, metadata !1262, metadata !1263}
!1234 = metadata !{i32 786445, metadata !1232, metadata !"d_bv", metadata !73, i32 1193, i64 64, i64 64, i64 0, i32 0, metadata !1107} ; [ DW_TAG_member ]
!1235 = metadata !{i32 786445, metadata !1232, metadata !"d_index", metadata !73, i32 1194, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ]
!1236 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !73, i32 1197, metadata !1237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1197} ; [ DW_TAG_subprogram ]
!1237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1238 = metadata !{null, metadata !1239, metadata !1240}
!1239 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1232} ; [ DW_TAG_pointer_type ]
!1240 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1241} ; [ DW_TAG_reference_type ]
!1241 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_const_type ]
!1242 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !73, i32 1200, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1200} ; [ DW_TAG_subprogram ]
!1243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1244 = metadata !{null, metadata !1239, metadata !1245, metadata !49}
!1245 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1030} ; [ DW_TAG_pointer_type ]
!1246 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi9ELb1EEcvbEv", metadata !73, i32 1202, metadata !1247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!1247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1248 = metadata !{metadata !51, metadata !1249}
!1249 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1241} ; [ DW_TAG_pointer_type ]
!1250 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi9ELb1EE7to_boolEv", metadata !73, i32 1203, metadata !1247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1203} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSEy", metadata !73, i32 1205, metadata !1252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1205} ; [ DW_TAG_subprogram ]
!1252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1253 = metadata !{metadata !1254, metadata !1239, metadata !139}
!1254 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1232} ; [ DW_TAG_reference_type ]
!1255 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSERKS0_", metadata !73, i32 1225, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1225} ; [ DW_TAG_subprogram ]
!1256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1257 = metadata !{metadata !1254, metadata !1239, metadata !1240}
!1258 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi9ELb1EE3getEv", metadata !73, i32 1333, metadata !1247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1333} ; [ DW_TAG_subprogram ]
!1259 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi9ELb1EE3getEv", metadata !73, i32 1337, metadata !1260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1337} ; [ DW_TAG_subprogram ]
!1260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1261 = metadata !{metadata !51, metadata !1239}
!1262 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi9ELb1EEcoEv", metadata !73, i32 1346, metadata !1247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1346} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786478, i32 0, metadata !1232, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi9ELb1EE6lengthEv", metadata !73, i32 1351, metadata !1264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1351} ; [ DW_TAG_subprogram ]
!1264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1265 = metadata !{metadata !49, metadata !1249}
!1266 = metadata !{metadata !1267, metadata !50}
!1267 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !49, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1268 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEixEi", metadata !73, i32 2054, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!1269 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !73, i32 2068, metadata !1230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2068} ; [ DW_TAG_subprogram ]
!1270 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !73, i32 2082, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2082} ; [ DW_TAG_subprogram ]
!1271 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !73, i32 2262, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2262} ; [ DW_TAG_subprogram ]
!1272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1273 = metadata !{metadata !51, metadata !1046}
!1274 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !73, i32 2265, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2265} ; [ DW_TAG_subprogram ]
!1275 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !73, i32 2268, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2268} ; [ DW_TAG_subprogram ]
!1276 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !73, i32 2271, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2271} ; [ DW_TAG_subprogram ]
!1277 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !73, i32 2274, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2274} ; [ DW_TAG_subprogram ]
!1278 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !73, i32 2277, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2277} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !73, i32 2281, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2281} ; [ DW_TAG_subprogram ]
!1280 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !73, i32 2284, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2284} ; [ DW_TAG_subprogram ]
!1281 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !73, i32 2287, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2287} ; [ DW_TAG_subprogram ]
!1282 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !73, i32 2290, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2290} ; [ DW_TAG_subprogram ]
!1283 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !73, i32 2293, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2293} ; [ DW_TAG_subprogram ]
!1284 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !73, i32 2296, metadata !1150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2296} ; [ DW_TAG_subprogram ]
!1285 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !73, i32 2303, metadata !1286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2303} ; [ DW_TAG_subprogram ]
!1286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1287 = metadata !{null, metadata !1148, metadata !497, metadata !49, metadata !498, metadata !51}
!1288 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringE8BaseModeb", metadata !73, i32 2330, metadata !1289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2330} ; [ DW_TAG_subprogram ]
!1289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1290 = metadata !{metadata !497, metadata !1148, metadata !498, metadata !51}
!1291 = metadata !{i32 786478, i32 0, metadata !1030, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEab", metadata !73, i32 2334, metadata !1292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2334} ; [ DW_TAG_subprogram ]
!1292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1293 = metadata !{metadata !497, metadata !1148, metadata !102, metadata !51}
!1294 = metadata !{metadata !1267, metadata !50, metadata !1295}
!1295 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !51, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1296 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!1297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1298 = metadata !{metadata !49, metadata !997}
!1299 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!1300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1301 = metadata !{metadata !121, metadata !997}
!1302 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !1303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!1303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1304 = metadata !{metadata !133, metadata !997}
!1305 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !1306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!1306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1307 = metadata !{metadata !138, metadata !997}
!1308 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !1309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!1309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1310 = metadata !{metadata !152, metadata !997}
!1311 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !1312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!1312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1313 = metadata !{metadata !156, metadata !997}
!1314 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !1309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!1315 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !1312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!1316 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !1317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!1317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1318 = metadata !{metadata !98, metadata !997}
!1319 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!1320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1321 = metadata !{metadata !102, metadata !997}
!1322 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !1323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!1323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1324 = metadata !{metadata !106, metadata !997}
!1325 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !1326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!1326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1327 = metadata !{metadata !110, metadata !997}
!1328 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !1329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!1329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1330 = metadata !{metadata !114, metadata !997}
!1331 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!1332 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!1333 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !1334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!1334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1335 = metadata !{metadata !125, metadata !997}
!1336 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!1337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1338 = metadata !{metadata !129, metadata !997}
!1339 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !1340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!1340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1341 = metadata !{metadata !139, metadata !997}
!1342 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!1343 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1344 = metadata !{metadata !134, metadata !997}
!1345 = metadata !{i32 786478, i32 0, metadata !914, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!1346 = metadata !{i32 786478, i32 0, metadata !914, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !1347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!1347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1348 = metadata !{metadata !49, metadata !935}
!1349 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator+=<36, 2, true, 5, 3, 0>", metadata !"operator+=<36, 2, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpLILi36ELi2ELb1ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 1347, metadata !1350, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, i32 0, metadata !40, i32 1347} ; [ DW_TAG_subprogram ]
!1350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1351 = metadata !{metadata !1013, metadata !935, metadata !1352}
!1352 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1353} ; [ DW_TAG_reference_type ]
!1353 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1354} ; [ DW_TAG_const_type ]
!1354 = metadata !{i32 786434, null, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !28, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !1355, i32 0, null, metadata !1610} ; [ DW_TAG_class_type ]
!1355 = metadata !{metadata !1356, metadata !1367, metadata !1371, metadata !1374, metadata !1377, metadata !1383, metadata !1384, metadata !1387, metadata !1390, metadata !1393, metadata !1396, metadata !1399, metadata !1402, metadata !1405, metadata !1408, metadata !1411, metadata !1414, metadata !1417, metadata !1420, metadata !1423, metadata !1426, metadata !1430, metadata !1433, metadata !1436, metadata !1439, metadata !1442, metadata !1446, metadata !1447, metadata !1452, metadata !1453, metadata !1456, metadata !1459, metadata !1463, metadata !1466, metadata !1469, metadata !1472, metadata !1475, metadata !1478, metadata !1481, metadata !1482, metadata !1483, metadata !1486, metadata !1489, metadata !1492, metadata !1495, metadata !1498, metadata !1499, metadata !1500, metadata !1503, metadata !1506, metadata !1509, metadata !1512, metadata !1513, metadata !1516, metadata !1519, metadata !1520, metadata !1523, metadata !1524, metadata !1527, metadata !1531, metadata !1532, metadata !1535, metadata !1538, metadata !1541, metadata !1544, metadata !1545, metadata !1546, metadata !1549, metadata !1552, metadata !1553, metadata !1554, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1566, metadata !1569, metadata !1570, metadata !1571, metadata !1574, metadata !1577, metadata !1581, metadata !1582, metadata !1585, metadata !1586, metadata !1589, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1599, metadata !1602, metadata !1603, metadata !1606, metadata !1609}
!1356 = metadata !{i32 786460, metadata !1354, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1357} ; [ DW_TAG_inheritance ]
!1357 = metadata !{i32 786434, null, metadata !"ssdm_int<36 + 1024 * 0, true>", metadata !32, i32 38, i64 64, i64 64, i32 0, i32 0, null, metadata !1358, i32 0, null, metadata !1365} ; [ DW_TAG_class_type ]
!1358 = metadata !{metadata !1359, metadata !1361}
!1359 = metadata !{i32 786445, metadata !1357, metadata !"V", metadata !32, i32 38, i64 36, i64 64, i64 0, i32 0, metadata !1360} ; [ DW_TAG_member ]
!1360 = metadata !{i32 786468, null, metadata !"int36", null, i32 0, i64 36, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1361 = metadata !{i32 786478, i32 0, metadata !1357, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 38, metadata !1362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 38} ; [ DW_TAG_subprogram ]
!1362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1363 = metadata !{null, metadata !1364}
!1364 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1357} ; [ DW_TAG_pointer_type ]
!1365 = metadata !{metadata !1366, metadata !50}
!1366 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 36, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1367 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !1368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!1368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1369 = metadata !{null, metadata !1370, metadata !51, metadata !51, metadata !51, metadata !51}
!1370 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1354} ; [ DW_TAG_pointer_type ]
!1371 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !1372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!1372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1373 = metadata !{metadata !51, metadata !1370, metadata !51, metadata !51, metadata !51}
!1374 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !1375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!1375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1376 = metadata !{null, metadata !1370}
!1377 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"", metadata !28, i32 661, metadata !1378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!1378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1379 = metadata !{null, metadata !1370, metadata !1352}
!1380 = metadata !{metadata !1381, metadata !1382, metadata !70, metadata !950, metadata !82, metadata !90}
!1381 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !49, i64 36, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1382 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !49, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1383 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"", metadata !28, i32 775, metadata !1378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!1384 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !1385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!1385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1386 = metadata !{null, metadata !1370, metadata !51}
!1387 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !1388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!1388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1389 = metadata !{null, metadata !1370, metadata !98}
!1390 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !1391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!1391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1392 = metadata !{null, metadata !1370, metadata !102}
!1393 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !1394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1395 = metadata !{null, metadata !1370, metadata !106}
!1396 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !1397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!1397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1398 = metadata !{null, metadata !1370, metadata !110}
!1399 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !1400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!1400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1401 = metadata !{null, metadata !1370, metadata !114}
!1402 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !1403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!1403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1404 = metadata !{null, metadata !1370, metadata !49}
!1405 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !1406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!1406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1407 = metadata !{null, metadata !1370, metadata !121}
!1408 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !1409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!1409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1410 = metadata !{null, metadata !1370, metadata !125}
!1411 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !1412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!1412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1413 = metadata !{null, metadata !1370, metadata !129}
!1414 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !1415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!1415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1416 = metadata !{null, metadata !1370, metadata !133}
!1417 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !1418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!1418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1419 = metadata !{null, metadata !1370, metadata !138}
!1420 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!1421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1422 = metadata !{null, metadata !1370, metadata !143}
!1423 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !1424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!1424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1425 = metadata !{null, metadata !1370, metadata !143, metadata !102}
!1426 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !1427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!1427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1428 = metadata !{metadata !139, metadata !1429, metadata !152}
!1429 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1353} ; [ DW_TAG_pointer_type ]
!1430 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !1431, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!1431 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1432 = metadata !{metadata !121, metadata !1429, metadata !156}
!1433 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !1434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!1434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1435 = metadata !{metadata !152, metadata !1429, metadata !139}
!1436 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !1437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!1437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1438 = metadata !{metadata !156, metadata !1429, metadata !121}
!1439 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !1440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!1440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1441 = metadata !{null, metadata !1370, metadata !152}
!1442 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !1443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!1443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1444 = metadata !{metadata !1445, metadata !1370, metadata !1352}
!1445 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1354} ; [ DW_TAG_reference_type ]
!1446 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !1443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!1447 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !1448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!1448 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1449 = metadata !{null, metadata !1450, metadata !1352}
!1450 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1451} ; [ DW_TAG_pointer_type ]
!1451 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1354} ; [ DW_TAG_volatile_type ]
!1452 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !1448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!1453 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!1454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1455 = metadata !{metadata !1445, metadata !1370, metadata !139}
!1456 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !1457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!1457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1458 = metadata !{metadata !1354, metadata !139}
!1459 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !1460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!1460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1461 = metadata !{metadata !1462, metadata !1429, metadata !51}
!1462 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !73, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1463 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!1464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1465 = metadata !{metadata !49, metadata !1429}
!1466 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !1467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!1467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1468 = metadata !{metadata !121, metadata !1429}
!1469 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !1470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!1470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1471 = metadata !{metadata !133, metadata !1429}
!1472 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !1473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!1473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1474 = metadata !{metadata !138, metadata !1429}
!1475 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !1476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!1476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1477 = metadata !{metadata !152, metadata !1429}
!1478 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !1479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!1479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1480 = metadata !{metadata !156, metadata !1429}
!1481 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !1476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!1482 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !1479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!1483 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !1484, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!1484 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1485, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1485 = metadata !{metadata !98, metadata !1429}
!1486 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !1487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!1487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1488 = metadata !{metadata !102, metadata !1429}
!1489 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !1490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!1490 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1491, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1491 = metadata !{metadata !106, metadata !1429}
!1492 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !1493, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!1493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1494 = metadata !{metadata !110, metadata !1429}
!1495 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !1496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!1496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1497 = metadata !{metadata !114, metadata !1429}
!1498 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!1499 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !1467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!1500 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !1501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!1501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1502 = metadata !{metadata !125, metadata !1429}
!1503 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !1504, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!1504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1505 = metadata !{metadata !129, metadata !1429}
!1506 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !1507, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!1507 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1508 = metadata !{metadata !139, metadata !1429}
!1509 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !1510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!1510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1511 = metadata !{metadata !134, metadata !1429}
!1512 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!1513 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !1514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!1514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1515 = metadata !{metadata !49, metadata !1370}
!1516 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !1517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!1517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1518 = metadata !{metadata !1445, metadata !1370}
!1519 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !1517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!1520 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !1521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!1521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1522 = metadata !{metadata !1353, metadata !1370, metadata !49}
!1523 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !1521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!1524 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !1525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!1525 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1526 = metadata !{metadata !1354, metadata !1370}
!1527 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !1528, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!1528 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1529, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1529 = metadata !{metadata !1530, metadata !1429}
!1530 = metadata !{i32 786434, null, metadata !"ap_fixed_base<37, 3, true, 5, 3, 0>", metadata !28, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1531 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !1525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!1532 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !1533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!1533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1534 = metadata !{metadata !51, metadata !1429}
!1535 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !1536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!1536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1537 = metadata !{metadata !1354, metadata !1429}
!1538 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !1539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!1539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1540 = metadata !{metadata !1354, metadata !1429, metadata !49}
!1541 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !1542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!1542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1543 = metadata !{metadata !1354, metadata !1429, metadata !121}
!1544 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !1539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!1545 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !1542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!1546 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !1547, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!1547 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1548, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1548 = metadata !{metadata !1445, metadata !1370, metadata !49}
!1549 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !1550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!1550 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1551 = metadata !{metadata !1445, metadata !1370, metadata !121}
!1552 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !1547, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!1553 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !1550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!1554 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!1555 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1556, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1556 = metadata !{metadata !51, metadata !1429, metadata !152}
!1557 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!1558 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!1559 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!1560 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!1561 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !1555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!1562 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !1563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!1563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1564 = metadata !{metadata !1565, metadata !1370, metadata !121}
!1565 = metadata !{i32 786434, null, metadata !"af_bit_ref<36, 2, true, 5, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1566 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !1567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!1567 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1568, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1568 = metadata !{metadata !51, metadata !1429, metadata !121}
!1569 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !1563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!1570 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !1567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!1571 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !1572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!1572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1573 = metadata !{metadata !51, metadata !1429, metadata !49}
!1574 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !1575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!1575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1576 = metadata !{metadata !1565, metadata !1370, metadata !49}
!1577 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !1578, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!1578 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1579 = metadata !{metadata !1580, metadata !1370, metadata !49, metadata !49}
!1580 = metadata !{i32 786434, null, metadata !"af_range_ref<36, 2, true, 5, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1581 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !1578, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!1582 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !1583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!1583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1584 = metadata !{metadata !1580, metadata !1429, metadata !49, metadata !49}
!1585 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !1583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!1586 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !1587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!1587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1588 = metadata !{metadata !1580, metadata !1370}
!1589 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !1590, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!1590 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1591 = metadata !{metadata !1580, metadata !1429}
!1592 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !1533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!1593 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !1533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!1594 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!1595 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!1596 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !1597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!1597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1598 = metadata !{metadata !72, metadata !1429}
!1599 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !1600, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!1600 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1601 = metadata !{metadata !83, metadata !1429}
!1602 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !1464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!1603 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !1604, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!1604 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1605 = metadata !{metadata !497, metadata !1370, metadata !498}
!1606 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi36ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !1607, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!1607 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1608 = metadata !{metadata !497, metadata !1370, metadata !102}
!1609 = metadata !{i32 786478, i32 0, metadata !1354, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !28, i32 510, metadata !1375, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 510} ; [ DW_TAG_subprogram ]
!1610 = metadata !{metadata !1611, metadata !1612, metadata !50, metadata !510, metadata !511, metadata !512}
!1611 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !49, i64 36, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1612 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !49, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1613 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !1614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!1614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1615 = metadata !{metadata !1013, metadata !935}
!1616 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !1614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!1617 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !1618, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!1618 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1619, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1619 = metadata !{metadata !946, metadata !935, metadata !49}
!1620 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !1618, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!1621 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !1622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!1622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1623 = metadata !{metadata !914, metadata !935}
!1624 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !1625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!1625 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1626 = metadata !{metadata !1627, metadata !997}
!1627 = metadata !{i32 786434, null, metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !28, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !1628, i32 0, null, metadata !1898} ; [ DW_TAG_class_type ]
!1628 = metadata !{metadata !1629, metadata !1645, metadata !1649, metadata !1652, metadata !1655, metadata !1658, metadata !1661, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1675, metadata !1678, metadata !1681, metadata !1684, metadata !1687, metadata !1690, metadata !1693, metadata !1696, metadata !1699, metadata !1702, metadata !1705, metadata !1708, metadata !1711, metadata !1714, metadata !1718, metadata !1721, metadata !1724, metadata !1727, metadata !1730, metadata !1734, metadata !1735, metadata !1740, metadata !1741, metadata !1744, metadata !1747, metadata !1750, metadata !1753, metadata !1756, metadata !1759, metadata !1762, metadata !1765, metadata !1768, metadata !1769, metadata !1770, metadata !1773, metadata !1776, metadata !1779, metadata !1782, metadata !1785, metadata !1786, metadata !1787, metadata !1790, metadata !1793, metadata !1796, metadata !1799, metadata !1800, metadata !1803, metadata !1806, metadata !1807, metadata !1810, metadata !1811, metadata !1814, metadata !1818, metadata !1819, metadata !1822, metadata !1825, metadata !1828, metadata !1831, metadata !1832, metadata !1833, metadata !1836, metadata !1839, metadata !1840, metadata !1841, metadata !1844, metadata !1845, metadata !1846, metadata !1847, metadata !1848, metadata !1849, metadata !1853, metadata !1856, metadata !1857, metadata !1858, metadata !1861, metadata !1864, metadata !1868, metadata !1869, metadata !1872, metadata !1873, metadata !1876, metadata !1879, metadata !1880, metadata !1881, metadata !1882, metadata !1883, metadata !1886, metadata !1889, metadata !1890, metadata !1893, metadata !1896, metadata !1897}
!1629 = metadata !{i32 786460, metadata !1627, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1630} ; [ DW_TAG_inheritance ]
!1630 = metadata !{i32 786434, null, metadata !"ssdm_int<44 + 1024 * 0, true>", metadata !32, i32 46, i64 64, i64 64, i32 0, i32 0, null, metadata !1631, i32 0, null, metadata !1643} ; [ DW_TAG_class_type ]
!1631 = metadata !{metadata !1632, metadata !1634, metadata !1638}
!1632 = metadata !{i32 786445, metadata !1630, metadata !"V", metadata !32, i32 46, i64 44, i64 64, i64 0, i32 0, metadata !1633} ; [ DW_TAG_member ]
!1633 = metadata !{i32 786468, null, metadata !"int44", null, i32 0, i64 44, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1634 = metadata !{i32 786478, i32 0, metadata !1630, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 46, metadata !1635, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 46} ; [ DW_TAG_subprogram ]
!1635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1636 = metadata !{null, metadata !1637}
!1637 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1630} ; [ DW_TAG_pointer_type ]
!1638 = metadata !{i32 786478, i32 0, metadata !1630, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 46, metadata !1639, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 46} ; [ DW_TAG_subprogram ]
!1639 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1640, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1640 = metadata !{null, metadata !1637, metadata !1641}
!1641 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1642} ; [ DW_TAG_reference_type ]
!1642 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1630} ; [ DW_TAG_const_type ]
!1643 = metadata !{metadata !1644, metadata !50}
!1644 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 44, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1645 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !1646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!1646 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1647 = metadata !{null, metadata !1648, metadata !51, metadata !51, metadata !51, metadata !51}
!1648 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1627} ; [ DW_TAG_pointer_type ]
!1649 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !1650, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!1650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1651 = metadata !{metadata !51, metadata !1648, metadata !51, metadata !51, metadata !51}
!1652 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !1653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!1653 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1654 = metadata !{null, metadata !1648}
!1655 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"", metadata !28, i32 661, metadata !1656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!1656 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1657, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1657 = metadata !{null, metadata !1648, metadata !1352}
!1658 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"", metadata !28, i32 661, metadata !1659, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!1659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1660 = metadata !{null, metadata !1648, metadata !945}
!1661 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"", metadata !28, i32 661, metadata !1662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1666, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!1662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1663 = metadata !{null, metadata !1648, metadata !1664}
!1664 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1665} ; [ DW_TAG_reference_type ]
!1665 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1627} ; [ DW_TAG_const_type ]
!1666 = metadata !{metadata !1667, metadata !1668, metadata !70, metadata !950, metadata !82, metadata !90}
!1667 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !49, i64 44, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1668 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !49, i64 10, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1669 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"", metadata !28, i32 775, metadata !1656, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!1670 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"", metadata !28, i32 775, metadata !1659, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!1671 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"", metadata !28, i32 775, metadata !1662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1666, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!1672 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !1673, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!1673 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1674, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1674 = metadata !{null, metadata !1648, metadata !51}
!1675 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !1676, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!1676 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1677 = metadata !{null, metadata !1648, metadata !98}
!1678 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !1679, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!1679 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1680, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1680 = metadata !{null, metadata !1648, metadata !102}
!1681 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !1682, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!1682 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1683, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1683 = metadata !{null, metadata !1648, metadata !106}
!1684 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !1685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!1685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1686 = metadata !{null, metadata !1648, metadata !110}
!1687 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !1688, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!1688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1689 = metadata !{null, metadata !1648, metadata !114}
!1690 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !1691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!1691 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1692, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1692 = metadata !{null, metadata !1648, metadata !49}
!1693 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !1694, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!1694 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1695, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1695 = metadata !{null, metadata !1648, metadata !121}
!1696 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !1697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!1697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1698 = metadata !{null, metadata !1648, metadata !125}
!1699 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !1700, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!1700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1701 = metadata !{null, metadata !1648, metadata !129}
!1702 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !1703, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!1703 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1704, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1704 = metadata !{null, metadata !1648, metadata !133}
!1705 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !1706, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!1706 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1707 = metadata !{null, metadata !1648, metadata !138}
!1708 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !1709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!1709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1710 = metadata !{null, metadata !1648, metadata !143}
!1711 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !1712, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!1712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1713 = metadata !{null, metadata !1648, metadata !143, metadata !102}
!1714 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !1715, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!1715 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1716, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1716 = metadata !{metadata !139, metadata !1717, metadata !152}
!1717 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1665} ; [ DW_TAG_pointer_type ]
!1718 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !1719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!1719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1720 = metadata !{metadata !121, metadata !1717, metadata !156}
!1721 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !1722, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!1722 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1723, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1723 = metadata !{metadata !152, metadata !1717, metadata !139}
!1724 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !1725, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!1725 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1726, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1726 = metadata !{metadata !156, metadata !1717, metadata !121}
!1727 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !1728, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!1728 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1729, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1729 = metadata !{null, metadata !1648, metadata !152}
!1730 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !1731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!1731 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1732, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1732 = metadata !{metadata !1733, metadata !1648, metadata !1664}
!1733 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1627} ; [ DW_TAG_reference_type ]
!1734 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !1731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!1735 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !1736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!1736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1737 = metadata !{null, metadata !1738, metadata !1664}
!1738 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1739} ; [ DW_TAG_pointer_type ]
!1739 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1627} ; [ DW_TAG_volatile_type ]
!1740 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !1736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!1741 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !1742, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!1742 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1743, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1743 = metadata !{metadata !1733, metadata !1648, metadata !139}
!1744 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !1745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!1745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1746 = metadata !{metadata !1627, metadata !139}
!1747 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !1748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!1748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1749 = metadata !{metadata !1219, metadata !1717, metadata !51}
!1750 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!1751 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1752, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1752 = metadata !{metadata !49, metadata !1717}
!1753 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !1754, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!1754 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1755, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1755 = metadata !{metadata !121, metadata !1717}
!1756 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !1757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!1757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1758 = metadata !{metadata !133, metadata !1717}
!1759 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !1760, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!1760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1761 = metadata !{metadata !138, metadata !1717}
!1762 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !1763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!1763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1764 = metadata !{metadata !152, metadata !1717}
!1765 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !1766, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!1766 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1767, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1767 = metadata !{metadata !156, metadata !1717}
!1768 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !1763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!1769 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !1766, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!1770 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !1771, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!1771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1772 = metadata !{metadata !98, metadata !1717}
!1773 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !1774, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!1774 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1775, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1775 = metadata !{metadata !102, metadata !1717}
!1776 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !1777, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!1777 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1778, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1778 = metadata !{metadata !106, metadata !1717}
!1779 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !1780, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!1780 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1781, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1781 = metadata !{metadata !110, metadata !1717}
!1782 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !1783, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!1783 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1784, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1784 = metadata !{metadata !114, metadata !1717}
!1785 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!1786 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !1754, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!1787 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !1788, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!1788 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1789, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1789 = metadata !{metadata !125, metadata !1717}
!1790 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !1791, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!1791 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1792, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1792 = metadata !{metadata !129, metadata !1717}
!1793 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !1794, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!1794 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1795, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1795 = metadata !{metadata !139, metadata !1717}
!1796 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !1797, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!1797 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1798, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1798 = metadata !{metadata !134, metadata !1717}
!1799 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!1800 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !1801, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!1801 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1802 = metadata !{metadata !49, metadata !1648}
!1803 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !1804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!1804 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1805, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1805 = metadata !{metadata !1733, metadata !1648}
!1806 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !1804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!1807 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !1808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!1808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1809 = metadata !{metadata !1665, metadata !1648, metadata !49}
!1810 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !1808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!1811 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !1812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!1812 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1813, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1813 = metadata !{metadata !1627, metadata !1648}
!1814 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !1815, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!1815 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1816, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1816 = metadata !{metadata !1817, metadata !1717}
!1817 = metadata !{i32 786434, null, metadata !"ap_fixed_base<45, 11, true, 5, 3, 0>", metadata !28, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1818 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !1812, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!1819 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !1820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!1820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1821 = metadata !{metadata !51, metadata !1717}
!1822 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !1823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!1823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1824 = metadata !{metadata !1627, metadata !1717}
!1825 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!1826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1827 = metadata !{metadata !1627, metadata !1717, metadata !49}
!1828 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !1829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!1829 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1830 = metadata !{metadata !1627, metadata !1717, metadata !121}
!1831 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !1826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!1832 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !1829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!1833 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !1834, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!1834 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1835, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1835 = metadata !{metadata !1733, metadata !1648, metadata !49}
!1836 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !1837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!1837 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1838 = metadata !{metadata !1733, metadata !1648, metadata !121}
!1839 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !1834, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!1840 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !1837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!1841 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!1842 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1843, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1843 = metadata !{metadata !51, metadata !1717, metadata !152}
!1844 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!1845 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!1846 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!1847 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!1848 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !1842, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!1849 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !1850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!1850 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1851, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1851 = metadata !{metadata !1852, metadata !1648, metadata !121}
!1852 = metadata !{i32 786434, null, metadata !"af_bit_ref<44, 10, true, 5, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1853 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !1854, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!1854 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1855, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1855 = metadata !{metadata !51, metadata !1717, metadata !121}
!1856 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !1850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!1857 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !1854, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!1858 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !1859, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!1859 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1860, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1860 = metadata !{metadata !51, metadata !1717, metadata !49}
!1861 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !1862, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!1862 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1863, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1863 = metadata !{metadata !1852, metadata !1648, metadata !49}
!1864 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !1865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!1865 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1866, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1866 = metadata !{metadata !1867, metadata !1648, metadata !49, metadata !49}
!1867 = metadata !{i32 786434, null, metadata !"af_range_ref<44, 10, true, 5, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1868 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !1865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!1869 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !1870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!1870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1871 = metadata !{metadata !1867, metadata !1717, metadata !49, metadata !49}
!1872 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !1870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!1873 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !1874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!1874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1875 = metadata !{metadata !1867, metadata !1648}
!1876 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !1877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!1877 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1878, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1878 = metadata !{metadata !1867, metadata !1717}
!1879 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !1820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!1880 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !1820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!1881 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!1882 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!1883 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !1884, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!1884 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1885, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1885 = metadata !{metadata !72, metadata !1717}
!1886 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !1887, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!1887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1888 = metadata !{metadata !83, metadata !1717}
!1889 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !1751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!1890 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !1891, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!1891 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1892, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1892 = metadata !{metadata !497, metadata !1648, metadata !498}
!1893 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !1894, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!1894 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1895, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1895 = metadata !{metadata !497, metadata !1648, metadata !102}
!1896 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !28, i32 510, metadata !1653, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 510} ; [ DW_TAG_subprogram ]
!1897 = metadata !{i32 786478, i32 0, metadata !1627, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 510, metadata !1662, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 510} ; [ DW_TAG_subprogram ]
!1898 = metadata !{metadata !1899, metadata !1900, metadata !50, metadata !510, metadata !511, metadata !512}
!1899 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !49, i64 44, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1900 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !49, i64 10, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1901 = metadata !{i32 786478, i32 0, metadata !914, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !1622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!1902 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !1903, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!1903 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1904, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1904 = metadata !{metadata !51, metadata !997}
!1905 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !1906, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!1906 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1907, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1907 = metadata !{metadata !914, metadata !997}
!1908 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !1909, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!1909 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1910, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1910 = metadata !{metadata !914, metadata !997, metadata !49}
!1911 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !1912, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!1912 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1913, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1913 = metadata !{metadata !914, metadata !997, metadata !121}
!1914 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !1909, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!1915 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !1912, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!1916 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !1917, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!1917 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1918, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1918 = metadata !{metadata !1013, metadata !935, metadata !49}
!1919 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !1920, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!1920 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1921, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1921 = metadata !{metadata !1013, metadata !935, metadata !121}
!1922 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !1917, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!1923 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !1920, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!1924 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!1925 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1926, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1926 = metadata !{metadata !51, metadata !997, metadata !152}
!1927 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!1928 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!1929 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!1930 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!1931 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !1925, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!1932 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !1933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!1933 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1934, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1934 = metadata !{metadata !1935, metadata !935, metadata !121}
!1935 = metadata !{i32 786434, null, metadata !"af_bit_ref<43, 9, true, 5, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1936 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !1937, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!1937 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1938, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1938 = metadata !{metadata !51, metadata !997, metadata !121}
!1939 = metadata !{i32 786478, i32 0, metadata !914, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !1933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!1940 = metadata !{i32 786478, i32 0, metadata !914, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !1937, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!1941 = metadata !{i32 786478, i32 0, metadata !914, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !1942, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!1942 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1943, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1943 = metadata !{metadata !51, metadata !997, metadata !49}
!1944 = metadata !{i32 786478, i32 0, metadata !914, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !1945, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!1945 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1946, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1946 = metadata !{metadata !1935, metadata !935, metadata !49}
!1947 = metadata !{i32 786478, i32 0, metadata !914, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !1948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!1948 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1949, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1949 = metadata !{metadata !1950, metadata !935, metadata !49, metadata !49}
!1950 = metadata !{i32 786434, null, metadata !"af_range_ref<43, 9, true, 5, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1951 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !1948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!1952 = metadata !{i32 786478, i32 0, metadata !914, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !1953, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!1953 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1954, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1954 = metadata !{metadata !1950, metadata !997, metadata !49, metadata !49}
!1955 = metadata !{i32 786478, i32 0, metadata !914, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !1953, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!1956 = metadata !{i32 786478, i32 0, metadata !914, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !1957, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!1957 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1958, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1958 = metadata !{metadata !1950, metadata !935}
!1959 = metadata !{i32 786478, i32 0, metadata !914, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !1960, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!1960 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1961, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1961 = metadata !{metadata !1950, metadata !997}
!1962 = metadata !{i32 786478, i32 0, metadata !914, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !1903, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!1963 = metadata !{i32 786478, i32 0, metadata !914, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !1903, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!1964 = metadata !{i32 786478, i32 0, metadata !914, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!1965 = metadata !{i32 786478, i32 0, metadata !914, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!1966 = metadata !{i32 786478, i32 0, metadata !914, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !1967, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!1967 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1968, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1968 = metadata !{metadata !72, metadata !997}
!1969 = metadata !{i32 786478, i32 0, metadata !914, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !1970, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!1970 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1971, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1971 = metadata !{metadata !83, metadata !997}
!1972 = metadata !{i32 786478, i32 0, metadata !914, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!1973 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !1974, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!1974 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1975, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1975 = metadata !{metadata !497, metadata !935, metadata !498}
!1976 = metadata !{i32 786478, i32 0, metadata !914, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !1977, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!1977 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1978, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1978 = metadata !{metadata !497, metadata !935, metadata !102}
!1979 = metadata !{i32 786478, i32 0, metadata !914, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 510, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 510} ; [ DW_TAG_subprogram ]
!1980 = metadata !{metadata !1981, metadata !1982, metadata !50, metadata !510, metadata !511, metadata !512}
!1981 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !49, i64 43, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1982 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !49, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1983 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 290, metadata !1984, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 290} ; [ DW_TAG_subprogram ]
!1984 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1985, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1985 = metadata !{null, metadata !1986}
!1986 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !911} ; [ DW_TAG_pointer_type ]
!1987 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"", metadata !24, i32 294, metadata !1988, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, i32 0, metadata !40, i32 294} ; [ DW_TAG_subprogram ]
!1988 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1989, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1989 = metadata !{null, metadata !1986, metadata !909}
!1990 = metadata !{metadata !948, metadata !949, metadata !950, metadata !82, metadata !90}
!1991 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"", metadata !24, i32 313, metadata !1988, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, i32 0, metadata !40, i32 313} ; [ DW_TAG_subprogram ]
!1992 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed<43, 9, true, 5, 3, 0>", metadata !"ap_fixed<43, 9, true, 5, 3, 0>", metadata !"", metadata !24, i32 332, metadata !1993, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 332} ; [ DW_TAG_subprogram ]
!1993 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1994, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1994 = metadata !{null, metadata !1986, metadata !945}
!1995 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 362, metadata !1996, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 362} ; [ DW_TAG_subprogram ]
!1996 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1997, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1997 = metadata !{null, metadata !1986, metadata !51}
!1998 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 363, metadata !1999, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 363} ; [ DW_TAG_subprogram ]
!1999 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2000, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2000 = metadata !{null, metadata !1986, metadata !102}
!2001 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 364, metadata !2002, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 364} ; [ DW_TAG_subprogram ]
!2002 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2003, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2003 = metadata !{null, metadata !1986, metadata !106}
!2004 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 365, metadata !2005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 365} ; [ DW_TAG_subprogram ]
!2005 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2006, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2006 = metadata !{null, metadata !1986, metadata !110}
!2007 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 366, metadata !2008, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 366} ; [ DW_TAG_subprogram ]
!2008 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2009, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2009 = metadata !{null, metadata !1986, metadata !114}
!2010 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 367, metadata !2011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 367} ; [ DW_TAG_subprogram ]
!2011 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2012, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2012 = metadata !{null, metadata !1986, metadata !49}
!2013 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 368, metadata !2014, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 368} ; [ DW_TAG_subprogram ]
!2014 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2015, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2015 = metadata !{null, metadata !1986, metadata !121}
!2016 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 369, metadata !2017, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 369} ; [ DW_TAG_subprogram ]
!2017 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2018, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2018 = metadata !{null, metadata !1986, metadata !125}
!2019 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 370, metadata !2020, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 370} ; [ DW_TAG_subprogram ]
!2020 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2021, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2021 = metadata !{null, metadata !1986, metadata !129}
!2022 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 371, metadata !2023, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 371} ; [ DW_TAG_subprogram ]
!2023 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2024, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2024 = metadata !{null, metadata !1986, metadata !139}
!2025 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 372, metadata !2026, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 372} ; [ DW_TAG_subprogram ]
!2026 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2027, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2027 = metadata !{null, metadata !1986, metadata !134}
!2028 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 373, metadata !2029, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 373} ; [ DW_TAG_subprogram ]
!2029 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2030, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2030 = metadata !{null, metadata !1986, metadata !156}
!2031 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 374, metadata !2032, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 374} ; [ DW_TAG_subprogram ]
!2032 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2033, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2033 = metadata !{null, metadata !1986, metadata !152}
!2034 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 376, metadata !2035, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 376} ; [ DW_TAG_subprogram ]
!2035 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2036, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2036 = metadata !{null, metadata !1986, metadata !143}
!2037 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 377, metadata !2038, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 377} ; [ DW_TAG_subprogram ]
!2038 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2039, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2039 = metadata !{null, metadata !1986, metadata !143, metadata !102}
!2040 = metadata !{i32 786478, i32 0, metadata !911, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi43ELi9EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !24, i32 380, metadata !2041, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 380} ; [ DW_TAG_subprogram ]
!2041 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2042, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2042 = metadata !{metadata !2043, metadata !1986, metadata !909}
!2043 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !911} ; [ DW_TAG_reference_type ]
!2044 = metadata !{i32 786478, i32 0, metadata !911, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi43ELi9EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !24, i32 386, metadata !2041, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 386} ; [ DW_TAG_subprogram ]
!2045 = metadata !{i32 786478, i32 0, metadata !911, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi43ELi9EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !24, i32 391, metadata !2046, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 391} ; [ DW_TAG_subprogram ]
!2046 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2047, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2047 = metadata !{null, metadata !2048, metadata !909}
!2048 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2049} ; [ DW_TAG_pointer_type ]
!2049 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !911} ; [ DW_TAG_volatile_type ]
!2050 = metadata !{i32 786478, i32 0, metadata !911, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi43ELi9EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !24, i32 396, metadata !2046, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 396} ; [ DW_TAG_subprogram ]
!2051 = metadata !{i32 786478, i32 0, metadata !911, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 287, metadata !1988, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 287} ; [ DW_TAG_subprogram ]
!2052 = metadata !{i32 786478, i32 0, metadata !911, metadata !"~ap_fixed", metadata !"~ap_fixed", metadata !"", metadata !24, i32 287, metadata !1984, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 287} ; [ DW_TAG_subprogram ]
!2053 = metadata !{metadata !1981, metadata !1982, metadata !510, metadata !511, metadata !512}
!2054 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"", metadata !24, i32 313, metadata !907, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, i32 0, metadata !40, i32 313} ; [ DW_TAG_subprogram ]
!2055 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed<43, 9, true, 5, 3, 0>", metadata !"ap_fixed<43, 9, true, 5, 3, 0>", metadata !"", metadata !24, i32 332, metadata !2056, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, i32 0, metadata !40, i32 332} ; [ DW_TAG_subprogram ]
!2056 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2057, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2057 = metadata !{null, metadata !905, metadata !945}
!2058 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 362, metadata !2059, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 362} ; [ DW_TAG_subprogram ]
!2059 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2060, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2060 = metadata !{null, metadata !905, metadata !51}
!2061 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 363, metadata !2062, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 363} ; [ DW_TAG_subprogram ]
!2062 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2063, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2063 = metadata !{null, metadata !905, metadata !102}
!2064 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 364, metadata !2065, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 364} ; [ DW_TAG_subprogram ]
!2065 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2066, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2066 = metadata !{null, metadata !905, metadata !106}
!2067 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 365, metadata !2068, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 365} ; [ DW_TAG_subprogram ]
!2068 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2069, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2069 = metadata !{null, metadata !905, metadata !110}
!2070 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 366, metadata !2071, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 366} ; [ DW_TAG_subprogram ]
!2071 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2072, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2072 = metadata !{null, metadata !905, metadata !114}
!2073 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 367, metadata !2074, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 367} ; [ DW_TAG_subprogram ]
!2074 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2075, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2075 = metadata !{null, metadata !905, metadata !49}
!2076 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 368, metadata !2077, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 368} ; [ DW_TAG_subprogram ]
!2077 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2078, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2078 = metadata !{null, metadata !905, metadata !121}
!2079 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 369, metadata !2080, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 369} ; [ DW_TAG_subprogram ]
!2080 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2081, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2081 = metadata !{null, metadata !905, metadata !125}
!2082 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 370, metadata !2083, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 370} ; [ DW_TAG_subprogram ]
!2083 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2084, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2084 = metadata !{null, metadata !905, metadata !129}
!2085 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 371, metadata !2086, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 371} ; [ DW_TAG_subprogram ]
!2086 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2087, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2087 = metadata !{null, metadata !905, metadata !139}
!2088 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 372, metadata !2089, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 372} ; [ DW_TAG_subprogram ]
!2089 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2090, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2090 = metadata !{null, metadata !905, metadata !134}
!2091 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 373, metadata !2092, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 373} ; [ DW_TAG_subprogram ]
!2092 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2093, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2093 = metadata !{null, metadata !905, metadata !156}
!2094 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 374, metadata !2095, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 374} ; [ DW_TAG_subprogram ]
!2095 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2096, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2096 = metadata !{null, metadata !905, metadata !152}
!2097 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 376, metadata !2098, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 376} ; [ DW_TAG_subprogram ]
!2098 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2099, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2099 = metadata !{null, metadata !905, metadata !143}
!2100 = metadata !{i32 786478, i32 0, metadata !651, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !24, i32 377, metadata !2101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 377} ; [ DW_TAG_subprogram ]
!2101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2102 = metadata !{null, metadata !905, metadata !143, metadata !102}
!2103 = metadata !{i32 786478, i32 0, metadata !651, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERKS2_", metadata !24, i32 380, metadata !2104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 380} ; [ DW_TAG_subprogram ]
!2104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2105 = metadata !{metadata !2106, metadata !905, metadata !2107}
!2106 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_reference_type ]
!2107 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2108} ; [ DW_TAG_reference_type ]
!2108 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_const_type ]
!2109 = metadata !{i32 786478, i32 0, metadata !651, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERVKS2_", metadata !24, i32 386, metadata !2104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 386} ; [ DW_TAG_subprogram ]
!2110 = metadata !{i32 786478, i32 0, metadata !651, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERKS2_", metadata !24, i32 391, metadata !2111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 391} ; [ DW_TAG_subprogram ]
!2111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2112 = metadata !{null, metadata !2113, metadata !2107}
!2113 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2114} ; [ DW_TAG_pointer_type ]
!2114 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_volatile_type ]
!2115 = metadata !{i32 786478, i32 0, metadata !651, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERVKS2_", metadata !24, i32 396, metadata !2111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 396} ; [ DW_TAG_subprogram ]
!2116 = metadata !{i32 786478, i32 0, metadata !651, metadata !"~ap_fixed", metadata !"~ap_fixed", metadata !"", metadata !24, i32 287, metadata !903, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 287} ; [ DW_TAG_subprogram ]
!2117 = metadata !{metadata !508, metadata !509, metadata !900, metadata !901, metadata !512}
!2118 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !2119} ; [ DW_TAG_pointer_type ]
!2119 = metadata !{i32 786438, null, metadata !"ap_fixed<18, 1, 6, 3, 0>", metadata !24, i32 287, i64 18, i64 32, i32 0, i32 0, null, metadata !2120, i32 0, null, metadata !648} ; [ DW_TAG_class_field_type ]
!2120 = metadata !{metadata !2121}
!2121 = metadata !{i32 786438, null, metadata !"ap_fixed_base<18, 1, true, 6, 3, 0>", metadata !28, i32 510, i64 18, i64 32, i32 0, i32 0, null, metadata !2122, i32 0, null, metadata !584} ; [ DW_TAG_class_field_type ]
!2122 = metadata !{metadata !2123}
!2123 = metadata !{i32 786438, null, metadata !"ssdm_int<18 + 1024 * 0, true>", metadata !32, i32 20, i64 18, i64 32, i32 0, i32 0, null, metadata !2124, i32 0, null, metadata !47} ; [ DW_TAG_class_field_type ]
!2124 = metadata !{metadata !34}
!2125 = metadata !{i32 12, i32 20, metadata !17, null}
!2126 = metadata !{i32 790531, metadata !2127, metadata !"res.V", null, i32 12, metadata !2128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2127 = metadata !{i32 786689, metadata !17, metadata !"res", metadata !18, i32 33554444, metadata !649, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !2129} ; [ DW_TAG_pointer_type ]
!2129 = metadata !{i32 786438, null, metadata !"ap_fixed<18, 1, 4, 2, 0>", metadata !24, i32 287, i64 18, i64 32, i32 0, i32 0, null, metadata !2130, i32 0, null, metadata !2117} ; [ DW_TAG_class_field_type ]
!2130 = metadata !{metadata !2131}
!2131 = metadata !{i32 786438, null, metadata !"ap_fixed_base<18, 1, true, 4, 2, 0>", metadata !28, i32 510, i64 18, i64 32, i32 0, i32 0, null, metadata !2122, i32 0, null, metadata !899} ; [ DW_TAG_class_field_type ]
!2132 = metadata !{i32 12, i32 35, metadata !17, null}
!2133 = metadata !{i32 20, i32 20, metadata !2134, null}
!2134 = metadata !{i32 786443, metadata !2135, i32 20, i32 7, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!2135 = metadata !{i32 786443, metadata !17, i32 13, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!2136 = metadata !{i32 22, i32 2, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !2134, i32 21, i32 1, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!2138 = metadata !{i32 21, i32 2, metadata !2137, null}
!2139 = metadata !{i32 382, i32 9, metadata !2140, metadata !2136}
!2140 = metadata !{i32 786443, metadata !2141, i32 381, i32 53, metadata !24, i32 58} ; [ DW_TAG_lexical_block ]
!2141 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode6EL9ap_o_mode3ELi0EEaSERKS2_", metadata !24, i32 380, metadata !636, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !635, metadata !40, i32 381} ; [ DW_TAG_subprogram ]
!2142 = metadata !{i32 786688, metadata !2134, metadata !"i", metadata !18, i32 20, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2143 = metadata !{i32 20, i32 34, metadata !2134, null}
!2144 = metadata !{i32 790531, metadata !2145, metadata !"op.V", null, i32 381, metadata !2146, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2145 = metadata !{i32 786689, metadata !2141, metadata !"op", metadata !24, i32 33554813, metadata !639, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2146 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2119} ; [ DW_TAG_pointer_type ]
!2147 = metadata !{i32 381, i32 49, metadata !2141, metadata !2148}
!2148 = metadata !{i32 26, i32 1, metadata !2135, null}
!2149 = metadata !{i32 382, i32 9, metadata !2140, metadata !2148}
!2150 = metadata !{i32 28, i32 19, metadata !2151, null}
!2151 = metadata !{i32 786443, metadata !2135, i32 28, i32 5, metadata !18, i32 3} ; [ DW_TAG_lexical_block ]
!2152 = metadata !{i32 28, i32 28, metadata !2151, null}
!2153 = metadata !{i32 28, i32 33, metadata !2154, null}
!2154 = metadata !{i32 786443, metadata !2151, i32 28, i32 32, metadata !18, i32 4} ; [ DW_TAG_lexical_block ]
!2155 = metadata !{i32 30, i32 6, metadata !2154, null}
!2156 = metadata !{i32 1293, i32 9, metadata !2157, metadata !2155}
!2157 = metadata !{i32 786443, metadata !2158, i32 1290, i32 92, metadata !28, i32 54} ; [ DW_TAG_lexical_block ]
!2158 = metadata !{i32 786478, i32 0, null, metadata !"operator*<18, 1, true, 6, 3, 0>", metadata !"operator*<18, 1, true, 6, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEmlILi18ELi1ELb1ELS0_6ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4multERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 1290, metadata !2159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !67, null, metadata !40, i32 1290} ; [ DW_TAG_subprogram ]
!2159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2160 = metadata !{metadata !2161, metadata !2228, metadata !65}
!2161 = metadata !{i32 786454, metadata !2162, metadata !"mult", metadata !28, i32 641, i64 0, i64 0, i64 0, i32 0, metadata !1354} ; [ DW_TAG_typedef ]
!2162 = metadata !{i32 786434, metadata !2163, metadata !"RType<18, 1, true>", metadata !28, i32 616, i64 8, i64 8, i32 0, i32 0, null, metadata !1145, i32 0, null, metadata !2408} ; [ DW_TAG_class_type ]
!2163 = metadata !{i32 786434, null, metadata !"ap_fixed_base<18, 1, true, 4, 3, 0>", metadata !28, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !2164, i32 0, null, metadata !2407} ; [ DW_TAG_class_type ]
!2164 = metadata !{metadata !2165, metadata !2166, metadata !2170, metadata !2173, metadata !2176, metadata !2182, metadata !2183, metadata !2186, metadata !2189, metadata !2192, metadata !2195, metadata !2198, metadata !2201, metadata !2204, metadata !2207, metadata !2210, metadata !2213, metadata !2216, metadata !2219, metadata !2222, metadata !2225, metadata !2229, metadata !2232, metadata !2235, metadata !2238, metadata !2241, metadata !2245, metadata !2246, metadata !2251, metadata !2252, metadata !2255, metadata !2258, metadata !2261, metadata !2264, metadata !2267, metadata !2270, metadata !2273, metadata !2276, metadata !2279, metadata !2280, metadata !2281, metadata !2284, metadata !2287, metadata !2290, metadata !2293, metadata !2296, metadata !2297, metadata !2298, metadata !2301, metadata !2304, metadata !2307, metadata !2310, metadata !2311, metadata !2314, metadata !2317, metadata !2318, metadata !2321, metadata !2322, metadata !2325, metadata !2328, metadata !2329, metadata !2332, metadata !2335, metadata !2338, metadata !2341, metadata !2342, metadata !2343, metadata !2346, metadata !2349, metadata !2350, metadata !2351, metadata !2354, metadata !2355, metadata !2356, metadata !2357, metadata !2358, metadata !2359, metadata !2363, metadata !2366, metadata !2367, metadata !2368, metadata !2371, metadata !2374, metadata !2378, metadata !2379, metadata !2382, metadata !2383, metadata !2386, metadata !2389, metadata !2390, metadata !2391, metadata !2392, metadata !2393, metadata !2396, metadata !2399, metadata !2400, metadata !2403, metadata !2406}
!2165 = metadata !{i32 786460, metadata !2163, null, metadata !28, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_inheritance ]
!2166 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !2167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!2167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2168 = metadata !{null, metadata !2169, metadata !51, metadata !51, metadata !51, metadata !51}
!2169 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2163} ; [ DW_TAG_pointer_type ]
!2170 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !2171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!2171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2172 = metadata !{metadata !51, metadata !2169, metadata !51, metadata !51, metadata !51}
!2173 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 651, metadata !2174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 651} ; [ DW_TAG_subprogram ]
!2174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2175 = metadata !{null, metadata !2169}
!2176 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base<18, 1, true, 4, 3, 0>", metadata !"ap_fixed_base<18, 1, true, 4, 3, 0>", metadata !"", metadata !28, i32 661, metadata !2177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2181, i32 0, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2178 = metadata !{null, metadata !2169, metadata !2179}
!2179 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2180} ; [ DW_TAG_reference_type ]
!2180 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2163} ; [ DW_TAG_const_type ]
!2181 = metadata !{metadata !68, metadata !69, metadata !70, metadata !673, metadata !82, metadata !90}
!2182 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base<18, 1, true, 4, 3, 0>", metadata !"ap_fixed_base<18, 1, true, 4, 3, 0>", metadata !"", metadata !28, i32 775, metadata !2177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2181, i32 0, metadata !40, i32 775} ; [ DW_TAG_subprogram ]
!2183 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 787, metadata !2184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 787} ; [ DW_TAG_subprogram ]
!2184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2185 = metadata !{null, metadata !2169, metadata !51}
!2186 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 788, metadata !2187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 788} ; [ DW_TAG_subprogram ]
!2187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2188 = metadata !{null, metadata !2169, metadata !98}
!2189 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 789, metadata !2190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 789} ; [ DW_TAG_subprogram ]
!2190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2191 = metadata !{null, metadata !2169, metadata !102}
!2192 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 790, metadata !2193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 790} ; [ DW_TAG_subprogram ]
!2193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2194 = metadata !{null, metadata !2169, metadata !106}
!2195 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 791, metadata !2196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 791} ; [ DW_TAG_subprogram ]
!2196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2197 = metadata !{null, metadata !2169, metadata !110}
!2198 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 792, metadata !2199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 792} ; [ DW_TAG_subprogram ]
!2199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2200 = metadata !{null, metadata !2169, metadata !114}
!2201 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 793, metadata !2202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 793} ; [ DW_TAG_subprogram ]
!2202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2203 = metadata !{null, metadata !2169, metadata !49}
!2204 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 794, metadata !2205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 794} ; [ DW_TAG_subprogram ]
!2205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2206 = metadata !{null, metadata !2169, metadata !121}
!2207 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 796, metadata !2208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 796} ; [ DW_TAG_subprogram ]
!2208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2209 = metadata !{null, metadata !2169, metadata !125}
!2210 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 797, metadata !2211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 797} ; [ DW_TAG_subprogram ]
!2211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2212 = metadata !{null, metadata !2169, metadata !129}
!2213 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 802, metadata !2214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 802} ; [ DW_TAG_subprogram ]
!2214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2215 = metadata !{null, metadata !2169, metadata !133}
!2216 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 803, metadata !2217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 803} ; [ DW_TAG_subprogram ]
!2217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2218 = metadata !{null, metadata !2169, metadata !138}
!2219 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 804, metadata !2220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 804} ; [ DW_TAG_subprogram ]
!2220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2221 = metadata !{null, metadata !2169, metadata !143}
!2222 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 811, metadata !2223, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 811} ; [ DW_TAG_subprogram ]
!2223 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2224 = metadata !{null, metadata !2169, metadata !143, metadata !102}
!2225 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !28, i32 847, metadata !2226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 847} ; [ DW_TAG_subprogram ]
!2226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2227 = metadata !{metadata !139, metadata !2228, metadata !152}
!2228 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2180} ; [ DW_TAG_pointer_type ]
!2229 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !28, i32 855, metadata !2230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 855} ; [ DW_TAG_subprogram ]
!2230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2231 = metadata !{metadata !121, metadata !2228, metadata !156}
!2232 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !28, i32 864, metadata !2233, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 864} ; [ DW_TAG_subprogram ]
!2233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2234 = metadata !{metadata !152, metadata !2228, metadata !139}
!2235 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !28, i32 873, metadata !2236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 873} ; [ DW_TAG_subprogram ]
!2236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2237 = metadata !{metadata !156, metadata !2228, metadata !121}
!2238 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 882, metadata !2239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 882} ; [ DW_TAG_subprogram ]
!2239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2240 = metadata !{null, metadata !2169, metadata !152}
!2241 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !2242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 995} ; [ DW_TAG_subprogram ]
!2242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2243 = metadata !{metadata !2244, metadata !2169, metadata !2179}
!2244 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2163} ; [ DW_TAG_reference_type ]
!2245 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1002, metadata !2242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1002} ; [ DW_TAG_subprogram ]
!2246 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 1009, metadata !2247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1009} ; [ DW_TAG_subprogram ]
!2247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2248 = metadata !{null, metadata !2249, metadata !2179}
!2249 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2250} ; [ DW_TAG_pointer_type ]
!2250 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2163} ; [ DW_TAG_volatile_type ]
!2251 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !28, i32 1015, metadata !2247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1015} ; [ DW_TAG_subprogram ]
!2252 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE7setBitsEy", metadata !28, i32 1024, metadata !2253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1024} ; [ DW_TAG_subprogram ]
!2253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2254 = metadata !{metadata !2244, metadata !2169, metadata !139}
!2255 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !28, i32 1030, metadata !2256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1030} ; [ DW_TAG_subprogram ]
!2256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2257 = metadata !{metadata !2163, metadata !139}
!2258 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !28, i32 1039, metadata !2259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1039} ; [ DW_TAG_subprogram ]
!2259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2260 = metadata !{metadata !186, metadata !2228, metadata !51}
!2261 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6to_intEv", metadata !28, i32 1074, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1074} ; [ DW_TAG_subprogram ]
!2262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2263 = metadata !{metadata !49, metadata !2228}
!2264 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE7to_uintEv", metadata !28, i32 1077, metadata !2265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1077} ; [ DW_TAG_subprogram ]
!2265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2266 = metadata !{metadata !121, metadata !2228}
!2267 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !28, i32 1080, metadata !2268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1080} ; [ DW_TAG_subprogram ]
!2268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2269 = metadata !{metadata !133, metadata !2228}
!2270 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !28, i32 1083, metadata !2271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1083} ; [ DW_TAG_subprogram ]
!2271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2272 = metadata !{metadata !138, metadata !2228}
!2273 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !28, i32 1086, metadata !2274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1086} ; [ DW_TAG_subprogram ]
!2274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2275 = metadata !{metadata !152, metadata !2228}
!2276 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE8to_floatEv", metadata !28, i32 1139, metadata !2277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1139} ; [ DW_TAG_subprogram ]
!2277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2278 = metadata !{metadata !156, metadata !2228}
!2279 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvdEv", metadata !28, i32 1190, metadata !2274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1190} ; [ DW_TAG_subprogram ]
!2280 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvfEv", metadata !28, i32 1194, metadata !2277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1194} ; [ DW_TAG_subprogram ]
!2281 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvcEv", metadata !28, i32 1198, metadata !2282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1198} ; [ DW_TAG_subprogram ]
!2282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2283 = metadata !{metadata !98, metadata !2228}
!2284 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvaEv", metadata !28, i32 1202, metadata !2285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1202} ; [ DW_TAG_subprogram ]
!2285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2286 = metadata !{metadata !102, metadata !2228}
!2287 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvhEv", metadata !28, i32 1206, metadata !2288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1206} ; [ DW_TAG_subprogram ]
!2288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2289 = metadata !{metadata !106, metadata !2228}
!2290 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvsEv", metadata !28, i32 1210, metadata !2291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1210} ; [ DW_TAG_subprogram ]
!2291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2292 = metadata !{metadata !110, metadata !2228}
!2293 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvtEv", metadata !28, i32 1214, metadata !2294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1214} ; [ DW_TAG_subprogram ]
!2294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2295 = metadata !{metadata !114, metadata !2228}
!2296 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcviEv", metadata !28, i32 1219, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1219} ; [ DW_TAG_subprogram ]
!2297 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvjEv", metadata !28, i32 1223, metadata !2265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1223} ; [ DW_TAG_subprogram ]
!2298 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvlEv", metadata !28, i32 1228, metadata !2299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1228} ; [ DW_TAG_subprogram ]
!2299 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2300 = metadata !{metadata !125, metadata !2228}
!2301 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvmEv", metadata !28, i32 1232, metadata !2302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1232} ; [ DW_TAG_subprogram ]
!2302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2303 = metadata !{metadata !129, metadata !2228}
!2304 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvyEv", metadata !28, i32 1245, metadata !2305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1245} ; [ DW_TAG_subprogram ]
!2305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2306 = metadata !{metadata !139, metadata !2228}
!2307 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcvxEv", metadata !28, i32 1249, metadata !2308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1249} ; [ DW_TAG_subprogram ]
!2308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2309 = metadata !{metadata !134, metadata !2228}
!2310 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6lengthEv", metadata !28, i32 1253, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1253} ; [ DW_TAG_subprogram ]
!2311 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !28, i32 1257, metadata !2312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1257} ; [ DW_TAG_subprogram ]
!2312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2313 = metadata !{metadata !49, metadata !2169}
!2314 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEppEv", metadata !28, i32 1358, metadata !2315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1358} ; [ DW_TAG_subprogram ]
!2315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2316 = metadata !{metadata !2244, metadata !2169}
!2317 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEmmEv", metadata !28, i32 1362, metadata !2315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1362} ; [ DW_TAG_subprogram ]
!2318 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEppEi", metadata !28, i32 1370, metadata !2319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1370} ; [ DW_TAG_subprogram ]
!2319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2320 = metadata !{metadata !2180, metadata !2169, metadata !49}
!2321 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEmmEi", metadata !28, i32 1376, metadata !2319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1376} ; [ DW_TAG_subprogram ]
!2322 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEpsEv", metadata !28, i32 1384, metadata !2323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1384} ; [ DW_TAG_subprogram ]
!2323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2324 = metadata !{metadata !2163, metadata !2169}
!2325 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEngEv", metadata !28, i32 1388, metadata !2326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1388} ; [ DW_TAG_subprogram ]
!2326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2327 = metadata !{metadata !254, metadata !2228}
!2328 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6getNegEv", metadata !28, i32 1394, metadata !2323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1394} ; [ DW_TAG_subprogram ]
!2329 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEntEv", metadata !28, i32 1402, metadata !2330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1402} ; [ DW_TAG_subprogram ]
!2330 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2331 = metadata !{metadata !51, metadata !2228}
!2332 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEcoEv", metadata !28, i32 1408, metadata !2333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1408} ; [ DW_TAG_subprogram ]
!2333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2334 = metadata !{metadata !262, metadata !2228}
!2335 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EElsEi", metadata !28, i32 1431, metadata !2336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1431} ; [ DW_TAG_subprogram ]
!2336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2337 = metadata !{metadata !2163, metadata !2228, metadata !49}
!2338 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EElsEj", metadata !28, i32 1490, metadata !2339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1490} ; [ DW_TAG_subprogram ]
!2339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2340 = metadata !{metadata !2163, metadata !2228, metadata !121}
!2341 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EErsEi", metadata !28, i32 1534, metadata !2336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1534} ; [ DW_TAG_subprogram ]
!2342 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EErsEj", metadata !28, i32 1592, metadata !2339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1592} ; [ DW_TAG_subprogram ]
!2343 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EElSEi", metadata !28, i32 1644, metadata !2344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1644} ; [ DW_TAG_subprogram ]
!2344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2345 = metadata !{metadata !2244, metadata !2169, metadata !49}
!2346 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EElSEj", metadata !28, i32 1707, metadata !2347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1707} ; [ DW_TAG_subprogram ]
!2347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2348 = metadata !{metadata !2244, metadata !2169, metadata !121}
!2349 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EErSEi", metadata !28, i32 1754, metadata !2344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!2350 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EErSEj", metadata !28, i32 1816, metadata !2347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1816} ; [ DW_TAG_subprogram ]
!2351 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEeqEd", metadata !28, i32 1894, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1894} ; [ DW_TAG_subprogram ]
!2352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2353 = metadata !{metadata !51, metadata !2228, metadata !152}
!2354 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEneEd", metadata !28, i32 1895, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1895} ; [ DW_TAG_subprogram ]
!2355 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEgtEd", metadata !28, i32 1896, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1896} ; [ DW_TAG_subprogram ]
!2356 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEgeEd", metadata !28, i32 1897, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1897} ; [ DW_TAG_subprogram ]
!2357 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEltEd", metadata !28, i32 1898, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1898} ; [ DW_TAG_subprogram ]
!2358 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEleEd", metadata !28, i32 1899, metadata !2352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1899} ; [ DW_TAG_subprogram ]
!2359 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1902, metadata !2360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1902} ; [ DW_TAG_subprogram ]
!2360 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2361 = metadata !{metadata !2362, metadata !2169, metadata !121}
!2362 = metadata !{i32 786434, null, metadata !"af_bit_ref<18, 1, true, 4, 3, 0>", metadata !28, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!2363 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEixEj", metadata !28, i32 1914, metadata !2364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1914} ; [ DW_TAG_subprogram ]
!2364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2365 = metadata !{metadata !51, metadata !2228, metadata !121}
!2366 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1919, metadata !2360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1919} ; [ DW_TAG_subprogram ]
!2367 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE3bitEj", metadata !28, i32 1932, metadata !2364, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1932} ; [ DW_TAG_subprogram ]
!2368 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1944, metadata !2369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1944} ; [ DW_TAG_subprogram ]
!2369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2370 = metadata !{metadata !51, metadata !2228, metadata !49}
!2371 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE7get_bitEi", metadata !28, i32 1950, metadata !2372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1950} ; [ DW_TAG_subprogram ]
!2372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2373 = metadata !{metadata !2362, metadata !2169, metadata !49}
!2374 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1965, metadata !2375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1965} ; [ DW_TAG_subprogram ]
!2375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2376 = metadata !{metadata !2377, metadata !2169, metadata !49, metadata !49}
!2377 = metadata !{i32 786434, null, metadata !"af_range_ref<18, 1, true, 4, 3, 0>", metadata !28, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!2378 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 1971, metadata !2375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1971} ; [ DW_TAG_subprogram ]
!2379 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE5rangeEii", metadata !28, i32 1977, metadata !2380, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1977} ; [ DW_TAG_subprogram ]
!2380 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2381, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2381 = metadata !{metadata !2377, metadata !2228, metadata !49, metadata !49}
!2382 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EEclEii", metadata !28, i32 2026, metadata !2380, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2026} ; [ DW_TAG_subprogram ]
!2383 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2031, metadata !2384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2031} ; [ DW_TAG_subprogram ]
!2384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2385 = metadata !{metadata !2377, metadata !2169}
!2386 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE5rangeEv", metadata !28, i32 2036, metadata !2387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2036} ; [ DW_TAG_subprogram ]
!2387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2388 = metadata !{metadata !2377, metadata !2228}
!2389 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !28, i32 2040, metadata !2330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!2390 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6is_negEv", metadata !28, i32 2044, metadata !2330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2044} ; [ DW_TAG_subprogram ]
!2391 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE2wlEv", metadata !28, i32 2050, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2050} ; [ DW_TAG_subprogram ]
!2392 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE3iwlEv", metadata !28, i32 2054, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!2393 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6q_modeEv", metadata !28, i32 2058, metadata !2394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2058} ; [ DW_TAG_subprogram ]
!2394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2395 = metadata !{metadata !72, metadata !2228}
!2396 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6o_modeEv", metadata !28, i32 2062, metadata !2397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2062} ; [ DW_TAG_subprogram ]
!2397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2398 = metadata !{metadata !83, metadata !2228}
!2399 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !28, i32 2066, metadata !2262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2066} ; [ DW_TAG_subprogram ]
!2400 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !28, i32 2070, metadata !2401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2070} ; [ DW_TAG_subprogram ]
!2401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2402 = metadata !{metadata !497, metadata !2169, metadata !498}
!2403 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode3ELi0EE9to_stringEa", metadata !28, i32 2074, metadata !2404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2074} ; [ DW_TAG_subprogram ]
!2404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2405 = metadata !{metadata !497, metadata !2169, metadata !102}
!2406 = metadata !{i32 786478, i32 0, metadata !2163, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !28, i32 510, metadata !2177, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 510} ; [ DW_TAG_subprogram ]
!2407 = metadata !{metadata !508, metadata !509, metadata !50, metadata !900, metadata !511, metadata !512}
!2408 = metadata !{metadata !68, metadata !69, metadata !70}
!2409 = metadata !{i32 1295, i32 9, metadata !2157, metadata !2155}
!2410 = metadata !{i32 1296, i32 9, metadata !2157, metadata !2155}
!2411 = metadata !{i32 790529, metadata !2412, metadata !"r.V", null, i32 1291, metadata !2414, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!2412 = metadata !{i32 786688, metadata !2157, metadata !"r", metadata !28, i32 1291, metadata !2413, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2413 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2161} ; [ DW_TAG_reference_type ]
!2414 = metadata !{i32 786438, null, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !28, i32 510, i64 36, i64 64, i32 0, i32 0, null, metadata !2415, i32 0, null, metadata !1610} ; [ DW_TAG_class_field_type ]
!2415 = metadata !{metadata !2416}
!2416 = metadata !{i32 786438, null, metadata !"ssdm_int<36 + 1024 * 0, true>", metadata !32, i32 38, i64 36, i64 64, i32 0, i32 0, null, metadata !2417, i32 0, null, metadata !1365} ; [ DW_TAG_class_field_type ]
!2417 = metadata !{metadata !1359}
!2418 = metadata !{i32 786688, metadata !2419, metadata !"__Val2__", metadata !28, i32 673, metadata !920, i32 0, metadata !2422} ; [ DW_TAG_auto_variable ]
!2419 = metadata !{i32 786443, metadata !2420, i32 673, i32 25, metadata !28, i32 46} ; [ DW_TAG_lexical_block ]
!2420 = metadata !{i32 786443, metadata !2421, i32 661, i32 115, metadata !28, i32 45} ; [ DW_TAG_lexical_block ]
!2421 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi43ELi9ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !1659, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, metadata !1658, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2422 = metadata !{i32 771, i32 5, metadata !2423, metadata !2424}
!2423 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi43ELi9ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !1659, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, metadata !1658, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2424 = metadata !{i32 1329, i32 0, metadata !2425, metadata !2432}
!2425 = metadata !{i32 786443, metadata !2426, i32 1329, i32 265, metadata !28, i32 41} ; [ DW_TAG_lexical_block ]
!2426 = metadata !{i32 786478, i32 0, null, metadata !"operator+<36, 2, true, 5, 3, 0>", metadata !"operator+<36, 2, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi36ELi2ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 1329, metadata !2427, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, null, metadata !40, i32 1329} ; [ DW_TAG_subprogram ]
!2427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2428 = metadata !{metadata !2429, metadata !997, metadata !1352}
!2429 = metadata !{i32 786454, metadata !2430, metadata !"plus", metadata !28, i32 642, i64 0, i64 0, i64 0, i32 0, metadata !1627} ; [ DW_TAG_typedef ]
!2430 = metadata !{i32 786434, metadata !914, metadata !"RType<36, 2, true>", metadata !28, i32 616, i64 8, i64 8, i32 0, i32 0, null, metadata !1145, i32 0, null, metadata !2431} ; [ DW_TAG_class_type ]
!2431 = metadata !{metadata !1381, metadata !1382, metadata !70}
!2432 = metadata !{i32 1347, i32 243, metadata !2433, metadata !2435}
!2433 = metadata !{i32 786443, metadata !2434, i32 1347, i32 231, metadata !28, i32 40} ; [ DW_TAG_lexical_block ]
!2434 = metadata !{i32 786478, i32 0, null, metadata !"operator+=<36, 2, true, 5, 3, 0>", metadata !"operator+=<36, 2, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpLILi36ELi2ELb1ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 1347, metadata !1350, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, metadata !1349, metadata !40, i32 1347} ; [ DW_TAG_subprogram ]
!2435 = metadata !{i32 31, i32 2, metadata !2154, null}
!2436 = metadata !{i32 673, i32 0, metadata !2419, metadata !2422}
!2437 = metadata !{i32 786688, metadata !2438, metadata !"__Val2__", metadata !28, i32 673, metadata !1360, i32 0, metadata !2441} ; [ DW_TAG_auto_variable ]
!2438 = metadata !{i32 786443, metadata !2439, i32 673, i32 25, metadata !28, i32 43} ; [ DW_TAG_lexical_block ]
!2439 = metadata !{i32 786443, metadata !2440, i32 661, i32 115, metadata !28, i32 42} ; [ DW_TAG_lexical_block ]
!2440 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi36ELi2ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !1656, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, metadata !1655, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2441 = metadata !{i32 771, i32 5, metadata !2442, metadata !2424}
!2442 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"ap_fixed_base<36, 2, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi44ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi36ELi2ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !1656, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1380, metadata !1655, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2443 = metadata !{i32 673, i32 0, metadata !2438, metadata !2441}
!2444 = metadata !{i32 677, i32 13, metadata !2445, metadata !2449}
!2445 = metadata !{i32 786443, metadata !2446, i32 661, i32 115, metadata !28, i32 48} ; [ DW_TAG_lexical_block ]
!2446 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi44ELi10ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !2447, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1666, null, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2447 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2448, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2448 = metadata !{null, metadata !935, metadata !1664}
!2449 = metadata !{i32 771, i32 5, metadata !2450, metadata !2432}
!2450 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<44, 10, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi44ELi10ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !2447, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1666, null, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2451 = metadata !{i32 790529, metadata !2452, metadata !"accu.V", null, i32 17, metadata !2454, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!2452 = metadata !{i32 786688, metadata !2135, metadata !"accu", metadata !18, i32 17, metadata !2453, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2453 = metadata !{i32 786454, null, metadata !"accu_t", metadata !18, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !911} ; [ DW_TAG_typedef ]
!2454 = metadata !{i32 786438, null, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !24, i32 287, i64 43, i64 64, i32 0, i32 0, null, metadata !2455, i32 0, null, metadata !2053} ; [ DW_TAG_class_field_type ]
!2455 = metadata !{metadata !2456}
!2456 = metadata !{i32 786438, null, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !28, i32 510, i64 43, i64 64, i32 0, i32 0, null, metadata !2457, i32 0, null, metadata !1980} ; [ DW_TAG_class_field_type ]
!2457 = metadata !{metadata !2458}
!2458 = metadata !{i32 786438, null, metadata !"ssdm_int<43 + 1024 * 0, true>", metadata !32, i32 45, i64 43, i64 64, i32 0, i32 0, null, metadata !2459, i32 0, null, metadata !930} ; [ DW_TAG_class_field_type ]
!2459 = metadata !{metadata !919}
!2460 = metadata !{i32 998, i32 9, metadata !2461, metadata !2432}
!2461 = metadata !{i32 786443, metadata !2462, i32 997, i32 5, metadata !28, i32 51} ; [ DW_TAG_lexical_block ]
!2462 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi43ELi9ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !28, i32 995, metadata !1011, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1010, metadata !40, i32 997} ; [ DW_TAG_subprogram ]
!2463 = metadata !{i32 786688, metadata !2151, metadata !"i", metadata !18, i32 28, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!2464 = metadata !{i32 786688, metadata !2465, metadata !"__Val2__", metadata !28, i32 673, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2465 = metadata !{i32 786443, metadata !2466, i32 673, i32 25, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!2466 = metadata !{i32 786443, metadata !2467, i32 661, i32 115, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!2467 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"ap_fixed_base<43, 9, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EEC2ILi43ELi9ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !28, i32 661, metadata !2468, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !947, null, metadata !40, i32 661} ; [ DW_TAG_subprogram ]
!2468 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2469 = metadata !{null, metadata !660, metadata !945}
!2470 = metadata !{i32 296, i32 62, metadata !2471, metadata !2472}
!2471 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEC2ILi43ELi9ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EE", metadata !24, i32 294, metadata !907, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, metadata !906, metadata !40, i32 296} ; [ DW_TAG_subprogram ]
!2472 = metadata !{i32 296, i32 63, metadata !2473, metadata !2474}
!2473 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"ap_fixed<43, 9, 5, 3, 0>", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEC1ILi43ELi9ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EE", metadata !24, i32 294, metadata !907, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1990, metadata !906, metadata !40, i32 296} ; [ DW_TAG_subprogram ]
!2474 = metadata !{i32 33, i32 1, metadata !2135, null}
!2475 = metadata !{i32 673, i32 0, metadata !2465, metadata !2470}
!2476 = metadata !{i32 786688, metadata !2466, metadata !"signbit", metadata !28, i32 673, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2477 = metadata !{i32 786688, metadata !2466, metadata !"isneg", metadata !28, i32 675, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2478 = metadata !{i32 675, i32 14, metadata !2466, metadata !2470}
!2479 = metadata !{i32 680, i32 17, metadata !2480, metadata !2470}
!2480 = metadata !{i32 786443, metadata !2466, i32 678, i32 30, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!2481 = metadata !{i32 786688, metadata !2482, metadata !"__Val2__", metadata !28, i32 687, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2482 = metadata !{i32 786443, metadata !2483, i32 687, i32 30, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!2483 = metadata !{i32 786443, metadata !2480, i32 686, i32 68, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
!2484 = metadata !{i32 687, i32 0, metadata !2482, metadata !2470}
!2485 = metadata !{i32 786688, metadata !2483, metadata !"qbit", metadata !28, i32 687, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2486 = metadata !{i32 786688, metadata !2483, metadata !"qb", metadata !28, i32 689, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2487 = metadata !{i32 689, i32 73, metadata !2483, metadata !2470}
!2488 = metadata !{i32 786688, metadata !2489, metadata !"__Val2__", metadata !28, i32 692, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2489 = metadata !{i32 786443, metadata !2483, i32 692, i32 27, metadata !28, i32 12} ; [ DW_TAG_lexical_block ]
!2490 = metadata !{i32 692, i32 0, metadata !2489, metadata !2470}
!2491 = metadata !{i32 786688, metadata !2483, metadata !"r", metadata !28, i32 691, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2492 = metadata !{i32 786689, metadata !2493, metadata !"qb", metadata !28, i32 33555025, metadata !51, i32 0, metadata !2494} ; [ DW_TAG_arg_variable ]
!2493 = metadata !{i32 786478, i32 0, null, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE19quantization_adjustEbbb", metadata !28, i32 593, metadata !662, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !661, metadata !40, i32 593} ; [ DW_TAG_subprogram ]
!2494 = metadata !{i32 695, i32 25, metadata !2483, metadata !2470}
!2495 = metadata !{i32 593, i32 61, metadata !2493, metadata !2494}
!2496 = metadata !{i32 786689, metadata !2493, metadata !"r", metadata !28, i32 50332241, metadata !51, i32 0, metadata !2494} ; [ DW_TAG_arg_variable ]
!2497 = metadata !{i32 593, i32 70, metadata !2493, metadata !2494}
!2498 = metadata !{i32 786689, metadata !2493, metadata !"s", metadata !28, i32 67109457, metadata !51, i32 0, metadata !2494} ; [ DW_TAG_arg_variable ]
!2499 = metadata !{i32 593, i32 78, metadata !2493, metadata !2494}
!2500 = metadata !{i32 786688, metadata !2501, metadata !"__Val2__", metadata !28, i32 597, metadata !35, i32 0, metadata !2494} ; [ DW_TAG_auto_variable ]
!2501 = metadata !{i32 786443, metadata !2502, i32 597, i32 27, metadata !28, i32 35} ; [ DW_TAG_lexical_block ]
!2502 = metadata !{i32 786443, metadata !2493, i32 593, i32 81, metadata !28, i32 34} ; [ DW_TAG_lexical_block ]
!2503 = metadata !{i32 597, i32 95, metadata !2501, metadata !2494}
!2504 = metadata !{i32 597, i32 97, metadata !2501, metadata !2494}
!2505 = metadata !{i32 786688, metadata !2506, metadata !"__Val2__", metadata !28, i32 607, metadata !35, i32 0, metadata !2494} ; [ DW_TAG_auto_variable ]
!2506 = metadata !{i32 786443, metadata !2502, i32 607, i32 20, metadata !28, i32 36} ; [ DW_TAG_lexical_block ]
!2507 = metadata !{i32 607, i32 88, metadata !2506, metadata !2494}
!2508 = metadata !{i32 607, i32 90, metadata !2506, metadata !2494}
!2509 = metadata !{i32 607, i32 189, metadata !2506, metadata !2494}
!2510 = metadata !{i32 610, i32 9, metadata !2502, metadata !2494}
!2511 = metadata !{i32 786688, metadata !2512, metadata !"__Val2__", metadata !28, i32 612, metadata !35, i32 0, metadata !2494} ; [ DW_TAG_auto_variable ]
!2512 = metadata !{i32 786443, metadata !2502, i32 612, i32 32, metadata !28, i32 37} ; [ DW_TAG_lexical_block ]
!2513 = metadata !{i32 612, i32 100, metadata !2512, metadata !2494}
!2514 = metadata !{i32 612, i32 102, metadata !2512, metadata !2494}
!2515 = metadata !{i32 612, i32 213, metadata !2512, metadata !2494}
!2516 = metadata !{i32 786688, metadata !2466, metadata !"carry", metadata !28, i32 667, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2517 = metadata !{i32 786688, metadata !2518, metadata !"neg_src", metadata !28, i32 712, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2518 = metadata !{i32 786443, metadata !2466, i32 709, i32 48, metadata !28, i32 13} ; [ DW_TAG_lexical_block ]
!2519 = metadata !{i32 712, i32 33, metadata !2518, metadata !2470}
!2520 = metadata !{i32 786688, metadata !2521, metadata !"__Val2__", metadata !28, i32 715, metadata !35, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2521 = metadata !{i32 786443, metadata !2518, i32 715, i32 32, metadata !28, i32 14} ; [ DW_TAG_lexical_block ]
!2522 = metadata !{i32 715, i32 100, metadata !2521, metadata !2470}
!2523 = metadata !{i32 786688, metadata !2518, metadata !"newsignbit", metadata !28, i32 715, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2524 = metadata !{i32 715, i32 213, metadata !2521, metadata !2470}
!2525 = metadata !{i32 786688, metadata !2526, metadata !"__Val2__", metadata !28, i32 719, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2526 = metadata !{i32 786443, metadata !2518, i32 719, i32 23, metadata !28, i32 15} ; [ DW_TAG_lexical_block ]
!2527 = metadata !{i32 719, i32 0, metadata !2526, metadata !2470}
!2528 = metadata !{i32 786688, metadata !2529, metadata !"__Val2__", metadata !28, i32 733, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2529 = metadata !{i32 786443, metadata !2530, i32 733, i32 33, metadata !28, i32 18} ; [ DW_TAG_lexical_block ]
!2530 = metadata !{i32 786443, metadata !2531, i32 732, i32 49, metadata !28, i32 17} ; [ DW_TAG_lexical_block ]
!2531 = metadata !{i32 786443, metadata !2518, i32 724, i32 13, metadata !28, i32 16} ; [ DW_TAG_lexical_block ]
!2532 = metadata !{i32 733, i32 0, metadata !2529, metadata !2470}
!2533 = metadata !{i32 1975, i32 9, metadata !2534, metadata !2781}
!2534 = metadata !{i32 786443, metadata !2535, i32 1974, i32 107, metadata !73, i32 32} ; [ DW_TAG_lexical_block ]
!2535 = metadata !{i32 786478, i32 0, null, metadata !"operator==<43, false>", metadata !"operator==<43, false>", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEeqILi43ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !73, i32 1974, metadata !2536, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2566, metadata !2738, metadata !40, i32 1974} ; [ DW_TAG_subprogram ]
!2536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2537 = metadata !{metadata !51, metadata !2538, metadata !2565}
!2538 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2539} ; [ DW_TAG_pointer_type ]
!2539 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2540} ; [ DW_TAG_const_type ]
!2540 = metadata !{i32 786434, null, metadata !"ap_int_base<43, false, true>", metadata !73, i32 1396, i64 64, i64 64, i32 0, i32 0, null, metadata !2541, i32 0, null, metadata !2780} ; [ DW_TAG_class_type ]
!2541 = metadata !{metadata !2542, metadata !2558, metadata !2562, metadata !2568, metadata !2569, metadata !2572, metadata !2575, metadata !2578, metadata !2581, metadata !2584, metadata !2587, metadata !2590, metadata !2593, metadata !2596, metadata !2599, metadata !2602, metadata !2605, metadata !2608, metadata !2611, metadata !2614, metadata !2619, metadata !2622, metadata !2623, metadata !2624, metadata !2628, metadata !2629, metadata !2632, metadata !2635, metadata !2638, metadata !2641, metadata !2644, metadata !2647, metadata !2650, metadata !2653, metadata !2656, metadata !2659, metadata !2667, metadata !2670, metadata !2671, metadata !2672, metadata !2673, metadata !2674, metadata !2677, metadata !2680, metadata !2683, metadata !2686, metadata !2689, metadata !2692, metadata !2695, metadata !2696, metadata !2701, metadata !2704, metadata !2705, metadata !2706, metadata !2707, metadata !2708, metadata !2709, metadata !2712, metadata !2713, metadata !2716, metadata !2717, metadata !2718, metadata !2719, metadata !2720, metadata !2721, metadata !2724, metadata !2725, metadata !2726, metadata !2729, metadata !2730, metadata !2733, metadata !2734, metadata !2738, metadata !2739, metadata !2743, metadata !2744, metadata !2747, metadata !2748, metadata !2752, metadata !2753, metadata !2754, metadata !2755, metadata !2758, metadata !2759, metadata !2760, metadata !2761, metadata !2762, metadata !2763, metadata !2764, metadata !2765, metadata !2766, metadata !2767, metadata !2768, metadata !2769, metadata !2772, metadata !2775, metadata !2778, metadata !2779}
!2542 = metadata !{i32 786460, metadata !2540, null, metadata !73, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2543} ; [ DW_TAG_inheritance ]
!2543 = metadata !{i32 786434, null, metadata !"ssdm_int<43 + 1024 * 0, false>", metadata !32, i32 45, i64 64, i64 64, i32 0, i32 0, null, metadata !2544, i32 0, null, metadata !2556} ; [ DW_TAG_class_type ]
!2544 = metadata !{metadata !2545, metadata !2547, metadata !2551}
!2545 = metadata !{i32 786445, metadata !2543, metadata !"V", metadata !32, i32 45, i64 43, i64 64, i64 0, i32 0, metadata !2546} ; [ DW_TAG_member ]
!2546 = metadata !{i32 786468, null, metadata !"uint43", null, i32 0, i64 43, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!2547 = metadata !{i32 786478, i32 0, metadata !2543, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 45, metadata !2548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 45} ; [ DW_TAG_subprogram ]
!2548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2549 = metadata !{null, metadata !2550}
!2550 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2543} ; [ DW_TAG_pointer_type ]
!2551 = metadata !{i32 786478, i32 0, metadata !2543, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !32, i32 45, metadata !2552, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 45} ; [ DW_TAG_subprogram ]
!2552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2553 = metadata !{null, metadata !2550, metadata !2554}
!2554 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2555} ; [ DW_TAG_reference_type ]
!2555 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2543} ; [ DW_TAG_const_type ]
!2556 = metadata !{metadata !931, metadata !2557}
!2557 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !51, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!2558 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1437, metadata !2559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1437} ; [ DW_TAG_subprogram ]
!2559 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2560 = metadata !{null, metadata !2561}
!2561 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2540} ; [ DW_TAG_pointer_type ]
!2562 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base<43, false>", metadata !"ap_int_base<43, false>", metadata !"", metadata !73, i32 1449, metadata !2563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2566, i32 0, metadata !40, i32 1449} ; [ DW_TAG_subprogram ]
!2563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2564 = metadata !{null, metadata !2561, metadata !2565}
!2565 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2539} ; [ DW_TAG_reference_type ]
!2566 = metadata !{metadata !948, metadata !2567}
!2567 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !51, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!2568 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base<43, false>", metadata !"ap_int_base<43, false>", metadata !"", metadata !73, i32 1452, metadata !2563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2566, i32 0, metadata !40, i32 1452} ; [ DW_TAG_subprogram ]
!2569 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1459, metadata !2570, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1459} ; [ DW_TAG_subprogram ]
!2570 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2571, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2571 = metadata !{null, metadata !2561, metadata !51}
!2572 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1460, metadata !2573, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1460} ; [ DW_TAG_subprogram ]
!2573 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2574, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2574 = metadata !{null, metadata !2561, metadata !102}
!2575 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1461, metadata !2576, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1461} ; [ DW_TAG_subprogram ]
!2576 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2577, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2577 = metadata !{null, metadata !2561, metadata !106}
!2578 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1462, metadata !2579, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1462} ; [ DW_TAG_subprogram ]
!2579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2580 = metadata !{null, metadata !2561, metadata !110}
!2581 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1463, metadata !2582, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1463} ; [ DW_TAG_subprogram ]
!2582 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2583 = metadata !{null, metadata !2561, metadata !114}
!2584 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1464, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1464} ; [ DW_TAG_subprogram ]
!2585 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2586, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2586 = metadata !{null, metadata !2561, metadata !49}
!2587 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1465, metadata !2588, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1465} ; [ DW_TAG_subprogram ]
!2588 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2589, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2589 = metadata !{null, metadata !2561, metadata !121}
!2590 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1466, metadata !2591, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1466} ; [ DW_TAG_subprogram ]
!2591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2592 = metadata !{null, metadata !2561, metadata !125}
!2593 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1467, metadata !2594, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1467} ; [ DW_TAG_subprogram ]
!2594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2595 = metadata !{null, metadata !2561, metadata !129}
!2596 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1468, metadata !2597, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1468} ; [ DW_TAG_subprogram ]
!2597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2598 = metadata !{null, metadata !2561, metadata !133}
!2599 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1469, metadata !2600, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1469} ; [ DW_TAG_subprogram ]
!2600 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2601 = metadata !{null, metadata !2561, metadata !138}
!2602 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1470, metadata !2603, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1470} ; [ DW_TAG_subprogram ]
!2603 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2604, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2604 = metadata !{null, metadata !2561, metadata !156}
!2605 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1471, metadata !2606, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !40, i32 1471} ; [ DW_TAG_subprogram ]
!2606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2607 = metadata !{null, metadata !2561, metadata !152}
!2608 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1498, metadata !2609, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1498} ; [ DW_TAG_subprogram ]
!2609 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2610 = metadata !{null, metadata !2561, metadata !143}
!2611 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1505, metadata !2612, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1505} ; [ DW_TAG_subprogram ]
!2612 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2613, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2613 = metadata !{null, metadata !2561, metadata !143, metadata !102}
!2614 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi43ELb0ELb1EE4readEv", metadata !73, i32 1526, metadata !2615, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1526} ; [ DW_TAG_subprogram ]
!2615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2616 = metadata !{metadata !2540, metadata !2617}
!2617 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2618} ; [ DW_TAG_pointer_type ]
!2618 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2540} ; [ DW_TAG_volatile_type ]
!2619 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi43ELb0ELb1EE5writeERKS0_", metadata !73, i32 1532, metadata !2620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1532} ; [ DW_TAG_subprogram ]
!2620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2621 = metadata !{null, metadata !2617, metadata !2565}
!2622 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi43ELb0ELb1EEaSERVKS0_", metadata !73, i32 1544, metadata !2620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1544} ; [ DW_TAG_subprogram ]
!2623 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi43ELb0ELb1EEaSERKS0_", metadata !73, i32 1553, metadata !2620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1553} ; [ DW_TAG_subprogram ]
!2624 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSERVKS0_", metadata !73, i32 1576, metadata !2625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1576} ; [ DW_TAG_subprogram ]
!2625 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2626 = metadata !{metadata !2627, metadata !2561, metadata !2565}
!2627 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2540} ; [ DW_TAG_reference_type ]
!2628 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSERKS0_", metadata !73, i32 1581, metadata !2625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1581} ; [ DW_TAG_subprogram ]
!2629 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEPKc", metadata !73, i32 1585, metadata !2630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1585} ; [ DW_TAG_subprogram ]
!2630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2631 = metadata !{metadata !2627, metadata !2561, metadata !143}
!2632 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE3setEPKca", metadata !73, i32 1593, metadata !2633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1593} ; [ DW_TAG_subprogram ]
!2633 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2634, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2634 = metadata !{metadata !2627, metadata !2561, metadata !143, metadata !102}
!2635 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEc", metadata !73, i32 1607, metadata !2636, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1607} ; [ DW_TAG_subprogram ]
!2636 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2637, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2637 = metadata !{metadata !2627, metadata !2561, metadata !98}
!2638 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEh", metadata !73, i32 1608, metadata !2639, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1608} ; [ DW_TAG_subprogram ]
!2639 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2640, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2640 = metadata !{metadata !2627, metadata !2561, metadata !106}
!2641 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEs", metadata !73, i32 1609, metadata !2642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1609} ; [ DW_TAG_subprogram ]
!2642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2643 = metadata !{metadata !2627, metadata !2561, metadata !110}
!2644 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEt", metadata !73, i32 1610, metadata !2645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1610} ; [ DW_TAG_subprogram ]
!2645 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2646, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2646 = metadata !{metadata !2627, metadata !2561, metadata !114}
!2647 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEi", metadata !73, i32 1611, metadata !2648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1611} ; [ DW_TAG_subprogram ]
!2648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2649 = metadata !{metadata !2627, metadata !2561, metadata !49}
!2650 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEj", metadata !73, i32 1612, metadata !2651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1612} ; [ DW_TAG_subprogram ]
!2651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2652 = metadata !{metadata !2627, metadata !2561, metadata !121}
!2653 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEx", metadata !73, i32 1613, metadata !2654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1613} ; [ DW_TAG_subprogram ]
!2654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2655 = metadata !{metadata !2627, metadata !2561, metadata !133}
!2656 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEaSEy", metadata !73, i32 1614, metadata !2657, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1614} ; [ DW_TAG_subprogram ]
!2657 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2658, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2658 = metadata !{metadata !2627, metadata !2561, metadata !138}
!2659 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEcvyEv", metadata !73, i32 1652, metadata !2660, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1652} ; [ DW_TAG_subprogram ]
!2660 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2661 = metadata !{metadata !2662, metadata !2538}
!2662 = metadata !{i32 786454, metadata !2540, metadata !"RetType", metadata !73, i32 1401, i64 0, i64 0, i64 0, i32 0, metadata !2663} ; [ DW_TAG_typedef ]
!2663 = metadata !{i32 786454, metadata !2664, metadata !"Type", metadata !73, i32 1362, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ]
!2664 = metadata !{i32 786434, null, metadata !"retval<6, false>", metadata !73, i32 1361, i64 8, i64 8, i32 0, i32 0, null, metadata !1145, i32 0, null, metadata !2665} ; [ DW_TAG_class_type ]
!2665 = metadata !{metadata !2666, metadata !2557}
!2666 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !49, i64 6, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!2667 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7to_boolEv", metadata !73, i32 1658, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1658} ; [ DW_TAG_subprogram ]
!2668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2669 = metadata !{metadata !51, metadata !2538}
!2670 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE8to_ucharEv", metadata !73, i32 1659, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1659} ; [ DW_TAG_subprogram ]
!2671 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7to_charEv", metadata !73, i32 1660, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1660} ; [ DW_TAG_subprogram ]
!2672 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_ushortEv", metadata !73, i32 1661, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1661} ; [ DW_TAG_subprogram ]
!2673 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE8to_shortEv", metadata !73, i32 1662, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1662} ; [ DW_TAG_subprogram ]
!2674 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE6to_intEv", metadata !73, i32 1663, metadata !2675, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1663} ; [ DW_TAG_subprogram ]
!2675 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2676, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2676 = metadata !{metadata !49, metadata !2538}
!2677 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7to_uintEv", metadata !73, i32 1664, metadata !2678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1664} ; [ DW_TAG_subprogram ]
!2678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2679 = metadata !{metadata !121, metadata !2538}
!2680 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7to_longEv", metadata !73, i32 1665, metadata !2681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1665} ; [ DW_TAG_subprogram ]
!2681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2682 = metadata !{metadata !125, metadata !2538}
!2683 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE8to_ulongEv", metadata !73, i32 1666, metadata !2684, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1666} ; [ DW_TAG_subprogram ]
!2684 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2685, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2685 = metadata !{metadata !129, metadata !2538}
!2686 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE8to_int64Ev", metadata !73, i32 1667, metadata !2687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1667} ; [ DW_TAG_subprogram ]
!2687 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2688, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2688 = metadata !{metadata !133, metadata !2538}
!2689 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_uint64Ev", metadata !73, i32 1668, metadata !2690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1668} ; [ DW_TAG_subprogram ]
!2690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2691 = metadata !{metadata !138, metadata !2538}
!2692 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_doubleEv", metadata !73, i32 1669, metadata !2693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1669} ; [ DW_TAG_subprogram ]
!2693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2694 = metadata !{metadata !152, metadata !2538}
!2695 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE6lengthEv", metadata !73, i32 1682, metadata !2675, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1682} ; [ DW_TAG_subprogram ]
!2696 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi43ELb0ELb1EE6lengthEv", metadata !73, i32 1683, metadata !2697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1683} ; [ DW_TAG_subprogram ]
!2697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2698 = metadata !{metadata !49, metadata !2699}
!2699 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !2700} ; [ DW_TAG_pointer_type ]
!2700 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !2618} ; [ DW_TAG_const_type ]
!2701 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE7reverseEv", metadata !73, i32 1688, metadata !2702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1688} ; [ DW_TAG_subprogram ]
!2702 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2703, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2703 = metadata !{metadata !2627, metadata !2561}
!2704 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE6iszeroEv", metadata !73, i32 1694, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1694} ; [ DW_TAG_subprogram ]
!2705 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7is_zeroEv", metadata !73, i32 1699, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1699} ; [ DW_TAG_subprogram ]
!2706 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE4signEv", metadata !73, i32 1704, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1704} ; [ DW_TAG_subprogram ]
!2707 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE5clearEi", metadata !73, i32 1712, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1712} ; [ DW_TAG_subprogram ]
!2708 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE6invertEi", metadata !73, i32 1718, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1718} ; [ DW_TAG_subprogram ]
!2709 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE4testEi", metadata !73, i32 1726, metadata !2710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1726} ; [ DW_TAG_subprogram ]
!2710 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2711, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2711 = metadata !{metadata !51, metadata !2538, metadata !49}
!2712 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE3setEi", metadata !73, i32 1732, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1732} ; [ DW_TAG_subprogram ]
!2713 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE3setEib", metadata !73, i32 1738, metadata !2714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1738} ; [ DW_TAG_subprogram ]
!2714 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2715, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2715 = metadata !{null, metadata !2561, metadata !49, metadata !51}
!2716 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE7lrotateEi", metadata !73, i32 1745, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1745} ; [ DW_TAG_subprogram ]
!2717 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE7rrotateEi", metadata !73, i32 1754, metadata !2585, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1754} ; [ DW_TAG_subprogram ]
!2718 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE7set_bitEib", metadata !73, i32 1762, metadata !2714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1762} ; [ DW_TAG_subprogram ]
!2719 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE7get_bitEi", metadata !73, i32 1767, metadata !2710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1767} ; [ DW_TAG_subprogram ]
!2720 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE5b_notEv", metadata !73, i32 1772, metadata !2559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1772} ; [ DW_TAG_subprogram ]
!2721 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE17countLeadingZerosEv", metadata !73, i32 1779, metadata !2722, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1779} ; [ DW_TAG_subprogram ]
!2722 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2723, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2723 = metadata !{metadata !49, metadata !2561}
!2724 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEppEv", metadata !73, i32 1836, metadata !2702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1836} ; [ DW_TAG_subprogram ]
!2725 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEmmEv", metadata !73, i32 1840, metadata !2702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1840} ; [ DW_TAG_subprogram ]
!2726 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEppEi", metadata !73, i32 1848, metadata !2727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1848} ; [ DW_TAG_subprogram ]
!2727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2728 = metadata !{metadata !2539, metadata !2561, metadata !49}
!2729 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEmmEi", metadata !73, i32 1853, metadata !2727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1853} ; [ DW_TAG_subprogram ]
!2730 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEpsEv", metadata !73, i32 1862, metadata !2731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1862} ; [ DW_TAG_subprogram ]
!2731 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2732, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2732 = metadata !{metadata !2540, metadata !2538}
!2733 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEntEv", metadata !73, i32 1868, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1868} ; [ DW_TAG_subprogram ]
!2734 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEngEv", metadata !73, i32 1873, metadata !2735, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 1873} ; [ DW_TAG_subprogram ]
!2735 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2736, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2736 = metadata !{metadata !2737, metadata !2538}
!2737 = metadata !{i32 786434, null, metadata !"ap_int_base<44, true, true>", metadata !73, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!2738 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator==<43, false>", metadata !"operator==<43, false>", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEeqILi43ELb0EEEbRKS_IXT_EXT0_EXleT_Li64EEE", metadata !73, i32 1974, metadata !2536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !2566, i32 0, metadata !40, i32 1974} ; [ DW_TAG_subprogram ]
!2739 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE5rangeEii", metadata !73, i32 2003, metadata !2740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2003} ; [ DW_TAG_subprogram ]
!2740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2741 = metadata !{metadata !2742, metadata !2561, metadata !49, metadata !49}
!2742 = metadata !{i32 786434, null, metadata !"ap_range_ref<43, false>", metadata !73, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!2743 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEclEii", metadata !73, i32 2009, metadata !2740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2009} ; [ DW_TAG_subprogram ]
!2744 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE5rangeEii", metadata !73, i32 2015, metadata !2745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2015} ; [ DW_TAG_subprogram ]
!2745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2746 = metadata !{metadata !2742, metadata !2538, metadata !49, metadata !49}
!2747 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEclEii", metadata !73, i32 2021, metadata !2745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2021} ; [ DW_TAG_subprogram ]
!2748 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EEixEi", metadata !73, i32 2040, metadata !2749, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2040} ; [ DW_TAG_subprogram ]
!2749 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2750, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2750 = metadata !{metadata !2751, metadata !2561, metadata !49}
!2751 = metadata !{i32 786434, null, metadata !"ap_bit_ref<43, false>", metadata !73, i32 1192, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!2752 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EEixEi", metadata !73, i32 2054, metadata !2710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2054} ; [ DW_TAG_subprogram ]
!2753 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE3bitEi", metadata !73, i32 2068, metadata !2749, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2068} ; [ DW_TAG_subprogram ]
!2754 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE3bitEi", metadata !73, i32 2082, metadata !2710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2082} ; [ DW_TAG_subprogram ]
!2755 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE10and_reduceEv", metadata !73, i32 2262, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2262} ; [ DW_TAG_subprogram ]
!2756 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2757, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2757 = metadata !{metadata !51, metadata !2561}
!2758 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE11nand_reduceEv", metadata !73, i32 2265, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2265} ; [ DW_TAG_subprogram ]
!2759 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE9or_reduceEv", metadata !73, i32 2268, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2268} ; [ DW_TAG_subprogram ]
!2760 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE10nor_reduceEv", metadata !73, i32 2271, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2271} ; [ DW_TAG_subprogram ]
!2761 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE10xor_reduceEv", metadata !73, i32 2274, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2274} ; [ DW_TAG_subprogram ]
!2762 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi43ELb0ELb1EE11xnor_reduceEv", metadata !73, i32 2277, metadata !2756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2277} ; [ DW_TAG_subprogram ]
!2763 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE10and_reduceEv", metadata !73, i32 2281, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2281} ; [ DW_TAG_subprogram ]
!2764 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE11nand_reduceEv", metadata !73, i32 2284, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2284} ; [ DW_TAG_subprogram ]
!2765 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9or_reduceEv", metadata !73, i32 2287, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2287} ; [ DW_TAG_subprogram ]
!2766 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE10nor_reduceEv", metadata !73, i32 2290, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2290} ; [ DW_TAG_subprogram ]
!2767 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE10xor_reduceEv", metadata !73, i32 2293, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2293} ; [ DW_TAG_subprogram ]
!2768 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE11xnor_reduceEv", metadata !73, i32 2296, metadata !2668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2296} ; [ DW_TAG_subprogram ]
!2769 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !73, i32 2303, metadata !2770, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2303} ; [ DW_TAG_subprogram ]
!2770 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2771, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2771 = metadata !{null, metadata !2538, metadata !497, metadata !49, metadata !498, metadata !51}
!2772 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_stringE8BaseModeb", metadata !73, i32 2330, metadata !2773, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2330} ; [ DW_TAG_subprogram ]
!2773 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2774, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2774 = metadata !{metadata !497, metadata !2538, metadata !498, metadata !51}
!2775 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi43ELb0ELb1EE9to_stringEab", metadata !73, i32 2334, metadata !2776, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !40, i32 2334} ; [ DW_TAG_subprogram ]
!2776 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2777, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!2777 = metadata !{metadata !497, metadata !2538, metadata !102, metadata !51}
!2778 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !73, i32 1396, metadata !2563, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 1396} ; [ DW_TAG_subprogram ]
!2779 = metadata !{i32 786478, i32 0, metadata !2540, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !73, i32 1396, metadata !2559, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !40, i32 1396} ; [ DW_TAG_subprogram ]
!2780 = metadata !{metadata !1981, metadata !2557, metadata !1295}
!2781 = metadata !{i32 736, i32 50, metadata !2530, metadata !2470}
!2782 = metadata !{i32 786688, metadata !2531, metadata !"Range2_all_ones", metadata !28, i32 727, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2783 = metadata !{i32 786688, metadata !2784, metadata !"__Val2__", metadata !28, i32 741, metadata !920, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2784 = metadata !{i32 786443, metadata !2785, i32 741, i32 33, metadata !28, i32 20} ; [ DW_TAG_lexical_block ]
!2785 = metadata !{i32 786443, metadata !2531, i32 740, i32 49, metadata !28, i32 19} ; [ DW_TAG_lexical_block ]
!2786 = metadata !{i32 741, i32 0, metadata !2784, metadata !2470}
!2787 = metadata !{i32 1975, i32 9, metadata !2534, metadata !2788}
!2788 = metadata !{i32 745, i32 50, metadata !2785, metadata !2470}
!2789 = metadata !{i32 786688, metadata !2531, metadata !"Range1_all_ones", metadata !28, i32 725, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2790 = metadata !{i32 746, i32 21, metadata !2785, metadata !2470}
!2791 = metadata !{i32 786688, metadata !2531, metadata !"Range1_all_zeros", metadata !28, i32 726, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2792 = metadata !{i32 756, i32 17, metadata !2531, metadata !2470}
!2793 = metadata !{i32 786688, metadata !2518, metadata !"deleted_zeros", metadata !28, i32 710, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2794 = metadata !{i32 710, i32 18, metadata !2518, metadata !2470}
!2795 = metadata !{i32 757, i32 17, metadata !2531, metadata !2470}
!2796 = metadata !{i32 711, i32 18, metadata !2518, metadata !2470}
!2797 = metadata !{i32 786688, metadata !2518, metadata !"deleted_ones", metadata !28, i32 711, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2798 = metadata !{i32 759, i32 17, metadata !2531, metadata !2470}
!2799 = metadata !{i32 786688, metadata !2518, metadata !"neg_trg", metadata !28, i32 762, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2800 = metadata !{i32 762, i32 47, metadata !2518, metadata !2470}
!2801 = metadata !{i32 763, i32 66, metadata !2518, metadata !2470}
!2802 = metadata !{i32 786688, metadata !2518, metadata !"overflow", metadata !28, i32 763, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2803 = metadata !{i32 763, i32 18, metadata !2518, metadata !2470}
!2804 = metadata !{i32 764, i32 68, metadata !2518, metadata !2470}
!2805 = metadata !{i32 786688, metadata !2806, metadata !"__Val2__", metadata !28, i32 767, metadata !35, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2806 = metadata !{i32 786443, metadata !2518, i32 767, i32 20, metadata !28, i32 23} ; [ DW_TAG_lexical_block ]
!2807 = metadata !{i32 767, i32 88, metadata !2806, metadata !2470}
!2808 = metadata !{i32 767, i32 90, metadata !2806, metadata !2470}
!2809 = metadata !{i32 767, i32 185, metadata !2806, metadata !2470}
!2810 = metadata !{i32 786688, metadata !2518, metadata !"underflow", metadata !28, i32 764, metadata !51, i32 0, metadata !2470} ; [ DW_TAG_auto_variable ]
!2811 = metadata !{i32 764, i32 18, metadata !2518, metadata !2470}
!2812 = metadata !{i32 786689, metadata !2813, metadata !"underflow", metadata !28, i32 33554952, metadata !51, i32 0, metadata !2814} ; [ DW_TAG_arg_variable ]
!2813 = metadata !{i32 786478, i32 0, null, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi18ELi1ELb1EL9ap_q_mode4EL9ap_o_mode2ELi0EE15overflow_adjustEbbbb", metadata !28, i32 520, metadata !658, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !657, metadata !40, i32 520} ; [ DW_TAG_subprogram ]
!2814 = metadata !{i32 769, i32 13, metadata !2518, metadata !2470}
!2815 = metadata !{i32 520, i32 57, metadata !2813, metadata !2814}
!2816 = metadata !{i32 786689, metadata !2813, metadata !"overflow", metadata !28, i32 50332168, metadata !51, i32 0, metadata !2814} ; [ DW_TAG_arg_variable ]
!2817 = metadata !{i32 520, i32 73, metadata !2813, metadata !2814}
!2818 = metadata !{i32 525, i32 9, metadata !2819, metadata !2814}
!2819 = metadata !{i32 786443, metadata !2813, i32 520, i32 102, metadata !28, i32 24} ; [ DW_TAG_lexical_block ]
!2820 = metadata !{i32 577, i32 24, metadata !2821, metadata !2814}
!2821 = metadata !{i32 786443, metadata !2822, i32 572, i32 24, metadata !28, i32 26} ; [ DW_TAG_lexical_block ]
!2822 = metadata !{i32 786443, metadata !2819, i32 571, i32 16, metadata !28, i32 25} ; [ DW_TAG_lexical_block ]
!2823 = metadata !{i32 790531, metadata !2824, metadata !"ssdm_int<18 + 1024 * 0, true>.V", null, i32 380, metadata !2128, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!2824 = metadata !{i32 786689, metadata !2825, metadata !"this", metadata !24, i32 16777596, metadata !2826, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!2825 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi18ELi1EL9ap_q_mode4EL9ap_o_mode2ELi0EEaSERKS2_", metadata !24, i32 380, metadata !2104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !2103, metadata !40, i32 381} ; [ DW_TAG_subprogram ]
!2826 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !651} ; [ DW_TAG_pointer_type ]
!2827 = metadata !{i32 380, i32 53, metadata !2825, metadata !2474}
!2828 = metadata !{i32 382, i32 9, metadata !2829, metadata !2474}
!2829 = metadata !{i32 786443, metadata !2825, i32 381, i32 53, metadata !24, i32 39} ; [ DW_TAG_lexical_block ]
!2830 = metadata !{i32 34, i32 1, metadata !2135, null}

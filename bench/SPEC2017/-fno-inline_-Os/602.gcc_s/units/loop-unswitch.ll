; ModuleID = 'loop-unswitch.c'
source_filename = "loop-unswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.rtx_iv = type { ptr, ptr, i32, ptr, ptr, i32, i32, i8 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [16 x i8] c"loop-unswitch.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c";; Not unswitching anymore, hit max level\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c";; Not unswitching, not innermost loop\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c";; Not unswitching, can't duplicate loop\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c";; Not unswitching, loop too big\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c";; Not unswitching, not hot area\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c";; Not unswitching, loop iterations < 1\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c";; Unswitching loop\0A\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @compare_and_jump_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !125 {
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15, !prof !126

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %14, %11 ], [ %9, %6 ]
  tail call void @start_sequence() #9
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !127
  %20 = icmp eq i8 %19, 1
  %21 = icmp eq ptr %5, null
  br i1 %20, label %22, label %59, !prof !126

22:                                               ; preds = %15
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1) #9
  br label %24

24:                                               ; preds = %22, %23
  %25 = tail call ptr @pc_set(ptr noundef %5) #9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #9
  br label %34

34:                                               ; preds = %24, %33
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !127
  %37 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %36) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #9
  br label %40

40:                                               ; preds = %34, %39
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = tail call i32 @rtx_equal_p(ptr noundef %1, ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @.str.1) #9
  br label %46

46:                                               ; preds = %40, %45
  %47 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = tail call ptr @copy_insn(ptr noundef %48) #9
  %50 = tail call ptr @emit_jump_insn(ptr noundef %49) #9
  %51 = tail call ptr @get_last_insn() #9
  %52 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !127
  %54 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !127
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !127
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !127
  %58 = tail call i32 @redirect_jump(ptr noundef %51, ptr noundef %3, i32 noundef 0) #9
  br label %69

59:                                               ; preds = %15
  br i1 %21, label %61, label %60, !prof !130

60:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #9
  br label %61

61:                                               ; preds = %59, %60
  %62 = tail call ptr @force_operand(ptr noundef nonnull %0, ptr noundef null) #9
  %63 = tail call ptr @force_operand(ptr noundef %1, ptr noundef null) #9
  tail call void @do_compare_rtx_and_jump(ptr noundef %62, ptr noundef %63, i32 noundef %2, i32 noundef 0, i32 noundef %16, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef -1) #9
  %64 = tail call ptr @get_last_insn() #9
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %3, ptr %65, align 8, !tbaa !127
  %66 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !127
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !127
  br label %69

69:                                               ; preds = %61, %46
  %70 = phi ptr [ %51, %46 ], [ %64, %61 ]
  %71 = sext i32 %4 to i64
  %72 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %71) #9
  tail call void @add_reg_note(ptr noundef nonnull %70, i32 noundef 13, ptr noundef %72) #9
  %73 = tail call ptr @get_insns() #9
  tail call void @end_sequence() #9
  ret ptr %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @redirect_jump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unswitch_loops() local_unnamed_addr #0 !prof !131 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !134

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call fastcc void @unswitch_single_loop(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #11
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !prof !135, !llvm.loop !136

9:                                                ; preds = %5, %0
  tail call void @iv_analysis_done() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !131 !PGOFuncName !138 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !139
  %5 = load ptr, ptr @cfun, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !144

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !145
  store ptr null, ptr %1, align 8, !tbaa !132
  br label %45

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @number_of_loops() #11
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #11
  store ptr %12, ptr %0, align 8, !tbaa !145
  %13 = load ptr, ptr @cfun, align 8, !tbaa !132
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #11, !range !148
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20, !prof !134

20:                                               ; preds = %10, %35
  %21 = phi ptr [ %36, %35 ], [ %13, %10 ]
  %22 = phi i32 [ %37, %35 ], [ 0, %10 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !132
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25, !prof !149

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35, !prof !155

29:                                               ; preds = %25
  %30 = load i32, ptr %23, align 8, !tbaa !156
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35, !prof !157

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !145
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %33, i32 noundef %30) #11
  %34 = load ptr, ptr @cfun, align 8, !tbaa !132
  br label %35

35:                                               ; preds = %20, %25, %29, %32
  %36 = phi ptr [ %21, %20 ], [ %21, %25 ], [ %21, %29 ], [ %34, %32 ]
  %37 = add i32 %22, 1
  %38 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !142
  %40 = getelementptr inbounds %struct.loops, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !146
  %42 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %37, ptr noundef nonnull %3) #11, !range !148
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20, !prof !158, !llvm.loop !159

44:                                               ; preds = %35, %10
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %45

45:                                               ; preds = %44, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !160 !PGOFuncName !161 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 36, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !162
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %10, label %15, !prof !164

10:                                               ; preds = %3
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %12 = icmp eq ptr %11, null
  br i1 %12, label %169, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 42, i64 1, ptr nonnull %11)
  br label %169

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !165

19:                                               ; preds = %15
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %21 = icmp eq ptr %20, null
  br i1 %21, label %169, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr nonnull %20)
  br label %169

24:                                               ; preds = %15
  %25 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %0) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32, !prof !166

27:                                               ; preds = %24
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %29 = icmp eq ptr %28, null
  br i1 %29, label %169, label %30, !prof !167

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 41, i64 1, ptr nonnull %28)
  br label %169

32:                                               ; preds = %24
  %33 = tail call i32 @num_loop_insns(ptr noundef nonnull %0) #9
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !132
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 35, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !162
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %43, !prof !168

38:                                               ; preds = %32
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %40 = icmp eq ptr %39, null
  br i1 %40, label %169, label %41, !prof !169

41:                                               ; preds = %38
  %42 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 33, i64 1, ptr nonnull %39)
  br label %169

43:                                               ; preds = %32
  %44 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %0) #9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46, !prof !170

46:                                               ; preds = %43
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %48 = icmp eq ptr %47, null
  br i1 %48, label %169, label %49, !prof !171

49:                                               ; preds = %46
  %50 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %47)
  br label %169

51:                                               ; preds = %43
  %52 = tail call i32 @expected_loop_iterations(ptr noundef nonnull %0) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54, !prof !172

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %56 = icmp eq ptr %1, null
  store ptr null, ptr %5, align 8, !tbaa !132
  %57 = tail call ptr @get_loop_body(ptr noundef %0) #9
  tail call void @iv_analysis_loop_init(ptr noundef %0) #9
  %58 = load i32, ptr %55, align 4, !tbaa !173
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %92, label %74, !prof !174

60:                                               ; preds = %51
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %62 = icmp eq ptr %61, null
  br i1 %62, label %169, label %63, !prof !175

63:                                               ; preds = %60
  %64 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr nonnull %61)
  br label %169

65:                                               ; preds = %134, %120
  %66 = phi ptr [ %125, %120 ], [ %139, %134 ]
  %67 = call fastcc ptr @VEC_edge_base_index(ptr noundef %66, i32 noundef 1) #11
  br label %68

68:                                               ; preds = %65, %134, %120
  %69 = phi ptr [ %126, %120 ], [ %140, %134 ], [ %67, %65 ]
  %70 = call zeroext i8 @remove_path(ptr noundef %69) #9
  call void @free(ptr noundef nonnull %75) #11
  store ptr null, ptr %5, align 8, !tbaa !132
  %71 = call ptr @get_loop_body(ptr noundef %0) #9
  call void @iv_analysis_loop_init(ptr noundef %0) #9
  %72 = load i32, ptr %55, align 4, !tbaa !173
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74, !prof !176

74:                                               ; preds = %54, %68
  %75 = phi ptr [ %71, %68 ], [ %57, %54 ]
  %76 = phi ptr [ %116, %68 ], [ null, %54 ]
  br label %77

77:                                               ; preds = %74, %84
  %78 = phi i64 [ %85, %84 ], [ 0, %74 ]
  %79 = getelementptr inbounds ptr, ptr %75, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !132
  %81 = call fastcc ptr @may_unswitch_on(ptr noundef %80, ptr noundef nonnull %0, ptr noundef nonnull %5) #11
  store ptr %81, ptr %4, align 8, !tbaa !132
  %82 = icmp eq ptr %81, null
  %83 = load i32, ptr %55, align 4, !tbaa !173
  br i1 %82, label %84, label %88, !prof !177

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %78, 1
  %86 = zext i32 %83 to i64
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %77, label %88, !prof !178, !llvm.loop !179

88:                                               ; preds = %84, %77
  %89 = phi i64 [ %85, %84 ], [ %78, %77 ]
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %94, !prof !180

92:                                               ; preds = %88, %68, %54
  %93 = phi ptr [ %57, %54 ], [ %75, %88 ], [ %71, %68 ]
  call void @free(ptr noundef %93) #11
  br label %169

94:                                               ; preds = %88
  %95 = load ptr, ptr %4, align 8, !tbaa !132
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !132
  %97 = icmp eq ptr %95, %96
  %98 = load ptr, ptr @const_true_rtx, align 8
  %99 = icmp eq ptr %95, %98
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %115, label %101, !prof !181

101:                                              ; preds = %94
  %102 = call ptr @reversed_condition(ptr noundef %95) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104, !prof !126

104:                                              ; preds = %101
  %105 = call ptr @canon_condition(ptr noundef nonnull %102) #9
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %105, %104 ], [ null, %101 ]
  br i1 %56, label %115, label %108, !prof !182

108:                                              ; preds = %106, %108
  %109 = phi ptr [ %113, %108 ], [ %1, %106 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !127
  call void @simplify_using_condition(ptr noundef %111, ptr noundef nonnull %4, ptr noundef null) #9
  %112 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !127
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %108, !prof !183, !llvm.loop !184

115:                                              ; preds = %108, %106, %94
  %116 = phi ptr [ %76, %94 ], [ %107, %106 ], [ %107, %108 ]
  %117 = load ptr, ptr %4, align 8, !tbaa !132
  %118 = load ptr, ptr @const_true_rtx, align 8, !tbaa !132
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %131, !prof !126

120:                                              ; preds = %115
  %121 = and i64 %89, 4294967295
  %122 = getelementptr inbounds ptr, ptr %75, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !132
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !185
  %126 = call fastcc ptr @VEC_edge_base_index(ptr noundef %125, i32 noundef 0) #11
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 7
  %128 = load i32, ptr %127, align 8, !tbaa !187
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %65, label %68

131:                                              ; preds = %115
  %132 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !132
  %133 = icmp eq ptr %117, %132
  br i1 %133, label %134, label %145, !prof !126

134:                                              ; preds = %131
  %135 = and i64 %89, 4294967295
  %136 = getelementptr inbounds ptr, ptr %75, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !132
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !185
  %140 = call fastcc ptr @VEC_edge_base_index(ptr noundef %139, i32 noundef 0) #11
  %141 = getelementptr inbounds %struct.edge_def, ptr %140, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !187
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %68, label %65

145:                                              ; preds = %131
  %146 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %117, ptr noundef %1) #9
  %147 = icmp eq ptr %116, null
  br i1 %147, label %150, label %148, !prof !126

148:                                              ; preds = %145
  %149 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %116, ptr noundef %1) #9
  br label %150

150:                                              ; preds = %145, %148
  %151 = phi ptr [ %149, %148 ], [ %1, %145 ]
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !132
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154, !prof !130

154:                                              ; preds = %150
  %155 = call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr nonnull %152)
  br label %156

156:                                              ; preds = %154, %150
  %157 = and i64 %89, 4294967295
  %158 = getelementptr inbounds ptr, ptr %75, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !132
  %160 = load ptr, ptr %4, align 8, !tbaa !132
  %161 = load ptr, ptr %5, align 8, !tbaa !132
  %162 = call fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %159, ptr noundef %160, ptr noundef %161) #11
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165, !prof !126

164:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #9
  br label %165

165:                                              ; preds = %156, %164
  %166 = add nsw i32 %2, 1
  call fastcc void @unswitch_single_loop(ptr noundef %162, ptr noundef %151, i32 noundef %166) #11
  call fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %146, i32 noundef %166) #11
  call void @free_EXPR_LIST_node(ptr noundef %146) #9
  br i1 %147, label %168, label %167, !prof !126

167:                                              ; preds = %165
  call void @free_EXPR_LIST_node(ptr noundef %151) #9
  br label %168

168:                                              ; preds = %167, %165
  call void @free(ptr noundef nonnull %75) #11
  br label %169

169:                                              ; preds = %60, %63, %46, %49, %38, %41, %27, %30, %19, %22, %10, %13, %168, %92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !189 !PGOFuncName !190 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !139
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !145
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #11, !range !148
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !191

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !139
  %13 = load i32, ptr %3, align 4, !tbaa !192
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #11
  store ptr %14, ptr %1, align 8, !tbaa !132
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !193, !llvm.loop !194

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #11
  store ptr null, ptr %1, align 8, !tbaa !132
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @iv_analysis_done() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !131 !PGOFuncName !195 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !131 !PGOFuncName !196 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !132
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !144

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #11
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !197 !PGOFuncName !198 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !199

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !200
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !202

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !132
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !132
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !203 !PGOFuncName !204 {
  %3 = load i32, ptr %0, align 4, !tbaa !205
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !205
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !192
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !131 !PGOFuncName !207 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !144

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !200
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !203 !PGOFuncName !208 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @num_loop_insns(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @iv_analysis_loop_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @may_unswitch_on(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !209 !PGOFuncName !210 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.rtx_iv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #11
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %127, !prof !211

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !212
  %16 = tail call i32 @any_condjump_p(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %127, label %18, !prof !214

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8, !tbaa !185
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 0) #11
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !215
  %23 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %22) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %127, label %25, !prof !216

25:                                               ; preds = %18
  %26 = load ptr, ptr %7, align 8, !tbaa !185
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 1) #11
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !215
  %30 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %29) #9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %127, label %32, !prof !217

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %1, ptr noundef nonnull %0) #9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %127, label %35, !prof !218

35:                                               ; preds = %32
  %36 = load ptr, ptr %12, align 8, !tbaa !127
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !212
  %39 = call ptr @get_condition(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %127, label %41, !prof !219

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  br label %43

43:                                               ; preds = %41, %71
  %44 = phi i1 [ true, %41 ], [ false, %71 ]
  %45 = phi i64 [ 0, %41 ], [ 1, %71 ]
  %46 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !127
  %48 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %45
  store ptr %47, ptr %48, align 8, !tbaa !132
  %49 = load i32, ptr %47, align 8
  %50 = and i32 %49, 65535
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !192
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %71, label %55, !prof !220

55:                                               ; preds = %43
  %56 = load ptr, ptr %4, align 8, !tbaa !132
  %57 = call zeroext i8 @iv_analyze(ptr noundef %56, ptr noundef nonnull %47, ptr noundef nonnull %6) #9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %127, label %59, !prof !221

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !222
  %62 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !132
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %127, !prof !224

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 7
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %127, !prof !225

69:                                               ; preds = %64
  %70 = call ptr @get_iv_value(ptr noundef nonnull %6, ptr noundef %61) #9
  store ptr %70, ptr %48, align 8, !tbaa !132
  br label %71

71:                                               ; preds = %43, %69
  br i1 %44, label %43, label %72, !prof !226, !llvm.loop !227

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 16, !tbaa !132
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84, !prof !126

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !132
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i32 [ %83, %78 ], [ %76, %72 ]
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !127
  %89 = icmp eq i8 %88, 1
  br i1 %89, label %90, label %111, !prof !126

90:                                               ; preds = %84
  %91 = load ptr, ptr %4, align 8, !tbaa !132
  %92 = load ptr, ptr %12, align 8, !tbaa !127
  %93 = getelementptr inbounds %struct.rtl_bb_info, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !212
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %90
  %97 = load ptr, ptr %42, align 8, !tbaa !127
  %98 = call i32 @rtx_equal_p(ptr noundef nonnull %73, ptr noundef %97) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !132
  %103 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !127
  %105 = call i32 @rtx_equal_p(ptr noundef %102, ptr noundef %104) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %12, align 8, !tbaa !127
  %109 = getelementptr inbounds %struct.rtl_bb_info, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !212
  store ptr %110, ptr %2, align 8, !tbaa !132
  br label %127

111:                                              ; preds = %84
  %112 = load i32, ptr %39, align 8
  %113 = and i32 %112, 65535
  %114 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !132
  %116 = call ptr @simplify_gen_relational(i32 noundef %113, i32 noundef 16, i32 noundef %85, ptr noundef nonnull %73, ptr noundef %115) #9
  %117 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !132
  %118 = icmp eq ptr %116, %117
  %119 = load ptr, ptr @const_true_rtx, align 8
  %120 = icmp eq ptr %116, %119
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %127, label %122, !prof !181

122:                                              ; preds = %111
  %123 = load i32, ptr %39, align 8
  %124 = and i32 %123, 65535
  %125 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef %124, i32 noundef 16, ptr noundef nonnull %73, ptr noundef %115) #9
  %126 = call ptr @canon_condition(ptr noundef %125) #9
  br label %127

127:                                              ; preds = %59, %64, %55, %111, %96, %100, %90, %35, %32, %18, %25, %11, %3, %122, %107
  %128 = phi ptr [ %39, %107 ], [ %126, %122 ], [ null, %3 ], [ null, %11 ], [ null, %25 ], [ null, %18 ], [ null, %32 ], [ null, %35 ], [ null, %90 ], [ null, %100 ], [ null, %96 ], [ %116, %111 ], [ null, %55 ], [ null, %64 ], [ null, %59 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %128
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reversed_condition(ptr noundef %0) local_unnamed_addr #0 !prof !228 {
  %2 = tail call i32 @reversed_comparison_code(ptr noundef %0, ptr noundef null) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4, !prof !229

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %7, ptr noundef %9, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %12, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @canon_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @simplify_using_condition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !230 !PGOFuncName !231 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !125 !PGOFuncName !232 {
  %5 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %1) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !126

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #9
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !185
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #11
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13, !prof !130

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %8, %13
  %15 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef nonnull %1) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18, !prof !126

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #9
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !150
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !130

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %9, align 8, !tbaa !185
  %25 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 0) #11
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !215
  %28 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %27) #9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31, !prof !126

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.1) #9
  br label %31

31:                                               ; preds = %23, %30
  %32 = load ptr, ptr %9, align 8, !tbaa !185
  %33 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %32, i32 noundef 1) #11
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !215
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %35) #9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39, !prof !126

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #9
  br label %39

39:                                               ; preds = %31, %38
  %40 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #9
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !187
  %43 = and i32 %42, 128
  %44 = and i32 %42, -129
  store i32 %44, ptr %41, align 8, !tbaa !187
  %45 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %40, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %180, label %47, !prof !126

47:                                               ; preds = %39
  %48 = load i32, ptr %41, align 8, !tbaa !187
  %49 = or i32 %48, %43
  store i32 %49, ptr %41, align 8, !tbaa !187
  %50 = tail call ptr @get_bb_copy(ptr noundef nonnull %1) #9
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !185
  %53 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %52, i32 noundef 0) #11
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !187
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !233

58:                                               ; preds = %47
  %59 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %52, i32 noundef 1) #11
  br label %60

60:                                               ; preds = %47, %58
  %61 = phi ptr [ %59, %58 ], [ %53, %47 ]
  %62 = load ptr, ptr %9, align 8, !tbaa !185
  %63 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %62, i32 noundef 0) #11
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !187
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70, !prof !233

68:                                               ; preds = %60
  %69 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %62, i32 noundef 1) #11
  br label %70

70:                                               ; preds = %60, %68
  %71 = phi ptr [ %69, %68 ], [ %63, %60 ]
  %72 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !234
  %74 = tail call ptr @get_bb_copy(ptr noundef %73) #9
  %75 = tail call fastcc ptr @single_succ_edge(ptr noundef %74) #11
  %76 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 8
  %77 = load i32, ptr %76, align 4, !tbaa !235
  %78 = load ptr, ptr @cfun, align 8, !tbaa !132
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !236
  %81 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !237
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !239
  %85 = tail call ptr @create_empty_bb(ptr noundef %84) #9
  %86 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !127
  %88 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !127
  %90 = load i32, ptr %2, align 8
  %91 = and i32 %90, 65535
  %92 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !215
  %94 = tail call ptr @block_label(ptr noundef %93) #9
  %95 = tail call ptr @compare_and_jump_seq(ptr noundef %87, ptr noundef %89, i32 noundef %91, ptr noundef %94, i32 noundef %77, ptr noundef %3) #11
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !127
  %98 = getelementptr inbounds %struct.rtl_bb_info, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !212
  %100 = tail call ptr @emit_insn_after(ptr noundef %95, ptr noundef %99) #9
  %101 = load ptr, ptr %92, align 8, !tbaa !215
  %102 = tail call ptr @make_edge(ptr noundef %85, ptr noundef %101, i32 noundef 0) #9
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 8
  store i32 %77, ptr %103, align 4, !tbaa !235
  %104 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 9
  %105 = load i64, ptr %104, align 8, !tbaa !240
  %106 = sext i32 %77 to i64
  %107 = mul nsw i64 %105, %106
  %108 = sdiv i64 %107, 10000
  %109 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 9
  store i64 %108, ptr %109, align 8, !tbaa !240
  %110 = load ptr, ptr %9, align 8, !tbaa !185
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 0) #11
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !187
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118, !prof !233

116:                                              ; preds = %70
  %117 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 1) #11
  br label %118

118:                                              ; preds = %70, %116
  %119 = phi ptr [ %117, %116 ], [ %111, %70 ]
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !215
  %122 = tail call ptr @make_edge(ptr noundef nonnull %85, ptr noundef %121, i32 noundef 1) #9
  %123 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 8
  %124 = load i32, ptr %123, align 4, !tbaa !235
  %125 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 8
  store i32 %124, ptr %125, align 4, !tbaa !235
  %126 = load i64, ptr %104, align 8, !tbaa !240
  %127 = sext i32 %124 to i64
  %128 = mul nsw i64 %126, %127
  %129 = sdiv i64 %128, 10000
  %130 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 9
  store i64 %129, ptr %130, align 8, !tbaa !240
  %131 = icmp eq i32 %43, 0
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 13
  %133 = load i32, ptr %132, align 8, !tbaa !241
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  br i1 %131, label %146, label %135, !prof !130

135:                                              ; preds = %118
  %136 = or i32 %133, 4
  store i32 %136, ptr %132, align 8, !tbaa !241
  %137 = load ptr, ptr %134, align 8, !tbaa !185
  %138 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 0) #11
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !187
  %141 = or i32 %140, 128
  store i32 %141, ptr %139, align 8, !tbaa !187
  %142 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 1) #11
  %143 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !187
  %145 = or i32 %144, 128
  store i32 %145, ptr %143, align 8, !tbaa !187
  br label %157

146:                                              ; preds = %118
  %147 = and i32 %133, -5
  store i32 %147, ptr %132, align 8, !tbaa !241
  %148 = load ptr, ptr %134, align 8, !tbaa !185
  %149 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %148, i32 noundef 0) #11
  %150 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 7
  %151 = load i32, ptr %150, align 8, !tbaa !187
  %152 = and i32 %151, -129
  store i32 %152, ptr %150, align 8, !tbaa !187
  %153 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %148, i32 noundef 1) #11
  %154 = getelementptr inbounds %struct.edge_def, ptr %153, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !187
  %156 = and i32 %155, -129
  store i32 %156, ptr %154, align 8, !tbaa !187
  br label %157

157:                                              ; preds = %146, %135
  %158 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !242
  %160 = tail call ptr @get_bb_copy(ptr noundef %159) #9
  %161 = tail call fastcc ptr @single_pred_edge(ptr noundef %160) #11
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !185
  %164 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %163, i32 noundef 0) #11
  %165 = getelementptr inbounds %struct.edge_def, ptr %164, i64 0, i32 7
  %166 = load i32, ptr %165, align 8, !tbaa !187
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  %169 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %163, i32 noundef 1) #11
  %170 = select i1 %168, ptr %164, ptr %169, !prof !130
  %171 = select i1 %168, ptr %169, ptr %164, !prof !130
  %172 = sub nsw i32 10000, %77
  %173 = tail call ptr @loopify(ptr noundef nonnull %75, ptr noundef %161, ptr noundef nonnull %85, ptr noundef %170, ptr noundef %171, i8 noundef zeroext 1, i32 noundef %77, i32 noundef %172) #9
  %174 = tail call zeroext i8 @remove_path(ptr noundef nonnull %61) #9
  %175 = tail call zeroext i8 @remove_path(ptr noundef nonnull %71) #9
  %176 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #9
  %177 = tail call ptr @split_edge(ptr noundef %176) #9
  %178 = tail call ptr @loop_preheader_edge(ptr noundef %173) #9
  %179 = tail call ptr @split_edge(ptr noundef %178) #9
  br label %180

180:                                              ; preds = %39, %157
  %181 = phi ptr [ %173, %157 ], [ null, %39 ]
  ret ptr %181
}

; Function Attrs: optsize
declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !243 !PGOFuncName !244 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !245

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !246
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @just_once_each_iteration_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @iv_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_iv_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !125 !PGOFuncName !248 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #11, !range !249
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !126

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #11
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loopify(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !125 !PGOFuncName !250 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !249
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !126

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !251
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #11
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !125 !PGOFuncName !252 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !125 !PGOFuncName !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !251
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !189 !PGOFuncName !254 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !255

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !205
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !256

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !192
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !192
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !203 !PGOFuncName !257 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !132
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !131 !PGOFuncName !258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !132
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !144

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !132
  ret void
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!124}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!36 = !{ptr @compare_and_jump_seq, ptr @start_sequence, i64 39}
!37 = !{ptr @compare_and_jump_seq, ptr @pc_set, i64 1}
!38 = !{ptr @compare_and_jump_seq, ptr @rtx_equal_p, i64 2}
!39 = !{ptr @compare_and_jump_seq, ptr @copy_insn, i64 1}
!40 = !{ptr @compare_and_jump_seq, ptr @emit_jump_insn, i64 1}
!41 = !{ptr @compare_and_jump_seq, ptr @get_last_insn, i64 39}
!42 = !{ptr @compare_and_jump_seq, ptr @redirect_jump, i64 1}
!43 = !{ptr @compare_and_jump_seq, ptr @fancy_abort, i64 1}
!44 = !{ptr @compare_and_jump_seq, ptr @force_operand, i64 76}
!45 = !{ptr @compare_and_jump_seq, ptr @do_compare_rtx_and_jump, i64 38}
!46 = !{ptr @compare_and_jump_seq, ptr @gen_rtx_CONST_INT, i64 39}
!47 = !{ptr @compare_and_jump_seq, ptr @add_reg_note, i64 39}
!48 = !{ptr @compare_and_jump_seq, ptr @get_insns, i64 39}
!49 = !{ptr @compare_and_jump_seq, ptr @end_sequence, i64 39}
!50 = !{ptr @unswitch_loops, ptr @fel_init, i64 2535}
!51 = !{ptr @unswitch_loops, ptr @unswitch_single_loop, i64 9231}
!52 = !{ptr @unswitch_loops, ptr @fel_next, i64 9231}
!53 = !{ptr @unswitch_loops, ptr @iv_analysis_done, i64 2535}
!54 = !{ptr @fel_init, ptr @number_of_loops, i64 2534}
!55 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 2534}
!56 = !{ptr @fel_init, ptr @VEC_loop_p_base_iterate, i64 19024}
!57 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 9226}
!58 = !{ptr @fel_init, ptr @fel_next, i64 2534}
!59 = !{ptr @unswitch_single_loop, ptr @fwrite, i64 7}
!60 = !{ptr @unswitch_single_loop, ptr @can_duplicate_loop_p, i64 9310}
!61 = !{ptr @unswitch_single_loop, ptr @num_loop_insns, i64 9067}
!62 = !{ptr @unswitch_single_loop, ptr @optimize_loop_for_size_p, i64 8580}
!63 = !{ptr @unswitch_single_loop, ptr @expected_loop_iterations, i64 7315}
!64 = !{ptr @unswitch_single_loop, ptr @get_loop_body, i64 7311}
!65 = !{ptr @unswitch_single_loop, ptr @iv_analysis_loop_init, i64 7311}
!66 = !{ptr @unswitch_single_loop, ptr @VEC_edge_base_index, i64 3}
!67 = !{ptr @unswitch_single_loop, ptr @remove_path, i64 2}
!68 = !{ptr @unswitch_single_loop, ptr @free, i64 7311}
!69 = !{ptr @unswitch_single_loop, ptr @may_unswitch_on, i64 27551}
!70 = !{ptr @unswitch_single_loop, ptr @reversed_condition, i64 38}
!71 = !{ptr @unswitch_single_loop, ptr @canon_condition, i64 37}
!72 = !{ptr @unswitch_single_loop, ptr @simplify_using_condition, i64 3}
!73 = !{ptr @unswitch_single_loop, ptr @alloc_EXPR_LIST, i64 75}
!74 = !{ptr @unswitch_single_loop, ptr @unswitch_loop, i64 38}
!75 = !{ptr @unswitch_single_loop, ptr @fancy_abort, i64 1}
!76 = !{ptr @unswitch_single_loop, ptr @unswitch_single_loop, i64 76}
!77 = !{ptr @unswitch_single_loop, ptr @free_EXPR_LIST_node, i64 75}
!78 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 11770}
!79 = !{ptr @fel_next, ptr @get_loop, i64 9234}
!80 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 2536}
!81 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 2535}
!82 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 2534}
!83 = !{ptr @may_unswitch_on, ptr @VEC_edge_base_length, i64 27742}
!84 = !{ptr @may_unswitch_on, ptr @any_condjump_p, i64 16587}
!85 = !{ptr @may_unswitch_on, ptr @VEC_edge_base_index, i64 30109}
!86 = !{ptr @may_unswitch_on, ptr @flow_bb_inside_loop_p, i64 30109}
!87 = !{ptr @may_unswitch_on, ptr @just_once_each_iteration_p, i64 5658}
!88 = !{ptr @may_unswitch_on, ptr @get_condition, i64 3090}
!89 = !{ptr @may_unswitch_on, ptr @iv_analyze, i64 3400}
!90 = !{ptr @may_unswitch_on, ptr @get_iv_value, i64 315}
!91 = !{ptr @may_unswitch_on, ptr @simplify_gen_relational, i64 4}
!92 = !{ptr @may_unswitch_on, ptr @gen_rtx_fmt_ee_stat, i64 4}
!93 = !{ptr @may_unswitch_on, ptr @canon_condition, i64 4}
!94 = !{ptr @reversed_condition, ptr @reversed_comparison_code, i64 41}
!95 = !{ptr @reversed_condition, ptr @gen_rtx_fmt_ee_stat, i64 40}
!96 = !{ptr @unswitch_loop, ptr @flow_bb_inside_loop_p, i64 117}
!97 = !{ptr @unswitch_loop, ptr @fancy_abort, i64 6}
!98 = !{ptr @unswitch_loop, ptr @VEC_edge_base_length, i64 39}
!99 = !{ptr @unswitch_loop, ptr @just_once_each_iteration_p, i64 39}
!100 = !{ptr @unswitch_loop, ptr @VEC_edge_base_index, i64 390}
!101 = !{ptr @unswitch_loop, ptr @loop_preheader_edge, i64 115}
!102 = !{ptr @unswitch_loop, ptr @duplicate_loop_to_header_edge, i64 39}
!103 = !{ptr @unswitch_loop, ptr @get_bb_copy, i64 114}
!104 = !{ptr @unswitch_loop, ptr @single_succ_edge, i64 38}
!105 = !{ptr @unswitch_loop, ptr @create_empty_bb, i64 38}
!106 = !{ptr @unswitch_loop, ptr @block_label, i64 38}
!107 = !{ptr @unswitch_loop, ptr @compare_and_jump_seq, i64 38}
!108 = !{ptr @unswitch_loop, ptr @emit_insn_after, i64 38}
!109 = !{ptr @unswitch_loop, ptr @make_edge, i64 76}
!110 = !{ptr @unswitch_loop, ptr @single_pred_edge, i64 38}
!111 = !{ptr @unswitch_loop, ptr @loopify, i64 38}
!112 = !{ptr @unswitch_loop, ptr @remove_path, i64 76}
!113 = !{ptr @unswitch_loop, ptr @split_edge, i64 76}
!114 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 39}
!115 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!116 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 39}
!117 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 39}
!118 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!119 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 39}
!120 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 39}
!121 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 39}
!122 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 9234}
!123 = !{ptr @VEC_int_heap_free, ptr @free, i64 2534}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = !{!"function_entry_count", i64 39}
!126 = !{!"branch_weights", i32 1, i32 40}
!127 = !{!128, !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C/C++ TBAA"}
!130 = !{!"branch_weights", i32 40, i32 1}
!131 = !{!"function_entry_count", i64 2535}
!132 = !{!133, !133, i64 0}
!133 = !{!"any pointer", !128, i64 0}
!134 = !{!"branch_weights", i32 1, i32 2535}
!135 = !{!"branch_weights", i32 2535, i32 6700}
!136 = distinct !{!136, !137}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"loop-unswitch.c:fel_init"}
!139 = !{!140, !141, i64 8}
!140 = !{!"", !133, i64 0, !141, i64 8}
!141 = !{!"int", !128, i64 0}
!142 = !{!143, !133, i64 32}
!143 = !{!"function", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !133, i64 80, !133, i64 88, !133, i64 96, !141, i64 104, !141, i64 108, !141, i64 112, !141, i64 116, !141, i64 120, !141, i64 124, !133, i64 128, !141, i64 136, !141, i64 137, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 138, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139, !141, i64 139}
!144 = !{!"branch_weights", i32 1, i32 2536}
!145 = !{!140, !133, i64 0}
!146 = !{!147, !133, i64 8}
!147 = !{!"loops", !141, i64 0, !133, i64 8, !133, i64 16, !133, i64 24}
!148 = !{i32 0, i32 2}
!149 = !{!"branch_weights", i32 1, i32 16503}
!150 = !{!151, !133, i64 48}
!151 = !{!"loop", !141, i64 0, !141, i64 4, !133, i64 8, !133, i64 16, !152, i64 24, !141, i64 32, !141, i64 36, !133, i64 40, !133, i64 48, !133, i64 56, !133, i64 64, !133, i64 72, !153, i64 80, !153, i64 96, !128, i64 112, !128, i64 113, !141, i64 116, !133, i64 120, !133, i64 128, !128, i64 136, !133, i64 144}
!152 = !{!"lpt_decision", !141, i64 0, !141, i64 4}
!153 = !{!"", !154, i64 0, !154, i64 8}
!154 = !{!"long", !128, i64 0}
!155 = !{!"branch_weights", i32 9235, i32 7269}
!156 = !{!151, !141, i64 0}
!157 = !{!"branch_weights", i32 9235, i32 1}
!158 = !{!"branch_weights", i32 2535, i32 13968}
!159 = distinct !{!159, !137}
!160 = !{!"function_entry_count", i64 9312}
!161 = !{!"loop-unswitch.c:unswitch_single_loop"}
!162 = !{!163, !141, i64 8}
!163 = !{!"param_info", !133, i64 0, !141, i64 8, !128, i64 12, !141, i64 16, !141, i64 20, !133, i64 24}
!164 = !{!"branch_weights", i32 1, i32 9313}
!165 = !{!"branch_weights", i32 9313, i32 1}
!166 = !{!"branch_weights", i32 243, i32 9071}
!167 = !{!"branch_weights", i32 243, i32 1}
!168 = !{!"branch_weights", i32 487, i32 8585}
!169 = !{!"branch_weights", i32 487, i32 1}
!170 = !{!"branch_weights", i32 7320, i32 1266}
!171 = !{!"branch_weights", i32 1266, i32 1}
!172 = !{!"branch_weights", i32 6, i32 7315}
!173 = !{!151, !141, i64 36}
!174 = !{!"branch_weights", i32 1, i32 127}
!175 = !{!"branch_weights", i32 6, i32 1}
!176 = !{!"branch_weights", i32 127, i32 931073}
!177 = !{!"branch_weights", i32 27704, i32 40}
!178 = !{!"branch_weights", i32 20468, i32 7275}
!179 = distinct !{!179, !137}
!180 = !{!"branch_weights", i32 2135740736, i32 11742912}
!181 = !{!"branch_weights", i32 81, i32 1600}
!182 = !{!"branch_weights", i32 37, i32 3}
!183 = !{!"branch_weights", i32 3, i32 0}
!184 = distinct !{!184, !137}
!185 = !{!186, !133, i64 8}
!186 = !{!"basic_block_def", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !128, i64 32, !133, i64 48, !133, i64 56, !128, i64 64, !154, i64 72, !141, i64 80, !141, i64 84, !141, i64 88, !141, i64 92, !141, i64 96}
!187 = !{!188, !141, i64 48}
!188 = !{!"edge_def", !133, i64 0, !133, i64 8, !128, i64 16, !133, i64 24, !133, i64 32, !141, i64 40, !141, i64 44, !141, i64 48, !141, i64 52, !154, i64 56}
!189 = !{!"function_entry_count", i64 11769}
!190 = !{!"loop-unswitch.c:fel_next"}
!191 = !{!"branch_weights", i32 2536, i32 9235}
!192 = !{!141, !141, i64 0}
!193 = !{!"branch_weights", i32 1, i32 9235}
!194 = distinct !{!194, !137}
!195 = !{!"loop-unswitch.c:VEC_int_heap_alloc"}
!196 = !{!"loop-unswitch.c:number_of_loops"}
!197 = !{!"function_entry_count", i64 19037}
!198 = !{!"loop-unswitch.c:VEC_loop_p_base_iterate"}
!199 = !{!"branch_weights", i32 1, i32 19038}
!200 = !{!201, !141, i64 0}
!201 = !{!"VEC_loop_p_base", !141, i64 0, !141, i64 4, !128, i64 8}
!202 = !{!"branch_weights", i32 16503, i32 2536}
!203 = !{!"function_entry_count", i64 9234}
!204 = !{!"loop-unswitch.c:VEC_int_base_quick_push"}
!205 = !{!206, !141, i64 0}
!206 = !{!"VEC_int_base", !141, i64 0, !141, i64 4, !128, i64 8}
!207 = !{!"loop-unswitch.c:VEC_loop_p_base_length"}
!208 = !{!"loop-unswitch.c:VEC_loop_p_base_index"}
!209 = !{!"function_entry_count", i64 27742}
!210 = !{!"loop-unswitch.c:may_unswitch_on"}
!211 = !{!"branch_weights", i32 16588, i32 11156}
!212 = !{!213, !133, i64 8}
!213 = !{!"rtl_bb_info", !133, i64 0, !133, i64 8, !133, i64 16, !133, i64 24, !141, i64 32}
!214 = !{!"branch_weights", i32 1, i32 16588}
!215 = !{!188, !133, i64 8}
!216 = !{!"branch_weights", i32 3063, i32 13526}
!217 = !{!"branch_weights", i32 7867, i32 5660}
!218 = !{!"branch_weights", i32 2570, i32 3091}
!219 = !{!"branch_weights", i32 1, i32 3091}
!220 = !{!"branch_weights", i32 40, i32 3365}
!221 = !{!"branch_weights", i32 2974, i32 392}
!222 = !{!223, !133, i64 8}
!223 = !{!"rtx_iv", !133, i64 0, !133, i64 8, !141, i64 16, !133, i64 24, !133, i64 32, !141, i64 40, !141, i64 44, !141, i64 48}
!224 = !{!"branch_weights", i32 314, i32 79}
!225 = !{!"branch_weights", i32 314, i32 1}
!226 = !{!"branch_weights", i32 3364, i32 40}
!227 = distinct !{!227, !137}
!228 = !{!"function_entry_count", i64 41}
!229 = !{!"branch_weights", i32 1, i32 42}
!230 = !{!"function_entry_count", i64 30736}
!231 = !{!"loop-unswitch.c:VEC_edge_base_index"}
!232 = !{!"loop-unswitch.c:unswitch_loop"}
!233 = !{!"branch_weights", i32 9, i32 32}
!234 = !{!151, !133, i64 16}
!235 = !{!188, !141, i64 52}
!236 = !{!143, !133, i64 8}
!237 = !{!238, !133, i64 8}
!238 = !{!"control_flow_graph", !133, i64 0, !133, i64 8, !133, i64 16, !141, i64 24, !141, i64 28, !141, i64 32, !133, i64 40, !141, i64 48, !128, i64 52, !128, i64 60, !141, i64 68, !141, i64 72}
!239 = !{!186, !133, i64 48}
!240 = !{!188, !154, i64 56}
!241 = !{!186, !141, i64 96}
!242 = !{!151, !133, i64 8}
!243 = !{!"function_entry_count", i64 27859}
!244 = !{!"loop-unswitch.c:VEC_edge_base_length"}
!245 = !{!"branch_weights", i32 1, i32 27860}
!246 = !{!247, !141, i64 0}
!247 = !{!"VEC_edge_base", !141, i64 0, !141, i64 4, !128, i64 8}
!248 = !{!"loop-unswitch.c:single_succ_edge"}
!249 = !{i8 0, i8 2}
!250 = !{!"loop-unswitch.c:single_pred_edge"}
!251 = !{!186, !133, i64 0}
!252 = !{!"loop-unswitch.c:single_succ_p"}
!253 = !{!"loop-unswitch.c:single_pred_p"}
!254 = !{!"loop-unswitch.c:VEC_int_base_iterate"}
!255 = !{!"branch_weights", i32 1, i32 11770}
!256 = !{!"branch_weights", i32 9235, i32 2536}
!257 = !{!"loop-unswitch.c:get_loop"}
!258 = !{!"loop-unswitch.c:VEC_int_heap_free"}

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
define dso_local ptr @compare_and_jump_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

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
  %19 = load i8, ptr %18, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 1
  %21 = icmp eq ptr %5, null
  br i1 %20, label %22, label %59

22:                                               ; preds = %15
  br i1 %21, label %23, label %24

23:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.1) #9
  br label %24

24:                                               ; preds = %22, %23
  %25 = tail call ptr @pc_set(ptr noundef %5) #9
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #9
  br label %34

34:                                               ; preds = %24, %33
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef %36) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 109, ptr noundef nonnull @.str.1) #9
  br label %40

40:                                               ; preds = %34, %39
  %41 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call i32 @rtx_equal_p(ptr noundef %1, ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @.str.1) #9
  br label %46

46:                                               ; preds = %40, %45
  %47 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = tail call ptr @copy_insn(ptr noundef %48) #9
  %50 = tail call ptr @emit_jump_insn(ptr noundef %49) #9
  %51 = tail call ptr @get_last_insn() #9
  %52 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %53, ptr %54, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !5
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !5
  %58 = tail call i32 @redirect_jump(ptr noundef %51, ptr noundef %3, i32 noundef 0) #9
  br label %69

59:                                               ; preds = %15
  br i1 %21, label %61, label %60

60:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #9
  br label %61

61:                                               ; preds = %59, %60
  %62 = tail call ptr @force_operand(ptr noundef nonnull %0, ptr noundef null) #9
  %63 = tail call ptr @force_operand(ptr noundef %1, ptr noundef null) #9
  tail call void @do_compare_rtx_and_jump(ptr noundef %62, ptr noundef %63, i32 noundef %2, i32 noundef 0, i32 noundef %16, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef -1) #9
  %64 = tail call ptr @get_last_insn() #9
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %3, ptr %65, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !5
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !5
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
define dso_local void @unswitch_loops() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call fastcc void @unswitch_single_loop(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0) #11
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !10

9:                                                ; preds = %5, %0
  tail call void @iv_analysis_done() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !12
  %5 = load ptr, ptr @cfun, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !17
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %45

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @number_of_loops() #11
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #11
  store ptr %12, ptr %0, align 8, !tbaa !17
  %13 = load ptr, ptr @cfun, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #11, !range !20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %10, %35
  %21 = phi ptr [ %36, %35 ], [ %13, %10 ]
  %22 = phi i32 [ %37, %35 ], [ 0, %10 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, ptr %23, align 8, !tbaa !26
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8, !tbaa !17
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %33, i32 noundef %30) #11
  %34 = load ptr, ptr @cfun, align 8, !tbaa !8
  br label %35

35:                                               ; preds = %20, %25, %29, %32
  %36 = phi ptr [ %21, %20 ], [ %21, %25 ], [ %21, %29 ], [ %34, %32 ]
  %37 = add i32 %22, 1
  %38 = getelementptr inbounds %struct.function, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  %40 = getelementptr inbounds %struct.loops, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !18
  %42 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %41, i32 noundef %37, ptr noundef nonnull %3) #11, !range !20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %20, !llvm.loop !27

44:                                               ; preds = %35, %10
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %45

45:                                               ; preds = %44, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 36, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !28
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %169, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 42, i64 1, ptr nonnull %11)
  br label %169

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %169, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr nonnull %20)
  br label %169

24:                                               ; preds = %15
  %25 = tail call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %0) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %169, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 41, i64 1, ptr nonnull %28)
  br label %169

32:                                               ; preds = %24
  %33 = tail call i32 @num_loop_insns(ptr noundef nonnull %0) #9
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !8
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 35, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !28
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %169, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 33, i64 1, ptr nonnull %39)
  br label %169

43:                                               ; preds = %32
  %44 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef nonnull %0) #9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %169, label %49

49:                                               ; preds = %46
  %50 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %47)
  br label %169

51:                                               ; preds = %43
  %52 = tail call i32 @expected_loop_iterations(ptr noundef nonnull %0) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %56 = icmp eq ptr %1, null
  store ptr null, ptr %5, align 8, !tbaa !8
  %57 = tail call ptr @get_loop_body(ptr noundef %0) #9
  tail call void @iv_analysis_loop_init(ptr noundef %0) #9
  %58 = load i32, ptr %55, align 4, !tbaa !30
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %92, label %74

60:                                               ; preds = %51
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %169, label %63

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
  store ptr null, ptr %5, align 8, !tbaa !8
  %71 = call ptr @get_loop_body(ptr noundef %0) #9
  call void @iv_analysis_loop_init(ptr noundef %0) #9
  %72 = load i32, ptr %55, align 4, !tbaa !30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %54, %68
  %75 = phi ptr [ %71, %68 ], [ %57, %54 ]
  %76 = phi ptr [ %116, %68 ], [ null, %54 ]
  br label %77

77:                                               ; preds = %74, %84
  %78 = phi i64 [ %85, %84 ], [ 0, %74 ]
  %79 = getelementptr inbounds ptr, ptr %75, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = call fastcc ptr @may_unswitch_on(ptr noundef %80, ptr noundef nonnull %0, ptr noundef nonnull %5) #11
  store ptr %81, ptr %4, align 8, !tbaa !8
  %82 = icmp eq ptr %81, null
  %83 = load i32, ptr %55, align 4, !tbaa !30
  br i1 %82, label %84, label %88

84:                                               ; preds = %77
  %85 = add nuw nsw i64 %78, 1
  %86 = zext i32 %83 to i64
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %77, label %88, !llvm.loop !31

88:                                               ; preds = %84, %77
  %89 = phi i64 [ %85, %84 ], [ %78, %77 ]
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %83, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %68, %54
  %93 = phi ptr [ %57, %54 ], [ %75, %88 ], [ %71, %68 ]
  call void @free(ptr noundef %93) #11
  br label %169

94:                                               ; preds = %88
  %95 = load ptr, ptr %4, align 8, !tbaa !8
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !8
  %97 = icmp eq ptr %95, %96
  %98 = load ptr, ptr @const_true_rtx, align 8
  %99 = icmp eq ptr %95, %98
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %94
  %102 = call ptr @reversed_condition(ptr noundef %95) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call ptr @canon_condition(ptr noundef nonnull %102) #9
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %105, %104 ], [ null, %101 ]
  br i1 %56, label %115, label %108

108:                                              ; preds = %106, %108
  %109 = phi ptr [ %113, %108 ], [ %1, %106 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  call void @simplify_using_condition(ptr noundef %111, ptr noundef nonnull %4, ptr noundef null) #9
  %112 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !5
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %108, !llvm.loop !32

115:                                              ; preds = %108, %106, %94
  %116 = phi ptr [ %76, %94 ], [ %107, %106 ], [ %107, %108 ]
  %117 = load ptr, ptr %4, align 8, !tbaa !8
  %118 = load ptr, ptr @const_true_rtx, align 8, !tbaa !8
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = and i64 %89, 4294967295
  %122 = getelementptr inbounds ptr, ptr %75, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !8
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !33
  %126 = call fastcc ptr @VEC_edge_base_index(ptr noundef %125, i32 noundef 0) #11
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 7
  %128 = load i32, ptr %127, align 8, !tbaa !35
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %65, label %68

131:                                              ; preds = %115
  %132 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !8
  %133 = icmp eq ptr %117, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = and i64 %89, 4294967295
  %136 = getelementptr inbounds ptr, ptr %75, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !8
  %138 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !33
  %140 = call fastcc ptr @VEC_edge_base_index(ptr noundef %139, i32 noundef 0) #11
  %141 = getelementptr inbounds %struct.edge_def, ptr %140, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !35
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %68, label %65

145:                                              ; preds = %131
  %146 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %117, ptr noundef %1) #9
  %147 = icmp eq ptr %116, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %116, ptr noundef %1) #9
  br label %150

150:                                              ; preds = %145, %148
  %151 = phi ptr [ %149, %148 ], [ %1, %145 ]
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr nonnull %152)
  br label %156

156:                                              ; preds = %154, %150
  %157 = and i64 %89, 4294967295
  %158 = getelementptr inbounds ptr, ptr %75, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !8
  %160 = load ptr, ptr %4, align 8, !tbaa !8
  %161 = load ptr, ptr %5, align 8, !tbaa !8
  %162 = call fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %159, ptr noundef %160, ptr noundef %161) #11
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 369, ptr noundef nonnull @.str.1) #9
  br label %165

165:                                              ; preds = %156, %164
  %166 = add nsw i32 %2, 1
  call fastcc void @unswitch_single_loop(ptr noundef %162, ptr noundef %151, i32 noundef %166) #11
  call fastcc void @unswitch_single_loop(ptr noundef %0, ptr noundef %146, i32 noundef %166) #11
  call void @free_EXPR_LIST_node(ptr noundef %146) #9
  br i1 %147, label %168, label %167

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
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !17
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #11, !range !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !12
  %13 = load i32, ptr %3, align 4, !tbaa !37
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #11
  store ptr %14, ptr %1, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !38

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #11
  store ptr null, ptr %1, align 8, !tbaa !8
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @iv_analysis_done() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @reversed_condition(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @reversed_comparison_code(ptr noundef %0, ptr noundef null) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %7, ptr noundef %9, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %12, %4 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !8
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #11
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !39
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !8
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 4, !tbaa !41
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !41
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !39
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !41
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !37
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !37
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !8
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #11
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

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
define internal fastcc ptr @may_unswitch_on(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca [2 x ptr], align 16
  %6 = alloca %struct.rtx_iv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #11
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %127

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = tail call i32 @any_condjump_p(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %127, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %7, align 8, !tbaa !33
  %20 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %19, i32 noundef 0) #11
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %22) #9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %127, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %7, align 8, !tbaa !33
  %27 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %26, i32 noundef 1) #11
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %29) #9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %127, label %32

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %1, ptr noundef nonnull %0) #9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %127, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %12, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = call ptr @get_condition(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %127, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_iv, ptr %6, i64 0, i32 7
  br label %45

45:                                               ; preds = %41, %71
  %46 = phi i1 [ true, %41 ], [ false, %71 ]
  %47 = phi i64 [ 0, %41 ], [ 1, %71 ]
  %48 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %47
  store ptr %49, ptr %50, align 8, !tbaa !8
  %51 = load i32, ptr %49, align 8
  %52 = and i32 %51, 65535
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !37
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %71, label %57

57:                                               ; preds = %45
  %58 = load ptr, ptr %4, align 8, !tbaa !8
  %59 = call zeroext i8 @iv_analyze(ptr noundef %58, ptr noundef nonnull %49, ptr noundef nonnull %6) #9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %127, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %43, align 8, !tbaa !46
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !8
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %127

65:                                               ; preds = %61
  %66 = load i8, ptr %44, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %127

69:                                               ; preds = %65
  %70 = call ptr @get_iv_value(ptr noundef nonnull %6, ptr noundef %62) #9
  store ptr %70, ptr %50, align 8, !tbaa !8
  br label %71

71:                                               ; preds = %45, %69
  br i1 %46, label %45, label %72, !llvm.loop !48

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 16, !tbaa !8
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !8
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i32 [ %83, %78 ], [ %76, %72 ]
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !5
  %89 = icmp eq i8 %88, 1
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load ptr, ptr %4, align 8, !tbaa !8
  %92 = load ptr, ptr %12, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.rtl_bb_info, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %90
  %97 = load ptr, ptr %42, align 8, !tbaa !5
  %98 = call i32 @rtx_equal_p(ptr noundef nonnull %73, ptr noundef %97) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !8
  %103 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = call i32 @rtx_equal_p(ptr noundef %102, ptr noundef %104) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %12, align 8, !tbaa !5
  %109 = getelementptr inbounds %struct.rtl_bb_info, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  store ptr %110, ptr %2, align 8, !tbaa !8
  br label %127

111:                                              ; preds = %84
  %112 = load i32, ptr %39, align 8
  %113 = and i32 %112, 65535
  %114 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !8
  %116 = call ptr @simplify_gen_relational(i32 noundef %113, i32 noundef 16, i32 noundef %85, ptr noundef nonnull %73, ptr noundef %115) #9
  %117 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !8
  %118 = icmp eq ptr %116, %117
  %119 = load ptr, ptr @const_true_rtx, align 8
  %120 = icmp eq ptr %116, %119
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %111
  %123 = load i32, ptr %39, align 8
  %124 = and i32 %123, 65535
  %125 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef %124, i32 noundef 16, ptr noundef nonnull %73, ptr noundef %115) #9
  %126 = call ptr @canon_condition(ptr noundef %125) #9
  br label %127

127:                                              ; preds = %61, %65, %57, %111, %96, %100, %90, %35, %32, %18, %25, %11, %3, %122, %107
  %128 = phi ptr [ %39, %107 ], [ %126, %122 ], [ null, %3 ], [ null, %11 ], [ null, %25 ], [ null, %18 ], [ null, %32 ], [ null, %35 ], [ null, %90 ], [ null, %100 ], [ null, %96 ], [ %116, %111 ], [ null, %57 ], [ null, %65 ], [ null, %61 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %128
}

; Function Attrs: optsize
declare ptr @canon_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @simplify_using_condition(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @remove_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @unswitch_loop(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %1) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 399, ptr noundef nonnull @.str.1) #9
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %10) #11
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 400, ptr noundef nonnull @.str.1) #9
  br label %14

14:                                               ; preds = %8, %13
  %15 = tail call zeroext i8 @just_once_each_iteration_p(ptr noundef %0, ptr noundef nonnull %1) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #9
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 402, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %9, align 8, !tbaa !33
  %25 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %24, i32 noundef 0) #11
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %27) #9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.1) #9
  br label %31

31:                                               ; preds = %23, %30
  %32 = load ptr, ptr %9, align 8, !tbaa !33
  %33 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %32, i32 noundef 1) #11
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %35) #9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 404, ptr noundef nonnull @.str.1) #9
  br label %39

39:                                               ; preds = %31, %38
  %40 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #9
  %41 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !35
  %43 = and i32 %42, 128
  %44 = and i32 %42, -129
  store i32 %44, ptr %41, align 8, !tbaa !35
  %45 = tail call zeroext i8 @duplicate_loop_to_header_edge(ptr noundef nonnull %0, ptr noundef %40, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %180, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %41, align 8, !tbaa !35
  %49 = or i32 %48, %43
  store i32 %49, ptr %41, align 8, !tbaa !35
  %50 = tail call ptr @get_bb_copy(ptr noundef nonnull %1) #9
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  %53 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %52, i32 noundef 0) #11
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !35
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %52, i32 noundef 1) #11
  br label %60

60:                                               ; preds = %47, %58
  %61 = phi ptr [ %59, %58 ], [ %53, %47 ]
  %62 = load ptr, ptr %9, align 8, !tbaa !33
  %63 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %62, i32 noundef 0) #11
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !35
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %62, i32 noundef 1) #11
  br label %70

70:                                               ; preds = %60, %68
  %71 = phi ptr [ %69, %68 ], [ %63, %60 ]
  %72 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  %74 = tail call ptr @get_bb_copy(ptr noundef %73) #9
  %75 = tail call fastcc ptr @single_succ_edge(ptr noundef %74) #11
  %76 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 8
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = load ptr, ptr @cfun, align 8, !tbaa !8
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.control_flow_graph, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !54
  %85 = tail call ptr @create_empty_bb(ptr noundef %84) #9
  %86 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = load i32, ptr %2, align 8
  %91 = and i32 %90, 65535
  %92 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = tail call ptr @block_label(ptr noundef %93) #9
  %95 = tail call ptr @compare_and_jump_seq(ptr noundef %87, ptr noundef %89, i32 noundef %91, ptr noundef %94, i32 noundef %77, ptr noundef %3) #11
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.rtl_bb_info, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = tail call ptr @emit_insn_after(ptr noundef %95, ptr noundef %99) #9
  %101 = load ptr, ptr %92, align 8, !tbaa !45
  %102 = tail call ptr @make_edge(ptr noundef %85, ptr noundef %101, i32 noundef 0) #9
  %103 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 8
  store i32 %77, ptr %103, align 4, !tbaa !50
  %104 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 9
  %105 = load i64, ptr %104, align 8, !tbaa !55
  %106 = sext i32 %77 to i64
  %107 = mul nsw i64 %105, %106
  %108 = sdiv i64 %107, 10000
  %109 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 9
  store i64 %108, ptr %109, align 8, !tbaa !55
  %110 = load ptr, ptr %9, align 8, !tbaa !33
  %111 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 0) #11
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !35
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %70
  %117 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %110, i32 noundef 1) #11
  br label %118

118:                                              ; preds = %70, %116
  %119 = phi ptr [ %117, %116 ], [ %111, %70 ]
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = tail call ptr @make_edge(ptr noundef nonnull %85, ptr noundef %121, i32 noundef 1) #9
  %123 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 8
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 8
  store i32 %124, ptr %125, align 4, !tbaa !50
  %126 = load i64, ptr %104, align 8, !tbaa !55
  %127 = sext i32 %124 to i64
  %128 = mul nsw i64 %126, %127
  %129 = sdiv i64 %128, 10000
  %130 = getelementptr inbounds %struct.edge_def, ptr %122, i64 0, i32 9
  store i64 %129, ptr %130, align 8, !tbaa !55
  %131 = icmp eq i32 %43, 0
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 13
  %133 = load i32, ptr %132, align 8, !tbaa !56
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  br i1 %131, label %146, label %135

135:                                              ; preds = %118
  %136 = or i32 %133, 4
  store i32 %136, ptr %132, align 8, !tbaa !56
  %137 = load ptr, ptr %134, align 8, !tbaa !33
  %138 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 0) #11
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 7
  %140 = load i32, ptr %139, align 8, !tbaa !35
  %141 = or i32 %140, 128
  store i32 %141, ptr %139, align 8, !tbaa !35
  %142 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %137, i32 noundef 1) #11
  %143 = getelementptr inbounds %struct.edge_def, ptr %142, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !35
  %145 = or i32 %144, 128
  store i32 %145, ptr %143, align 8, !tbaa !35
  br label %157

146:                                              ; preds = %118
  %147 = and i32 %133, -5
  store i32 %147, ptr %132, align 8, !tbaa !56
  %148 = load ptr, ptr %134, align 8, !tbaa !33
  %149 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %148, i32 noundef 0) #11
  %150 = getelementptr inbounds %struct.edge_def, ptr %149, i64 0, i32 7
  %151 = load i32, ptr %150, align 8, !tbaa !35
  %152 = and i32 %151, -129
  store i32 %152, ptr %150, align 8, !tbaa !35
  %153 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %148, i32 noundef 1) #11
  %154 = getelementptr inbounds %struct.edge_def, ptr %153, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !35
  %156 = and i32 %155, -129
  store i32 %156, ptr %154, align 8, !tbaa !35
  br label %157

157:                                              ; preds = %146, %135
  %158 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !57
  %160 = tail call ptr @get_bb_copy(ptr noundef %159) #9
  %161 = tail call fastcc ptr @single_pred_edge(ptr noundef %160) #11
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !33
  %164 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %163, i32 noundef 0) #11
  %165 = getelementptr inbounds %struct.edge_def, ptr %164, i64 0, i32 7
  %166 = load i32, ptr %165, align 8, !tbaa !35
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  %169 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %163, i32 noundef 1) #11
  %170 = select i1 %168, ptr %164, ptr %169
  %171 = select i1 %168, ptr %169, ptr %164
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
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
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #11, !range !60
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 645, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !33
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
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !60
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 655, ptr noundef nonnull @.str.1) #9
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #11
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #11
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !61
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !14, i64 8}
!13 = !{!"", !9, i64 0, !14, i64 8}
!14 = !{!"int", !6, i64 0}
!15 = !{!16, !9, i64 32}
!16 = !{!"function", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !14, i64 116, !14, i64 120, !14, i64 124, !9, i64 128, !14, i64 136, !14, i64 137, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 138, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139, !14, i64 139}
!17 = !{!13, !9, i64 0}
!18 = !{!19, !9, i64 8}
!19 = !{!"loops", !14, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!20 = !{i32 0, i32 2}
!21 = !{!22, !9, i64 48}
!22 = !{!"loop", !14, i64 0, !14, i64 4, !9, i64 8, !9, i64 16, !23, i64 24, !14, i64 32, !14, i64 36, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !24, i64 80, !24, i64 96, !6, i64 112, !6, i64 113, !14, i64 116, !9, i64 120, !9, i64 128, !6, i64 136, !9, i64 144}
!23 = !{!"lpt_decision", !14, i64 0, !14, i64 4}
!24 = !{!"", !25, i64 0, !25, i64 8}
!25 = !{!"long", !6, i64 0}
!26 = !{!22, !14, i64 0}
!27 = distinct !{!27, !11}
!28 = !{!29, !14, i64 8}
!29 = !{!"param_info", !9, i64 0, !14, i64 8, !6, i64 12, !14, i64 16, !14, i64 20, !9, i64 24}
!30 = !{!22, !14, i64 36}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = !{!34, !9, i64 8}
!34 = !{!"basic_block_def", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !9, i64 48, !9, i64 56, !6, i64 64, !25, i64 72, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96}
!35 = !{!36, !14, i64 48}
!36 = !{!"edge_def", !9, i64 0, !9, i64 8, !6, i64 16, !9, i64 24, !9, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !25, i64 56}
!37 = !{!14, !14, i64 0}
!38 = distinct !{!38, !11}
!39 = !{!40, !14, i64 0}
!40 = !{!"VEC_loop_p_base", !14, i64 0, !14, i64 4, !6, i64 8}
!41 = !{!42, !14, i64 0}
!42 = !{!"VEC_int_base", !14, i64 0, !14, i64 4, !6, i64 8}
!43 = !{!44, !9, i64 8}
!44 = !{!"rtl_bb_info", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !14, i64 32}
!45 = !{!36, !9, i64 8}
!46 = !{!47, !9, i64 8}
!47 = !{!"rtx_iv", !9, i64 0, !9, i64 8, !14, i64 16, !9, i64 24, !9, i64 32, !14, i64 40, !14, i64 44, !14, i64 48}
!48 = distinct !{!48, !11}
!49 = !{!22, !9, i64 16}
!50 = !{!36, !14, i64 52}
!51 = !{!16, !9, i64 8}
!52 = !{!53, !9, i64 8}
!53 = !{!"control_flow_graph", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !9, i64 40, !14, i64 48, !6, i64 52, !6, i64 60, !14, i64 68, !14, i64 72}
!54 = !{!34, !9, i64 48}
!55 = !{!36, !25, i64 56}
!56 = !{!34, !14, i64 96}
!57 = !{!22, !9, i64 8}
!58 = !{!59, !14, i64 0}
!59 = !{!"VEC_edge_base", !14, i64 0, !14, i64 4, !6, i64 8}
!60 = !{i8 0, i8 2}
!61 = !{!34, !9, i64 0}

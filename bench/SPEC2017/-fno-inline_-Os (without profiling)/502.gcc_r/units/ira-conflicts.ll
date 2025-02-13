; ModuleID = 'ira-conflicts.c'
source_filename = "ira-conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.ira_allocno_iterator = type { i32 }
%struct.ira_allocno_conflict_iterator = type { i8, ptr, i32, i32, i32, i32, i64 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.ira_copy_iterator = type { i32 }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sparseset_def = type { ptr, ptr, i32, i32, i32, i8, i8, [2 x i32] }
%struct.ira_allocno_set_iterator = type { ptr, i32, i32, i32, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@conflicts = internal unnamed_addr global ptr null, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@no_caller_save_reg_set = external local_unnamed_addr global i64, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c";; r%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c";; a%d(r%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" conflicts:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" r%d,\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" a%d(r%d,\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"b%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"l%d)\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\0A;;     total conflict hard regs:\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c";;     conflict hard regs:\00", align 1
@ira_conflict_id_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [58 x i8] c"+++Conflict table will be too big(>%dMB) -- don't use it\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"+++Allocating %ld bytes for conflict table (uncompressed size %ld)\0A\00", align 1
@ira_max_point = external local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external local_unnamed_addr global ptr, align 8
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@ira_reg_classes_intersect_p = external local_unnamed_addr global [27 x [27 x i8]], align 16
@ira_finish_point_ranges = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"./sparseset.h\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@collected_conflict_allocnos = internal unnamed_addr global ptr null, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"ira-conflicts.c\00", align 1
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@ira_curr_loop_tree_node = external local_unnamed_addr global ptr, align 8
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_copies_num = external local_unnamed_addr global i32, align 4
@ira_copies = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_conflicts(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call fastcc void @print_conflicts(ptr noundef %2, i8 noundef zeroext %0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_conflicts(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_iterator, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %4) #19
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  br label %11

11:                                               ; preds = %9, %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #20
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  br i1 %10, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !10
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %15) #19
  br label %37

17:                                               ; preds = %11
  %18 = load i32, ptr %12, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !10
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %20) #19
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !18
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %30, %28 ], [ %27, %26 ]
  %33 = phi ptr [ @.str.3, %28 ], [ @.str.2, %26 ]
  %34 = load i32, ptr %32, align 8, !tbaa !19
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %33, i32 noundef %34) #19
  %36 = tail call i32 @putc(i32 noundef 41, ptr noundef %0) #19
  br label %37

37:                                               ; preds = %31, %13
  %38 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %0) #19
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %12) #19
  %43 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %42, %69
  %46 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %10, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !10
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %49) #19
  br label %69

51:                                               ; preds = %45
  %52 = load i32, ptr %46, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !10
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %52, i32 noundef %54) #19
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !21
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %62) #19
  br label %69

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !18
  %67 = load i32, ptr %66, align 8, !tbaa !23
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %67) #19
  br label %69

69:                                               ; preds = %47, %64, %60
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %6) #19
  %70 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !9
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %45, !llvm.loop !27

72:                                               ; preds = %69, %42, %37
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 27
  %74 = load i64, ptr %73, align 8, !tbaa !29
  %75 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  %76 = xor i64 %75, -1
  %77 = and i64 %74, %76
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !31
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !30
  %83 = and i64 %77, %82
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %83) #19
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 26
  %85 = load i64, ptr %84, align 8, !tbaa !32
  %86 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !30
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = load i32, ptr %78, align 8, !tbaa !31
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !30
  %93 = and i64 %88, %92
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %93) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %94 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %11, !llvm.loop !33

96:                                               ; preds = %72, %2
  %97 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_build_conflicts() local_unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %0
  %6 = tail call fastcc zeroext i8 @build_conflict_bit_table() #19, !range !9
  store i8 %6, ptr @ira_conflicts_p, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %5
  tail call fastcc void @build_conflicts() #19
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %9, ptr noundef null, ptr noundef nonnull @add_copies) #21
  %10 = load i32, ptr @flag_ira_region, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call fastcc void @propagate_copies() #19
  br label %14

14:                                               ; preds = %8, %13
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %15 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @conflicts, align 8, !tbaa !5
  br i1 %16, label %34, label %18

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %31, %30 ], [ %17, %14 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = load i32, ptr %20, align 8, !tbaa !14
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  tail call void @ira_free(ptr noundef %26) #21
  %29 = load ptr, ptr @conflicts, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %19, %18 ]
  %32 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %18, !llvm.loop !35

34:                                               ; preds = %30, %14
  %35 = phi ptr [ %17, %14 ], [ %31, %30 ]
  tail call void @ira_free(ptr noundef %35) #21
  br label %36

36:                                               ; preds = %5, %34, %0
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @optimize, align 4
  br i1 %38, label %88, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @flag_caller_saves, align 4, !tbaa !19
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %39, 0
  %44 = load ptr, ptr @regno_reg_rtx, align 8
  %45 = load i64, ptr @call_used_reg_set, align 8
  %46 = load i64, ptr @no_caller_save_reg_set, align 8
  br label %47

47:                                               ; preds = %40, %85
  %48 = load ptr, ptr %1, align 8, !tbaa !5
  br i1 %42, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !36
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49, %47
  br i1 %43, label %54, label %74

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !10
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %44, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %61, align 8, !tbaa !37
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %74 [
    i16 32, label %69
    i16 29, label %69
  ]

69:                                               ; preds = %66, %66
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %64, i64 0, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 4096
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66, %69, %63, %54, %53
  %75 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 30
  %76 = load i32, ptr %75, align 8, !tbaa !36
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74, %49, %69
  %79 = phi i64 [ %45, %69 ], [ %45, %49 ], [ %46, %74 ]
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 26
  %81 = load <2 x i64>, ptr %80, align 8, !tbaa !30
  %82 = insertelement <2 x i64> poison, i64 %79, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  %84 = or <2 x i64> %81, %83
  store <2 x i64> %84, ptr %80, align 8, !tbaa !30
  br label %85

85:                                               ; preds = %78, %74
  %86 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %47, !llvm.loop !39

88:                                               ; preds = %85, %36
  %89 = icmp ne i32 %39, 0
  %90 = load i8, ptr @ira_conflicts_p, align 1
  %91 = icmp ne i8 %90, 0
  %92 = select i1 %89, i1 %91, i1 false
  %93 = load i32, ptr @internal_flag_ira_verbose, align 4
  %94 = icmp sgt i32 %93, 2
  %95 = select i1 %92, i1 %94, i1 false
  %96 = load ptr, ptr @ira_dump_file, align 8
  %97 = icmp ne ptr %96, null
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  tail call fastcc void @print_conflicts(ptr noundef nonnull %96, i8 noundef zeroext 0) #19
  br label %100

100:                                              ; preds = %99, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_conflict_bit_table() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !19
  %4 = add nsw i32 %3, 63
  %5 = sdiv i32 %4, 64
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %6 = load ptr, ptr @compiler_params, align 8
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 106, i32 1
  br label %8

8:                                                ; preds = %20, %0
  %9 = phi i32 [ %24, %20 ], [ 0, %0 ]
  br label %10

10:                                               ; preds = %8, %13
  %11 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !41
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %10, label %20, !llvm.loop !42

20:                                               ; preds = %13
  %21 = add i32 %16, 64
  %22 = sub i32 %21, %18
  %23 = sdiv i32 %22, 64
  %24 = add nsw i32 %23, %9
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = load i32, ptr %7, align 8, !tbaa !43
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 20
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %8, !llvm.loop !42

31:                                               ; preds = %20
  %32 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !19
  %33 = icmp sgt i32 %32, 0
  %34 = load ptr, ptr @ira_dump_file, align 8
  %35 = icmp ne ptr %34, null
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %183

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.14, i32 noundef %27) #19
  br label %183

39:                                               ; preds = %10
  %40 = tail call ptr @sparseset_alloc(i32 noundef %3) #21
  %41 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !19
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @ira_allocate(i64 noundef %43) #21
  store ptr %44, ptr @conflicts, align 8, !tbaa !5
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %45 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %39, %63
  %48 = phi ptr [ %71, %63 ], [ %44, %39 ]
  %49 = phi i32 [ %67, %63 ], [ 0, %39 ]
  br label %50

50:                                               ; preds = %47, %58
  %51 = load ptr, ptr %1, align 8, !tbaa !5
  %52 = load i32, ptr %51, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 22
  %54 = load i32, ptr %53, align 4, !tbaa !40
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 21
  %56 = load i32, ptr %55, align 8, !tbaa !41
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = sext i32 %52 to i64
  %60 = getelementptr inbounds ptr, ptr %48, i64 %59
  store ptr null, ptr %60, align 8, !tbaa !5
  %61 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %76, label %50, !llvm.loop !45

63:                                               ; preds = %50
  %64 = add i32 %54, 64
  %65 = sub i32 %64, %56
  %66 = sdiv i32 %65, 64
  %67 = add nsw i32 %66, %49
  %68 = sext i32 %66 to i64
  %69 = shl nsw i64 %68, 3
  %70 = tail call ptr @ira_allocate(i64 noundef %69) #21
  %71 = load ptr, ptr @conflicts, align 8
  %72 = sext i32 %52 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  store ptr %70, ptr %73, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %69, i1 false)
  %74 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %47, !llvm.loop !45

76:                                               ; preds = %63, %58, %39
  %77 = phi i32 [ 0, %39 ], [ %49, %58 ], [ %67, %63 ]
  %78 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !19
  %79 = icmp sgt i32 %78, 0
  %80 = load ptr, ptr @ira_dump_file, align 8
  %81 = icmp ne ptr %80, null
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = sext i32 %77 to i64
  %85 = shl nsw i64 %84, 3
  %86 = sext i32 %5 to i64
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !19
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %86, 3
  %90 = mul nsw i64 %89, %88
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.15, i64 noundef %85, i64 noundef %90) #19
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, ptr @ira_max_point, align 4, !tbaa !19
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %182

95:                                               ; preds = %92, %177
  %96 = phi i64 [ %178, %177 ], [ 0, %92 ]
  %97 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !5
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %165, label %101

101:                                              ; preds = %95, %161
  %102 = phi ptr [ %163, %161 ], [ %99, %95 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  %104 = load i32, ptr %103, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 24
  %106 = load i32, ptr %105, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !31
  tail call fastcc void @sparseset_set_bit(ptr noundef %40, i32 noundef %104) #19
  tail call fastcc void @sparseset_iter_init(ptr noundef %40) #19
  %109 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #19, !range !9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %161, label %111

111:                                              ; preds = %101
  %112 = zext i32 %108 to i64
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 21
  %114 = load ptr, ptr @conflicts, align 8
  %115 = sext i32 %104 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  br label %117

117:                                              ; preds = %111, %158
  %118 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %40) #19
  %119 = load ptr, ptr @ira_allocnos, align 8, !tbaa !5
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !31
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %112, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !34
  %128 = icmp eq i8 %127, 0
  %129 = icmp eq i32 %104, %118
  %130 = or i1 %129, %128
  br i1 %130, label %158, label %131

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 24
  %133 = load i32, ptr %132, align 8, !tbaa !48
  %134 = load i32, ptr %113, align 8, !tbaa !41
  %135 = sub nsw i32 %133, %134
  %136 = and i32 %135, 63
  %137 = zext nneg i32 %136 to i64
  %138 = shl nuw i64 1, %137
  %139 = load ptr, ptr %116, align 8, !tbaa !5
  %140 = lshr i32 %135, 6
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds i64, ptr %139, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !30
  %144 = or i64 %138, %143
  store i64 %144, ptr %142, align 8, !tbaa !30
  %145 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 21
  %146 = load i32, ptr %145, align 8, !tbaa !41
  %147 = sub nsw i32 %106, %146
  %148 = and i32 %147, 63
  %149 = zext nneg i32 %148 to i64
  %150 = shl nuw i64 1, %149
  %151 = getelementptr inbounds ptr, ptr %114, i64 %120
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = lshr i32 %147, 6
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds i64, ptr %152, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !30
  %157 = or i64 %150, %156
  store i64 %157, ptr %155, align 8, !tbaa !30
  br label %158

158:                                              ; preds = %117, %131
  tail call fastcc void @sparseset_iter_next(ptr noundef %40) #19
  %159 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #19, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %117, !llvm.loop !49

161:                                              ; preds = %158, %101
  %162 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %102, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %101, !llvm.loop !50

165:                                              ; preds = %161, %95
  %166 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !5
  %167 = getelementptr inbounds ptr, ptr %166, i64 %96
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = icmp eq ptr %168, null
  br i1 %169, label %177, label %170

170:                                              ; preds = %165, %170
  %171 = phi ptr [ %175, %170 ], [ %168, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !46
  %173 = load i32, ptr %172, align 8, !tbaa !14
  tail call void @sparseset_clear_bit(ptr noundef %40, i32 noundef %173) #21
  %174 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %171, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !5
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %170, !llvm.loop !51

177:                                              ; preds = %170, %165
  %178 = add nuw nsw i64 %96, 1
  %179 = load i32, ptr @ira_max_point, align 4, !tbaa !19
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %95, label %182, !llvm.loop !52

182:                                              ; preds = %177, %92
  tail call void @free(ptr noundef %40) #19
  br label %183

183:                                              ; preds = %31, %37, %182
  %184 = phi i8 [ 1, %182 ], [ 0, %37 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret i8 %184
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_conflicts() unnamed_addr #1 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !19
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #21
  store ptr %4, ptr @collected_conflict_allocnos, align 8, !tbaa !5
  %5 = tail call i32 @max_reg_num() #21
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %32

7:                                                ; preds = %0
  %8 = zext nneg i32 %5 to i64
  br label %11

9:                                                ; preds = %28, %11
  %10 = icmp sgt i64 %12, 54
  br i1 %10, label %11, label %32, !llvm.loop !53

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !5
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %18

18:                                               ; preds = %11, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %11 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %24) #19
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !55

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %9, label %18, !llvm.loop !56

32:                                               ; preds = %9, %0
  %33 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %33) #21
  ret void
}

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_copies(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %25, %23 ], [ %7, %4 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call fastcc void @add_insn_allocno_copies(ptr noundef nonnull %10) #19
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !59

27:                                               ; preds = %23, %9, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_copies() unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %2) #19
  %3 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %82
  %8 = phi ptr [ %6, %5 ], [ %83, %82 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %82, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi ptr [ %30, %23 ], [ %21, %17 ]
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !10
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi ptr [ %43, %36 ], [ %34, %31 ]
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 21
  %47 = load i32, ptr %46, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 24
  %49 = load i32, ptr %48, align 8, !tbaa !48
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %71, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 22
  %53 = load i32, ptr %52, align 4, !tbaa !40
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @conflicts, align 8, !tbaa !5
  %57 = load i32, ptr %32, align 8, !tbaa !14
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = sub nsw i32 %49, %47
  %62 = lshr i32 %61, 6
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds i64, ptr %60, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !30
  %66 = and i32 %61, 63
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = and i64 %65, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %55, %51, %44
  %72 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !65
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 4
  %75 = load i8, ptr %74, align 4, !tbaa !66
  %76 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !67
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !68
  %80 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %32, ptr noundef nonnull %45, i32 noundef %73, i8 noundef zeroext %75, ptr noundef %77, ptr noundef %79) #21
  %81 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  br label %82

82:                                               ; preds = %55, %71, %7
  %83 = phi ptr [ %8, %55 ], [ %81, %71 ], [ %8, %7 ]
  %84 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %7, !llvm.loop !69

86:                                               ; preds = %82, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store i32 0, ptr %0, align 4, !tbaa !70
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !70
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !19
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !5
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !70
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !72

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %0, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 22
  %19 = load i32, ptr %18, align 4, !tbaa !40
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %24, align 4, !tbaa !78
  br label %36

25:                                               ; preds = %15
  %26 = sub i32 %19, %17
  %27 = add i32 %26, 64
  %28 = sdiv i32 %27, 64
  %29 = shl nsw i32 %28, 3
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !77
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %32, align 4, !tbaa !78
  %33 = icmp ugt i32 %26, -128
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i64, ptr %9, align 8, !tbaa !30
  br label %36

36:                                               ; preds = %21, %25, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %25 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !79
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_conflict_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i8, ptr %0, align 8, !tbaa !73
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !79
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !80
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %10, align 8, !tbaa !76
  br label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !76
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %17
  store ptr %24, ptr %1, align 8, !tbaa !5
  br label %64

27:                                               ; preds = %40
  store i32 %36, ptr %10, align 8, !tbaa !76
  br label %28

28:                                               ; preds = %27, %5
  %29 = phi i64 [ %44, %27 ], [ %7, %5 ]
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !77
  br i1 %31, label %46, label %54

34:                                               ; preds = %9, %40
  %35 = phi i32 [ %16, %9 ], [ %36, %40 ]
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = icmp ult i64 %38, %13
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = shl i32 %36, 6
  store i32 %41, ptr %14, align 8, !tbaa !77
  %42 = load ptr, ptr %15, align 8, !tbaa !75
  %43 = getelementptr inbounds i64, ptr %42, i64 %37
  %44 = load i64, ptr %43, align 8, !tbaa !30
  store i64 %44, ptr %6, align 8, !tbaa !79
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %34, label %27, !llvm.loop !81

46:                                               ; preds = %28, %46
  %47 = phi i32 [ %49, %46 ], [ %33, %28 ]
  %48 = phi i64 [ %50, %46 ], [ %29, %28 ]
  %49 = add i32 %47, 1
  %50 = lshr exact i64 %48, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %53, !llvm.loop !82

53:                                               ; preds = %46
  store i32 %49, ptr %32, align 8, !tbaa !77
  store i64 %50, ptr %6, align 8, !tbaa !79
  br label %54

54:                                               ; preds = %28, %53
  %55 = phi i32 [ %49, %53 ], [ %33, %28 ]
  %56 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !78
  %59 = add i32 %58, %55
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  store ptr %62, ptr %1, align 8, !tbaa !5
  br label %64

63:                                               ; preds = %34
  store i32 %36, ptr %10, align 8, !tbaa !76
  br label %64

64:                                               ; preds = %63, %17, %54, %26
  %65 = phi i8 [ 1, %26 ], [ 1, %54 ], [ 0, %17 ], [ 0, %63 ]
  ret i8 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load i8, ptr %0, align 8, !tbaa !73
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !79
  %9 = lshr i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %10, %6 ], [ %5, %4 ]
  %13 = load i32, ptr %12, align 8, !tbaa !19
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @fputs(ptr noundef %1, ptr noundef %0) #19
  br label %5

5:                                                ; preds = %3, %41
  %6 = phi i64 [ 0, %3 ], [ %43, %41 ]
  %7 = phi i32 [ -1, %3 ], [ %42, %41 ]
  %8 = shl nuw nsw i64 1, %6
  %9 = and i64 %8, %2
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = icmp eq i64 %6, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = add nsw i64 %6, -1
  %15 = shl nuw nsw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %11
  %19 = trunc i64 %6 to i32
  br label %20

20:                                               ; preds = %13, %18, %5
  %21 = phi i32 [ %19, %18 ], [ %7, %13 ], [ %7, %5 ]
  %22 = icmp sgt i32 %21, -1
  %23 = icmp eq i64 %6, 52
  %24 = or i1 %23, %10
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = trunc i64 %6 to i32
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %21, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %21) #19
  br label %41

32:                                               ; preds = %26
  %33 = trunc i64 %6 to i32
  %34 = add i32 %33, -2
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %21, 1
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %37) #19
  br label %41

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %21, i32 noundef %28) #19
  br label %41

41:                                               ; preds = %30, %39, %36, %20
  %42 = phi i32 [ %21, %20 ], [ -1, %36 ], [ -1, %39 ], [ -1, %30 ]
  %43 = add nuw nsw i64 %6, 1
  %44 = icmp eq i64 %43, 53
  br i1 %44, label %45, label %5, !llvm.loop !83

45:                                               ; preds = %41
  %46 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #19, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !84
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #19
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !87
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !88
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !88
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !19
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !87
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !86
  store i8 1, ptr %2, align 4, !tbaa !87
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 85, ptr noundef nonnull @.str.17) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !19
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !84
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !89
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !19
  %8 = load ptr, ptr %0, align 8, !tbaa !89
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_allocno_conflicts(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ira_allocno_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr @conflicts, align 8, !tbaa !5
  %5 = load i32, ptr %0, align 8, !tbaa !14
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 4, !tbaa !40
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %10, i32 noundef %12) #19
  %13 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %24, %17 ]
  %19 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !5
  %20 = load i32, ptr %2, align 4, !tbaa !19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = add nuw i64 %18, 1
  %25 = getelementptr inbounds ptr, ptr %16, i64 %18
  store ptr %23, ptr %25, align 8, !tbaa !5
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #19
  %26 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %17, !llvm.loop !92

28:                                               ; preds = %17
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %32 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef nonnull %0, i32 noundef %31) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef nonnull %0, i32 noundef %31) #21
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !20
  %37 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !5
  %38 = zext nneg i32 %31 to i64
  %39 = shl nuw nsw i64 %38, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %37, i64 %39, i1 false)
  %40 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr null, ptr %40, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %31, ptr %41, align 8, !tbaa !93
  br label %60

42:                                               ; preds = %30
  %43 = load ptr, ptr @conflicts, align 8, !tbaa !5
  %44 = load i32, ptr %0, align 8, !tbaa !14
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %47, ptr %48, align 8, !tbaa !20
  %49 = load i32, ptr %11, align 4, !tbaa !40
  %50 = load i32, ptr %9, align 8, !tbaa !41
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = add i32 %49, 64
  %54 = sub i32 %53, %50
  %55 = sdiv i32 %54, 64
  %56 = shl nsw i32 %55, 3
  br label %57

57:                                               ; preds = %42, %52
  %58 = phi i32 [ %56, %52 ], [ 0, %42 ]
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %58, ptr %59, align 4, !tbaa !94
  br label %60

60:                                               ; preds = %57, %34
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = icmp eq ptr %64, null
  br i1 %69, label %127, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !64
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !10
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %127, label %79

79:                                               ; preds = %70, %60
  %80 = phi ptr [ %77, %70 ], [ %66, %60 ]
  %81 = load i32, ptr %80, align 8, !tbaa !14
  %82 = load i32, ptr %9, align 8, !tbaa !41
  %83 = load i32, ptr %11, align 4, !tbaa !40
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %82, i32 noundef %83) #19
  %84 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %127, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 21
  %90 = load ptr, ptr @conflicts, align 8
  %91 = sext i32 %81 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  br label %93

93:                                               ; preds = %86, %124
  %94 = load i32, ptr %2, align 4, !tbaa !19
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %87, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load ptr, ptr %88, align 8, !tbaa !64
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !10
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %101, %93
  %110 = phi ptr [ %107, %101 ], [ %99, %93 ]
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %110, i64 0, i32 24
  %112 = load i32, ptr %111, align 8, !tbaa !48
  %113 = load i32, ptr %89, align 8, !tbaa !41
  %114 = sub nsw i32 %112, %113
  %115 = and i32 %114, 63
  %116 = zext nneg i32 %115 to i64
  %117 = shl nuw i64 1, %116
  %118 = load ptr, ptr %92, align 8, !tbaa !5
  %119 = lshr i32 %114, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i64, ptr %118, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !30
  %123 = or i64 %117, %122
  store i64 %123, ptr %121, align 8, !tbaa !30
  br label %124

124:                                              ; preds = %101, %109
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #19
  %125 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !9
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %93, !llvm.loop !95

127:                                              ; preds = %124, %79, %68, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  store ptr %1, ptr %0, align 8, !tbaa !96
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !98
  %6 = icmp slt i32 %3, %2
  %7 = sub i32 %3, %2
  %8 = add i32 %7, 1
  %9 = select i1 %6, i32 0, i32 %8
  %10 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  store i32 %9, ptr %10, align 4, !tbaa !99
  %11 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  store i32 %2, ptr %11, align 4, !tbaa !100
  %12 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 8, !tbaa !101
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8, !tbaa !30
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  store i64 %17, ptr %18, align 8, !tbaa !102
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_set_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !102
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !99
  %11 = load i32, ptr %7, align 8, !tbaa !98
  br label %19

12:                                               ; preds = %24
  store i32 %21, ptr %7, align 8, !tbaa !98
  store i32 %22, ptr %8, align 8, !tbaa !101
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !101
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %24
  %20 = phi i32 [ %11, %6 ], [ %21, %24 ]
  %21 = add i32 %20, 1
  %22 = shl i32 %21, 6
  %23 = icmp ult i32 %22, %10
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !96
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !30
  store i64 %28, ptr %3, align 8, !tbaa !102
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !103

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !104

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !101
  store i64 %34, ptr %3, align 8, !tbaa !102
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  %40 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !100
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %1, align 4, !tbaa !19
  br label %44

43:                                               ; preds = %19
  store i32 %21, ptr %7, align 8, !tbaa !98
  store i32 %22, ptr %8, align 8, !tbaa !101
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i8 [ 1, %38 ], [ 0, %43 ]
  ret i8 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !102
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !101
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_allocate_allocno_conflict_vec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_insn_allocno_copies(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %2) #20
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !109
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !110
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %16, %1, %8
  %26 = phi i32 [ 1000, %8 ], [ 1000, %1 ], [ %24, %23 ], [ 1, %16 ]
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 1)
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %32, label %82

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 23
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %34) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %41

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %34, %32 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = load i32, ptr %44, align 8
  %46 = trunc i32 %45 to i16
  switch i16 %46, label %82 [
    i16 37, label %53
    i16 39, label %47
  ]

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %82

53:                                               ; preds = %41, %47
  %54 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = load i32, ptr %55, align 8
  %57 = trunc i32 %56 to i16
  switch i16 %57, label %82 [
    i16 37, label %64
    i16 39, label %58
  ]

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 37
  br i1 %63, label %64, label %82

64:                                               ; preds = %53, %58
  %65 = tail call i32 @side_effects_p(ptr noundef nonnull %42) #21
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load ptr, ptr %54, align 8, !tbaa !34
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  br label %75

75:                                               ; preds = %67, %72
  %76 = phi ptr [ %74, %72 ], [ %68, %67 ]
  %77 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %76) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %43, align 8, !tbaa !34
  %81 = load ptr, ptr %54, align 8, !tbaa !34
  tail call fastcc void @process_regs_for_copy(ptr noundef %80, ptr noundef %81, i8 noundef zeroext 0, ptr noundef nonnull %0, i32 noundef %27) #19
  br label %172

82:                                               ; preds = %25, %53, %41, %75, %64, %58, %47, %38
  %83 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #21
  %84 = icmp eq ptr %83, null
  br i1 %84, label %172, label %85

85:                                               ; preds = %82
  tail call void @extract_insn(ptr noundef nonnull %0) #21
  %86 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !111
  %87 = icmp sgt i8 %86, 0
  br i1 %87, label %88, label %172

88:                                               ; preds = %85
  %89 = zext nneg i8 %86 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %89, i1 false), !tbaa !34
  br label %96

90:                                               ; preds = %144
  %91 = icmp sgt i8 %145, 0
  br i1 %91, label %92, label %172

92:                                               ; preds = %90
  %93 = icmp slt i32 %27, 8
  %94 = lshr i32 %27, 3
  %95 = select i1 %93, i32 1, i32 %94
  br label %149

96:                                               ; preds = %88, %144
  %97 = phi i8 [ %86, %88 ], [ %145, %144 ]
  %98 = phi i64 [ 0, %88 ], [ %146, %144 ]
  %99 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = load i32, ptr %100, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %144 [
    i16 37, label %109
    i16 39, label %103
  ]

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !34
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %144

109:                                              ; preds = %96, %103
  %110 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %111 = trunc i64 %98 to i32
  br label %112

112:                                              ; preds = %109, %141
  %113 = phi i1 [ true, %109 ], [ false, %141 ]
  %114 = phi i8 [ 0, %109 ], [ 1, %141 ]
  %115 = tail call fastcc i32 @get_dup_num(i32 noundef %111, i8 noundef zeroext %114) #19
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %141

117:                                              ; preds = %112
  %118 = zext nneg i32 %115 to i64
  %119 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 %118
  store i8 1, ptr %119, align 1, !tbaa !34
  %120 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %118
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = load i32, ptr %121, align 8
  %123 = trunc i32 %122 to i16
  switch i16 %123, label %141 [
    i16 37, label %130
    i16 39, label %124
  ]

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 37
  br i1 %129, label %130, label %141

130:                                              ; preds = %117, %124
  %131 = load i32, ptr %100, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %110, align 8, !tbaa !34
  br label %136

136:                                              ; preds = %130, %134
  %137 = phi ptr [ %135, %134 ], [ %100, %130 ]
  %138 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %137) #21
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %100, ptr noundef nonnull %121, i8 noundef zeroext 1, ptr noundef null, i32 noundef %27) #19
  br label %141

141:                                              ; preds = %117, %112, %140, %136, %124
  br i1 %113, label %112, label %142, !llvm.loop !113

142:                                              ; preds = %141
  %143 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !111
  br label %144

144:                                              ; preds = %142, %96, %103
  %145 = phi i8 [ %143, %142 ], [ %97, %96 ], [ %97, %103 ]
  %146 = add nuw nsw i64 %98, 1
  %147 = sext i8 %145 to i64
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %96, label %90, !llvm.loop !114

149:                                              ; preds = %92, %167
  %150 = phi i64 [ 0, %92 ], [ %168, %167 ]
  %151 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  %153 = load i32, ptr %152, align 8
  %154 = trunc i32 %153 to i16
  switch i16 %154, label %167 [
    i16 37, label %161
    i16 39, label %155
  ]

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !34
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 37
  br i1 %160, label %161, label %167

161:                                              ; preds = %155, %149
  %162 = phi ptr [ %152, %149 ], [ %157, %155 ]
  %163 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %162) #21
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = trunc i64 %150 to i32
  call fastcc void @process_reg_shuffles(ptr noundef nonnull %152, i32 noundef %166, i32 noundef %95, ptr noundef nonnull %2) #19
  br label %167

167:                                              ; preds = %149, %155, %161, %165
  %168 = add nuw nsw i64 %150, 1
  %169 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !111
  %170 = sext i8 %169 to i64
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %149, label %172, !llvm.loop !115

172:                                              ; preds = %167, %85, %90, %82, %79
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_regs_for_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 37, label %16
    i16 39, label %10
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %25

16:                                               ; preds = %5, %10
  %17 = load i32, ptr %1, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %25 [
    i16 37, label %27
    i16 39, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %27, label %25

25:                                               ; preds = %16, %5, %19, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 351, ptr noundef nonnull @.str.17) #21
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %16, %19, %25
  %28 = phi i32 [ %8, %16 ], [ %8, %19 ], [ %26, %25 ]
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = call fastcc ptr @go_through_subreg(ptr noundef nonnull %0, ptr noundef nonnull %6) #19
  %38 = call fastcc ptr @go_through_subreg(ptr noundef %1, ptr noundef nonnull %7) #19
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #19
  %40 = icmp ult i32 %39, 53
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef %38) #19
  %42 = icmp ult i32 %41, 53
  br i1 %40, label %43, label %49

43:                                               ; preds = %35
  br i1 %42, label %198, label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !tbaa !19
  %46 = add i32 %45, %39
  %47 = load i32, ptr %7, align 4, !tbaa !19
  %48 = sub i32 %46, %47
  br label %100

49:                                               ; preds = %35
  br i1 %42, label %50, label %55

50:                                               ; preds = %49
  %51 = load i32, ptr %7, align 4, !tbaa !19
  %52 = add i32 %51, %41
  %53 = load i32, ptr %6, align 4, !tbaa !19
  %54 = sub i32 %52, %53
  br label %100

55:                                               ; preds = %49
  %56 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %57 = zext i32 %39 to i64
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 21
  %61 = load i32, ptr %60, align 8, !tbaa !41
  %62 = zext i32 %41 to i64
  %63 = getelementptr inbounds ptr, ptr %56, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 24
  %66 = load i32, ptr %65, align 8, !tbaa !48
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %88, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 22
  %70 = load i32, ptr %69, align 4, !tbaa !40
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @conflicts, align 8, !tbaa !5
  %74 = load i32, ptr %59, align 8, !tbaa !14
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = sub nsw i32 %66, %61
  %79 = lshr i32 %78, 6
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds i64, ptr %77, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !30
  %83 = and i32 %78, 63
  %84 = zext nneg i32 %83 to i64
  %85 = shl nuw i64 1, %84
  %86 = and i64 %82, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %198

88:                                               ; preds = %72, %68, %55
  %89 = load i32, ptr %6, align 4, !tbaa !19
  %90 = load i32, ptr %7, align 4, !tbaa !19
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %198

92:                                               ; preds = %88
  %93 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !5
  %94 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %59, ptr noundef nonnull %64, i32 noundef %4, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %93) #21
  %95 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %95, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !116
  %98 = load i32, ptr %94, align 8, !tbaa !117
  %99 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %97, i32 noundef %98) #21
  br label %198

100:                                              ; preds = %50, %44
  %101 = phi i32 [ %39, %50 ], [ %41, %44 ]
  %102 = phi i32 [ %54, %50 ], [ %48, %44 ]
  %103 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %104 = zext i32 %101 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = sext i32 %102 to i64
  %108 = icmp ult i32 %102, 53
  br i1 %108, label %109, label %198

109:                                              ; preds = %100
  %110 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %107
  %111 = load i32, ptr %110, align 4, !tbaa !19
  %112 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !118
  %114 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !31
  %116 = icmp ne ptr %3, null
  %117 = and i1 %116, %36
  br i1 %117, label %118, label %143

118:                                              ; preds = %109
  %119 = zext i32 %111 to i64
  %120 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !19
  %122 = tail call i32 @reg_classes_intersect_p(i32 noundef %111, i32 noundef 13) #21
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = zext i32 %113 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !34
  %128 = and i8 %127, -2
  %129 = icmp eq i8 %128, 10
  %130 = select i1 %129, i32 2, i32 1
  br label %140

131:                                              ; preds = %118
  %132 = icmp eq i32 %113, 40
  br i1 %132, label %140, label %133

133:                                              ; preds = %131
  %134 = zext i32 %113 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = zext i8 %136 to i32
  %138 = add nuw nsw i32 %137, 3
  %139 = lshr i32 %138, 2
  br label %140

140:                                              ; preds = %133, %131, %124
  %141 = phi i32 [ %130, %124 ], [ %139, %133 ], [ 3, %131 ]
  %142 = icmp ugt i32 %121, %141
  br i1 %142, label %143, label %198

143:                                              ; preds = %140, %109
  %144 = zext i32 %115 to i64
  %145 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %144, i64 %107
  %146 = load i16, ptr %145, align 2, !tbaa !119
  %147 = sext i16 %146 to i64
  %148 = icmp slt i16 %146, 0
  br i1 %148, label %198, label %149

149:                                              ; preds = %143
  %150 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #19
  %151 = icmp ult i32 %150, 53
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %115, i32 noundef %111) #19, !range !121
  br label %156

154:                                              ; preds = %149
  %155 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %111, i32 noundef %115) #19, !range !121
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = mul nsw i32 %157, %4
  br label %159

159:                                              ; preds = %181, %156
  %160 = phi ptr [ %106, %156 ], [ %182, %181 ]
  %161 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 33
  %162 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 10
  %163 = load i32, ptr %162, align 4, !tbaa !122
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %161, i32 noundef %115, i32 noundef %163) #19
  %164 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %164, i32 noundef %115, i32 noundef 0) #19
  %165 = load ptr, ptr %161, align 8, !tbaa !123
  %166 = getelementptr inbounds i32, ptr %165, i64 %147
  %167 = load i32, ptr %166, align 4, !tbaa !19
  %168 = sub nsw i32 %167, %158
  store i32 %168, ptr %166, align 4, !tbaa !19
  %169 = load ptr, ptr %164, align 8, !tbaa !124
  %170 = getelementptr inbounds i32, ptr %169, i64 %147
  %171 = load i32, ptr %170, align 4, !tbaa !19
  %172 = sub nsw i32 %171, %158
  store i32 %172, ptr %170, align 4, !tbaa !19
  %173 = load i32, ptr %166, align 4, !tbaa !19
  %174 = load i32, ptr %162, align 4, !tbaa !122
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %159
  store i32 %173, ptr %162, align 4, !tbaa !122
  br label %177

177:                                              ; preds = %176, %159
  %178 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !54
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %177, %189
  %182 = phi ptr [ %196, %189 ], [ %179, %177 ]
  br label %159

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !15
  %186 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %185, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !63
  %188 = icmp eq ptr %187, null
  br i1 %188, label %198, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %187, i64 0, i32 9
  %191 = load ptr, ptr %190, align 8, !tbaa !64
  %192 = getelementptr inbounds %struct.ira_allocno, ptr %160, i64 0, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !10
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %191, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %181

198:                                              ; preds = %189, %183, %143, %140, %100, %72, %88, %43, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_dup_num(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
  %3 = icmp slt i32 %0, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %88, label %7

7:                                                ; preds = %2
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %14) #19, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %0, 1
  br label %29

19:                                               ; preds = %12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = add nsw i32 %0, -1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %25) #19, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 %0, i32 %22
  br label %29

29:                                               ; preds = %21, %19, %17, %7
  %30 = phi i1 [ false, %17 ], [ false, %7 ], [ true, %19 ], [ %27, %21 ]
  %31 = phi i32 [ %18, %17 ], [ %0, %7 ], [ 0, %19 ], [ %28, %21 ]
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %60, %29
  %36 = phi i32 [ -1, %29 ], [ %61, %60 ]
  %37 = phi i8 [ 0, %29 ], [ %62, %60 ]
  %38 = phi ptr [ %34, %29 ], [ %64, %60 ]
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = sext i8 %39 to i32
  switch i8 %39, label %42 [
    i8 0, label %65
    i8 35, label %60
    i8 44, label %41
  ]

41:                                               ; preds = %35
  br label %60

42:                                               ; preds = %35
  %43 = icmp eq i8 %37, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %42
  switch i8 %39, label %60 [
    i8 88, label %88
    i8 109, label %88
    i8 111, label %88
    i8 57, label %56
    i8 56, label %56
    i8 55, label %56
    i8 112, label %45
    i8 103, label %88
    i8 54, label %56
    i8 53, label %56
    i8 52, label %56
    i8 51, label %56
    i8 50, label %56
    i8 49, label %56
    i8 48, label %56
    i8 114, label %88
    i8 65, label %48
    i8 66, label %48
    i8 67, label %48
    i8 68, label %48
    i8 81, label %48
    i8 82, label %48
    i8 83, label %48
    i8 84, label %48
    i8 85, label %48
    i8 87, label %48
    i8 89, label %48
    i8 90, label %48
    i8 97, label %48
    i8 98, label %48
    i8 99, label %48
    i8 100, label %48
    i8 101, label %48
    i8 102, label %48
    i8 104, label %48
    i8 106, label %48
    i8 107, label %48
    i8 108, label %48
    i8 113, label %48
    i8 116, label %48
    i8 117, label %48
    i8 118, label %48
    i8 119, label %48
    i8 120, label %48
    i8 121, label %48
    i8 122, label %48
  ]

45:                                               ; preds = %44
  %46 = tail call i32 @address_operand(ptr noundef %10, i32 noundef 0) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %88

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %49 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #21
  %50 = tail call i32 @regclass_for_constraint(i32 noundef %49) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %48
  %53 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #21
  %54 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %10, i32 noundef %53) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %88

56:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %57 = icmp eq i32 %36, -1
  %58 = icmp eq i32 %36, %40
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56, %44, %35, %41, %52, %45, %42
  %61 = phi i32 [ %36, %41 ], [ %36, %42 ], [ %36, %44 ], [ %36, %52 ], [ %36, %45 ], [ %36, %35 ], [ %40, %56 ]
  %62 = phi i8 [ 0, %41 ], [ 1, %42 ], [ 0, %44 ], [ 0, %52 ], [ 0, %45 ], [ 1, %35 ], [ 0, %56 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #19
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %35

65:                                               ; preds = %35
  %66 = icmp eq i32 %36, -1
  br i1 %66, label %88, label %67

67:                                               ; preds = %65
  %68 = add nsw i32 %36, -48
  br i1 %11, label %88, label %69

69:                                               ; preds = %67
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %72) #19, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = add nsw i32 %36, -47
  br label %88

77:                                               ; preds = %69
  %78 = icmp sgt i32 %36, 48
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = add nsw i32 %36, -49
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %83) #19, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %77
  %87 = select i1 %30, i32 -1, i32 %68
  br label %88

88:                                               ; preds = %44, %44, %44, %44, %44, %48, %56, %45, %52, %79, %86, %67, %75, %65, %2
  %89 = phi i32 [ -1, %2 ], [ -1, %65 ], [ %76, %75 ], [ %68, %67 ], [ %87, %86 ], [ %80, %79 ], [ -1, %52 ], [ -1, %45 ], [ -1, %56 ], [ -1, %48 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ]
  ret i32 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_reg_shuffles(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %13 [
    i16 37, label %14
    i16 39, label %7
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %14, label %13

13:                                               ; preds = %4, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 430, ptr noundef nonnull @.str.17) #21
  br label %14

14:                                               ; preds = %4, %7, %13
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !111
  %16 = icmp sgt i8 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = zext i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %46
  %20 = phi i8 [ %15, %17 ], [ %47, %46 ]
  %21 = phi i64 [ 0, %17 ], [ %48, %46 ]
  %22 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %46 [
    i16 37, label %34
    i16 39, label %26
  ]

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp ne i32 %30, 37
  %32 = icmp eq i64 %21, %18
  %33 = or i1 %32, %31
  br i1 %33, label %46, label %36

34:                                               ; preds = %19
  %35 = icmp eq i64 %21, %18
  br i1 %35, label %46, label %36

36:                                               ; preds = %26, %34
  %37 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %21
  %38 = load i32, ptr %37, align 4, !tbaa !19
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %3, i64 %21
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %0, ptr noundef nonnull %23, i8 noundef zeroext 0, ptr noundef null, i32 noundef %2) #19
  %45 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !111
  br label %46

46:                                               ; preds = %19, %26, %34, %36, %40, %44
  %47 = phi i8 [ %20, %19 ], [ %20, %26 ], [ %20, %34 ], [ %20, %36 ], [ %20, %40 ], [ %45, %44 ]
  %48 = add nuw nsw i64 %21, 1
  %49 = sext i8 %47 to i64
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %19, label %51, !llvm.loop !125

51:                                               ; preds = %46, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @go_through_subreg(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  store i32 0, ptr %1, align 4, !tbaa !19
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %8) #19
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = lshr i32 %3, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @subreg_regno_offset(i32 noundef %9, i32 noundef %14, i32 noundef %16, i32 noundef %18) #21
  br label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = lshr i32 %22, 2
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i32 [ %23, %20 ], [ %19, %11 ]
  store i32 %25, ptr %1, align 4, !tbaa !19
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi ptr [ %8, %24 ], [ %0, %2 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !34
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #21
  %9 = load ptr, ptr %5, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !119
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #21
  store ptr %7, ptr %0, align 8, !tbaa !5
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !19
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %6
  %13 = zext nneg i32 %10 to i64
  %14 = add nuw nsw i64 %13, 3
  %15 = and i64 %14, 4294967292
  %16 = add nsw i64 %13, -1
  %17 = insertelement <4 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %41, %12
  %20 = phi i64 [ 0, %12 ], [ %42, %41 ]
  %21 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %12 ], [ %43, %41 ]
  %22 = icmp ule <4 x i64> %21, %18
  %23 = extractelement <4 x i1> %22, i64 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds i32, ptr %7, i64 %20
  store i32 %2, ptr %25, align 4, !tbaa !19
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !19
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !19
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !19
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !llvm.loop !126

45:                                               ; preds = %41, %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @commutative_constraint_p(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %15
  %5 = phi i8 [ %17, %15 ], [ %2, %1 ]
  %6 = phi i8 [ %16, %15 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %15 ], [ %0, %1 ]
  %8 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %5) #19
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  switch i8 %5, label %11 [
    i8 35, label %15
    i8 44, label %10
  ]

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 0
  %13 = icmp eq i8 %5, 37
  %14 = and i1 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4, %10, %11
  %16 = phi i8 [ 0, %10 ], [ %6, %11 ], [ 1, %4 ]
  %17 = load i8, ptr %9, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %4

19:                                               ; preds = %11, %15, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %20
}

; Function Attrs: optsize
declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #17 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_copy_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store i32 0, ptr %0, align 4, !tbaa !70
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_copy_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !70
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !19
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_copies, align 8, !tbaa !5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !5
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !70
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !129

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = !{!11, !12, i64 4}
!11 = !{!"ira_allocno", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !12, i64 120, !12, i64 124, !6, i64 128, !12, i64 136, !12, i64 140, !13, i64 144, !13, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 173, !12, i64 173, !12, i64 173, !12, i64 173, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !12, i64 216, !12, i64 220, !6, i64 224, !6, i64 232, !12, i64 240}
!12 = !{!"int", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!11, !6, i64 32}
!16 = !{!17, !6, i64 0}
!17 = !{!"ira_loop_tree_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !12, i64 56, !7, i64 60, !6, i64 64, !7, i64 72, !7, i64 76, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208}
!18 = !{!17, !6, i64 8}
!19 = !{!12, !12, i64 0}
!20 = !{!11, !6, i64 128}
!21 = !{!22, !12, i64 80}
!22 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !13, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!23 = !{!24, !12, i64 0}
!24 = !{!"loop", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 16, !25, i64 24, !12, i64 32, !12, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !26, i64 80, !26, i64 96, !7, i64 112, !7, i64 113, !12, i64 116, !6, i64 120, !6, i64 128, !7, i64 136, !6, i64 144}
!25 = !{!"lpt_decision", !12, i64 0, !12, i64 4}
!26 = !{!"", !13, i64 0, !13, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!11, !13, i64 152}
!30 = !{!13, !13, i64 0}
!31 = !{!11, !12, i64 48}
!32 = !{!11, !13, i64 144}
!33 = distinct !{!33, !28}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !28}
!36 = !{!11, !12, i64 168}
!37 = !{!38, !6, i64 0}
!38 = !{!"reg_attrs", !6, i64 0, !13, i64 8}
!39 = distinct !{!39, !28}
!40 = !{!11, !12, i64 124}
!41 = !{!11, !12, i64 120}
!42 = distinct !{!42, !28}
!43 = !{!44, !12, i64 8}
!44 = !{!"param_info", !6, i64 0, !12, i64 8, !7, i64 12, !12, i64 16, !12, i64 20, !6, i64 24}
!45 = distinct !{!45, !28}
!46 = !{!47, !6, i64 0}
!47 = !{!"ira_allocno_live_range", !6, i64 0, !12, i64 8, !12, i64 12, !6, i64 16, !6, i64 24, !6, i64 32}
!48 = !{!11, !12, i64 136}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = distinct !{!52, !28}
!53 = distinct !{!53, !28}
!54 = !{!11, !6, i64 80}
!55 = distinct !{!55, !28}
!56 = distinct !{!56, !28}
!57 = !{!58, !6, i64 8}
!58 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !12, i64 32}
!59 = distinct !{!59, !28}
!60 = !{!61, !6, i64 8}
!61 = !{!"ira_allocno_copy", !12, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !7, i64 28, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!62 = !{!61, !6, i64 16}
!63 = !{!17, !6, i64 48}
!64 = !{!17, !6, i64 64}
!65 = !{!61, !12, i64 24}
!66 = !{!61, !7, i64 28}
!67 = !{!61, !6, i64 32}
!68 = !{!61, !6, i64 72}
!69 = distinct !{!69, !28}
!70 = !{!71, !12, i64 0}
!71 = !{!"", !12, i64 0}
!72 = distinct !{!72, !28}
!73 = !{!74, !7, i64 0}
!74 = !{!"", !7, i64 0, !6, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !13, i64 32}
!75 = !{!74, !6, i64 8}
!76 = !{!74, !12, i64 16}
!77 = !{!74, !12, i64 24}
!78 = !{!74, !12, i64 28}
!79 = !{!74, !13, i64 32}
!80 = !{!74, !12, i64 20}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = !{!85, !12, i64 16}
!85 = !{!"sparseset_def", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !7, i64 28, !7, i64 29, !7, i64 32}
!86 = !{!85, !12, i64 24}
!87 = !{!85, !7, i64 28}
!88 = !{!85, !7, i64 29}
!89 = !{!85, !6, i64 0}
!90 = !{!85, !12, i64 20}
!91 = !{!85, !6, i64 8}
!92 = distinct !{!92, !28}
!93 = !{!11, !12, i64 160}
!94 = !{!11, !12, i64 140}
!95 = distinct !{!95, !28}
!96 = !{!97, !6, i64 0}
!97 = !{!"", !6, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !13, i64 24}
!98 = !{!97, !12, i64 8}
!99 = !{!97, !12, i64 12}
!100 = !{!97, !12, i64 20}
!101 = !{!97, !12, i64 16}
!102 = !{!97, !13, i64 24}
!103 = distinct !{!103, !28}
!104 = distinct !{!104, !28}
!105 = !{!106, !6, i64 8}
!106 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !6, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!107 = !{!108, !6, i64 0}
!108 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !6, i64 40, !12, i64 48, !7, i64 52, !7, i64 60, !12, i64 68, !12, i64 72}
!109 = !{!22, !13, i64 72}
!110 = !{!22, !12, i64 88}
!111 = !{!112, !7, i64 1086}
!112 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !6, i64 1120}
!113 = distinct !{!113, !28}
!114 = distinct !{!114, !28}
!115 = distinct !{!115, !28}
!116 = !{!17, !6, i64 208}
!117 = !{!61, !12, i64 0}
!118 = !{!11, !12, i64 8}
!119 = !{!120, !120, i64 0}
!120 = !{!"short", !7, i64 0}
!121 = !{i32 0, i32 65536}
!122 = !{!11, !12, i64 52}
!123 = !{!11, !6, i64 184}
!124 = !{!11, !6, i64 200}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28, !127, !128}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = distinct !{!129, !28}

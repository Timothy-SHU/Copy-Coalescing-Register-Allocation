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
define dso_local void @ira_debug_conflicts(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !97 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !98
  tail call fastcc void @print_conflicts(ptr noundef %2, i8 noundef zeroext %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_conflicts(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !97 !PGOFuncName !102 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_iterator, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %4) #18
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !103
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  br label %11

11:                                               ; preds = %9, %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  %12 = load ptr, ptr %3, align 8, !tbaa !98
  br i1 %10, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !104
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %15) #18
  br label %37

17:                                               ; preds = %11
  %18 = load i32, ptr %12, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !104
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %20) #18
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %30, %28 ], [ %27, %26 ]
  %33 = phi ptr [ @.str.3, %28 ], [ @.str.2, %26 ]
  %34 = load i32, ptr %32, align 8, !tbaa !113
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %33, i32 noundef %34) #18
  %36 = tail call i32 @putc(i32 noundef 41, ptr noundef %0) #18
  br label %37

37:                                               ; preds = %31, %13
  %38 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %0) #18
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %12) #18
  %43 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !range !103
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %42, %69
  %46 = load ptr, ptr %5, align 8, !tbaa !98
  br i1 %10, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !104
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %49) #18
  br label %69

51:                                               ; preds = %45
  %52 = load i32, ptr %46, align 8, !tbaa !108
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !104
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %52, i32 noundef %54) #18
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !109
  %58 = load ptr, ptr %57, align 8, !tbaa !110
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !115
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %62) #18
  br label %69

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !112
  %67 = load i32, ptr %66, align 8, !tbaa !117
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %67) #18
  br label %69

69:                                               ; preds = %47, %64, %60
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %6) #18
  %70 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !range !103
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %45, !llvm.loop !121

72:                                               ; preds = %69, %42, %37
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 27
  %74 = load i64, ptr %73, align 8, !tbaa !123
  %75 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !124
  %76 = xor i64 %75, -1
  %77 = and i64 %74, %76
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !125
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !124
  %83 = and i64 %77, %82
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %83) #18
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 26
  %85 = load i64, ptr %84, align 8, !tbaa !126
  %86 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !124
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = load i32, ptr %78, align 8, !tbaa !125
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !124
  %93 = and i64 %88, %92
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %93) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %94 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !103
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %11, !llvm.loop !127

96:                                               ; preds = %72, %2
  %97 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_build_conflicts() local_unnamed_addr #1 !prof !128 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %36, label %5, !prof !130

5:                                                ; preds = %0
  %6 = tail call fastcc zeroext i8 @build_conflict_bit_table() #18, !range !103
  store i8 %6, ptr @ira_conflicts_p, align 1, !tbaa !129
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %36, label %8, !prof !130

8:                                                ; preds = %5
  tail call fastcc void @build_conflicts() #18
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !98
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %9, ptr noundef null, ptr noundef nonnull @add_copies) #20
  %10 = load i32, ptr @flag_ira_region, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %14, !prof !131

13:                                               ; preds = %8
  tail call fastcc void @propagate_copies() #18
  br label %14

14:                                               ; preds = %8, %13
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @conflicts, align 8, !tbaa !98
  br i1 %16, label %34, label %18, !prof !132

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %31, %30 ], [ %17, %14 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = load i32, ptr %20, align 8, !tbaa !108
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %30, label %28, !prof !133

28:                                               ; preds = %18
  tail call void @ira_free(ptr noundef %26) #20
  %29 = load ptr, ptr @conflicts, align 8, !tbaa !98
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %19, %18 ]
  %32 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %18, !prof !134, !llvm.loop !135

34:                                               ; preds = %30, %14
  %35 = phi ptr [ %17, %14 ], [ %31, %30 ]
  tail call void @ira_free(ptr noundef %35) #20
  br label %36

36:                                               ; preds = %5, %34, %0
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @optimize, align 4
  br i1 %38, label %88, label %40, !prof !132

40:                                               ; preds = %36
  %41 = load i32, ptr @flag_caller_saves, align 4, !tbaa !113
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %39, 0
  %44 = load ptr, ptr @regno_reg_rtx, align 8
  %45 = load i64, ptr @call_used_reg_set, align 8
  %46 = load i64, ptr @no_caller_save_reg_set, align 8
  br label %47

47:                                               ; preds = %40, %85
  %48 = load ptr, ptr %1, align 8, !tbaa !98
  br i1 %42, label %49, label %53, !prof !136

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !137
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49, %47
  br i1 %43, label %54, label %74, !prof !136

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !104
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %44, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !129
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %61, align 8, !tbaa !138
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
  %76 = load i32, ptr %75, align 8, !tbaa !137
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78, !prof !140

78:                                               ; preds = %74, %49, %69
  %79 = phi i64 [ %45, %69 ], [ %45, %49 ], [ %46, %74 ]
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 26
  %81 = load <2 x i64>, ptr %80, align 8, !tbaa !124
  %82 = insertelement <2 x i64> poison, i64 %79, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  %84 = or <2 x i64> %81, %83
  store <2 x i64> %84, ptr %80, align 8, !tbaa !124
  br label %85

85:                                               ; preds = %78, %74
  %86 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %47, !prof !134, !llvm.loop !141

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
  br i1 %98, label %99, label %100, !prof !142

99:                                               ; preds = %88
  tail call fastcc void @print_conflicts(ptr noundef nonnull %96, i8 noundef zeroext 0) #18
  br label %100

100:                                              ; preds = %99, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_conflict_bit_table() unnamed_addr #1 !prof !128 !PGOFuncName !143 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !113
  %4 = add nsw i32 %3, 63
  %5 = sdiv i32 %4, 64
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %6 = load ptr, ptr @compiler_params, align 8
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 106, i32 1
  br label %8

8:                                                ; preds = %20, %0
  %9 = phi i32 [ %24, %20 ], [ 0, %0 ]
  br label %10

10:                                               ; preds = %8, %13
  %11 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13, !prof !144

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !145
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !146
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %10, label %20, !prof !136, !llvm.loop !147

20:                                               ; preds = %13
  %21 = add i32 %16, 64
  %22 = sub i32 %21, %18
  %23 = sdiv i32 %22, 64
  %24 = add nsw i32 %23, %9
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = load i32, ptr %7, align 8, !tbaa !148
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 20
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %8, !prof !136, !llvm.loop !147

31:                                               ; preds = %20
  %32 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !113
  %33 = icmp sgt i32 %32, 0
  %34 = load ptr, ptr @ira_dump_file, align 8
  %35 = icmp ne ptr %34, null
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %183

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %34, ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %183

39:                                               ; preds = %10
  %40 = tail call ptr @sparseset_alloc(i32 noundef %3) #20
  %41 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !113
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @ira_allocate(i64 noundef %43) #20
  store ptr %44, ptr @conflicts, align 8, !tbaa !98
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %45 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %76, label %47, !prof !150

47:                                               ; preds = %39, %63
  %48 = phi ptr [ %71, %63 ], [ %44, %39 ]
  %49 = phi i32 [ %67, %63 ], [ 0, %39 ]
  br label %50

50:                                               ; preds = %47, %58
  %51 = load ptr, ptr %1, align 8, !tbaa !98
  %52 = load i32, ptr %51, align 8, !tbaa !108
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 22
  %54 = load i32, ptr %53, align 4, !tbaa !145
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 21
  %56 = load i32, ptr %55, align 8, !tbaa !146
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %63, !prof !136

58:                                               ; preds = %50
  %59 = sext i32 %52 to i64
  %60 = getelementptr inbounds ptr, ptr %48, i64 %59
  store ptr null, ptr %60, align 8, !tbaa !98
  %61 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %76, label %50, !prof !134, !llvm.loop !151

63:                                               ; preds = %50
  %64 = add i32 %54, 64
  %65 = sub i32 %64, %56
  %66 = sdiv i32 %65, 64
  %67 = add nsw i32 %66, %49
  %68 = sext i32 %66 to i64
  %69 = shl nsw i64 %68, 3
  %70 = tail call ptr @ira_allocate(i64 noundef %69) #20
  %71 = load ptr, ptr @conflicts, align 8
  %72 = sext i32 %52 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  store ptr %70, ptr %73, align 8, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %69, i1 false)
  %74 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %47, !prof !152, !llvm.loop !151

76:                                               ; preds = %63, %58, %39
  %77 = phi i32 [ 0, %39 ], [ %49, %58 ], [ %67, %63 ]
  %78 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !113
  %79 = icmp sgt i32 %78, 0
  %80 = load ptr, ptr @ira_dump_file, align 8
  %81 = icmp ne ptr %80, null
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %92, !prof !153

83:                                               ; preds = %76
  %84 = sext i32 %77 to i64
  %85 = shl nsw i64 %84, 3
  %86 = sext i32 %5 to i64
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !113
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %86, 3
  %90 = mul nsw i64 %89, %88
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.15, i64 noundef %85, i64 noundef %90) #18
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, ptr @ira_max_point, align 4, !tbaa !113
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %182, !prof !154

95:                                               ; preds = %92, %177
  %96 = phi i64 [ %178, %177 ], [ 0, %92 ]
  %97 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !98
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !98
  %100 = icmp eq ptr %99, null
  br i1 %100, label %165, label %101, !prof !155

101:                                              ; preds = %95, %161
  %102 = phi ptr [ %163, %161 ], [ %99, %95 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !156
  %104 = load i32, ptr %103, align 8, !tbaa !108
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 24
  %106 = load i32, ptr %105, align 8, !tbaa !158
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !125
  tail call fastcc void @sparseset_set_bit(ptr noundef %40, i32 noundef %104) #18
  tail call fastcc void @sparseset_iter_init(ptr noundef %40) #18
  %109 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #18, !range !103
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %161, label %111, !prof !159

111:                                              ; preds = %101
  %112 = zext i32 %108 to i64
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 21
  %114 = load ptr, ptr @conflicts, align 8
  %115 = sext i32 %104 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  br label %117

117:                                              ; preds = %111, %158
  %118 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %40) #18
  %119 = load ptr, ptr @ira_allocnos, align 8, !tbaa !98
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !98
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !125
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %112, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !129
  %128 = icmp eq i8 %127, 0
  %129 = icmp eq i32 %104, %118
  %130 = or i1 %129, %128
  br i1 %130, label %158, label %131, !prof !160

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 24
  %133 = load i32, ptr %132, align 8, !tbaa !158
  %134 = load i32, ptr %113, align 8, !tbaa !146
  %135 = sub nsw i32 %133, %134
  %136 = and i32 %135, 63
  %137 = zext nneg i32 %136 to i64
  %138 = shl nuw i64 1, %137
  %139 = load ptr, ptr %116, align 8, !tbaa !98
  %140 = lshr i32 %135, 6
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds i64, ptr %139, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !124
  %144 = or i64 %138, %143
  store i64 %144, ptr %142, align 8, !tbaa !124
  %145 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 21
  %146 = load i32, ptr %145, align 8, !tbaa !146
  %147 = sub nsw i32 %106, %146
  %148 = and i32 %147, 63
  %149 = zext nneg i32 %148 to i64
  %150 = shl nuw i64 1, %149
  %151 = getelementptr inbounds ptr, ptr %114, i64 %120
  %152 = load ptr, ptr %151, align 8, !tbaa !98
  %153 = lshr i32 %147, 6
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds i64, ptr %152, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !124
  %157 = or i64 %150, %156
  store i64 %157, ptr %155, align 8, !tbaa !124
  br label %158

158:                                              ; preds = %117, %131
  tail call fastcc void @sparseset_iter_next(ptr noundef %40) #18
  %159 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #18, !range !103
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %117, !prof !161, !llvm.loop !162

161:                                              ; preds = %158, %101
  %162 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %102, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !98
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %101, !prof !163, !llvm.loop !164

165:                                              ; preds = %161, %95
  %166 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !98
  %167 = getelementptr inbounds ptr, ptr %166, i64 %96
  %168 = load ptr, ptr %167, align 8, !tbaa !98
  %169 = icmp eq ptr %168, null
  br i1 %169, label %177, label %170, !prof !155

170:                                              ; preds = %165, %170
  %171 = phi ptr [ %175, %170 ], [ %168, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !156
  %173 = load i32, ptr %172, align 8, !tbaa !108
  tail call void @sparseset_clear_bit(ptr noundef %40, i32 noundef %173) #20
  %174 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %171, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !98
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %170, !prof !163, !llvm.loop !165

177:                                              ; preds = %170, %165
  %178 = add nuw nsw i64 %96, 1
  %179 = load i32, ptr @ira_max_point, align 4, !tbaa !113
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %95, label %182, !prof !166, !llvm.loop !167

182:                                              ; preds = %177, %92
  tail call void @free(ptr noundef %40) #18
  br label %183

183:                                              ; preds = %31, %37, %182
  %184 = phi i8 [ 1, %182 ], [ 0, %37 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret i8 %184
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_conflicts() unnamed_addr #1 !prof !128 !PGOFuncName !168 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !113
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #20
  store ptr %4, ptr @collected_conflict_allocnos, align 8, !tbaa !98
  %5 = tail call i32 @max_reg_num() #20
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %32, !prof !154

7:                                                ; preds = %0
  %8 = zext nneg i32 %5 to i64
  br label %11

9:                                                ; preds = %28, %11
  %10 = icmp sgt i64 %12, 54
  br i1 %10, label %11, label %32, !prof !169, !llvm.loop !170

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !98
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %18, !prof !171

18:                                               ; preds = %11, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %11 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %19) #18
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !172
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !173

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %24) #18
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !172
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !prof !174, !llvm.loop !175

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  %31 = icmp eq ptr %30, null
  br i1 %31, label %9, label %18, !prof !176, !llvm.loop !177

32:                                               ; preds = %9, %0
  %33 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !98
  tail call void @ira_free(ptr noundef %33) #20
  ret void
}

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_copies(ptr nocapture noundef readonly %0) #1 !prof !178 !PGOFuncName !179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4, !prof !180

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9, !prof !150

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %25, %23 ], [ %7, %4 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !129
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %27, label %17, !prof !183

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %23, label %22, !prof !184

22:                                               ; preds = %17
  tail call fastcc void @add_insn_allocno_copies(ptr noundef nonnull %10) #18
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !prof !185, !llvm.loop !186

27:                                               ; preds = %23, %9, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_copies() unnamed_addr #1 !prof !128 !PGOFuncName !187 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %2) #18
  %3 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5, !prof !132

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %5, %82
  %8 = phi ptr [ %6, %5 ], [ %83, %82 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !190
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %82, label %17, !prof !191

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !172
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !104
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi ptr [ %30, %23 ], [ %21, %17 ]
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !172
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !193
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !104
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !98
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi ptr [ %43, %36 ], [ %34, %31 ]
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 21
  %47 = load i32, ptr %46, align 8, !tbaa !146
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 24
  %49 = load i32, ptr %48, align 8, !tbaa !158
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %71, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 22
  %53 = load i32, ptr %52, align 4, !tbaa !145
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @conflicts, align 8, !tbaa !98
  %57 = load i32, ptr %32, align 8, !tbaa !108
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  %61 = sub nsw i32 %49, %47
  %62 = lshr i32 %61, 6
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds i64, ptr %60, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !124
  %66 = and i32 %61, 63
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = and i64 %65, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %55, %51, %44
  %72 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !194
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 4
  %75 = load i8, ptr %74, align 4, !tbaa !195
  %76 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !196
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !197
  %80 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %32, ptr noundef nonnull %45, i32 noundef %73, i8 noundef zeroext %75, ptr noundef %77, ptr noundef %79) #20
  %81 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !98
  br label %82

82:                                               ; preds = %55, %71, %7
  %83 = phi ptr [ %8, %55 ], [ %81, %71 ], [ %8, %7 ]
  %84 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !103
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %7, !prof !198, !llvm.loop !199

86:                                               ; preds = %82, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !200 !PGOFuncName !201 {
  store i32 0, ptr %0, align 4, !tbaa !202
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !204 !PGOFuncName !205 {
  %3 = load i32, ptr %0, align 4, !tbaa !202
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !113
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !206

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !98
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !207

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !98
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !202
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !208, !llvm.loop !209

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
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
define internal fastcc void @ira_allocno_conflict_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !prof !97 !PGOFuncName !210 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %0, align 8, !tbaa !211
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !213
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !214
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !146
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 22
  %19 = load i32, ptr %18, align 4, !tbaa !145
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !215
  %24 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %24, align 4, !tbaa !216
  br label %36

25:                                               ; preds = %15
  %26 = sub i32 %19, %17
  %27 = add i32 %26, 64
  %28 = sdiv i32 %27, 64
  %29 = shl nsw i32 %28, 3
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !215
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %32, align 4, !tbaa !216
  %33 = icmp ugt i32 %26, -128
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i64, ptr %9, align 8, !tbaa !124
  br label %36

36:                                               ; preds = %21, %25, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %25 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !217
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_conflict_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !97 !PGOFuncName !218 {
  %3 = load i8, ptr %0, align 8, !tbaa !211
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !217
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !219
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %10, align 8, !tbaa !214
  br label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  %20 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !214
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %17
  store ptr %24, ptr %1, align 8, !tbaa !98
  br label %64

27:                                               ; preds = %40
  store i32 %36, ptr %10, align 8, !tbaa !214
  br label %28

28:                                               ; preds = %27, %5
  %29 = phi i64 [ %44, %27 ], [ %7, %5 ]
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !215
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
  store i32 %41, ptr %14, align 8, !tbaa !215
  %42 = load ptr, ptr %15, align 8, !tbaa !213
  %43 = getelementptr inbounds i64, ptr %42, i64 %37
  %44 = load i64, ptr %43, align 8, !tbaa !124
  store i64 %44, ptr %6, align 8, !tbaa !217
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %34, label %27, !llvm.loop !220

46:                                               ; preds = %28, %46
  %47 = phi i32 [ %49, %46 ], [ %33, %28 ]
  %48 = phi i64 [ %50, %46 ], [ %29, %28 ]
  %49 = add i32 %47, 1
  %50 = lshr exact i64 %48, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %53, !llvm.loop !221

53:                                               ; preds = %46
  store i32 %49, ptr %32, align 8, !tbaa !215
  store i64 %50, ptr %6, align 8, !tbaa !217
  br label %54

54:                                               ; preds = %28, %53
  %55 = phi i32 [ %49, %53 ], [ %33, %28 ]
  %56 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !98
  %57 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !216
  %59 = add i32 %58, %55
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  store ptr %62, ptr %1, align 8, !tbaa !98
  br label %64

63:                                               ; preds = %34
  store i32 %36, ptr %10, align 8, !tbaa !214
  br label %64

64:                                               ; preds = %63, %17, %54, %26
  %65 = phi i8 [ 1, %26 ], [ 1, %54 ], [ 0, %17 ], [ 0, %63 ]
  ret i8 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !97 !PGOFuncName !222 {
  %2 = load i8, ptr %0, align 8, !tbaa !211
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !217
  %9 = lshr i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !217
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %10, %6 ], [ %5, %4 ]
  %13 = load i32, ptr %12, align 8, !tbaa !113
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !113
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !97 !PGOFuncName !223 {
  %4 = tail call i32 @fputs(ptr noundef %1, ptr noundef %0) #18
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
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %21) #18
  br label %41

32:                                               ; preds = %26
  %33 = trunc i64 %6 to i32
  %34 = add i32 %33, -2
  %35 = icmp eq i32 %21, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %21, 1
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %21, i32 noundef %37) #18
  br label %41

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %21, i32 noundef %28) #18
  br label %41

41:                                               ; preds = %30, %39, %36, %20
  %42 = phi i32 [ %21, %20 ], [ -1, %36 ], [ -1, %39 ], [ -1, %30 ]
  %43 = add nuw nsw i64 %6, 1
  %44 = icmp eq i64 %43, 53
  br i1 %44, label %45, label %5, !llvm.loop !224

45:                                               ; preds = %41
  %46 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !225 !PGOFuncName !226 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #18, !range !103
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !227

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !228
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !225 !PGOFuncName !230 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !231
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !232
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #10 !prof !234 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !233
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !236

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !231
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !228
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !237

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !233
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !238 !PGOFuncName !239 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !231
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !113
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !238 !PGOFuncName !241 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !232
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !231
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !231
  store i8 1, ptr %2, align 4, !tbaa !232
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !225 !PGOFuncName !242 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !243
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !227

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 85, ptr noundef nonnull @.str.17) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !244
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !228
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !245

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !240
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !113
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 !prof !225 !PGOFuncName !246 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !244
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !113
  %8 = load ptr, ptr %0, align 8, !tbaa !240
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_allocno_conflicts(ptr noundef %0) unnamed_addr #1 !prof !247 !PGOFuncName !248 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ira_allocno_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @conflicts, align 8, !tbaa !98
  %5 = load i32, ptr %0, align 8, !tbaa !108
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %10 = load i32, ptr %9, align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 4, !tbaa !145
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %10, i32 noundef %12) #18
  %13 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !103
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15, !prof !249

15:                                               ; preds = %1
  %16 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !98
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %24, %17 ]
  %19 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !98
  %20 = load i32, ptr %2, align 4, !tbaa !113
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = add nuw i64 %18, 1
  %25 = getelementptr inbounds ptr, ptr %16, i64 %18
  store ptr %23, ptr %25, align 8, !tbaa !98
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #18
  %26 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !103
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %17, !prof !250, !llvm.loop !251

28:                                               ; preds = %17
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %32 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef nonnull %0, i32 noundef %31) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34, !prof !133

34:                                               ; preds = %30
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef nonnull %0, i32 noundef %31) #20
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  %37 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !98
  %38 = zext nneg i32 %31 to i64
  %39 = shl nuw nsw i64 %38, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %37, i64 %39, i1 false)
  %40 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr null, ptr %40, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %31, ptr %41, align 8, !tbaa !252
  br label %60

42:                                               ; preds = %30
  %43 = load ptr, ptr @conflicts, align 8, !tbaa !98
  %44 = load i32, ptr %0, align 8, !tbaa !108
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %47, ptr %48, align 8, !tbaa !114
  %49 = load i32, ptr %11, align 4, !tbaa !145
  %50 = load i32, ptr %9, align 8, !tbaa !146
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %57, label %52, !prof !253

52:                                               ; preds = %42
  %53 = add i32 %49, 64
  %54 = sub i32 %53, %50
  %55 = sdiv i32 %54, 64
  %56 = shl nsw i32 %55, 3
  br label %57

57:                                               ; preds = %42, %52
  %58 = phi i32 [ %56, %52 ], [ 0, %42 ]
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %58, ptr %59, align 4, !tbaa !254
  br label %60

60:                                               ; preds = %57, %34
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !109
  %63 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !192
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !172
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %79, !prof !255

68:                                               ; preds = %60
  %69 = icmp eq ptr %64, null
  br i1 %69, label %127, label %70, !prof !255

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !193
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !104
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !98
  %78 = icmp eq ptr %77, null
  br i1 %78, label %127, label %79

79:                                               ; preds = %70, %60
  %80 = phi ptr [ %77, %70 ], [ %66, %60 ]
  %81 = load i32, ptr %80, align 8, !tbaa !108
  %82 = load i32, ptr %9, align 8, !tbaa !146
  %83 = load i32, ptr %11, align 4, !tbaa !145
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %82, i32 noundef %83) #18
  %84 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !103
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %127, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !98
  %88 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 21
  %90 = load ptr, ptr @conflicts, align 8
  %91 = sext i32 %81 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  br label %93

93:                                               ; preds = %86, %124
  %94 = load i32, ptr %2, align 4, !tbaa !113
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %87, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !98
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !172
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load ptr, ptr %88, align 8, !tbaa !193
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !104
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !98
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %101, %93
  %110 = phi ptr [ %107, %101 ], [ %99, %93 ]
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %110, i64 0, i32 24
  %112 = load i32, ptr %111, align 8, !tbaa !158
  %113 = load i32, ptr %89, align 8, !tbaa !146
  %114 = sub nsw i32 %112, %113
  %115 = and i32 %114, 63
  %116 = zext nneg i32 %115 to i64
  %117 = shl nuw i64 1, %116
  %118 = load ptr, ptr %92, align 8, !tbaa !98
  %119 = lshr i32 %114, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i64, ptr %118, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !124
  %123 = or i64 %117, %122
  store i64 %123, ptr %121, align 8, !tbaa !124
  br label %124

124:                                              ; preds = %101, %109
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #18
  %125 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !103
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %93, !llvm.loop !256

127:                                              ; preds = %124, %79, %68, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !247 !PGOFuncName !257 {
  store ptr %1, ptr %0, align 8, !tbaa !258
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !260
  %6 = icmp slt i32 %3, %2
  %7 = sub i32 %3, %2
  %8 = add i32 %7, 1
  %9 = select i1 %6, i32 0, i32 %8, !prof !136
  %10 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  store i32 %9, ptr %10, align 4, !tbaa !261
  %11 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  store i32 %2, ptr %11, align 4, !tbaa !262
  %12 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 8, !tbaa !263
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14, !prof !136

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8, !tbaa !124
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  store i64 %17, ptr %18, align 8, !tbaa !264
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_set_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !265 !PGOFuncName !266 {
  %3 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !264
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13, !prof !267

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !261
  %11 = load i32, ptr %7, align 8, !tbaa !260
  br label %19

12:                                               ; preds = %24
  store i32 %21, ptr %7, align 8, !tbaa !260
  store i32 %22, ptr %8, align 8, !tbaa !263
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !263
  br i1 %16, label %30, label %38, !prof !267

19:                                               ; preds = %6, %24
  %20 = phi i32 [ %11, %6 ], [ %21, %24 ]
  %21 = add i32 %20, 1
  %22 = shl i32 %21, 6
  %23 = icmp ult i32 %22, %10
  br i1 %23, label %24, label %43, !prof !268

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !258
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !124
  store i64 %28, ptr %3, align 8, !tbaa !264
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !prof !269, !llvm.loop !270

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !271, !llvm.loop !272

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !263
  store i64 %34, ptr %3, align 8, !tbaa !264
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  %40 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !262
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %1, align 4, !tbaa !113
  br label %44

43:                                               ; preds = %19
  store i32 %21, ptr %7, align 8, !tbaa !260
  store i32 %22, ptr %8, align 8, !tbaa !263
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i8 [ 1, %38 ], [ 0, %43 ]
  ret i8 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !273 !PGOFuncName !274 {
  %2 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !264
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !264
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !263
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !263
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_allocate_allocno_conflict_vec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_insn_allocno_copies(ptr noundef %0) unnamed_addr #1 !prof !275 !PGOFuncName !276 {
  %2 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %2) #19
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !113
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25, !prof !277

5:                                                ; preds = %1
  %6 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !277

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  %12 = load ptr, ptr %11, align 8, !tbaa !280
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !282
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !283
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23, !prof !284

23:                                               ; preds = %16
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %16, %1, %8
  %26 = phi i32 [ %24, %23 ], [ 1, %16 ], [ 1000, %1 ], [ 1000, %8 ]
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %81, !prof !285

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !129
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 23
  br i1 %36, label %40, label %37, !prof !286

37:                                               ; preds = %31
  %38 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %33) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40, !prof !287

40:                                               ; preds = %31, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %31 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !129
  %44 = load i32, ptr %43, align 8
  %45 = trunc i32 %44 to i16
  switch i16 %45, label %81 [
    i16 37, label %52
    i16 39, label %46
  ], !prof !288

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !129
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %81

52:                                               ; preds = %40, %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !129
  %55 = load i32, ptr %54, align 8
  %56 = trunc i32 %55 to i16
  switch i16 %56, label %81 [
    i16 37, label %63
    i16 39, label %57
  ], !prof !289

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !129
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %81

63:                                               ; preds = %52, %57
  %64 = tail call i32 @side_effects_p(ptr noundef nonnull %41) #20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81, !prof !290

66:                                               ; preds = %63
  %67 = load ptr, ptr %53, align 8, !tbaa !129
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %74, label %71, !prof !290

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !129
  br label %74

74:                                               ; preds = %66, %71
  %75 = phi ptr [ %73, %71 ], [ %67, %66 ]
  %76 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %75) #20
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !291

78:                                               ; preds = %74
  %79 = load ptr, ptr %42, align 8, !tbaa !129
  %80 = load ptr, ptr %53, align 8, !tbaa !129
  tail call fastcc void @process_regs_for_copy(ptr noundef %79, ptr noundef %80, i8 noundef zeroext 0, ptr noundef nonnull %0, i32 noundef %26) #18
  br label %170

81:                                               ; preds = %25, %52, %40, %74, %63, %57, %46, %37
  %82 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %170, label %84, !prof !292

84:                                               ; preds = %81
  tail call void @extract_insn(ptr noundef nonnull %0) #20
  %85 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !293
  %86 = icmp sgt i8 %85, 0
  br i1 %86, label %87, label %170, !prof !295

87:                                               ; preds = %84
  %88 = zext nneg i8 %85 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %88, i1 false), !tbaa !129
  br label %91

89:                                               ; preds = %139
  %90 = icmp sgt i8 %140, 0
  br i1 %90, label %144, label %170, !prof !296

91:                                               ; preds = %87, %139
  %92 = phi i8 [ %85, %87 ], [ %140, %139 ]
  %93 = phi i64 [ 0, %87 ], [ %141, %139 ]
  %94 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !98
  %96 = load i32, ptr %95, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %139 [
    i16 37, label %104
    i16 39, label %98
  ], !prof !297

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !129
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 37
  br i1 %103, label %104, label %139, !prof !298

104:                                              ; preds = %91, %98
  %105 = trunc i64 %93 to i32
  br label %106

106:                                              ; preds = %104, %136
  %107 = phi i1 [ true, %104 ], [ false, %136 ]
  %108 = phi i8 [ 0, %104 ], [ 1, %136 ]
  %109 = tail call fastcc i32 @get_dup_num(i32 noundef %105, i8 noundef zeroext %108) #18
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %136, !prof !299

111:                                              ; preds = %106
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 %112
  store i8 1, ptr %113, align 1, !tbaa !129
  %114 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %112
  %115 = load ptr, ptr %114, align 8, !tbaa !98
  %116 = load i32, ptr %115, align 8
  %117 = trunc i32 %116 to i16
  switch i16 %117, label %136 [
    i16 37, label %124
    i16 39, label %118
  ], !prof !300

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !129
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 37
  br i1 %123, label %124, label %136

124:                                              ; preds = %111, %118
  %125 = load i32, ptr %95, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 37
  br i1 %127, label %131, label %128, !prof !301

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !129
  br label %131

131:                                              ; preds = %124, %128
  %132 = phi ptr [ %130, %128 ], [ %95, %124 ]
  %133 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %132) #20
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135, !prof !302

135:                                              ; preds = %131
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %95, ptr noundef nonnull %115, i8 noundef zeroext 1, ptr noundef null, i32 noundef %26) #18
  br label %136

136:                                              ; preds = %111, %106, %135, %131, %118
  br i1 %107, label %106, label %137, !prof !303, !llvm.loop !304

137:                                              ; preds = %136
  %138 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !293
  br label %139

139:                                              ; preds = %137, %91, %98
  %140 = phi i8 [ %138, %137 ], [ %92, %91 ], [ %92, %98 ]
  %141 = add nuw nsw i64 %93, 1
  %142 = sext i8 %140 to i64
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %91, label %89, !prof !305, !llvm.loop !306

144:                                              ; preds = %89, %165
  %145 = phi i64 [ %166, %165 ], [ 0, %89 ]
  %146 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !98
  %148 = load i32, ptr %147, align 8
  %149 = trunc i32 %148 to i16
  switch i16 %149, label %165 [
    i16 37, label %156
    i16 39, label %150
  ], !prof !297

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !129
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 37
  br i1 %155, label %156, label %165, !prof !298

156:                                              ; preds = %150, %144
  %157 = phi ptr [ %147, %144 ], [ %152, %150 ]
  %158 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %157) #20
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160, !prof !307

160:                                              ; preds = %156
  %161 = icmp slt i32 %26, 8
  %162 = lshr i32 %26, 3
  %163 = select i1 %161, i32 1, i32 %162
  %164 = trunc i64 %145 to i32
  call fastcc void @process_reg_shuffles(ptr noundef nonnull %147, i32 noundef %164, i32 noundef %163, ptr noundef nonnull %2) #18
  br label %165

165:                                              ; preds = %144, %150, %156, %160
  %166 = add nuw nsw i64 %145, 1
  %167 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !293
  %168 = sext i8 %167 to i64
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %144, label %170, !prof !305, !llvm.loop !308

170:                                              ; preds = %165, %84, %89, %81, %78
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_regs_for_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 !prof !309 !PGOFuncName !310 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 37, label %16
    i16 39, label %10
  ], !prof !311

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !129
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
  ], !prof !311

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %27, label %25

25:                                               ; preds = %16, %5, %19, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 351, ptr noundef nonnull @.str.17) #20
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %16, %19, %25
  %28 = phi i32 [ %8, %16 ], [ %8, %19 ], [ %26, %25 ]
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %35, !prof !312

31:                                               ; preds = %27
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = call fastcc ptr @go_through_subreg(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  %38 = call fastcc ptr @go_through_subreg(ptr noundef %1, ptr noundef nonnull %7) #18
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #18
  %40 = icmp ult i32 %39, 53
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef %38) #18
  %42 = icmp ult i32 %41, 53
  br i1 %40, label %43, label %49, !prof !313

43:                                               ; preds = %35
  br i1 %42, label %199, label %44, !prof !314

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !tbaa !113
  %46 = add i32 %45, %39
  %47 = load i32, ptr %7, align 4, !tbaa !113
  %48 = sub i32 %46, %47
  br label %100

49:                                               ; preds = %35
  br i1 %42, label %50, label %55, !prof !315

50:                                               ; preds = %49
  %51 = load i32, ptr %7, align 4, !tbaa !113
  %52 = add i32 %51, %41
  %53 = load i32, ptr %6, align 4, !tbaa !113
  %54 = sub i32 %52, %53
  br label %100

55:                                               ; preds = %49
  %56 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !98
  %57 = zext i32 %39 to i64
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 21
  %61 = load i32, ptr %60, align 8, !tbaa !146
  %62 = zext i32 %41 to i64
  %63 = getelementptr inbounds ptr, ptr %56, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 24
  %66 = load i32, ptr %65, align 8, !tbaa !158
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %88, label %68, !prof !316

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 22
  %70 = load i32, ptr %69, align 4, !tbaa !145
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %88, label %72, !prof !317

72:                                               ; preds = %68
  %73 = load ptr, ptr @conflicts, align 8, !tbaa !98
  %74 = load i32, ptr %59, align 8, !tbaa !108
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !98
  %78 = sub nsw i32 %66, %61
  %79 = lshr i32 %78, 6
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds i64, ptr %77, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !124
  %83 = and i32 %78, 63
  %84 = zext nneg i32 %83 to i64
  %85 = shl nuw i64 1, %84
  %86 = and i64 %82, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %199, !prof !318

88:                                               ; preds = %72, %68, %55
  %89 = load i32, ptr %6, align 4, !tbaa !113
  %90 = load i32, ptr %7, align 4, !tbaa !113
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %199, !prof !191

92:                                               ; preds = %88
  %93 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !98
  %94 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %59, ptr noundef nonnull %64, i32 noundef %4, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %93) #20
  %95 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !98
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %95, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !319
  %98 = load i32, ptr %94, align 8, !tbaa !320
  %99 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %97, i32 noundef %98) #20
  br label %199

100:                                              ; preds = %50, %44
  %101 = phi i32 [ %39, %50 ], [ %41, %44 ]
  %102 = phi i32 [ %54, %50 ], [ %48, %44 ]
  %103 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !98
  %104 = zext i32 %101 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !98
  %107 = sext i32 %102 to i64
  %108 = icmp ult i32 %102, 53
  br i1 %108, label %109, label %199, !prof !321

109:                                              ; preds = %100
  %110 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %107
  %111 = load i32, ptr %110, align 4, !tbaa !113
  %112 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !322
  %114 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !125
  %116 = icmp ne ptr %3, null
  %117 = and i1 %116, %36
  br i1 %117, label %118, label %144, !prof !323

118:                                              ; preds = %109
  %119 = zext i32 %111 to i64
  %120 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !113
  %122 = tail call i32 @reg_classes_intersect_p(i32 noundef %111, i32 noundef 13) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132, !prof !324

124:                                              ; preds = %118
  %125 = zext i32 %113 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !129
  %128 = icmp eq i8 %127, 10
  br i1 %128, label %141, label %129, !prof !321

129:                                              ; preds = %124
  %130 = icmp eq i8 %127, 11
  %131 = select i1 %130, i32 2, i32 1
  br label %141

132:                                              ; preds = %118
  %133 = icmp eq i32 %113, 40
  br i1 %133, label %141, label %134

134:                                              ; preds = %132
  %135 = zext i32 %113 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !129
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, 3
  %140 = lshr i32 %139, 2
  br label %141

141:                                              ; preds = %134, %132, %124, %129
  %142 = phi i32 [ 2, %124 ], [ %131, %129 ], [ %140, %134 ], [ 3, %132 ]
  %143 = icmp ugt i32 %121, %142
  br i1 %143, label %144, label %199, !prof !324

144:                                              ; preds = %141, %109
  %145 = zext i32 %115 to i64
  %146 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %145, i64 %107
  %147 = load i16, ptr %146, align 2, !tbaa !325
  %148 = sext i16 %147 to i64
  %149 = icmp slt i16 %147, 0
  br i1 %149, label %199, label %150

150:                                              ; preds = %144
  %151 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #18
  %152 = icmp ult i32 %151, 53
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %115, i32 noundef %111) #18, !range !327
  br label %157

155:                                              ; preds = %150
  %156 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %111, i32 noundef %115) #18, !range !327
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = mul nsw i32 %158, %4
  br label %160

160:                                              ; preds = %182, %157
  %161 = phi ptr [ %106, %157 ], [ %183, %182 ]
  %162 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 33
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 10
  %164 = load i32, ptr %163, align 4, !tbaa !328
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %162, i32 noundef %115, i32 noundef %164) #18
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %165, i32 noundef %115, i32 noundef 0) #18
  %166 = load ptr, ptr %162, align 8, !tbaa !329
  %167 = getelementptr inbounds i32, ptr %166, i64 %148
  %168 = load i32, ptr %167, align 4, !tbaa !113
  %169 = sub nsw i32 %168, %159
  store i32 %169, ptr %167, align 4, !tbaa !113
  %170 = load ptr, ptr %165, align 8, !tbaa !330
  %171 = getelementptr inbounds i32, ptr %170, i64 %148
  %172 = load i32, ptr %171, align 4, !tbaa !113
  %173 = sub nsw i32 %172, %159
  store i32 %173, ptr %171, align 4, !tbaa !113
  %174 = load i32, ptr %167, align 4, !tbaa !113
  %175 = load i32, ptr %163, align 4, !tbaa !328
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %160
  store i32 %174, ptr %163, align 4, !tbaa !328
  br label %178

178:                                              ; preds = %177, %160
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 16
  %180 = load ptr, ptr %179, align 8, !tbaa !172
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %178, %190
  %183 = phi ptr [ %197, %190 ], [ %180, %178 ]
  br label %160

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !109
  %187 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %186, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !192
  %189 = icmp eq ptr %188, null
  br i1 %189, label %199, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %188, i64 0, i32 9
  %192 = load ptr, ptr %191, align 8, !tbaa !193
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !104
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %192, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !98
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %182

199:                                              ; preds = %190, %184, %144, %141, %100, %72, %88, %43, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_dup_num(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #1 !prof !331 !PGOFuncName !332 {
  %3 = icmp slt i32 %0, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %88, label %7, !prof !333

7:                                                ; preds = %2
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %29, label %12, !prof !334

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %14) #18, !range !103
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !335

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %0, 1
  br label %29

19:                                               ; preds = %12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %29, label %21, !prof !336

21:                                               ; preds = %19
  %22 = add nsw i32 %0, -1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %25) #18, !range !103
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 %0, i32 %22, !prof !337
  br label %29

29:                                               ; preds = %21, %19, %17, %7
  %30 = phi i1 [ false, %17 ], [ false, %7 ], [ true, %19 ], [ %27, %21 ]
  %31 = phi i32 [ %18, %17 ], [ %0, %7 ], [ 0, %19 ], [ %28, %21 ]
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  br label %35

35:                                               ; preds = %60, %29
  %36 = phi i32 [ -1, %29 ], [ %61, %60 ]
  %37 = phi i8 [ 0, %29 ], [ %62, %60 ]
  %38 = phi ptr [ %34, %29 ], [ %64, %60 ]
  %39 = load i8, ptr %38, align 1, !tbaa !129
  %40 = sext i8 %39 to i32
  switch i8 %39, label %42 [
    i8 0, label %65
    i8 35, label %60
    i8 44, label %41
  ], !prof !338

41:                                               ; preds = %35
  br label %60

42:                                               ; preds = %35
  %43 = icmp eq i8 %37, 0
  br i1 %43, label %44, label %60, !prof !339

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
  ], !prof !340

45:                                               ; preds = %44
  %46 = tail call i32 @address_operand(ptr noundef %10, i32 noundef 0) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %88

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %49 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #20
  %50 = tail call i32 @regclass_for_constraint(i32 noundef %49) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %88, !prof !341

52:                                               ; preds = %48
  %53 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #20
  %54 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %10, i32 noundef %53) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %88

56:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %57 = icmp eq i32 %36, -1
  %58 = icmp eq i32 %36, %40
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %88, !prof !342

60:                                               ; preds = %56, %44, %35, %41, %52, %45, %42
  %61 = phi i32 [ %36, %41 ], [ %36, %42 ], [ %36, %44 ], [ %36, %52 ], [ %36, %45 ], [ %36, %35 ], [ %40, %56 ]
  %62 = phi i8 [ 0, %41 ], [ 1, %42 ], [ 0, %44 ], [ 0, %52 ], [ 0, %45 ], [ 1, %35 ], [ 0, %56 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #18
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %35

65:                                               ; preds = %35
  %66 = icmp eq i32 %36, -1
  br i1 %66, label %88, label %67, !prof !343

67:                                               ; preds = %65
  %68 = add nsw i32 %36, -48
  br i1 %11, label %88, label %69, !prof !344

69:                                               ; preds = %67
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !98
  %73 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %72) #18, !range !103
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75, !prof !345

75:                                               ; preds = %69
  %76 = add nsw i32 %36, -47
  br label %88

77:                                               ; preds = %69
  %78 = icmp sgt i32 %36, 48
  br i1 %78, label %79, label %86, !prof !346

79:                                               ; preds = %77
  %80 = add nsw i32 %36, -49
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !98
  %84 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %83) #18, !range !103
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79, %77
  %87 = select i1 %30, i32 -1, i32 %68, !prof !347
  br label %88

88:                                               ; preds = %44, %44, %44, %44, %44, %48, %56, %45, %52, %79, %86, %67, %75, %65, %2
  %89 = phi i32 [ -1, %2 ], [ -1, %65 ], [ %76, %75 ], [ %68, %67 ], [ %87, %86 ], [ %80, %79 ], [ -1, %52 ], [ -1, %45 ], [ -1, %56 ], [ -1, %48 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ]
  ret i32 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_reg_shuffles(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 !prof !348 !PGOFuncName !349 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %13 [
    i16 37, label %14
    i16 39, label %7
  ], !prof !350

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %14, label %13, !prof !298

13:                                               ; preds = %4, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 430, ptr noundef nonnull @.str.17) #20
  br label %14

14:                                               ; preds = %4, %7, %13
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !293
  %16 = icmp sgt i8 %15, 0
  br i1 %16, label %17, label %51, !prof !351

17:                                               ; preds = %14
  %18 = zext i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %46
  %20 = phi i8 [ %15, %17 ], [ %47, %46 ]
  %21 = phi i64 [ 0, %17 ], [ %48, %46 ]
  %22 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %46 [
    i16 37, label %34
    i16 39, label %26
  ], !prof !352

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp ne i32 %30, 37
  %32 = icmp eq i64 %21, %18
  %33 = or i1 %32, %31
  br i1 %33, label %46, label %36, !prof !353

34:                                               ; preds = %19
  %35 = icmp eq i64 %21, %18
  br i1 %35, label %46, label %36, !prof !354

36:                                               ; preds = %26, %34
  %37 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %21
  %38 = load i32, ptr %37, align 4, !tbaa !113
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46, !prof !355

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %3, i64 %21
  %42 = load i8, ptr %41, align 1, !tbaa !129
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46, !prof !356

44:                                               ; preds = %40
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %0, ptr noundef nonnull %23, i8 noundef zeroext 0, ptr noundef null, i32 noundef %2) #18
  %45 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !293
  br label %46

46:                                               ; preds = %19, %26, %34, %36, %40, %44
  %47 = phi i8 [ %20, %19 ], [ %20, %26 ], [ %20, %34 ], [ %20, %36 ], [ %20, %40 ], [ %45, %44 ]
  %48 = add nuw nsw i64 %21, 1
  %49 = sext i8 %47 to i64
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %19, label %51, !prof !357, !llvm.loop !358

51:                                               ; preds = %46, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @go_through_subreg(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !359 !PGOFuncName !360 {
  store i32 0, ptr %1, align 4, !tbaa !113
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %26, label %6, !prof !361

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %8) #18
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = lshr i32 %3, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @subreg_regno_offset(i32 noundef %9, i32 noundef %14, i32 noundef %16, i32 noundef %18) #20
  br label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !129
  %23 = lshr i32 %22, 2
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i32 [ %23, %20 ], [ %19, %11 ]
  store i32 %25, ptr %1, align 4, !tbaa !113
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi ptr [ %8, %24 ], [ %0, %2 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !362 !PGOFuncName !363 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !97 !PGOFuncName !364 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #20
  %9 = load ptr, ptr %5, align 8, !tbaa !98
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !325
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !97 !PGOFuncName !365 {
  %4 = load ptr, ptr %0, align 8, !tbaa !98
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !98
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !113
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
  store i32 %2, ptr %25, align 4, !tbaa !113
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !113
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !113
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !113
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !llvm.loop !366

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
define internal fastcc noundef zeroext i8 @commutative_constraint_p(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !369 !PGOFuncName !370 {
  %2 = load i8, ptr %0, align 1, !tbaa !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4, !prof !371

4:                                                ; preds = %1, %15
  %5 = phi i8 [ %17, %15 ], [ %2, %1 ]
  %6 = phi i8 [ %16, %15 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %15 ], [ %0, %1 ]
  %8 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %5) #18
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  switch i8 %5, label %11 [
    i8 35, label %15
    i8 44, label %10
  ], !prof !372

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 0
  %13 = icmp eq i8 %5, 37
  %14 = and i1 %12, %13
  br i1 %14, label %19, label %15, !prof !373

15:                                               ; preds = %4, %10, %11
  %16 = phi i8 [ 0, %10 ], [ %6, %11 ], [ 1, %4 ]
  %17 = load i8, ptr %9, align 1, !tbaa !129
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %4, !prof !374

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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #17 !prof !375 !PGOFuncName !376 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !377
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_copy_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !128 !PGOFuncName !378 {
  store i32 0, ptr %0, align 4, !tbaa !202
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_copy_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !379 !PGOFuncName !380 {
  %3 = load i32, ptr %0, align 4, !tbaa !202
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !113
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !154

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_copies, align 8, !tbaa !98
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !381

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !98
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !202
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !198, !llvm.loop !382

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

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
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!96}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!35 = !{ptr @ira_build_conflicts, ptr @build_conflict_bit_table, i64 37}
!36 = !{ptr @ira_build_conflicts, ptr @build_conflicts, i64 36}
!37 = !{ptr @ira_build_conflicts, ptr @ira_traverse_loop_tree, i64 36}
!38 = !{ptr @ira_build_conflicts, ptr @propagate_copies, i64 35}
!39 = !{ptr @ira_build_conflicts, ptr @ira_allocno_iter_init, i64 74}
!40 = !{ptr @ira_build_conflicts, ptr @ira_allocno_iter_cond, i64 204264}
!41 = !{ptr @ira_build_conflicts, ptr @ira_free, i64 97937}
!42 = !{ptr @ira_build_conflicts, ptr @print_conflicts, i64 1}
!43 = !{ptr @build_conflict_bit_table, ptr @ira_allocno_iter_init, i64 75}
!44 = !{ptr @build_conflict_bit_table, ptr @ira_allocno_iter_cond, i64 107879}
!45 = !{ptr @build_conflict_bit_table, ptr @sparseset_alloc, i64 37}
!46 = !{ptr @build_conflict_bit_table, ptr @ira_allocate, i64 5780}
!47 = !{ptr @build_conflict_bit_table, ptr @fprintf, i64 1}
!48 = !{ptr @build_conflict_bit_table, ptr @sparseset_set_bit, i64 160727}
!49 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_init, i64 160727}
!50 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_p, i64 527968}
!51 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_elm, i64 367241}
!52 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_next, i64 367241}
!53 = !{ptr @build_conflict_bit_table, ptr @sparseset_clear_bit, i64 160727}
!54 = !{ptr @build_conflict_bit_table, ptr @free, i64 37}
!55 = !{ptr @build_conflicts, ptr @ira_allocate, i64 38}
!56 = !{ptr @build_conflicts, ptr @max_reg_num, i64 38}
!57 = !{ptr @build_conflicts, ptr @build_allocno_conflicts, i64 104680}
!58 = !{ptr @build_conflicts, ptr @ira_free, i64 38}
!59 = !{ptr @add_copies, ptr @add_insn_allocno_copies, i64 618689}
!60 = !{ptr @propagate_copies, ptr @ira_copy_iter_init, i64 38}
!61 = !{ptr @propagate_copies, ptr @ira_copy_iter_cond, i64 1720}
!62 = !{ptr @propagate_copies, ptr @ira_add_allocno_copy, i64 1}
!63 = !{ptr @sparseset_set_bit, ptr @sparseset_bit_p, i64 169185}
!64 = !{ptr @sparseset_set_bit, ptr @sparseset_insert_bit, i64 169184}
!65 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!66 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_init, i64 107435}
!67 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_cond, i64 442753}
!68 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_next, i64 335318}
!69 = !{ptr @build_allocno_conflicts, ptr @ira_conflict_vector_profitable_p, i64 107433}
!70 = !{ptr @build_allocno_conflicts, ptr @ira_allocate_allocno_conflict_vec, i64 105695}
!71 = !{ptr @add_insn_allocno_copies, ptr @single_set_2, i64 1}
!72 = !{ptr @add_insn_allocno_copies, ptr @side_effects_p, i64 67058}
!73 = !{ptr @add_insn_allocno_copies, ptr @find_reg_note, i64 740950}
!74 = !{ptr @add_insn_allocno_copies, ptr @process_regs_for_copy, i64 67488}
!75 = !{ptr @add_insn_allocno_copies, ptr @extract_insn, i64 255325}
!76 = !{ptr @add_insn_allocno_copies, ptr @get_dup_num, i64 232855}
!77 = !{ptr @add_insn_allocno_copies, ptr @process_reg_shuffles, i64 110121}
!78 = !{ptr @process_regs_for_copy, ptr @fancy_abort, i64 1}
!79 = !{ptr @process_regs_for_copy, ptr @go_through_subreg, i64 137174}
!80 = !{ptr @process_regs_for_copy, ptr @rhs_regno, i64 137176}
!81 = !{ptr @process_regs_for_copy, ptr @ira_add_allocno_copy, i64 1724}
!82 = !{ptr @process_regs_for_copy, ptr @bitmap_set_bit, i64 1724}
!83 = !{ptr @process_regs_for_copy, ptr @reg_classes_intersect_p, i64 66697}
!84 = !{ptr @process_regs_for_copy, ptr @ira_get_register_move_cost, i64 2}
!85 = !{ptr @process_regs_for_copy, ptr @ira_allocate_and_set_costs, i64 162}
!86 = !{ptr @get_dup_num, ptr @commutative_constraint_p, i64 141912}
!87 = !{ptr @get_dup_num, ptr @address_operand, i64 1}
!88 = !{ptr @get_dup_num, ptr @lookup_constraint, i64 9112}
!89 = !{ptr @get_dup_num, ptr @regclass_for_constraint, i64 9111}
!90 = !{ptr @get_dup_num, ptr @constraint_satisfied_p, i64 1}
!91 = !{ptr @get_dup_num, ptr @insn_constraint_len, i64 8896}
!92 = !{ptr @process_reg_shuffles, ptr @fancy_abort, i64 2}
!93 = !{ptr @process_reg_shuffles, ptr @process_regs_for_copy, i64 1355}
!94 = !{ptr @go_through_subreg, ptr @rhs_regno, i64 1}
!95 = !{ptr @commutative_constraint_p, ptr @insn_constraint_len, i64 1509383}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!"ira-conflicts.c:print_conflicts"}
!103 = !{i8 0, i8 2}
!104 = !{!105, !106, i64 4}
!105 = !{!"ira_allocno", !106, i64 0, !106, i64 4, !106, i64 8, !106, i64 12, !99, i64 16, !99, i64 24, !99, i64 32, !106, i64 40, !106, i64 44, !106, i64 48, !106, i64 52, !106, i64 56, !106, i64 60, !106, i64 64, !106, i64 68, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !99, i64 104, !99, i64 112, !106, i64 120, !106, i64 124, !99, i64 128, !106, i64 136, !106, i64 140, !107, i64 144, !107, i64 152, !106, i64 160, !106, i64 164, !106, i64 168, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 172, !106, i64 173, !106, i64 173, !106, i64 173, !106, i64 173, !99, i64 176, !99, i64 184, !99, i64 192, !99, i64 200, !99, i64 208, !106, i64 216, !106, i64 220, !99, i64 224, !99, i64 232, !106, i64 240}
!106 = !{!"int", !100, i64 0}
!107 = !{!"long", !100, i64 0}
!108 = !{!105, !106, i64 0}
!109 = !{!105, !99, i64 32}
!110 = !{!111, !99, i64 0}
!111 = !{!"ira_loop_tree_node", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !106, i64 56, !100, i64 60, !99, i64 64, !100, i64 72, !100, i64 76, !99, i64 184, !99, i64 192, !99, i64 200, !99, i64 208}
!112 = !{!111, !99, i64 8}
!113 = !{!106, !106, i64 0}
!114 = !{!105, !99, i64 128}
!115 = !{!116, !106, i64 80}
!116 = !{!"basic_block_def", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !100, i64 32, !99, i64 48, !99, i64 56, !100, i64 64, !107, i64 72, !106, i64 80, !106, i64 84, !106, i64 88, !106, i64 92, !106, i64 96}
!117 = !{!118, !106, i64 0}
!118 = !{!"loop", !106, i64 0, !106, i64 4, !99, i64 8, !99, i64 16, !119, i64 24, !106, i64 32, !106, i64 36, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !120, i64 80, !120, i64 96, !100, i64 112, !100, i64 113, !106, i64 116, !99, i64 120, !99, i64 128, !100, i64 136, !99, i64 144}
!119 = !{!"lpt_decision", !106, i64 0, !106, i64 4}
!120 = !{!"", !107, i64 0, !107, i64 8}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!105, !107, i64 152}
!124 = !{!107, !107, i64 0}
!125 = !{!105, !106, i64 48}
!126 = !{!105, !107, i64 144}
!127 = distinct !{!127, !122}
!128 = !{!"function_entry_count", i64 38}
!129 = !{!100, !100, i64 0}
!130 = !{!"branch_weights", i32 1, i32 39}
!131 = !{!"branch_weights", i32 1561, i32 39}
!132 = !{!"branch_weights", i32 1, i32 155}
!133 = !{!"branch_weights", i32 1738, i32 105697}
!134 = !{!"branch_weights", i32 155, i32 429581}
!135 = distinct !{!135, !122}
!136 = !{!"branch_weights", i32 1, i32 107434}
!137 = !{!105, !106, i64 168}
!138 = !{!139, !99, i64 0}
!139 = !{!"reg_attrs", !99, i64 0, !107, i64 8}
!140 = !{!"branch_weights", i32 106402, i32 1033}
!141 = distinct !{!141, !122}
!142 = !{!"branch_weights", i32 59319, i32 2500681}
!143 = !{!"ira-conflicts.c:build_conflict_bit_table"}
!144 = !{!"branch_weights", i32 39, i32 107434}
!145 = !{!105, !106, i64 124}
!146 = !{!105, !106, i64 120}
!147 = distinct !{!147, !122}
!148 = !{!149, !106, i64 8}
!149 = !{!"param_info", !99, i64 0, !106, i64 8, !100, i64 12, !106, i64 16, !106, i64 20, !99, i64 24}
!150 = !{!"branch_weights", i32 1, i32 127}
!151 = distinct !{!151, !122}
!152 = !{!"branch_weights", i32 127, i32 19713}
!153 = !{!"branch_weights", i32 39, i32 1561}
!154 = !{!"branch_weights", i32 155, i32 1}
!155 = !{!"branch_weights", i32 159689, i32 169186}
!156 = !{!157, !99, i64 0}
!157 = !{!"ira_allocno_live_range", !99, i64 0, !106, i64 8, !106, i64 12, !99, i64 16, !99, i64 24, !99, i64 32}
!158 = !{!105, !106, i64 136}
!159 = !{!"branch_weights", i32 1, i32 169185}
!160 = !{!"branch_weights", i32 2043826543, i32 -1668907437}
!161 = !{!"branch_weights", i32 169185, i32 217384}
!162 = distinct !{!162, !122}
!163 = !{!"branch_weights", i32 169186, i32 0}
!164 = distinct !{!164, !122}
!165 = distinct !{!165, !122}
!166 = !{!"branch_weights", i32 1315345, i32 155}
!167 = distinct !{!167, !122}
!168 = !{!"ira-conflicts.c:build_conflicts"}
!169 = !{!"branch_weights", i32 1159801, i32 155}
!170 = distinct !{!170, !122}
!171 = !{!"branch_weights", i32 182555, i32 107434}
!172 = !{!105, !99, i64 80}
!173 = !{!"branch_weights", i32 107433, i32 1}
!174 = !{!"branch_weights", i32 1, i32 0}
!175 = distinct !{!175, !122}
!176 = !{!"branch_weights", i32 107434, i32 0}
!177 = distinct !{!177, !122}
!178 = !{!"function_entry_count", i64 155692}
!179 = !{!"ira-conflicts.c:add_copies"}
!180 = !{!"branch_weights", i32 39, i32 155655}
!181 = !{!182, !99, i64 8}
!182 = !{!"rtl_bb_info", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !106, i64 32}
!183 = !{!"branch_weights", i32 155655, i32 893504}
!184 = !{!"branch_weights", i32 1509179346, i32 -806652937}
!185 = !{!"branch_weights", i32 127, i32 4196381}
!186 = distinct !{!186, !122}
!187 = !{!"ira-conflicts.c:propagate_copies"}
!188 = !{!189, !99, i64 8}
!189 = !{!"ira_allocno_copy", !106, i64 0, !99, i64 8, !99, i64 16, !106, i64 24, !100, i64 28, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72}
!190 = !{!189, !99, i64 16}
!191 = !{!"branch_weights", i32 1726, i32 1}
!192 = !{!111, !99, i64 48}
!193 = !{!111, !99, i64 64}
!194 = !{!189, !106, i64 24}
!195 = !{!189, !100, i64 28}
!196 = !{!189, !99, i64 32}
!197 = !{!189, !99, i64 72}
!198 = !{!"branch_weights", i32 155, i32 6749}
!199 = distinct !{!199, !122}
!200 = !{!"function_entry_count", i64 152}
!201 = !{!"ira-conflicts.c:ira_allocno_iter_init"}
!202 = !{!203, !106, i64 0}
!203 = !{!"", !106, i64 0}
!204 = !{!"function_entry_count", i64 429884}
!205 = !{!"ira-conflicts.c:ira_allocno_iter_cond"}
!206 = !{!"branch_weights", i32 152, i32 1}
!207 = !{!"branch_weights", i32 1, i32 429733}
!208 = !{!"branch_weights", i32 152, i32 429581}
!209 = distinct !{!209, !122}
!210 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_init"}
!211 = !{!212, !100, i64 0}
!212 = !{!"", !100, i64 0, !99, i64 8, !106, i64 16, !106, i64 20, !106, i64 24, !106, i64 28, !107, i64 32}
!213 = !{!212, !99, i64 8}
!214 = !{!212, !106, i64 16}
!215 = !{!212, !106, i64 24}
!216 = !{!212, !106, i64 28}
!217 = !{!212, !107, i64 32}
!218 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_cond"}
!219 = !{!212, !106, i64 20}
!220 = distinct !{!220, !122}
!221 = distinct !{!221, !122}
!222 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_next"}
!223 = !{!"ira-conflicts.c:print_hard_reg_set"}
!224 = distinct !{!224, !122}
!225 = !{!"function_entry_count", i64 169185}
!226 = !{!"ira-conflicts.c:sparseset_set_bit"}
!227 = !{!"branch_weights", i32 169186, i32 1}
!228 = !{!229, !106, i64 16}
!229 = !{!"sparseset_def", !99, i64 0, !99, i64 8, !106, i64 16, !106, i64 20, !106, i64 24, !100, i64 28, !100, i64 29, !100, i64 32}
!230 = !{!"ira-conflicts.c:sparseset_iter_init"}
!231 = !{!229, !106, i64 24}
!232 = !{!229, !100, i64 28}
!233 = !{!229, !100, i64 29}
!234 = !{!"function_entry_count", i64 555753}
!235 = !{!"ira-conflicts.c:sparseset_iter_p"}
!236 = !{!"branch_weights", i32 1, i32 555754}
!237 = !{!"branch_weights", i32 386569, i32 169186}
!238 = !{!"function_entry_count", i64 386568}
!239 = !{!"ira-conflicts.c:sparseset_iter_elm"}
!240 = !{!229, !99, i64 0}
!241 = !{!"ira-conflicts.c:sparseset_iter_next"}
!242 = !{!"ira-conflicts.c:sparseset_bit_p"}
!243 = !{!229, !106, i64 20}
!244 = !{!229, !99, i64 8}
!245 = !{!"branch_weights", i32 109407, i32 59780}
!246 = !{!"ira-conflicts.c:sparseset_insert_bit"}
!247 = !{!"function_entry_count", i64 107433}
!248 = !{!"ira-conflicts.c:build_allocno_conflicts"}
!249 = !{!"branch_weights", i32 1, i32 107433}
!250 = !{!"branch_weights", i32 107433, i32 227856}
!251 = distinct !{!251, !122}
!252 = !{!105, !106, i64 160}
!253 = !{!"branch_weights", i32 1, i32 1738}
!254 = !{!105, !106, i64 140}
!255 = !{!"branch_weights", i32 107434, i32 1}
!256 = distinct !{!256, !122}
!257 = !{!"ira-conflicts.c:ira_allocno_set_iter_init"}
!258 = !{!259, !99, i64 0}
!259 = !{!"", !99, i64 0, !106, i64 8, !106, i64 12, !106, i64 16, !106, i64 20, !107, i64 24}
!260 = !{!259, !106, i64 8}
!261 = !{!259, !106, i64 12}
!262 = !{!259, !106, i64 20}
!263 = !{!259, !106, i64 16}
!264 = !{!259, !107, i64 24}
!265 = !{!"function_entry_count", i64 442721}
!266 = !{!"ira-conflicts.c:ira_allocno_set_iter_cond"}
!267 = !{!"branch_weights", i32 335288, i32 1}
!268 = !{!"branch_weights", i32 11921900, i32 107434}
!269 = !{!"branch_weights", i32 11694045, i32 335288}
!270 = distinct !{!270, !122}
!271 = !{!"branch_weights", i32 551907, i32 335288}
!272 = distinct !{!272, !122}
!273 = !{!"function_entry_count", i64 335288}
!274 = !{!"ira-conflicts.c:ira_allocno_set_iter_next"}
!275 = !{!"function_entry_count", i64 623676}
!276 = !{!"ira-conflicts.c:add_insn_allocno_copies"}
!277 = !{!"branch_weights", i32 623677, i32 1}
!278 = !{!279, !99, i64 8}
!279 = !{!"function", !99, i64 0, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !99, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !106, i64 104, !106, i64 108, !106, i64 112, !106, i64 116, !106, i64 120, !106, i64 124, !99, i64 128, !106, i64 136, !106, i64 137, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 138, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139, !106, i64 139}
!280 = !{!281, !99, i64 0}
!281 = !{!"control_flow_graph", !99, i64 0, !99, i64 8, !99, i64 16, !106, i64 24, !106, i64 28, !106, i64 32, !99, i64 40, !106, i64 48, !100, i64 52, !100, i64 60, !106, i64 68, !106, i64 72}
!282 = !{!116, !107, i64 72}
!283 = !{!116, !106, i64 88}
!284 = !{!"branch_weights", i32 1, i32 77028}
!285 = !{!"branch_weights", i32 -359438458, i32 6310}
!286 = !{!"branch_weights", i32 613018, i32 1}
!287 = !{!"branch_weights", i32 8582578, i32 2138901070}
!288 = !{!"branch_weights", i32 1755844170, i32 -1448662244, i32 7407}
!289 = !{!"branch_weights", i32 -1145803774, i32 662684707, i32 9920}
!290 = !{!"branch_weights", i32 66801, i32 1}
!291 = !{!"branch_weights", i32 38, i32 66764}
!292 = !{!"branch_weights", i32 301472, i32 255443}
!293 = !{!294, !100, i64 1086}
!294 = !{!"recog_data", !100, i64 0, !100, i64 240, !100, i64 480, !100, i64 720, !100, i64 840, !100, i64 960, !100, i64 1072, !100, i64 1086, !100, i64 1087, !100, i64 1088, !100, i64 1089, !99, i64 1120}
!295 = !{!"branch_weights", i32 255442, i32 1}
!296 = !{!"branch_weights", i32 -2147483648, i32 0}
!297 = !{!"branch_weights", i32 -1847909166, i32 719199067, i32 1255564}
!298 = !{!"branch_weights", i32 203, i32 1}
!299 = !{!"branch_weights", i32 809, i32 232155}
!300 = !{!"branch_weights", i32 1, i32 1618, i32 1}
!301 = !{!"branch_weights", i32 809, i32 1}
!302 = !{!"branch_weights", i32 340, i32 470}
!303 = !{!"branch_weights", i32 116481, i32 116482}
!304 = distinct !{!304, !122}
!305 = !{!"branch_weights", i32 256680, i32 255442}
!306 = distinct !{!306, !122}
!307 = !{!"branch_weights", i32 6310, i32 110173}
!308 = distinct !{!308, !122}
!309 = !{!"function_entry_count", i64 68587}
!310 = !{!"ira-conflicts.c:process_regs_for_copy"}
!311 = !{!"branch_weights", i32 1, i32 137176, i32 1}
!312 = !{!"branch_weights", i32 68588, i32 1}
!313 = !{!"branch_weights", i32 38, i32 68551}
!314 = !{!"branch_weights", i32 1, i32 38}
!315 = !{!"branch_weights", i32 66666, i32 1886}
!316 = !{!"branch_weights", i32 1, i32 1886}
!317 = !{!"branch_weights", i32 48, i32 1839}
!318 = !{!"branch_weights", i32 1679, i32 161}
!319 = !{!111, !99, i64 208}
!320 = !{!189, !106, i64 0}
!321 = !{!"branch_weights", i32 66703, i32 1}
!322 = !{!105, !106, i64 8}
!323 = !{!"branch_weights", i32 -2070322192, i32 66703}
!324 = !{!"branch_weights", i32 1, i32 66703}
!325 = !{!326, !326, i64 0}
!326 = !{!"short", !100, i64 0}
!327 = !{i32 0, i32 65536}
!328 = !{!105, !106, i64 52}
!329 = !{!105, !99, i64 184}
!330 = !{!105, !99, i64 200}
!331 = !{!"function_entry_count", i64 232962}
!332 = !{!"ira-conflicts.c:get_dup_num"}
!333 = !{!"branch_weights", i32 29120, i32 -902982336}
!334 = !{!"branch_weights", i32 116482, i32 116482}
!335 = !{!"branch_weights", i32 115438, i32 1045}
!336 = !{!"branch_weights", i32 90492, i32 24947}
!337 = !{!"branch_weights", i32 24125, i32 823}
!338 = !{!"branch_weights", i32 -530274647, i32 15434849, i32 15176, i32 64425193}
!339 = !{!"branch_weights", i32 248057, i32 1}
!340 = !{!"branch_weights", i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 34782, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4827, i32 188085, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 16, i32 1, i32 405, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8663, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!341 = !{!"branch_weights", i32 235743, i32 2147247905}
!342 = !{!"branch_weights", i32 12361948, i32 2560}
!343 = !{!"branch_weights", i32 1, i32 1017}
!344 = !{!"branch_weights", i32 509, i32 509}
!345 = !{!"branch_weights", i32 509, i32 1}
!346 = !{!"branch_weights", i32 1, i32 509}
!347 = !{!"branch_weights", i32 209, i32 301}
!348 = !{!"function_entry_count", i64 110172}
!349 = !{!"ira-conflicts.c:process_reg_shuffles"}
!350 = !{!"branch_weights", i32 203, i32 22434084, i32 41209}
!351 = !{!"branch_weights", i32 110172, i32 1}
!352 = !{!"branch_weights", i32 -1977967786, i32 -1261549410, i32 5107928}
!353 = !{!"branch_weights", i32 23482786, i32 3378644}
!354 = !{!"branch_weights", i32 110173, i32 15937}
!355 = !{!"branch_weights", i32 2033, i32 13905}
!356 = !{!"branch_weights", i32 1356, i32 678}
!357 = !{!"branch_weights", i32 112101, i32 110172}
!358 = distinct !{!358, !122}
!359 = !{!"function_entry_count", i64 137174}
!360 = !{!"ira-conflicts.c:go_through_subreg"}
!361 = !{!"branch_weights", i32 137175, i32 1}
!362 = !{!"function_entry_count", i64 290758}
!363 = !{!"ira-conflicts.c:rhs_regno"}
!364 = !{!"ira-conflicts.c:ira_get_register_move_cost"}
!365 = !{!"ira-conflicts.c:ira_allocate_and_set_costs"}
!366 = distinct !{!366, !122, !367, !368}
!367 = !{!"llvm.loop.isvectorized", i32 1}
!368 = !{!"llvm.loop.unroll.runtime.disable"}
!369 = !{!"function_entry_count", i64 141935}
!370 = !{!"ira-conflicts.c:commutative_constraint_p"}
!371 = !{!"branch_weights", i32 1, i32 140069}
!372 = !{!"branch_weights", i32 -1195332658, i32 2944, i32 1339308059}
!373 = !{!"branch_weights", i32 3838665, i32 -2134380744}
!374 = !{!"branch_weights", i32 140069, i32 1367491}
!375 = !{!"function_entry_count", i64 1527913}
!376 = !{!"ira-conflicts.c:insn_constraint_len"}
!377 = !{!"branch_weights", i32 33545, i32 1494370}
!378 = !{!"ira-conflicts.c:ira_copy_iter_init"}
!379 = !{!"function_entry_count", i64 1763}
!380 = !{!"ira-conflicts.c:ira_copy_iter_cond"}
!381 = !{!"branch_weights", i32 1, i32 1726}
!382 = distinct !{!382, !122}

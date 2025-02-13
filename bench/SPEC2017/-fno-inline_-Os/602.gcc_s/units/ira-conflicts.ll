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
@.str = private unnamed_addr constant [7 x i8] c";; r%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c";; a%d(r%d,\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" conflicts:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" r%d,\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" a%d(r%d,\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"b%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"l%d)\00", align 1
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@.str.9 = private unnamed_addr constant [34 x i8] c"\0A;;     total conflict hard regs:\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c";;     conflict hard regs:\00", align 1
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@ira_conflict_id_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@ira_conflicts_p = external local_unnamed_addr global i8, align 1
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@conflicts = internal unnamed_addr global ptr null, align 8
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@no_caller_save_reg_set = external local_unnamed_addr global i64, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [58 x i8] c"+++Conflict table will be too big(>%dMB) -- don't use it\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"+++Allocating %ld bytes for conflict table (uncompressed size %ld)\0A\00", align 1
@ira_max_point = external local_unnamed_addr global i32, align 4
@ira_start_point_ranges = external local_unnamed_addr global ptr, align 8
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
define dso_local void @ira_debug_conflicts(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !101 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !102
  tail call fastcc void @print_conflicts(ptr noundef %2, i8 noundef zeroext %0) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_conflicts(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !101 !PGOFuncName !106 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ira_allocno_iterator, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ira_allocno_conflict_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %4) #18
  %7 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !107
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %2
  %10 = icmp eq i8 %1, 0
  br label %11

11:                                               ; preds = %9, %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  %12 = load ptr, ptr %3, align 8, !tbaa !102
  br i1 %10, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !108
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %15) #18
  br label %37

17:                                               ; preds = %11
  %18 = load i32, ptr %12, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !108
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %20) #18
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %30, %28 ], [ %27, %26 ]
  %33 = phi ptr [ @.str.3, %28 ], [ @.str.2, %26 ]
  %34 = load i32, ptr %32, align 8, !tbaa !117
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %33, i32 noundef %34) #18
  %36 = tail call i32 @putc(i32 noundef 41, ptr noundef %0) #18
  br label %37

37:                                               ; preds = %31, %13
  %38 = tail call i32 @fputs(ptr noundef nonnull @.str.4, ptr noundef %0) #18
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 23
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  call fastcc void @ira_allocno_conflict_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %12) #18
  %43 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !range !107
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %42, %69
  %46 = load ptr, ptr %5, align 8, !tbaa !102
  br i1 %10, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !108
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %49) #18
  br label %69

51:                                               ; preds = %45
  %52 = load i32, ptr %46, align 8, !tbaa !112
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !108
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %52, i32 noundef %54) #18
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %46, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !113
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !119
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %62) #18
  br label %69

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !116
  %67 = load i32, ptr %66, align 8, !tbaa !121
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %67) #18
  br label %69

69:                                               ; preds = %47, %64, %60
  call fastcc void @ira_allocno_conflict_iter_next(ptr noundef nonnull %6) #18
  %70 = call fastcc zeroext i8 @ira_allocno_conflict_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !range !107
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %45, !llvm.loop !125

72:                                               ; preds = %69, %42, %37
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 27
  %74 = load i64, ptr %73, align 8, !tbaa !127
  %75 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !128
  %76 = xor i64 %75, -1
  %77 = and i64 %74, %76
  %78 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !129
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !128
  %83 = and i64 %77, %82
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %83) #18
  %84 = getelementptr inbounds %struct.ira_allocno, ptr %12, i64 0, i32 26
  %85 = load i64, ptr %84, align 8, !tbaa !130
  %86 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !128
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  %89 = load i32, ptr %78, align 8, !tbaa !129
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !128
  %93 = and i64 %88, %92
  tail call fastcc void @print_hard_reg_set(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %93) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %94 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !107
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %11, !llvm.loop !131

96:                                               ; preds = %72, %2
  %97 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #2 !prof !132 !PGOFuncName !133 {
  store i32 0, ptr %0, align 4, !tbaa !134
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !136 !PGOFuncName !137 {
  %3 = load i32, ptr %0, align 4, !tbaa !134
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !117
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !138

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !102
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !139

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !102
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !134
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !140, !llvm.loop !141

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !101 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 31
  %4 = load i16, ptr %3, align 4
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 1
  store i8 %7, ptr %0, align 8, !tbaa !143
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !145
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !146
  %12 = icmp eq i8 %7, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i64 20, i1 false)
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 21
  %17 = load i32, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 22
  %19 = load i32, ptr %18, align 4, !tbaa !148
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %23, align 8, !tbaa !149
  %24 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %24, align 4, !tbaa !150
  br label %36

25:                                               ; preds = %15
  %26 = sub i32 %19, %17
  %27 = add i32 %26, 64
  %28 = sdiv i32 %27, 64
  %29 = shl nsw i32 %28, 3
  %30 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !149
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  store i32 %17, ptr %32, align 4, !tbaa !150
  %33 = icmp ugt i32 %26, -128
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i64, ptr %9, align 8, !tbaa !128
  br label %36

36:                                               ; preds = %21, %25, %34
  %37 = phi i64 [ %35, %34 ], [ 0, %25 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  store i64 %37, ptr %38, align 8, !tbaa !151
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_conflict_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !101 !PGOFuncName !152 {
  %3 = load i8, ptr %0, align 8, !tbaa !143
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !153
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %10, align 8, !tbaa !146
  br label %34

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !145
  %20 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !146
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %17
  store ptr %24, ptr %1, align 8, !tbaa !102
  br label %64

27:                                               ; preds = %40
  store i32 %36, ptr %10, align 8, !tbaa !146
  br label %28

28:                                               ; preds = %27, %5
  %29 = phi i64 [ %44, %27 ], [ %7, %5 ]
  %30 = and i64 %29, 1
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !149
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
  store i32 %41, ptr %14, align 8, !tbaa !149
  %42 = load ptr, ptr %15, align 8, !tbaa !145
  %43 = getelementptr inbounds i64, ptr %42, i64 %37
  %44 = load i64, ptr %43, align 8, !tbaa !128
  store i64 %44, ptr %6, align 8, !tbaa !151
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %34, label %27, !llvm.loop !154

46:                                               ; preds = %28, %46
  %47 = phi i32 [ %49, %46 ], [ %33, %28 ]
  %48 = phi i64 [ %50, %46 ], [ %29, %28 ]
  %49 = add i32 %47, 1
  %50 = lshr exact i64 %48, 1
  %51 = and i64 %48, 2
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %46, label %53, !llvm.loop !155

53:                                               ; preds = %46
  store i32 %49, ptr %32, align 8, !tbaa !149
  store i64 %50, ptr %6, align 8, !tbaa !151
  br label %54

54:                                               ; preds = %28, %53
  %55 = phi i32 [ %49, %53 ], [ %33, %28 ]
  %56 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !102
  %57 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !150
  %59 = add i32 %58, %55
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %56, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !102
  store ptr %62, ptr %1, align 8, !tbaa !102
  br label %64

63:                                               ; preds = %34
  store i32 %36, ptr %10, align 8, !tbaa !146
  br label %64

64:                                               ; preds = %63, %17, %54, %26
  %65 = phi i8 [ 1, %26 ], [ 1, %54 ], [ 0, %17 ], [ 0, %63 ]
  ret i8 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ira_allocno_conflict_iter_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !101 !PGOFuncName !156 {
  %2 = load i8, ptr %0, align 8, !tbaa !143
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 2
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !151
  %9 = lshr i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !151
  %10 = getelementptr inbounds %struct.ira_allocno_conflict_iterator, ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi ptr [ %10, %6 ], [ %5, %4 ]
  %13 = load i32, ptr %12, align 8, !tbaa !117
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !117
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_hard_reg_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !101 !PGOFuncName !157 {
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
  br i1 %44, label %45, label %5, !llvm.loop !158

45:                                               ; preds = %41
  %46 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_build_conflicts() local_unnamed_addr #7 !prof !159 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load i8, ptr @ira_conflicts_p, align 1, !tbaa !160
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %36, label %5, !prof !161

5:                                                ; preds = %0
  %6 = tail call fastcc zeroext i8 @build_conflict_bit_table() #18, !range !107
  store i8 %6, ptr @ira_conflicts_p, align 1, !tbaa !160
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %36, label %8, !prof !161

8:                                                ; preds = %5
  tail call fastcc void @build_conflicts() #18
  %9 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !102
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %9, ptr noundef null, ptr noundef nonnull @add_copies) #20
  %10 = load i32, ptr @flag_ira_region, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %14, !prof !162

13:                                               ; preds = %8
  tail call fastcc void @propagate_copies() #18
  br label %14

14:                                               ; preds = %8, %13
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %15 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr @conflicts, align 8, !tbaa !102
  br i1 %16, label %34, label %18, !prof !163

18:                                               ; preds = %14, %30
  %19 = phi ptr [ %31, %30 ], [ %17, %14 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !102
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %20, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = load i32, ptr %20, align 8, !tbaa !112
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %30, label %28, !prof !164

28:                                               ; preds = %18
  tail call void @ira_free(ptr noundef %26) #20
  %29 = load ptr, ptr @conflicts, align 8, !tbaa !102
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %19, %18 ]
  %32 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %18, !prof !165, !llvm.loop !166

34:                                               ; preds = %30, %14
  %35 = phi ptr [ %17, %14 ], [ %31, %30 ]
  tail call void @ira_free(ptr noundef %35) #20
  br label %36

36:                                               ; preds = %5, %34, %0
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %37 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %38 = icmp eq i8 %37, 0
  %39 = load i32, ptr @optimize, align 4
  br i1 %38, label %88, label %40, !prof !163

40:                                               ; preds = %36
  %41 = load i32, ptr @flag_caller_saves, align 4, !tbaa !117
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %39, 0
  %44 = load ptr, ptr @regno_reg_rtx, align 8
  %45 = load i64, ptr @call_used_reg_set, align 8
  %46 = load i64, ptr @no_caller_save_reg_set, align 8
  br label %47

47:                                               ; preds = %40, %85
  %48 = load ptr, ptr %1, align 8, !tbaa !102
  br i1 %42, label %49, label %53, !prof !167

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 30
  %51 = load i32, ptr %50, align 8, !tbaa !168
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49, %47
  br i1 %43, label %54, label %74, !prof !167

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !108
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %44, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !160
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %61, align 8, !tbaa !169
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
  %76 = load i32, ptr %75, align 8, !tbaa !168
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78, !prof !171

78:                                               ; preds = %74, %49, %69
  %79 = phi i64 [ %45, %69 ], [ %45, %49 ], [ %46, %74 ]
  %80 = getelementptr inbounds %struct.ira_allocno, ptr %48, i64 0, i32 26
  %81 = load <2 x i64>, ptr %80, align 8, !tbaa !128
  %82 = insertelement <2 x i64> poison, i64 %79, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  %84 = or <2 x i64> %81, %83
  store <2 x i64> %84, ptr %80, align 8, !tbaa !128
  br label %85

85:                                               ; preds = %78, %74
  %86 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %47, !prof !165, !llvm.loop !172

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
  br i1 %98, label %99, label %100, !prof !173

99:                                               ; preds = %88
  tail call fastcc void @print_conflicts(ptr noundef nonnull %96, i8 noundef zeroext 0) #18
  br label %100

100:                                              ; preds = %99, %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_conflict_bit_table() unnamed_addr #7 !prof !159 !PGOFuncName !174 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !117
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
  %11 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13, !prof !175

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !148
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %14, i64 0, i32 21
  %18 = load i32, ptr %17, align 8, !tbaa !147
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %10, label %20, !prof !176, !llvm.loop !177

20:                                               ; preds = %13
  %21 = add i32 %16, 64
  %22 = sub i32 %21, %18
  %23 = sdiv i32 %22, 64
  %24 = add nsw i32 %23, %9
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 3
  %27 = load i32, ptr %7, align 8, !tbaa !178
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 20
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %8, !prof !180, !llvm.loop !177

31:                                               ; preds = %20
  %32 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !117
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
  %41 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !117
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call ptr @ira_allocate(i64 noundef %43) #20
  store ptr %44, ptr @conflicts, align 8, !tbaa !102
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #18
  %45 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %76, label %47, !prof !181

47:                                               ; preds = %39, %63
  %48 = phi ptr [ %71, %63 ], [ %44, %39 ]
  %49 = phi i32 [ %67, %63 ], [ 0, %39 ]
  br label %50

50:                                               ; preds = %47, %58
  %51 = load ptr, ptr %1, align 8, !tbaa !102
  %52 = load i32, ptr %51, align 8, !tbaa !112
  %53 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 22
  %54 = load i32, ptr %53, align 4, !tbaa !148
  %55 = getelementptr inbounds %struct.ira_allocno, ptr %51, i64 0, i32 21
  %56 = load i32, ptr %55, align 8, !tbaa !147
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %63, !prof !176

58:                                               ; preds = %50
  %59 = sext i32 %52 to i64
  %60 = getelementptr inbounds ptr, ptr %48, i64 %59
  store ptr null, ptr %60, align 8, !tbaa !102
  %61 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %76, label %50, !prof !165, !llvm.loop !182

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
  store ptr %70, ptr %73, align 8, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %69, i1 false)
  %74 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %47, !prof !183, !llvm.loop !182

76:                                               ; preds = %63, %58, %39
  %77 = phi i32 [ 0, %39 ], [ %49, %58 ], [ %67, %63 ]
  %78 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !117
  %79 = icmp sgt i32 %78, 0
  %80 = load ptr, ptr @ira_dump_file, align 8
  %81 = icmp ne ptr %80, null
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %92, !prof !184

83:                                               ; preds = %76
  %84 = sext i32 %77 to i64
  %85 = shl nsw i64 %84, 3
  %86 = sext i32 %5 to i64
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !117
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %86, 3
  %90 = mul nsw i64 %89, %88
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.15, i64 noundef %85, i64 noundef %90) #18
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i32, ptr @ira_max_point, align 4, !tbaa !117
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %182, !prof !185

95:                                               ; preds = %92, %177
  %96 = phi i64 [ %178, %177 ], [ 0, %92 ]
  %97 = load ptr, ptr @ira_start_point_ranges, align 8, !tbaa !102
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !102
  %100 = icmp eq ptr %99, null
  br i1 %100, label %165, label %101, !prof !186

101:                                              ; preds = %95, %161
  %102 = phi ptr [ %163, %161 ], [ %99, %95 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !187
  %104 = load i32, ptr %103, align 8, !tbaa !112
  %105 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 24
  %106 = load i32, ptr %105, align 8, !tbaa !189
  %107 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 9
  %108 = load i32, ptr %107, align 8, !tbaa !129
  tail call fastcc void @sparseset_set_bit(ptr noundef %40, i32 noundef %104) #18
  tail call fastcc void @sparseset_iter_init(ptr noundef %40) #18
  %109 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #18, !range !107
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %161, label %111, !prof !190

111:                                              ; preds = %101
  %112 = zext i32 %108 to i64
  %113 = getelementptr inbounds %struct.ira_allocno, ptr %103, i64 0, i32 21
  %114 = load ptr, ptr @conflicts, align 8
  %115 = sext i32 %104 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  br label %117

117:                                              ; preds = %111, %158
  %118 = tail call fastcc i32 @sparseset_iter_elm(ptr noundef %40) #18
  %119 = load ptr, ptr @ira_allocnos, align 8, !tbaa !102
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !102
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 9
  %124 = load i32, ptr %123, align 8, !tbaa !129
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [27 x [27 x i8]], ptr @ira_reg_classes_intersect_p, i64 0, i64 %112, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !160
  %128 = icmp eq i8 %127, 0
  %129 = icmp eq i32 %104, %118
  %130 = or i1 %129, %128
  br i1 %130, label %158, label %131, !prof !191

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 24
  %133 = load i32, ptr %132, align 8, !tbaa !189
  %134 = load i32, ptr %113, align 8, !tbaa !147
  %135 = sub nsw i32 %133, %134
  %136 = and i32 %135, 63
  %137 = zext nneg i32 %136 to i64
  %138 = shl nuw i64 1, %137
  %139 = load ptr, ptr %116, align 8, !tbaa !102
  %140 = lshr i32 %135, 6
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds i64, ptr %139, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !128
  %144 = or i64 %138, %143
  store i64 %144, ptr %142, align 8, !tbaa !128
  %145 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 21
  %146 = load i32, ptr %145, align 8, !tbaa !147
  %147 = sub nsw i32 %106, %146
  %148 = and i32 %147, 63
  %149 = zext nneg i32 %148 to i64
  %150 = shl nuw i64 1, %149
  %151 = getelementptr inbounds ptr, ptr %114, i64 %120
  %152 = load ptr, ptr %151, align 8, !tbaa !102
  %153 = lshr i32 %147, 6
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds i64, ptr %152, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !128
  %157 = or i64 %150, %156
  store i64 %157, ptr %155, align 8, !tbaa !128
  br label %158

158:                                              ; preds = %117, %131
  tail call fastcc void @sparseset_iter_next(ptr noundef %40) #18
  %159 = tail call fastcc zeroext i8 @sparseset_iter_p(ptr noundef %40) #18, !range !107
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %117, !prof !192, !llvm.loop !193

161:                                              ; preds = %158, %101
  %162 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %102, i64 0, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !102
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %101, !prof !194, !llvm.loop !195

165:                                              ; preds = %161, %95
  %166 = load ptr, ptr @ira_finish_point_ranges, align 8, !tbaa !102
  %167 = getelementptr inbounds ptr, ptr %166, i64 %96
  %168 = load ptr, ptr %167, align 8, !tbaa !102
  %169 = icmp eq ptr %168, null
  br i1 %169, label %177, label %170, !prof !186

170:                                              ; preds = %165, %170
  %171 = phi ptr [ %175, %170 ], [ %168, %165 ]
  %172 = load ptr, ptr %171, align 8, !tbaa !187
  %173 = load i32, ptr %172, align 8, !tbaa !112
  tail call void @sparseset_clear_bit(ptr noundef %40, i32 noundef %173) #20
  %174 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %171, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !102
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %170, !prof !194, !llvm.loop !196

177:                                              ; preds = %170, %165
  %178 = add nuw nsw i64 %96, 1
  %179 = load i32, ptr @ira_max_point, align 4, !tbaa !117
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %95, label %182, !prof !197, !llvm.loop !198

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
define internal fastcc void @build_conflicts() unnamed_addr #7 !prof !159 !PGOFuncName !199 {
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !117
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call ptr @ira_allocate(i64 noundef %3) #20
  store ptr %4, ptr @collected_conflict_allocnos, align 8, !tbaa !102
  %5 = tail call i32 @max_reg_num() #20
  %6 = icmp sgt i32 %5, 53
  br i1 %6, label %7, label %32, !prof !185

7:                                                ; preds = %0
  %8 = zext nneg i32 %5 to i64
  br label %11

9:                                                ; preds = %28, %11
  %10 = icmp sgt i64 %12, 54
  br i1 %10, label %11, label %32, !prof !200, !llvm.loop !201

11:                                               ; preds = %7, %9
  %12 = phi i64 [ %8, %7 ], [ %13, %9 ]
  %13 = add nsw i64 %12, -1
  %14 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !102
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %18, !prof !202

18:                                               ; preds = %11, %28
  %19 = phi ptr [ %30, %28 ], [ %16, %11 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %19) #18
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !203
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !204

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  tail call fastcc void @build_allocno_conflicts(ptr noundef nonnull %24) #18
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %24, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !203
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !prof !205, !llvm.loop !206

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  %31 = icmp eq ptr %30, null
  br i1 %31, label %9, label %18, !prof !207, !llvm.loop !208

32:                                               ; preds = %9, %0
  %33 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !102
  tail call void @ira_free(ptr noundef %33) #20
  ret void
}

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_copies(ptr nocapture noundef readonly %0) #7 !prof !209 !PGOFuncName !210 {
  %2 = load ptr, ptr %0, align 8, !tbaa !114
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4, !prof !211

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9, !prof !212

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %25, %23 ], [ %7, %4 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %27, label %17, !prof !215

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %23, label %22, !prof !216

22:                                               ; preds = %17
  tail call fastcc void @add_insn_allocno_copies(ptr noundef nonnull %10) #18
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !prof !217, !llvm.loop !218

27:                                               ; preds = %23, %9, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @propagate_copies() unnamed_addr #7 !prof !159 !PGOFuncName !219 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_copy_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call fastcc void @ira_copy_iter_init(ptr noundef nonnull %2) #18
  %3 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5, !prof !163

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %5, %82
  %8 = phi ptr [ %6, %5 ], [ %83, %82 ]
  %9 = load ptr, ptr %1, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !220
  %12 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %82, label %17, !prof !223

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !224
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !203
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31, !prof !225

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !108
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi ptr [ %30, %23 ], [ %21, %17 ]
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !203
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44, !prof !227

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %19, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !226
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %13, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !108
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !102
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi ptr [ %43, %36 ], [ %34, %31 ]
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 21
  %47 = load i32, ptr %46, align 8, !tbaa !147
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 24
  %49 = load i32, ptr %48, align 8, !tbaa !189
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %71, label %51, !prof !228

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.ira_allocno, ptr %32, i64 0, i32 22
  %53 = load i32, ptr %52, align 4, !tbaa !148
  %54 = icmp sgt i32 %49, %53
  br i1 %54, label %71, label %55, !prof !229

55:                                               ; preds = %51
  %56 = load ptr, ptr @conflicts, align 8, !tbaa !102
  %57 = load i32, ptr %32, align 8, !tbaa !112
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !102
  %61 = sub nsw i32 %49, %47
  %62 = lshr i32 %61, 6
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds i64, ptr %60, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !128
  %66 = and i32 %61, 63
  %67 = zext nneg i32 %66 to i64
  %68 = shl nuw i64 1, %67
  %69 = and i64 %65, %68
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %82, !prof !230

71:                                               ; preds = %55, %51, %44
  %72 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !231
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 4
  %75 = load i8, ptr %74, align 4, !tbaa !232
  %76 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !233
  %78 = getelementptr inbounds %struct.ira_allocno_copy, ptr %9, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !234
  %80 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %32, ptr noundef nonnull %45, i32 noundef %73, i8 noundef zeroext %75, ptr noundef %77, ptr noundef %79) #20
  %81 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !102
  br label %82

82:                                               ; preds = %55, %71, %7
  %83 = phi ptr [ %8, %55 ], [ %81, %71 ], [ %8, %7 ]
  %84 = call fastcc zeroext i8 @ira_copy_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #18, !range !107
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %7, !prof !235, !llvm.loop !236

86:                                               ; preds = %82, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @sparseset_alloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sparseset_set_bit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !237 !PGOFuncName !238 {
  %3 = tail call fastcc zeroext i8 @sparseset_bit_p(ptr noundef %0, i32 noundef %1) #18, !range !107
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !239

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !240
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !240
  tail call fastcc void @sparseset_insert_bit(ptr noundef %0, i32 noundef %1, i32 noundef %7) #18
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sparseset_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #2 !prof !237 !PGOFuncName !242 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 8, !tbaa !243
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  store i8 1, ptr %3, align 4, !tbaa !244
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  store i8 1, ptr %4, align 1, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @sparseset_iter_p(ptr nocapture noundef %0) unnamed_addr #10 !prof !246 !PGOFuncName !247 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !245
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !248

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !243
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !240
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !249

11:                                               ; preds = %5, %1
  store i8 0, ptr %2, align 1, !tbaa !245
  br label %12

12:                                               ; preds = %5, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %5 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @sparseset_iter_elm(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !250 !PGOFuncName !251 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !243
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !117
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sparseset_iter_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !250 !PGOFuncName !253 {
  %2 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4, !tbaa !244
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !243
  %7 = add i32 %6, %4
  store i32 %7, ptr %5, align 8, !tbaa !243
  store i8 1, ptr %2, align 4, !tbaa !244
  ret void
}

; Function Attrs: optsize
declare void @sparseset_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sparseset_bit_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !237 !PGOFuncName !254 {
  %3 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !255
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6, !prof !239

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 85, ptr noundef nonnull @.str.17) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !256
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !117
  %13 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !240
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %23, !prof !257

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8, !tbaa !252
  %18 = zext i32 %12 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !117
  %21 = icmp eq i32 %20, %1
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %16, %7
  %24 = phi i8 [ 0, %7 ], [ %22, %16 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sparseset_insert_bit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 !prof !237 !PGOFuncName !258 {
  %4 = getelementptr inbounds %struct.sparseset_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !256
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store i32 %2, ptr %7, align 4, !tbaa !117
  %8 = load ptr, ptr %0, align 8, !tbaa !252
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  store i32 %1, ptr %10, align 4, !tbaa !117
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_allocno_conflicts(ptr noundef %0) unnamed_addr #7 !prof !259 !PGOFuncName !260 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ira_allocno_set_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr @conflicts, align 8, !tbaa !102
  %5 = load i32, ptr %0, align 8, !tbaa !112
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 21
  %10 = load i32, ptr %9, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 22
  %12 = load i32, ptr %11, align 4, !tbaa !148
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %10, i32 noundef %12) #18
  %13 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !107
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15, !prof !261

15:                                               ; preds = %1
  %16 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !102
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %24, %17 ]
  %19 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !102
  %20 = load i32, ptr %2, align 4, !tbaa !117
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = add nuw i64 %18, 1
  %25 = getelementptr inbounds ptr, ptr %16, i64 %18
  store ptr %23, ptr %25, align 8, !tbaa !102
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #18
  %26 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !107
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %17, !prof !262, !llvm.loop !263

28:                                               ; preds = %17
  %29 = trunc i64 %24 to i32
  br label %30

30:                                               ; preds = %28, %1
  %31 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %32 = tail call zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef nonnull %0, i32 noundef %31) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34, !prof !164

34:                                               ; preds = %30
  tail call void @ira_allocate_allocno_conflict_vec(ptr noundef nonnull %0, i32 noundef %31) #20
  %35 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !118
  %37 = load ptr, ptr @collected_conflict_allocnos, align 8, !tbaa !102
  %38 = zext nneg i32 %31 to i64
  %39 = shl nuw nsw i64 %38, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %37, i64 %39, i1 false)
  %40 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr null, ptr %40, align 8, !tbaa !102
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 28
  store i32 %31, ptr %41, align 8, !tbaa !264
  br label %60

42:                                               ; preds = %30
  %43 = load ptr, ptr @conflicts, align 8, !tbaa !102
  %44 = load i32, ptr %0, align 8, !tbaa !112
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !102
  %48 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 23
  store ptr %47, ptr %48, align 8, !tbaa !118
  %49 = load i32, ptr %11, align 4, !tbaa !148
  %50 = load i32, ptr %9, align 8, !tbaa !147
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %57, label %52, !prof !265

52:                                               ; preds = %42
  %53 = add i32 %49, 64
  %54 = sub i32 %53, %50
  %55 = sdiv i32 %54, 64
  %56 = shl nsw i32 %55, 3
  br label %57

57:                                               ; preds = %42, %52
  %58 = phi i32 [ %56, %52 ], [ 0, %42 ]
  %59 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 25
  store i32 %58, ptr %59, align 4, !tbaa !266
  br label %60

60:                                               ; preds = %57, %34
  %61 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !113
  %63 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !224
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !203
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %79, !prof !267

68:                                               ; preds = %60
  %69 = icmp eq ptr %64, null
  br i1 %69, label %127, label %70, !prof !268

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !226
  %73 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !108
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  %78 = icmp eq ptr %77, null
  br i1 %78, label %127, label %79, !prof !269

79:                                               ; preds = %70, %60
  %80 = phi ptr [ %77, %70 ], [ %66, %60 ]
  %81 = load i32, ptr %80, align 8, !tbaa !112
  %82 = load i32, ptr %9, align 8, !tbaa !147
  %83 = load i32, ptr %11, align 4, !tbaa !148
  call fastcc void @ira_allocno_set_iter_init(ptr noundef nonnull %3, ptr noundef %8, i32 noundef %82, i32 noundef %83) #18
  %84 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !107
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %127, label %86, !prof !270

86:                                               ; preds = %79
  %87 = load ptr, ptr @ira_conflict_id_allocno_map, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %64, i64 0, i32 9
  %89 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 21
  %90 = load ptr, ptr @conflicts, align 8
  %91 = sext i32 %81 to i64
  %92 = getelementptr inbounds ptr, ptr %90, i64 %91
  br label %93

93:                                               ; preds = %86, %124
  %94 = load i32, ptr %2, align 4, !tbaa !117
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %87, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 16
  %99 = load ptr, ptr %98, align 8, !tbaa !203
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %109, !prof !271

101:                                              ; preds = %93
  %102 = load ptr, ptr %88, align 8, !tbaa !226
  %103 = getelementptr inbounds %struct.ira_allocno, ptr %97, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !108
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %102, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !102
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109, !prof !272

109:                                              ; preds = %101, %93
  %110 = phi ptr [ %107, %101 ], [ %99, %93 ]
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %110, i64 0, i32 24
  %112 = load i32, ptr %111, align 8, !tbaa !189
  %113 = load i32, ptr %89, align 8, !tbaa !147
  %114 = sub nsw i32 %112, %113
  %115 = and i32 %114, 63
  %116 = zext nneg i32 %115 to i64
  %117 = shl nuw i64 1, %116
  %118 = load ptr, ptr %92, align 8, !tbaa !102
  %119 = lshr i32 %114, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds i64, ptr %118, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !128
  %123 = or i64 %117, %122
  store i64 %123, ptr %121, align 8, !tbaa !128
  br label %124

124:                                              ; preds = %101, %109
  call fastcc void @ira_allocno_set_iter_next(ptr noundef nonnull %3) #18
  %125 = call fastcc zeroext i8 @ira_allocno_set_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #18, !range !107
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %93, !prof !273, !llvm.loop !274

127:                                              ; preds = %124, %79, %68, %70
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !prof !275 !PGOFuncName !276 {
  store ptr %1, ptr %0, align 8, !tbaa !277
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !279
  %6 = icmp slt i32 %3, %2
  %7 = sub i32 %3, %2
  %8 = add i32 %7, 1
  %9 = select i1 %6, i32 0, i32 %8, !prof !280
  %10 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  store i32 %9, ptr %10, align 4, !tbaa !281
  %11 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  store i32 %2, ptr %11, align 4, !tbaa !282
  %12 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 8, !tbaa !283
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14, !prof !280

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8, !tbaa !128
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  store i64 %17, ptr %18, align 8, !tbaa !284
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_set_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !285 !PGOFuncName !286 {
  %3 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !284
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13, !prof !287

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !281
  %11 = load i32, ptr %7, align 8, !tbaa !279
  br label %19

12:                                               ; preds = %24
  store i32 %21, ptr %7, align 8, !tbaa !279
  store i32 %22, ptr %8, align 8, !tbaa !283
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !283
  br i1 %16, label %30, label %38, !prof !288

19:                                               ; preds = %6, %24
  %20 = phi i32 [ %11, %6 ], [ %21, %24 ]
  %21 = add i32 %20, 1
  %22 = shl i32 %21, 6
  %23 = icmp ult i32 %22, %10
  br i1 %23, label %24, label %43, !prof !289

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8, !tbaa !277
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !128
  store i64 %28, ptr %3, align 8, !tbaa !284
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !prof !290, !llvm.loop !291

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !prof !292, !llvm.loop !293

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !283
  store i64 %34, ptr %3, align 8, !tbaa !284
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  %40 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !282
  %42 = add nsw i32 %41, %39
  store i32 %42, ptr %1, align 4, !tbaa !117
  br label %44

43:                                               ; preds = %19
  store i32 %21, ptr %7, align 8, !tbaa !279
  store i32 %22, ptr %8, align 8, !tbaa !283
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i8 [ 1, %38 ], [ 0, %43 ]
  ret i8 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ira_allocno_set_iter_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !294 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !284
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !284
  %5 = getelementptr inbounds %struct.ira_allocno_set_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !283
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !283
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ira_conflict_vector_profitable_p(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @ira_allocate_allocno_conflict_vec(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_insn_allocno_copies(ptr noundef %0) unnamed_addr #7 !prof !296 !PGOFuncName !297 {
  %2 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %2) #19
  %3 = load i32, ptr @optimize_size, align 4, !tbaa !117
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25, !prof !298

5:                                                ; preds = %1
  %6 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !117
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !298

8:                                                ; preds = %5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !299
  %12 = load ptr, ptr %11, align 8, !tbaa !301
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !303
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !304
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23, !prof !305

23:                                               ; preds = %16
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %16, %1, %8
  %26 = phi i32 [ %24, %23 ], [ 1, %16 ], [ 1000, %1 ], [ 1000, %8 ]
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %81, !prof !306

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !160
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 23
  br i1 %36, label %40, label %37, !prof !307

37:                                               ; preds = %31
  %38 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %33) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40, !prof !308

40:                                               ; preds = %31, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %31 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = load i32, ptr %43, align 8
  %45 = trunc i32 %44 to i16
  switch i16 %45, label %81 [
    i16 37, label %52
    i16 39, label %46
  ], !prof !309

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !160
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %81, !prof !310

52:                                               ; preds = %40, %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !160
  %55 = load i32, ptr %54, align 8
  %56 = trunc i32 %55 to i16
  switch i16 %56, label %81 [
    i16 37, label %63
    i16 39, label %57
  ], !prof !311

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !160
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %81, !prof !312

63:                                               ; preds = %52, %57
  %64 = tail call i32 @side_effects_p(ptr noundef nonnull %41) #20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81, !prof !313

66:                                               ; preds = %63
  %67 = load ptr, ptr %53, align 8, !tbaa !160
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %74, label %71, !prof !314

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !160
  br label %74

74:                                               ; preds = %66, %71
  %75 = phi ptr [ %73, %71 ], [ %67, %66 ]
  %76 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %75) #20
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78, !prof !315

78:                                               ; preds = %74
  %79 = load ptr, ptr %42, align 8, !tbaa !160
  %80 = load ptr, ptr %53, align 8, !tbaa !160
  tail call fastcc void @process_regs_for_copy(ptr noundef %79, ptr noundef %80, i8 noundef zeroext 0, ptr noundef nonnull %0, i32 noundef %26) #18
  br label %170

81:                                               ; preds = %25, %52, %40, %74, %63, %57, %46, %37
  %82 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %170, label %84, !prof !316

84:                                               ; preds = %81
  tail call void @extract_insn(ptr noundef nonnull %0) #20
  %85 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !317
  %86 = icmp sgt i8 %85, 0
  br i1 %86, label %87, label %170, !prof !319

87:                                               ; preds = %84
  %88 = zext nneg i8 %85 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %2, i8 0, i64 %88, i1 false), !tbaa !160
  br label %91

89:                                               ; preds = %139
  %90 = icmp sgt i8 %140, 0
  br i1 %90, label %144, label %170, !prof !320

91:                                               ; preds = %87, %139
  %92 = phi i8 [ %85, %87 ], [ %140, %139 ]
  %93 = phi i64 [ 0, %87 ], [ %141, %139 ]
  %94 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !102
  %96 = load i32, ptr %95, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %139 [
    i16 37, label %104
    i16 39, label %98
  ], !prof !321

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !160
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 37
  br i1 %103, label %104, label %139, !prof !322

104:                                              ; preds = %91, %98
  %105 = trunc i64 %93 to i32
  br label %106

106:                                              ; preds = %104, %136
  %107 = phi i1 [ true, %104 ], [ false, %136 ]
  %108 = phi i8 [ 0, %104 ], [ 1, %136 ]
  %109 = tail call fastcc i32 @get_dup_num(i32 noundef %105, i8 noundef zeroext %108) #18
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %136, !prof !323

111:                                              ; preds = %106
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 %112
  store i8 1, ptr %113, align 1, !tbaa !160
  %114 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %112
  %115 = load ptr, ptr %114, align 8, !tbaa !102
  %116 = load i32, ptr %115, align 8
  %117 = trunc i32 %116 to i16
  switch i16 %117, label %136 [
    i16 37, label %124
    i16 39, label %118
  ], !prof !324

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !160
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 37
  br i1 %123, label %124, label %136, !prof !325

124:                                              ; preds = %111, %118
  %125 = load i32, ptr %95, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 37
  br i1 %127, label %131, label %128, !prof !326

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !160
  br label %131

131:                                              ; preds = %124, %128
  %132 = phi ptr [ %130, %128 ], [ %95, %124 ]
  %133 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %132) #20
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135, !prof !327

135:                                              ; preds = %131
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %95, ptr noundef nonnull %115, i8 noundef zeroext 1, ptr noundef null, i32 noundef %26) #18
  br label %136

136:                                              ; preds = %111, %106, %135, %131, %118
  br i1 %107, label %106, label %137, !prof !328, !llvm.loop !329

137:                                              ; preds = %136
  %138 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !317
  br label %139

139:                                              ; preds = %137, %91, %98
  %140 = phi i8 [ %138, %137 ], [ %92, %91 ], [ %92, %98 ]
  %141 = add nuw nsw i64 %93, 1
  %142 = sext i8 %140 to i64
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %91, label %89, !prof !330, !llvm.loop !331

144:                                              ; preds = %89, %165
  %145 = phi i64 [ %166, %165 ], [ 0, %89 ]
  %146 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !102
  %148 = load i32, ptr %147, align 8
  %149 = trunc i32 %148 to i16
  switch i16 %149, label %165 [
    i16 37, label %156
    i16 39, label %150
  ], !prof !321

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.rtx_def, ptr %147, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !160
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 37
  br i1 %155, label %156, label %165, !prof !322

156:                                              ; preds = %150, %144
  %157 = phi ptr [ %147, %144 ], [ %152, %150 ]
  %158 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %157) #20
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160, !prof !332

160:                                              ; preds = %156
  %161 = icmp slt i32 %26, 8
  %162 = lshr i32 %26, 3
  %163 = select i1 %161, i32 1, i32 %162
  %164 = trunc i64 %145 to i32
  call fastcc void @process_reg_shuffles(ptr noundef nonnull %147, i32 noundef %164, i32 noundef %163, ptr noundef nonnull %2) #18
  br label %165

165:                                              ; preds = %144, %150, %156, %160
  %166 = add nuw nsw i64 %145, 1
  %167 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !317
  %168 = sext i8 %167 to i64
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %144, label %170, !prof !330, !llvm.loop !333

170:                                              ; preds = %165, %84, %89, %81, %78
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_regs_for_copy(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #7 !prof !334 !PGOFuncName !335 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %8 = load i32, ptr %0, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %25 [
    i16 37, label %16
    i16 39, label %10
  ], !prof !336

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %25, !prof !337

16:                                               ; preds = %5, %10
  %17 = load i32, ptr %1, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %25 [
    i16 37, label %27
    i16 39, label %19
  ], !prof !338

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %27, label %25, !prof !339

25:                                               ; preds = %16, %5, %19, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 351, ptr noundef nonnull @.str.17) #20
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %16, %19, %25
  %28 = phi i32 [ %8, %16 ], [ %8, %19 ], [ %26, %25 ]
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %35, !prof !340

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
  br i1 %40, label %43, label %49, !prof !341

43:                                               ; preds = %35
  br i1 %42, label %199, label %44, !prof !342

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !tbaa !117
  %46 = add i32 %45, %39
  %47 = load i32, ptr %7, align 4, !tbaa !117
  %48 = sub i32 %46, %47
  br label %100

49:                                               ; preds = %35
  br i1 %42, label %50, label %55, !prof !343

50:                                               ; preds = %49
  %51 = load i32, ptr %7, align 4, !tbaa !117
  %52 = add i32 %51, %41
  %53 = load i32, ptr %6, align 4, !tbaa !117
  %54 = sub i32 %52, %53
  br label %100

55:                                               ; preds = %49
  %56 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !102
  %57 = zext i32 %39 to i64
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !102
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 21
  %61 = load i32, ptr %60, align 8, !tbaa !147
  %62 = zext i32 %41 to i64
  %63 = getelementptr inbounds ptr, ptr %56, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 24
  %66 = load i32, ptr %65, align 8, !tbaa !189
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %88, label %68, !prof !344

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.ira_allocno, ptr %59, i64 0, i32 22
  %70 = load i32, ptr %69, align 4, !tbaa !148
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %88, label %72, !prof !345

72:                                               ; preds = %68
  %73 = load ptr, ptr @conflicts, align 8, !tbaa !102
  %74 = load i32, ptr %59, align 8, !tbaa !112
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  %78 = sub nsw i32 %66, %61
  %79 = lshr i32 %78, 6
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds i64, ptr %77, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !128
  %83 = and i32 %78, 63
  %84 = zext nneg i32 %83 to i64
  %85 = shl nuw i64 1, %84
  %86 = and i64 %82, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %199, !prof !346

88:                                               ; preds = %72, %68, %55
  %89 = load i32, ptr %6, align 4, !tbaa !117
  %90 = load i32, ptr %7, align 4, !tbaa !117
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %199, !prof !347

92:                                               ; preds = %88
  %93 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !102
  %94 = tail call ptr @ira_add_allocno_copy(ptr noundef nonnull %59, ptr noundef nonnull %64, i32 noundef %4, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %93) #20
  %95 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !102
  %96 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %95, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !348
  %98 = load i32, ptr %94, align 8, !tbaa !349
  %99 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %97, i32 noundef %98) #20
  br label %199

100:                                              ; preds = %50, %44
  %101 = phi i32 [ %39, %50 ], [ %41, %44 ]
  %102 = phi i32 [ %54, %50 ], [ %48, %44 ]
  %103 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !102
  %104 = zext i32 %101 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  %107 = sext i32 %102 to i64
  %108 = icmp ult i32 %102, 53
  br i1 %108, label %109, label %199, !prof !350

109:                                              ; preds = %100
  %110 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %107
  %111 = load i32, ptr %110, align 4, !tbaa !117
  %112 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !351
  %114 = getelementptr inbounds %struct.ira_allocno, ptr %106, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !129
  %116 = icmp ne ptr %3, null
  %117 = and i1 %116, %36
  br i1 %117, label %118, label %144, !prof !352

118:                                              ; preds = %109
  %119 = zext i32 %111 to i64
  %120 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !117
  %122 = tail call i32 @reg_classes_intersect_p(i32 noundef %111, i32 noundef 13) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132, !prof !353

124:                                              ; preds = %118
  %125 = zext i32 %113 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !160
  %128 = icmp eq i8 %127, 10
  br i1 %128, label %141, label %129, !prof !354

129:                                              ; preds = %124
  %130 = icmp eq i8 %127, 11
  %131 = select i1 %130, i32 2, i32 1
  br label %141

132:                                              ; preds = %118
  %133 = icmp eq i32 %113, 40
  br i1 %133, label %141, label %134, !prof !355

134:                                              ; preds = %132
  %135 = zext i32 %113 to i64
  %136 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !160
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %138, 3
  %140 = lshr i32 %139, 2
  br label %141

141:                                              ; preds = %134, %132, %124, %129
  %142 = phi i32 [ 2, %124 ], [ %131, %129 ], [ %140, %134 ], [ 3, %132 ]
  %143 = icmp ugt i32 %121, %142
  br i1 %143, label %144, label %199, !prof !356

144:                                              ; preds = %141, %109
  %145 = zext i32 %115 to i64
  %146 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %145, i64 %107
  %147 = load i16, ptr %146, align 2, !tbaa !357
  %148 = sext i16 %147 to i64
  %149 = icmp slt i16 %147, 0
  br i1 %149, label %199, label %150, !prof !355

150:                                              ; preds = %144
  %151 = tail call fastcc i32 @rhs_regno(ptr noundef %37) #18
  %152 = icmp ult i32 %151, 53
  br i1 %152, label %153, label %155, !prof !359

153:                                              ; preds = %150
  %154 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %115, i32 noundef %111) #18, !range !360
  br label %157

155:                                              ; preds = %150
  %156 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %113, i32 noundef %111, i32 noundef %115) #18, !range !360
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = mul nsw i32 %158, %4
  br label %160

160:                                              ; preds = %182, %157
  %161 = phi ptr [ %106, %157 ], [ %183, %182 ]
  %162 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 33
  %163 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 10
  %164 = load i32, ptr %163, align 4, !tbaa !361
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %162, i32 noundef %115, i32 noundef %164) #18
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %165, i32 noundef %115, i32 noundef 0) #18
  %166 = load ptr, ptr %162, align 8, !tbaa !362
  %167 = getelementptr inbounds i32, ptr %166, i64 %148
  %168 = load i32, ptr %167, align 4, !tbaa !117
  %169 = sub nsw i32 %168, %159
  store i32 %169, ptr %167, align 4, !tbaa !117
  %170 = load ptr, ptr %165, align 8, !tbaa !363
  %171 = getelementptr inbounds i32, ptr %170, i64 %148
  %172 = load i32, ptr %171, align 4, !tbaa !117
  %173 = sub nsw i32 %172, %159
  store i32 %173, ptr %171, align 4, !tbaa !117
  %174 = load i32, ptr %167, align 4, !tbaa !117
  %175 = load i32, ptr %163, align 4, !tbaa !361
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %178, !prof !359

177:                                              ; preds = %160
  store i32 %174, ptr %163, align 4, !tbaa !361
  br label %178

178:                                              ; preds = %177, %160
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 16
  %180 = load ptr, ptr %179, align 8, !tbaa !203
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !359

182:                                              ; preds = %178, %190
  %183 = phi ptr [ %197, %190 ], [ %180, %178 ]
  br label %160

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 6
  %186 = load ptr, ptr %185, align 8, !tbaa !113
  %187 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %186, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !224
  %189 = icmp eq ptr %188, null
  br i1 %189, label %199, label %190, !prof !359

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %188, i64 0, i32 9
  %192 = load ptr, ptr %191, align 8, !tbaa !226
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %161, i64 0, i32 1
  %194 = load i32, ptr %193, align 4, !tbaa !108
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %192, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !102
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %182

199:                                              ; preds = %190, %184, %144, %141, %100, %72, %88, %43, %92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret void
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_dup_num(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !364 !PGOFuncName !365 {
  %3 = icmp slt i32 %0, 0
  %4 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %88, label %7, !prof !366

7:                                                ; preds = %2
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %29, label %12, !prof !367

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %14) #18, !range !107
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17, !prof !368

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %0, 1
  br label %29

19:                                               ; preds = %12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %29, label %21, !prof !369

21:                                               ; preds = %19
  %22 = add nsw i32 %0, -1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %25) #18, !range !107
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 %0, i32 %22, !prof !370
  br label %29

29:                                               ; preds = %21, %19, %17, %7
  %30 = phi i1 [ false, %17 ], [ false, %7 ], [ true, %19 ], [ %27, %21 ]
  %31 = phi i32 [ %18, %17 ], [ %0, %7 ], [ 0, %19 ], [ %28, %21 ]
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  br label %35

35:                                               ; preds = %60, %29
  %36 = phi i32 [ -1, %29 ], [ %61, %60 ]
  %37 = phi i8 [ 0, %29 ], [ %62, %60 ]
  %38 = phi ptr [ %34, %29 ], [ %64, %60 ]
  %39 = load i8, ptr %38, align 1, !tbaa !160
  %40 = sext i8 %39 to i32
  switch i8 %39, label %42 [
    i8 0, label %65
    i8 35, label %60
    i8 44, label %41
  ], !prof !371

41:                                               ; preds = %35
  br label %60

42:                                               ; preds = %35
  %43 = icmp eq i8 %37, 0
  br i1 %43, label %44, label %60, !prof !372

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
  ], !prof !373

45:                                               ; preds = %44
  %46 = tail call i32 @address_operand(ptr noundef %10, i32 noundef 0) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %88

48:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %49 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #20
  %50 = tail call i32 @regclass_for_constraint(i32 noundef %49) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %88, !prof !374

52:                                               ; preds = %48
  %53 = tail call i32 @lookup_constraint(ptr noundef nonnull %38) #20
  %54 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %10, i32 noundef %53) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %88

56:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %57 = icmp eq i32 %36, -1
  %58 = icmp eq i32 %36, %40
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %88, !prof !375

60:                                               ; preds = %56, %44, %35, %41, %52, %45, %42
  %61 = phi i32 [ %36, %41 ], [ %36, %42 ], [ %36, %44 ], [ %36, %52 ], [ %36, %45 ], [ %36, %35 ], [ %40, %56 ]
  %62 = phi i8 [ 0, %41 ], [ 1, %42 ], [ 0, %44 ], [ 0, %52 ], [ 0, %45 ], [ 1, %35 ], [ 0, %56 ]
  %63 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %39) #18
  %64 = getelementptr inbounds i8, ptr %38, i64 %63
  br label %35

65:                                               ; preds = %35
  %66 = icmp eq i32 %36, -1
  br i1 %66, label %88, label %67, !prof !376

67:                                               ; preds = %65
  %68 = add nsw i32 %36, -48
  br i1 %11, label %88, label %69, !prof !377

69:                                               ; preds = %67
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %72) #18, !range !107
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75, !prof !378

75:                                               ; preds = %69
  %76 = add nsw i32 %36, -47
  br label %88

77:                                               ; preds = %69
  %78 = icmp sgt i32 %36, 48
  br i1 %78, label %79, label %86, !prof !379

79:                                               ; preds = %77
  %80 = add nsw i32 %36, -49
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = tail call fastcc zeroext i8 @commutative_constraint_p(ptr noundef %83) #18, !range !107
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %88, !prof !380

86:                                               ; preds = %79, %77
  %87 = select i1 %30, i32 -1, i32 %68, !prof !381
  br label %88

88:                                               ; preds = %44, %44, %44, %44, %44, %48, %56, %45, %52, %79, %86, %67, %75, %65, %2
  %89 = phi i32 [ -1, %2 ], [ -1, %65 ], [ %76, %75 ], [ %68, %67 ], [ %87, %86 ], [ %80, %79 ], [ -1, %52 ], [ -1, %45 ], [ -1, %56 ], [ -1, %48 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ], [ -1, %44 ]
  ret i32 %89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_reg_shuffles(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #7 !prof !382 !PGOFuncName !383 {
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %13 [
    i16 37, label %14
    i16 39, label %7
  ], !prof !384

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %14, label %13, !prof !385

13:                                               ; preds = %4, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 430, ptr noundef nonnull @.str.17) #20
  br label %14

14:                                               ; preds = %4, %7, %13
  %15 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !317
  %16 = icmp sgt i8 %15, 0
  br i1 %16, label %17, label %51, !prof !386

17:                                               ; preds = %14
  %18 = zext i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %46
  %20 = phi i8 [ %15, %17 ], [ %47, %46 ]
  %21 = phi i64 [ 0, %17 ], [ %48, %46 ]
  %22 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !102
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %46 [
    i16 37, label %34
    i16 39, label %26
  ], !prof !387

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !160
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp ne i32 %30, 37
  %32 = icmp eq i64 %21, %18
  %33 = or i1 %32, %31
  br i1 %33, label %46, label %36, !prof !388

34:                                               ; preds = %19
  %35 = icmp eq i64 %21, %18
  br i1 %35, label %46, label %36, !prof !389

36:                                               ; preds = %26, %34
  %37 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %21
  %38 = load i32, ptr %37, align 4, !tbaa !117
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46, !prof !390

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %3, i64 %21
  %42 = load i8, ptr %41, align 1, !tbaa !160
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46, !prof !391

44:                                               ; preds = %40
  tail call fastcc void @process_regs_for_copy(ptr noundef nonnull %0, ptr noundef nonnull %23, i8 noundef zeroext 0, ptr noundef null, i32 noundef %2) #18
  %45 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !317
  br label %46

46:                                               ; preds = %19, %26, %34, %36, %40, %44
  %47 = phi i8 [ %20, %19 ], [ %20, %26 ], [ %20, %34 ], [ %20, %36 ], [ %20, %40 ], [ %45, %44 ]
  %48 = add nuw nsw i64 %21, 1
  %49 = sext i8 %47 to i64
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %19, label %51, !prof !392, !llvm.loop !393

51:                                               ; preds = %46, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @go_through_subreg(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !394 !PGOFuncName !395 {
  store i32 0, ptr %1, align 4, !tbaa !117
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %26, label %6, !prof !396

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %8) #18
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %11, label %20, !prof !397

11:                                               ; preds = %6
  %12 = load i32, ptr %8, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !160
  %17 = lshr i32 %3, 16
  %18 = and i32 %17, 255
  %19 = tail call i32 @subreg_regno_offset(i32 noundef %9, i32 noundef %14, i32 noundef %16, i32 noundef %18) #20
  br label %24

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i32, ptr %21, align 8, !tbaa !160
  %23 = lshr i32 %22, 2
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i32 [ %23, %20 ], [ %19, %11 ]
  store i32 %25, ptr %1, align 4, !tbaa !117
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi ptr [ %8, %24 ], [ %0, %2 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #15 !prof !398 !PGOFuncName !399 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !160
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !400 !PGOFuncName !401 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !355

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #20
  %9 = load ptr, ptr %5, align 8, !tbaa !102
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !357
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !402 !PGOFuncName !403 {
  %4 = load ptr, ptr %0, align 8, !tbaa !102
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45, !prof !404

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !102
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !117
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45, !prof !405

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
  store i32 %2, ptr %25, align 4, !tbaa !117
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !117
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !117
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !117
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !prof !406, !llvm.loop !407

45:                                               ; preds = %41, %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @commutative_constraint_p(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !410 !PGOFuncName !411 {
  %2 = load i8, ptr %0, align 1, !tbaa !160
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4, !prof !412

4:                                                ; preds = %1, %15
  %5 = phi i8 [ %17, %15 ], [ %2, %1 ]
  %6 = phi i8 [ %16, %15 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %15 ], [ %0, %1 ]
  %8 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %5) #18
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  switch i8 %5, label %11 [
    i8 35, label %15
    i8 44, label %10
  ], !prof !413

10:                                               ; preds = %4
  br label %15

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 0
  %13 = icmp eq i8 %5, 37
  %14 = and i1 %12, %13
  br i1 %14, label %19, label %15, !prof !414

15:                                               ; preds = %4, %10, %11
  %16 = phi i8 [ 0, %10 ], [ %6, %11 ], [ 1, %4 ]
  %17 = load i8, ptr %9, align 1, !tbaa !160
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %4, !prof !415

19:                                               ; preds = %11, %15, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %20
}

; Function Attrs: optsize
declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #17 !prof !416 !PGOFuncName !417 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !418
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_copy_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #2 !prof !159 !PGOFuncName !419 {
  store i32 0, ptr %0, align 4, !tbaa !134
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_copy_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !420 !PGOFuncName !421 {
  %3 = load i32, ptr %0, align 4, !tbaa !134
  %4 = load i32, ptr @ira_copies_num, align 4, !tbaa !117
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !185

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_copies, align 8, !tbaa !102
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !422

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !102
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !134
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !235, !llvm.loop !423

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!100}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!36 = !{ptr @ira_build_conflicts, ptr @build_conflict_bit_table, i64 6651}
!37 = !{ptr @ira_build_conflicts, ptr @build_conflicts, i64 6650}
!38 = !{ptr @ira_build_conflicts, ptr @ira_traverse_loop_tree, i64 6650}
!39 = !{ptr @ira_build_conflicts, ptr @propagate_copies, i64 6649}
!40 = !{ptr @ira_build_conflicts, ptr @ira_allocno_iter_init, i64 13302}
!41 = !{ptr @ira_build_conflicts, ptr @ira_allocno_iter_cond, i64 1169620}
!42 = !{ptr @ira_build_conflicts, ptr @ira_free, i64 207811}
!43 = !{ptr @ira_build_conflicts, ptr @print_conflicts, i64 1}
!44 = !{ptr @build_conflict_bit_table, ptr @ira_allocno_iter_init, i64 13303}
!45 = !{ptr @build_conflict_bit_table, ptr @ira_allocno_iter_cond, i64 23317237}
!46 = !{ptr @build_conflict_bit_table, ptr @sparseset_alloc, i64 6651}
!47 = !{ptr @build_conflict_bit_table, ptr @ira_allocate, i64 22449737}
!48 = !{ptr @build_conflict_bit_table, ptr @fprintf, i64 1}
!49 = !{ptr @build_conflict_bit_table, ptr @sparseset_set_bit, i64 524375}
!50 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_init, i64 524375}
!51 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_p, i64 4727553}
!52 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_elm, i64 4203178}
!53 = !{ptr @build_conflict_bit_table, ptr @sparseset_iter_next, i64 4203178}
!54 = !{ptr @build_conflict_bit_table, ptr @sparseset_clear_bit, i64 524375}
!55 = !{ptr @build_conflict_bit_table, ptr @free, i64 6651}
!56 = !{ptr @build_conflicts, ptr @ira_allocate, i64 6652}
!57 = !{ptr @build_conflicts, ptr @max_reg_num, i64 6652}
!58 = !{ptr @build_conflicts, ptr @build_allocno_conflicts, i64 578247}
!59 = !{ptr @build_conflicts, ptr @ira_free, i64 6652}
!60 = !{ptr @add_copies, ptr @add_insn_allocno_copies, i64 1059434}
!61 = !{ptr @propagate_copies, ptr @ira_copy_iter_init, i64 6652}
!62 = !{ptr @propagate_copies, ptr @ira_copy_iter_cond, i64 57364}
!63 = !{ptr @propagate_copies, ptr @ira_add_allocno_copy, i64 25862}
!64 = !{ptr @sparseset_set_bit, ptr @sparseset_bit_p, i64 524532}
!65 = !{ptr @sparseset_set_bit, ptr @sparseset_insert_bit, i64 524531}
!66 = !{ptr @sparseset_bit_p, ptr @fancy_abort, i64 1}
!67 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_init, i64 903108}
!68 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_cond, i64 20817746}
!69 = !{ptr @build_allocno_conflicts, ptr @ira_allocno_set_iter_next, i64 19914638}
!70 = !{ptr @build_allocno_conflicts, ptr @ira_conflict_vector_profitable_p, i64 578332}
!71 = !{ptr @build_allocno_conflicts, ptr @ira_allocate_allocno_conflict_vec, i64 201251}
!72 = !{ptr @add_insn_allocno_copies, ptr @single_set_2, i64 1}
!73 = !{ptr @add_insn_allocno_copies, ptr @side_effects_p, i64 93393}
!74 = !{ptr @add_insn_allocno_copies, ptr @find_reg_note, i64 1370744}
!75 = !{ptr @add_insn_allocno_copies, ptr @process_regs_for_copy, i64 84221}
!76 = !{ptr @add_insn_allocno_copies, ptr @extract_insn, i64 392025}
!77 = !{ptr @add_insn_allocno_copies, ptr @get_dup_num, i64 534504}
!78 = !{ptr @add_insn_allocno_copies, ptr @process_reg_shuffles, i64 174456}
!79 = !{ptr @process_regs_for_copy, ptr @fancy_abort, i64 4}
!80 = !{ptr @process_regs_for_copy, ptr @go_through_subreg, i64 206802}
!81 = !{ptr @process_regs_for_copy, ptr @rhs_regno, i64 206812}
!82 = !{ptr @process_regs_for_copy, ptr @ira_add_allocno_copy, i64 25195}
!83 = !{ptr @process_regs_for_copy, ptr @bitmap_set_bit, i64 25195}
!84 = !{ptr @process_regs_for_copy, ptr @reg_classes_intersect_p, i64 67804}
!85 = !{ptr @process_regs_for_copy, ptr @ira_get_register_move_cost, i64 10}
!86 = !{ptr @process_regs_for_copy, ptr @ira_allocate_and_set_costs, i64 24}
!87 = !{ptr @get_dup_num, ptr @commutative_constraint_p, i64 393857}
!88 = !{ptr @get_dup_num, ptr @address_operand, i64 1}
!89 = !{ptr @get_dup_num, ptr @lookup_constraint, i64 65404}
!90 = !{ptr @get_dup_num, ptr @regclass_for_constraint, i64 65403}
!91 = !{ptr @get_dup_num, ptr @constraint_satisfied_p, i64 1}
!92 = !{ptr @get_dup_num, ptr @insn_constraint_len, i64 118068}
!93 = !{ptr @process_reg_shuffles, ptr @fancy_abort, i64 2}
!94 = !{ptr @process_reg_shuffles, ptr @process_regs_for_copy, i64 21670}
!95 = !{ptr @go_through_subreg, ptr @rhs_regno, i64 2398}
!96 = !{ptr @go_through_subreg, ptr @subreg_regno_offset, i64 1}
!97 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!98 = !{ptr @ira_allocate_and_set_costs, ptr @ira_allocate_cost_vector, i64 6}
!99 = !{ptr @commutative_constraint_p, ptr @insn_constraint_len, i64 8288725}
!100 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!101 = !{!"function_entry_count", i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"any pointer", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !{!"ira-conflicts.c:print_conflicts"}
!107 = !{i8 0, i8 2}
!108 = !{!109, !110, i64 4}
!109 = !{!"ira_allocno", !110, i64 0, !110, i64 4, !110, i64 8, !110, i64 12, !103, i64 16, !103, i64 24, !103, i64 32, !110, i64 40, !110, i64 44, !110, i64 48, !110, i64 52, !110, i64 56, !110, i64 60, !110, i64 64, !110, i64 68, !103, i64 72, !103, i64 80, !103, i64 88, !103, i64 96, !103, i64 104, !103, i64 112, !110, i64 120, !110, i64 124, !103, i64 128, !110, i64 136, !110, i64 140, !111, i64 144, !111, i64 152, !110, i64 160, !110, i64 164, !110, i64 168, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 172, !110, i64 173, !110, i64 173, !110, i64 173, !110, i64 173, !103, i64 176, !103, i64 184, !103, i64 192, !103, i64 200, !103, i64 208, !110, i64 216, !110, i64 220, !103, i64 224, !103, i64 232, !110, i64 240}
!110 = !{!"int", !104, i64 0}
!111 = !{!"long", !104, i64 0}
!112 = !{!109, !110, i64 0}
!113 = !{!109, !103, i64 32}
!114 = !{!115, !103, i64 0}
!115 = !{!"ira_loop_tree_node", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !103, i64 32, !103, i64 40, !103, i64 48, !110, i64 56, !104, i64 60, !103, i64 64, !104, i64 72, !104, i64 76, !103, i64 184, !103, i64 192, !103, i64 200, !103, i64 208}
!116 = !{!115, !103, i64 8}
!117 = !{!110, !110, i64 0}
!118 = !{!109, !103, i64 128}
!119 = !{!120, !110, i64 80}
!120 = !{!"basic_block_def", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !104, i64 32, !103, i64 48, !103, i64 56, !104, i64 64, !111, i64 72, !110, i64 80, !110, i64 84, !110, i64 88, !110, i64 92, !110, i64 96}
!121 = !{!122, !110, i64 0}
!122 = !{!"loop", !110, i64 0, !110, i64 4, !103, i64 8, !103, i64 16, !123, i64 24, !110, i64 32, !110, i64 36, !103, i64 40, !103, i64 48, !103, i64 56, !103, i64 64, !103, i64 72, !124, i64 80, !124, i64 96, !104, i64 112, !104, i64 113, !110, i64 116, !103, i64 120, !103, i64 128, !104, i64 136, !103, i64 144}
!123 = !{!"lpt_decision", !110, i64 0, !110, i64 4}
!124 = !{!"", !111, i64 0, !111, i64 8}
!125 = distinct !{!125, !126}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!109, !111, i64 152}
!128 = !{!111, !111, i64 0}
!129 = !{!109, !110, i64 48}
!130 = !{!109, !111, i64 144}
!131 = distinct !{!131, !126}
!132 = !{!"function_entry_count", i64 26608}
!133 = !{!"ira-conflicts.c:ira_allocno_iter_init"}
!134 = !{!135, !110, i64 0}
!135 = !{!"", !110, i64 0}
!136 = !{!"function_entry_count", i64 2339936}
!137 = !{!"ira-conflicts.c:ira_allocno_iter_cond"}
!138 = !{!"branch_weights", i32 26608, i32 1}
!139 = !{!"branch_weights", i32 42313, i32 2313329}
!140 = !{!"branch_weights", i32 26608, i32 2329033}
!141 = distinct !{!141, !126}
!142 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_init"}
!143 = !{!144, !104, i64 0}
!144 = !{!"", !104, i64 0, !103, i64 8, !110, i64 16, !110, i64 20, !110, i64 24, !110, i64 28, !111, i64 32}
!145 = !{!144, !103, i64 8}
!146 = !{!144, !110, i64 16}
!147 = !{!109, !110, i64 120}
!148 = !{!109, !110, i64 124}
!149 = !{!144, !110, i64 24}
!150 = !{!144, !110, i64 28}
!151 = !{!144, !111, i64 32}
!152 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_cond"}
!153 = !{!144, !110, i64 20}
!154 = distinct !{!154, !126}
!155 = distinct !{!155, !126}
!156 = !{!"ira-conflicts.c:ira_allocno_conflict_iter_next"}
!157 = !{!"ira-conflicts.c:print_hard_reg_set"}
!158 = distinct !{!158, !126}
!159 = !{!"function_entry_count", i64 6652}
!160 = !{!104, !104, i64 0}
!161 = !{!"branch_weights", i32 1, i32 6653}
!162 = !{!"branch_weights", i32 44269063, i32 6653}
!163 = !{!"branch_weights", i32 1, i32 6652}
!164 = !{!"branch_weights", i32 377082, i32 201252}
!165 = !{!"branch_weights", i32 6652, i32 571681}
!166 = distinct !{!166, !126}
!167 = !{!"branch_weights", i32 1, i32 578333}
!168 = !{!109, !110, i64 168}
!169 = !{!170, !103, i64 0}
!170 = !{!"reg_attrs", !103, i64 0, !111, i64 8}
!171 = !{!"branch_weights", i32 411819, i32 166515}
!172 = distinct !{!172, !126}
!173 = !{!"branch_weights", i32 561671, i32 -556479006}
!174 = !{!"ira-conflicts.c:build_conflict_bit_table"}
!175 = !{!"branch_weights", i32 6653, i32 578333}
!176 = !{!"branch_weights", i32 7194, i32 571140}
!177 = distinct !{!177, !126}
!178 = !{!179, !110, i64 8}
!179 = !{!"param_info", !103, i64 0, !110, i64 8, !104, i64 12, !110, i64 16, !110, i64 20, !103, i64 24}
!180 = !{!"branch_weights", i32 1, i32 571140}
!181 = !{!"branch_weights", i32 1, i32 127}
!182 = distinct !{!182, !126}
!183 = !{!"branch_weights", i32 127, i32 851329}
!184 = !{!"branch_weights", i32 6653, i32 44269063}
!185 = !{!"branch_weights", i32 6652, i32 1}
!186 = !{!"branch_weights", i32 187943, i32 524533}
!187 = !{!188, !103, i64 0}
!188 = !{!"ira_allocno_live_range", !103, i64 0, !110, i64 8, !110, i64 12, !103, i64 16, !103, i64 24, !103, i64 32}
!189 = !{!109, !110, i64 136}
!190 = !{!"branch_weights", i32 1, i32 524532}
!191 = !{!"branch_weights", i32 539953972, i32 -520916397}
!192 = !{!"branch_weights", i32 524532, i32 3679910}
!193 = distinct !{!193, !126}
!194 = !{!"branch_weights", i32 524533, i32 0}
!195 = distinct !{!195, !126}
!196 = distinct !{!196, !126}
!197 = !{!"branch_weights", i32 705824, i32 6652}
!198 = distinct !{!198, !126}
!199 = !{!"ira-conflicts.c:build_conflicts"}
!200 = !{!"branch_weights", i32 961417, i32 6652}
!201 = distinct !{!201, !126}
!202 = !{!"branch_weights", i32 588666, i32 379403}
!203 = !{!109, !103, i64 80}
!204 = !{!"branch_weights", i32 180472, i32 198931}
!205 = !{!"branch_weights", i32 198931, i32 0}
!206 = distinct !{!206, !126}
!207 = !{!"branch_weights", i32 379403, i32 0}
!208 = distinct !{!208, !126}
!209 = !{!"function_entry_count", i64 275567}
!210 = !{!"ira-conflicts.c:add_copies"}
!211 = !{!"branch_weights", i32 18394, i32 257175}
!212 = !{!"branch_weights", i32 1, i32 5699}
!213 = !{!214, !103, i64 8}
!214 = !{!"rtl_bb_info", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !110, i64 32}
!215 = !{!"branch_weights", i32 257175, i32 1536489}
!216 = !{!"branch_weights", i32 1048097269, i32 -1816786787}
!217 = !{!"branch_weights", i32 5699, i32 1782265}
!218 = distinct !{!218, !126}
!219 = !{!"ira-conflicts.c:propagate_copies"}
!220 = !{!221, !103, i64 8}
!221 = !{!"ira_allocno_copy", !110, i64 0, !103, i64 8, !103, i64 16, !110, i64 24, !104, i64 28, !103, i64 32, !103, i64 40, !103, i64 48, !103, i64 56, !103, i64 64, !103, i64 72}
!222 = !{!221, !103, i64 16}
!223 = !{!"branch_weights", i32 24853, i32 25868}
!224 = !{!115, !103, i64 48}
!225 = !{!"branch_weights", i32 888, i32 24981}
!226 = !{!115, !103, i64 64}
!227 = !{!"branch_weights", i32 20, i32 25849}
!228 = !{!"branch_weights", i32 51, i32 25818}
!229 = !{!"branch_weights", i32 17856, i32 7963}
!230 = !{!"branch_weights", i32 7962, i32 2}
!231 = !{!221, !110, i64 24}
!232 = !{!221, !104, i64 28}
!233 = !{!221, !103, i64 32}
!234 = !{!221, !103, i64 72}
!235 = !{!"branch_weights", i32 6652, i32 44068}
!236 = distinct !{!236, !126}
!237 = !{!"function_entry_count", i64 524532}
!238 = !{!"ira-conflicts.c:sparseset_set_bit"}
!239 = !{!"branch_weights", i32 524533, i32 1}
!240 = !{!241, !110, i64 16}
!241 = !{!"sparseset_def", !103, i64 0, !103, i64 8, !110, i64 16, !110, i64 20, !110, i64 24, !104, i64 28, !104, i64 29, !104, i64 32}
!242 = !{!"ira-conflicts.c:sparseset_iter_init"}
!243 = !{!241, !110, i64 24}
!244 = !{!241, !104, i64 28}
!245 = !{!241, !104, i64 29}
!246 = !{!"function_entry_count", i64 4728973}
!247 = !{!"ira-conflicts.c:sparseset_iter_p"}
!248 = !{!"branch_weights", i32 1, i32 4728974}
!249 = !{!"branch_weights", i32 4204442, i32 524533}
!250 = !{!"function_entry_count", i64 4204441}
!251 = !{!"ira-conflicts.c:sparseset_iter_elm"}
!252 = !{!241, !103, i64 0}
!253 = !{!"ira-conflicts.c:sparseset_iter_next"}
!254 = !{!"ira-conflicts.c:sparseset_bit_p"}
!255 = !{!241, !110, i64 20}
!256 = !{!241, !103, i64 8}
!257 = !{!"branch_weights", i32 410701, i32 113833}
!258 = !{!"ira-conflicts.c:sparseset_insert_bit"}
!259 = !{!"function_entry_count", i64 578332}
!260 = !{!"ira-conflicts.c:build_allocno_conflicts"}
!261 = !{!"branch_weights", i32 1, i32 578332}
!262 = !{!"branch_weights", i32 578332, i32 11242573}
!263 = distinct !{!263, !126}
!264 = !{!109, !110, i64 160}
!265 = !{!"branch_weights", i32 7194, i32 369889}
!266 = !{!109, !110, i64 140}
!267 = !{!"branch_weights", i32 379403, i32 198931}
!268 = !{!"branch_weights", i32 253557, i32 125847}
!269 = !{!"branch_weights", i32 1, i32 125847}
!270 = !{!"branch_weights", i32 1, i32 324776}
!271 = !{!"branch_weights", i32 4072167, i32 4021623}
!272 = !{!"branch_weights", i32 1, i32 4072167}
!273 = !{!"branch_weights", i32 324776, i32 7769013}
!274 = distinct !{!274, !126}
!275 = !{!"function_entry_count", i64 903108}
!276 = !{!"ira-conflicts.c:ira_allocno_set_iter_init"}
!277 = !{!278, !103, i64 0}
!278 = !{!"", !103, i64 0, !110, i64 8, !110, i64 12, !110, i64 16, !110, i64 20, !111, i64 24}
!279 = !{!278, !110, i64 8}
!280 = !{!"branch_weights", i32 7194, i32 895916}
!281 = !{!278, !110, i64 12}
!282 = !{!278, !110, i64 20}
!283 = !{!278, !110, i64 16}
!284 = !{!278, !111, i64 24}
!285 = !{!"function_entry_count", i64 20817800}
!286 = !{!"ira-conflicts.c:ira_allocno_set_iter_cond"}
!287 = !{!"branch_weights", i32 16144924, i32 3769769}
!288 = !{!"branch_weights", i32 19914692, i32 1}
!289 = !{!"branch_weights", i32 15241816, i32 903109}
!290 = !{!"branch_weights", i32 0, i32 16144924}
!291 = distinct !{!291, !126}
!292 = !{!"branch_weights", i32 78362436, i32 19914692}
!293 = distinct !{!293, !126}
!294 = !{!"function_entry_count", i64 19914692}
!295 = !{!"ira-conflicts.c:ira_allocno_set_iter_next"}
!296 = !{!"function_entry_count", i64 1079805}
!297 = !{!"ira-conflicts.c:add_insn_allocno_copies"}
!298 = !{!"branch_weights", i32 1079806, i32 1}
!299 = !{!300, !103, i64 8}
!300 = !{!"function", !103, i64 0, !103, i64 8, !103, i64 16, !103, i64 24, !103, i64 32, !103, i64 40, !103, i64 48, !103, i64 56, !103, i64 64, !103, i64 72, !103, i64 80, !103, i64 88, !103, i64 96, !110, i64 104, !110, i64 108, !110, i64 112, !110, i64 116, !110, i64 120, !110, i64 124, !103, i64 128, !110, i64 136, !110, i64 137, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 138, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139, !110, i64 139}
!301 = !{!302, !103, i64 0}
!302 = !{!"control_flow_graph", !103, i64 0, !103, i64 8, !103, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !103, i64 40, !110, i64 48, !104, i64 52, !104, i64 60, !110, i64 68, !110, i64 72}
!303 = !{!120, !111, i64 72}
!304 = !{!120, !110, i64 88}
!305 = !{!"branch_weights", i32 1, i32 716049}
!306 = !{!"branch_weights", i32 -223890275, i32 3770}
!307 = !{!"branch_weights", i32 972191, i32 1}
!308 = !{!"branch_weights", i32 63189876, i32 2084293772}
!309 = !{!"branch_weights", i32 -1273775004, i32 -132809701, i32 1381319}
!310 = !{!"branch_weights", i32 201, i32 1}
!311 = !{!"branch_weights", i32 -142180021, i32 726729514, i32 1828946}
!312 = !{!"branch_weights", i32 227, i32 1}
!313 = !{!"branch_weights", i32 90424, i32 1}
!314 = !{!"branch_weights", i32 90198, i32 227}
!315 = !{!"branch_weights", i32 14162, i32 76263}
!316 = !{!"branch_weights", i32 610539, i32 393006}
!317 = !{!318, !104, i64 1086}
!318 = !{!"recog_data", !104, i64 0, !104, i64 240, !104, i64 480, !104, i64 720, !104, i64 840, !104, i64 960, !104, i64 1072, !104, i64 1086, !104, i64 1087, !104, i64 1088, !104, i64 1089, !103, i64 1120}
!319 = !{!"branch_weights", i32 393005, i32 1}
!320 = !{!"branch_weights", i32 -2147483648, i32 0}
!321 = !{!"branch_weights", i32 -1922524935, i32 1142579090, i32 14371006}
!322 = !{!"branch_weights", i32 3328, i32 1}
!323 = !{!"branch_weights", i32 9772, i32 526072}
!324 = !{!"branch_weights", i32 499525, i32 6568848, i32 26825}
!325 = !{!"branch_weights", i32 37, i32 1}
!326 = !{!"branch_weights", i32 8927, i32 158}
!327 = !{!"branch_weights", i32 3615, i32 5470}
!328 = !{!"branch_weights", i32 267921, i32 267922}
!329 = distinct !{!329, !126}
!330 = !{!"branch_weights", i32 424320, i32 393005}
!331 = distinct !{!331, !126}
!332 = !{!"branch_weights", i32 93029, i32 174894}
!333 = distinct !{!333, !126}
!334 = !{!"function_entry_count", i64 103401}
!335 = !{!"ira-conflicts.c:process_regs_for_copy"}
!336 = !{!"branch_weights", i32 2168, i32 219578715, i32 4700224}
!337 = !{!"branch_weights", i32 2168, i32 1}
!338 = !{!"branch_weights", i32 231, i32 23935904, i32 53361}
!339 = !{!"branch_weights", i32 231, i32 1}
!340 = !{!"branch_weights", i32 101235, i32 2168}
!341 = !{!"branch_weights", i32 13561, i32 89842}
!342 = !{!"branch_weights", i32 1, i32 13561}
!343 = !{!"branch_weights", i32 54257, i32 35586}
!344 = !{!"branch_weights", i32 422, i32 35165}
!345 = !{!"branch_weights", i32 715, i32 34451}
!346 = !{!"branch_weights", i32 24088, i32 10364}
!347 = !{!"branch_weights", i32 25197, i32 27}
!348 = !{!115, !103, i64 208}
!349 = !{!221, !110, i64 0}
!350 = !{!"branch_weights", i32 67817, i32 1}
!351 = !{!109, !110, i64 8}
!352 = !{!"branch_weights", i32 -1995903151, i32 339054}
!353 = !{!"branch_weights", i32 9, i32 67801}
!354 = !{!"branch_weights", i32 67801, i32 9}
!355 = !{!"branch_weights", i32 1, i32 9}
!356 = !{!"branch_weights", i32 1, i32 67809}
!357 = !{!358, !358, i64 0}
!358 = !{!"short", !104, i64 0}
!359 = !{!"branch_weights", i32 9, i32 1}
!360 = !{i32 0, i32 65536}
!361 = !{!109, !110, i64 52}
!362 = !{!109, !103, i64 184}
!363 = !{!109, !103, i64 200}
!364 = !{!"function_entry_count", i64 535842}
!365 = !{!"ira-conflicts.c:get_dup_num"}
!366 = !{!"branch_weights", i32 31129129, i32 -2082902736}
!367 = !{!"branch_weights", i32 264205, i32 264205}
!368 = !{!"branch_weights", i32 245433, i32 18773}
!369 = !{!"branch_weights", i32 120315, i32 125119}
!370 = !{!"branch_weights", i32 117957, i32 7163}
!371 = !{!"branch_weights", i32 -320021395, i32 71454139, i32 5164, i32 325597456}
!372 = !{!"branch_weights", i32 769578, i32 1}
!373 = !{!"branch_weights", i32 4, i32 1, i32 1294, i32 1, i32 1, i32 1, i32 1, i32 1, i32 206098, i32 1, i32 1, i32 1, i32 1, i32 139, i32 139, i32 69195, i32 242221, i32 85, i32 1, i32 1, i32 139, i32 13, i32 13, i32 139, i32 1, i32 759, i32 1, i32 1, i32 1, i32 2447, i32 1, i32 3267, i32 795, i32 1, i32 1223, i32 1, i32 1, i32 1, i32 8667, i32 47430, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!374 = !{!"branch_weights", i32 33044, i32 2147450604}
!375 = !{!"branch_weights", i32 -2078772924, i32 31900}
!376 = !{!"branch_weights", i32 815, i32 13020}
!377 = !{!"branch_weights", i32 7219, i32 5802}
!378 = !{!"branch_weights", i32 5802, i32 1}
!379 = !{!"branch_weights", i32 139, i32 5664}
!380 = !{!"branch_weights", i32 139, i32 1}
!381 = !{!"branch_weights", i32 3249, i32 2554}
!382 = !{!"function_entry_count", i64 174893}
!383 = !{!"ira-conflicts.c:process_reg_shuffles"}
!384 = !{!"branch_weights", i32 3098, i32 532398903, i32 9597604}
!385 = !{!"branch_weights", i32 3098, i32 1}
!386 = !{!"branch_weights", i32 174893, i32 1}
!387 = !{!"branch_weights", i32 1506954901, i32 -2131026484, i32 33597786}
!388 = !{!"branch_weights", i32 599061009, i32 167978016}
!389 = !{!"branch_weights", i32 174894, i32 49059}
!390 = !{!"branch_weights", i32 28918, i32 20142}
!391 = !{!"branch_weights", i32 21671, i32 7248}
!392 = !{!"branch_weights", i32 202634, i32 174893}
!393 = distinct !{!393, !126}
!394 = !{!"function_entry_count", i64 206802}
!395 = !{!"ira-conflicts.c:go_through_subreg"}
!396 = !{!"branch_weights", i32 204406, i32 2398}
!397 = !{!"branch_weights", i32 1, i32 2398}
!398 = !{!"function_entry_count", i64 708979}
!399 = !{!"ira-conflicts.c:rhs_regno"}
!400 = !{!"function_entry_count", i64 8}
!401 = !{!"ira-conflicts.c:ira_get_register_move_cost"}
!402 = !{!"function_entry_count", i64 16}
!403 = !{!"ira-conflicts.c:ira_allocate_and_set_costs"}
!404 = !{!"branch_weights", i32 7, i32 11}
!405 = !{!"branch_weights", i32 223, i32 1}
!406 = !{!"branch_weights", i32 223, i32 0}
!407 = distinct !{!407, !126, !408, !409}
!408 = !{!"llvm.loop.isvectorized", i32 1}
!409 = !{!"llvm.loop.unroll.runtime.disable"}
!410 = !{!"function_entry_count", i64 395261}
!411 = !{!"ira-conflicts.c:commutative_constraint_p"}
!412 = !{!"branch_weights", i32 1, i32 369327}
!413 = !{!"branch_weights", i32 -1466519059, i32 504, i32 1340336764}
!414 = !{!"branch_weights", i32 17752102, i32 -474611532}
!415 = !{!"branch_weights", i32 369327, i32 7895137}
!416 = !{!"function_entry_count", i64 8582502}
!417 = !{!"ira-conflicts.c:insn_constraint_len"}
!418 = !{!"branch_weights", i32 226080, i32 8356424}
!419 = !{!"ira-conflicts.c:ira_copy_iter_init"}
!420 = !{!"function_entry_count", i64 57371}
!421 = !{!"ira-conflicts.c:ira_copy_iter_cond"}
!422 = !{!"branch_weights", i32 1, i32 50720}
!423 = distinct !{!423, !126}

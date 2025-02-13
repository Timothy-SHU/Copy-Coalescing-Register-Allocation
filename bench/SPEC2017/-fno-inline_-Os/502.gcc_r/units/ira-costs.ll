; ModuleID = 'ira-costs.c'
source_filename = "ira-costs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.costs = type { i32, [1 x i32] }
%struct.ira_allocno_iterator = type { i32 }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.secondary_reload_info = type { i32, i32, ptr, i32 }

@init_cost = internal unnamed_addr global ptr null, align 8
@op_costs = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@this_op_costs = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@temp_costs = internal unnamed_addr global ptr null, align 8
@cost_classes = internal unnamed_addr global ptr null, align 8
@ira_important_classes_num = external local_unnamed_addr global i32, align 4
@max_struct_costs_size = internal unnamed_addr global i32 0, align 4
@allocno_p = internal unnamed_addr global i1 false, align 1
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@cost_elements_num = internal unnamed_addr global i32 0, align 4
@total_allocno_costs = internal unnamed_addr global ptr null, align 8
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@pseudo_classes_defined_p = internal unnamed_addr global i1 false, align 1
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@call_used_reg_set = external local_unnamed_addr global i64, align 8
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@costs = internal unnamed_addr global ptr null, align 8
@pref_buffer = internal unnamed_addr global ptr null, align 8
@regno_cover_class = internal unnamed_addr global ptr null, align 8
@pref = internal unnamed_addr global ptr null, align 8
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"\0APass %i for finding pseudo/allocno costs\0A\0A\00", align 1
@cost_class_nums = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@cost_classes_num = internal unnamed_addr global i32 0, align 4
@ira_important_classes = external local_unnamed_addr global [27 x i32], align 16
@struct_costs_size = internal unnamed_addr global i32 0, align 4
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@flag_ira_region = external local_unnamed_addr global i32, align 4
@contains_reg_of_mode = external local_unnamed_addr global [27 x [87 x i8]], align 16
@ira_reg_class_union = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"    r%d: preferred %s, alternative %s, cover %s\0A\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@ira_class_subset_p = external local_unnamed_addr global [27 x [27 x i32]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"    a%d (r%d,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c") best %s, cover %s\0A\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@frequency = internal unnamed_addr global i32 0, align 4
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@reg_renumber = external local_unnamed_addr global ptr, align 8
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_in_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_may_move_out_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_reg_class_intersect = external local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@move_cost = external local_unnamed_addr global [87 x ptr], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"  a%d(r%d,\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c") costs:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s:%d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  r%d costs:\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@optimize = external local_unnamed_addr global i32, align 4
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_allocnos = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ira_init_costs_once() local_unnamed_addr #0 !prof !114 {
  store ptr null, ptr @init_cost, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @op_costs, i8 0, i64 240, i1 false), !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @this_op_costs, i8 0, i64 240, i1 false), !tbaa !115
  store ptr null, ptr @temp_costs, align 8, !tbaa !115
  store ptr null, ptr @cost_classes, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_costs() local_unnamed_addr #2 !prof !114 {
  tail call fastcc void @free_ira_costs() #16
  %1 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %2 = shl i32 %1, 2
  %3 = add i32 %2, 4
  store i32 %3, ptr @max_struct_costs_size, align 4, !tbaa !119
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #17
  store ptr %5, ptr @init_cost, align 8, !tbaa !115
  store i32 1000000, ptr %5, align 4, !tbaa !121
  %6 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15, !prof !123

8:                                                ; preds = %0, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.costs, ptr %5, i64 0, i32 1, i64 %9
  store i32 1000000, ptr %10, align 4, !tbaa !119
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %8, label %15, !prof !124, !llvm.loop !125

15:                                               ; preds = %8, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ %26, %16 ], [ 0, %15 ]
  %18 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xmalloc(i64 noundef %19) #17
  %21 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %17
  store ptr %20, ptr %21, align 8, !tbaa !115
  %22 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %17
  store ptr %24, ptr %25, align 8, !tbaa !115
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 30
  br i1 %27, label %28, label %16, !prof !127, !llvm.loop !128

28:                                               ; preds = %16
  %29 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #17
  store ptr %31, ptr @temp_costs, align 8, !tbaa !115
  %32 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #17
  store ptr %35, ptr @cost_classes, align 8, !tbaa !115
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ira_costs() unnamed_addr #2 !prof !129 !PGOFuncName !130 {
  %1 = load ptr, ptr @init_cost, align 8, !tbaa !115
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !131

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @init_cost, align 8, !tbaa !115
  br label %5

5:                                                ; preds = %4, %16
  %6 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !132

10:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !132

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !115
  store ptr null, ptr %7, align 8, !tbaa !115
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 30
  br i1 %18, label %19, label %5, !prof !133, !llvm.loop !134

19:                                               ; preds = %16
  %20 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !131

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #16
  br label %23

23:                                               ; preds = %22, %19
  store ptr null, ptr @temp_costs, align 8, !tbaa !115
  %24 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !131

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %24) #16
  br label %27

27:                                               ; preds = %26, %23
  store ptr null, ptr @cost_classes, align 8, !tbaa !115
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_costs_once() local_unnamed_addr #2 !prof !114 {
  tail call fastcc void @free_ira_costs() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_costs() local_unnamed_addr #2 !prof !135 {
  store i1 true, ptr @allocno_p, align 1
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !119
  store i32 %1, ptr @cost_elements_num, align 4, !tbaa !119
  tail call fastcc void @init_costs() #16
  %2 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !119
  %4 = mul nsw i32 %3, %2
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #17
  store ptr %6, ptr @total_allocno_costs, align 8, !tbaa !115
  %7 = load ptr, ptr @ira_dump_file, align 8, !tbaa !115
  tail call fastcc void @find_costs_and_classes(ptr noundef %7) #16
  tail call fastcc void @setup_allocno_cover_class_and_costs() #16
  tail call fastcc void @finish_costs() #16
  %8 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !115
  tail call void @ira_free(ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_costs() unnamed_addr #2 !prof !135 !PGOFuncName !136 {
  tail call void @init_subregs_of_mode() #17
  %1 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %2 = load i32, ptr @cost_elements_num, align 4, !tbaa !119
  %3 = mul nsw i32 %2, %1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #17
  store ptr %5, ptr @costs, align 8, !tbaa !115
  %6 = load i32, ptr @cost_elements_num, align 4, !tbaa !119
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #17
  store ptr %9, ptr @pref_buffer, align 8, !tbaa !115
  %10 = tail call i32 @max_reg_num() #17
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #17
  store ptr %13, ptr @regno_cover_class, align 8, !tbaa !115
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_costs_and_classes(ptr noundef %0) unnamed_addr #2 !prof !135 !PGOFuncName !137 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  tail call void @init_recog() #17
  store ptr null, ptr @pref, align 8, !tbaa !115
  %4 = tail call zeroext i8 @resize_reg_info() #17
  %5 = icmp eq i8 %4, 0
  %6 = load i1, ptr @allocno_p, align 1
  %7 = select i1 %5, i1 %6, i1 false
  %8 = load i1, ptr @pseudo_classes_defined_p, align 1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %34, !prof !138

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %11 = load ptr, ptr @pref_buffer, align 8, !tbaa !115
  store ptr %11, ptr @pref, align 8, !tbaa !115
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %12 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !139
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %35

18:                                               ; preds = %10, %18
  %19 = load ptr, ptr %2, align 8, !tbaa !115
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = tail call i32 @reg_preferred_class(i32 noundef %21) #17
  %23 = load ptr, ptr @pref, align 8, !tbaa !115
  %24 = load i32, ptr %19, align 8, !tbaa !143
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %22, ptr %26, align 4, !tbaa !119
  %27 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !139
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !144

29:                                               ; preds = %18
  %30 = load i1, ptr @allocno_p, align 1
  %31 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br i1 %30, label %35, label %37, !prof !145

34:                                               ; preds = %1
  br i1 %6, label %35, label %37, !prof !146

35:                                               ; preds = %14, %29, %34
  %36 = phi i32 [ %33, %29 ], [ 0, %34 ], [ %17, %14 ]
  store i1 false, ptr @pseudo_classes_defined_p, align 1
  br label %37

37:                                               ; preds = %29, %35, %34
  %38 = phi i32 [ %33, %29 ], [ %36, %35 ], [ 0, %34 ]
  %39 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %536, label %41, !prof !147

41:                                               ; preds = %37
  %42 = icmp ne ptr %0, null
  %43 = load i32, ptr @internal_flag_ira_verbose, align 4
  br label %44

44:                                               ; preds = %41, %531
  %45 = phi i32 [ %43, %41 ], [ %532, %531 ]
  %46 = phi i32 [ %38, %41 ], [ %533, %531 ]
  %47 = load i1, ptr @allocno_p, align 1
  %48 = xor i1 %47, true
  %49 = icmp sgt i32 %45, 0
  %50 = select i1 %48, i1 true, i1 %49
  %51 = and i1 %42, %50
  br i1 %51, label %52, label %54, !prof !148

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %46) #16
  br label %54

54:                                               ; preds = %44, %52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cost_class_nums, i8 -1, i64 108, i1 false), !tbaa !119
  %55 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %73, !prof !149

57:                                               ; preds = %54
  %58 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %67, %59 ]
  %61 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !119
  %63 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %62, ptr %63, align 4, !tbaa !119
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %64
  %66 = trunc i64 %60 to i32
  store i32 %66, ptr %65, align 4, !tbaa !119
  %67 = add nuw nsw i64 %60, 1
  %68 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !119
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %59, label %71, !prof !150, !llvm.loop !151

71:                                               ; preds = %59
  %72 = trunc i64 %67 to i32
  br label %73

73:                                               ; preds = %71, %54
  %74 = phi i32 [ 0, %54 ], [ %72, %71 ]
  store i32 %74, ptr @cost_classes_num, align 4, !tbaa !119
  %75 = shl i32 %74, 2
  %76 = add i32 %75, 4
  store i32 %76, ptr @struct_costs_size, align 4, !tbaa !119
  %77 = load ptr, ptr @costs, align 8, !tbaa !115
  %78 = load i32, ptr @cost_elements_num, align 4, !tbaa !119
  %79 = mul nsw i32 %78, %76
  %80 = sext i32 %79 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %77, i8 0, i64 %80, i1 false)
  %81 = load i1, ptr @allocno_p, align 1
  br i1 %81, label %82, label %90, !prof !152

82:                                               ; preds = %73
  %83 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !115
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %83, ptr noundef nonnull @process_bb_node_for_costs, ptr noundef null) #17
  %84 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !115
  %85 = load ptr, ptr @costs, align 8, !tbaa !115
  %86 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !119
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !119
  %88 = mul nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 %89, i1 false)
  br label %110

90:                                               ; preds = %73
  %91 = load ptr, ptr @cfun, align 8, !tbaa !115
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !153
  %94 = load ptr, ptr %93, align 8, !tbaa !155
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !157
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !159
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90, %100
  %101 = phi ptr [ %103, %100 ], [ %96, %90 ]
  tail call fastcc void @process_bb_for_costs(ptr noundef %101) #16
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !157
  %104 = load ptr, ptr @cfun, align 8, !tbaa !115
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !153
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !159
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %100, !llvm.loop !160

110:                                              ; preds = %100, %90, %82
  %111 = icmp eq i32 %46, 0
  br i1 %111, label %112, label %114, !prof !161

112:                                              ; preds = %110
  %113 = load ptr, ptr @pref_buffer, align 8, !tbaa !115
  store ptr %113, ptr @pref, align 8, !tbaa !115
  br label %114

114:                                              ; preds = %112, %110
  %115 = tail call i32 @max_reg_num() #17
  %116 = icmp sgt i32 %115, 53
  br i1 %116, label %117, label %520, !prof !149

117:                                              ; preds = %114
  %118 = zext nneg i32 %115 to i64
  br label %119

119:                                              ; preds = %117, %518
  %120 = phi i64 [ %118, %117 ], [ %121, %518 ]
  %121 = add nsw i64 %120, -1
  %122 = load i1, ptr @allocno_p, align 1
  br i1 %122, label %135, label %123, !prof !162

123:                                              ; preds = %119
  %124 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %125 = getelementptr inbounds ptr, ptr %124, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !115
  %127 = icmp eq ptr %126, null
  br i1 %127, label %518, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %130 = load ptr, ptr @costs, align 8, !tbaa !115
  %131 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %121, %132
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %129, ptr align 4 %134, i64 %132, i1 false)
  br label %233

135:                                              ; preds = %119
  %136 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !115
  %137 = getelementptr inbounds ptr, ptr %136, i64 %121
  %138 = load ptr, ptr %137, align 8, !tbaa !115
  %139 = icmp eq ptr %138, null
  br i1 %139, label %518, label %140, !prof !163

140:                                              ; preds = %135
  %141 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %142 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %143 = sext i32 %142 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %141, i8 0, i64 %143, i1 false)
  %144 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !115
  %145 = getelementptr inbounds ptr, ptr %144, i64 %121
  %146 = load ptr, ptr %145, align 8, !tbaa !115
  %147 = icmp eq ptr %146, null
  br i1 %147, label %233, label %148, !prof !164

148:                                              ; preds = %140, %225
  %149 = phi i32 [ %206, %225 ], [ %142, %140 ]
  %150 = phi ptr [ %231, %225 ], [ %146, %140 ]
  %151 = load i32, ptr %150, align 8, !tbaa !143
  %152 = load i32, ptr @flag_ira_region, align 4
  %153 = add i32 %152, -1
  %154 = icmp ult i32 %153, 2
  br i1 %154, label %155, label %205, !prof !165

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !166
  %158 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !167
  %160 = icmp eq ptr %159, null
  br i1 %160, label %205, label %161, !prof !169

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %159, i64 0, i32 9
  %163 = load ptr, ptr %162, align 8, !tbaa !170
  %164 = getelementptr inbounds ptr, ptr %163, i64 %121
  %165 = load ptr, ptr %164, align 8, !tbaa !115
  %166 = icmp eq ptr %165, null
  br i1 %166, label %205, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 13
  %169 = load ptr, ptr %168, align 8, !tbaa !171
  %170 = tail call i32 @bitmap_bit_p(ptr noundef %169, i32 noundef %151) #17
  %171 = icmp eq i32 %170, 0
  %172 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  br i1 %171, label %205, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %165, align 8, !tbaa !143
  %175 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %176 = icmp sgt i32 %175, 0
  %177 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !115
  %178 = mul nsw i32 %172, %151
  %179 = sext i32 %178 to i64
  br i1 %176, label %183, label %180

180:                                              ; preds = %173
  %181 = mul nsw i32 %172, %174
  %182 = sext i32 %181 to i64
  br label %198

183:                                              ; preds = %173
  %184 = getelementptr inbounds i8, ptr %177, i64 %179
  %185 = mul nsw i32 %172, %174
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %177, i64 %186
  %188 = zext nneg i32 %175 to i64
  br label %189

189:                                              ; preds = %183, %189
  %190 = phi i64 [ 0, %183 ], [ %196, %189 ]
  %191 = getelementptr inbounds %struct.costs, ptr %184, i64 0, i32 1, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !119
  %193 = getelementptr inbounds %struct.costs, ptr %187, i64 0, i32 1, i64 %190
  %194 = load i32, ptr %193, align 4, !tbaa !119
  %195 = add nsw i32 %194, %192
  store i32 %195, ptr %193, align 4, !tbaa !119
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %188
  br i1 %197, label %198, label %189, !llvm.loop !172

198:                                              ; preds = %189, %180
  %199 = phi i64 [ %182, %180 ], [ %186, %189 ]
  %200 = getelementptr inbounds i8, ptr %177, i64 %179
  %201 = load i32, ptr %200, align 4, !tbaa !121
  %202 = getelementptr inbounds i8, ptr %177, i64 %199
  %203 = load i32, ptr %202, align 4, !tbaa !121
  %204 = add nsw i32 %203, %201
  store i32 %204, ptr %202, align 4, !tbaa !121
  br label %205

205:                                              ; preds = %148, %198, %167, %161, %155
  %206 = phi i32 [ %149, %148 ], [ %172, %198 ], [ %172, %167 ], [ %149, %161 ], [ %149, %155 ]
  %207 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %208 = icmp sgt i32 %207, 0
  %209 = load ptr, ptr @costs, align 8, !tbaa !115
  %210 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %211 = mul nsw i32 %206, %151
  %212 = sext i32 %211 to i64
  br i1 %208, label %213, label %225, !prof !173

213:                                              ; preds = %205
  %214 = getelementptr inbounds i8, ptr %209, i64 %212
  %215 = zext nneg i32 %207 to i64
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ 0, %213 ], [ %223, %216 ]
  %218 = getelementptr inbounds %struct.costs, ptr %214, i64 0, i32 1, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !119
  %220 = getelementptr inbounds %struct.costs, ptr %210, i64 0, i32 1, i64 %217
  %221 = load i32, ptr %220, align 4, !tbaa !119
  %222 = add nsw i32 %221, %219
  store i32 %222, ptr %220, align 4, !tbaa !119
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %225, label %216, !prof !174, !llvm.loop !175

225:                                              ; preds = %216, %205
  %226 = getelementptr inbounds i8, ptr %209, i64 %212
  %227 = load i32, ptr %226, align 4, !tbaa !121
  %228 = load i32, ptr %210, align 4, !tbaa !121
  %229 = add nsw i32 %228, %227
  store i32 %229, ptr %210, align 4, !tbaa !121
  %230 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 5
  %231 = load ptr, ptr %230, align 8, !tbaa !115
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %148, !prof !173, !llvm.loop !176

233:                                              ; preds = %225, %140, %128
  %234 = phi ptr [ %141, %140 ], [ %129, %128 ], [ %210, %225 ]
  %235 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %307, !prof !173

237:                                              ; preds = %233
  %238 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %239 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %240 = trunc i64 %121 to i32
  br label %241

241:                                              ; preds = %237, %295
  %242 = phi ptr [ %239, %237 ], [ %296, %295 ]
  %243 = phi ptr [ %238, %237 ], [ %297, %295 ]
  %244 = phi i64 [ 0, %237 ], [ %301, %295 ]
  %245 = phi i32 [ 0, %237 ], [ %300, %295 ]
  %246 = phi i32 [ 26, %237 ], [ %299, %295 ]
  %247 = phi i32 [ 1073741823, %237 ], [ %298, %295 ]
  %248 = getelementptr inbounds i32, ptr %243, i64 %244
  %249 = load i32, ptr %248, align 4, !tbaa !119
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %242, i64 %121
  %252 = load ptr, ptr %251, align 8, !tbaa !115
  %253 = load i32, ptr %252, align 8
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %250, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !177
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %295, label %260, !prof !178

260:                                              ; preds = %241
  %261 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %240, i32 noundef %249, i32 noundef %255) #17
  %262 = icmp eq i8 %261, 0
  %263 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %264 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  br i1 %262, label %265, label %295, !prof !179

265:                                              ; preds = %260
  %266 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %267 = getelementptr inbounds %struct.costs, ptr %266, i64 0, i32 1, i64 %244
  %268 = load i32, ptr %267, align 4, !tbaa !119
  %269 = icmp slt i32 %268, %247
  br i1 %269, label %276, label %270, !prof !180

270:                                              ; preds = %265
  %271 = icmp eq i32 %268, %247
  br i1 %271, label %272, label %276, !prof !181

272:                                              ; preds = %270
  %273 = zext i32 %246 to i64
  %274 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %273, i64 %250
  %275 = load i32, ptr %274, align 4, !tbaa !119
  br label %276

276:                                              ; preds = %265, %270, %272
  %277 = phi i32 [ %247, %272 ], [ %247, %270 ], [ %268, %265 ]
  %278 = phi i32 [ %275, %272 ], [ %246, %270 ], [ %249, %265 ]
  %279 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %280 = icmp eq i32 %46, %279
  br i1 %280, label %281, label %295, !prof !182

281:                                              ; preds = %276
  %282 = load i32, ptr %266, align 4, !tbaa !121
  %283 = icmp slt i32 %268, %282
  br i1 %283, label %284, label %295, !prof !183

284:                                              ; preds = %281
  %285 = zext i32 %245 to i64
  %286 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %285, i64 %250
  %287 = load i32, ptr %286, align 4, !tbaa !119
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !119
  %291 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %285
  %292 = load i32, ptr %291, align 4, !tbaa !119
  %293 = icmp ugt i32 %290, %292
  %294 = select i1 %293, i32 %287, i32 %245, !prof !184
  br label %295

295:                                              ; preds = %284, %276, %281, %241, %260
  %296 = phi ptr [ %264, %260 ], [ %264, %281 ], [ %264, %276 ], [ %242, %241 ], [ %264, %284 ]
  %297 = phi ptr [ %263, %260 ], [ %263, %281 ], [ %263, %276 ], [ %243, %241 ], [ %263, %284 ]
  %298 = phi i32 [ %247, %260 ], [ %277, %281 ], [ %277, %276 ], [ %247, %241 ], [ %277, %284 ]
  %299 = phi i32 [ %246, %260 ], [ %278, %281 ], [ %278, %276 ], [ %246, %241 ], [ %278, %284 ]
  %300 = phi i32 [ %245, %260 ], [ %245, %281 ], [ %245, %276 ], [ %245, %241 ], [ %294, %284 ]
  %301 = add nuw nsw i64 %244, 1
  %302 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %303 = sext i32 %302 to i64
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %241, label %305, !prof !185, !llvm.loop !186

305:                                              ; preds = %295
  %306 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  br label %307

307:                                              ; preds = %305, %233
  %308 = phi ptr [ %234, %233 ], [ %306, %305 ]
  %309 = phi i32 [ 1073741823, %233 ], [ %298, %305 ]
  %310 = phi i32 [ 26, %233 ], [ %299, %305 ]
  %311 = phi i32 [ 0, %233 ], [ %300, %305 ]
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !119
  %315 = load i32, ptr %308, align 4, !tbaa !121
  %316 = icmp sgt i32 %309, %315
  br i1 %316, label %327, label %317, !prof !187

317:                                              ; preds = %307
  %318 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !119
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %323, !prof !187

320:                                              ; preds = %317
  %321 = icmp eq i32 %314, 0
  %322 = select i1 %321, i32 %310, i32 %314
  br label %327

323:                                              ; preds = %317
  %324 = zext i32 %310 to i64
  %325 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !119
  br label %327

327:                                              ; preds = %307, %320, %323
  %328 = phi i32 [ %322, %320 ], [ %326, %323 ], [ 0, %307 ]
  %329 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  %330 = getelementptr inbounds i32, ptr %329, i64 %121
  store i32 %328, ptr %330, align 4, !tbaa !119
  %331 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %332 = icmp eq i32 %46, %331
  br i1 %332, label %333, label %361, !prof !188

333:                                              ; preds = %327
  %334 = load i32, ptr %308, align 4, !tbaa !121
  %335 = icmp sgt i32 %309, %334
  %336 = icmp eq i32 %310, %314
  %337 = select i1 %335, i32 0, i32 %310, !prof !189
  %338 = select i1 %335, i1 true, i1 %336
  %339 = select i1 %338, i32 0, i32 %314, !prof !189
  %340 = trunc i64 %121 to i32
  tail call void @setup_reg_classes(i32 noundef %340, i32 noundef %337, i32 noundef %339, i32 noundef %328) #17
  %341 = load i1, ptr @allocno_p, align 1
  %342 = xor i1 %341, true
  %343 = load i32, ptr @internal_flag_ira_verbose, align 4
  %344 = icmp sgt i32 %343, 2
  %345 = select i1 %342, i1 true, i1 %344
  %346 = and i1 %42, %345
  br i1 %346, label %347, label %361, !prof !190

347:                                              ; preds = %333
  %348 = zext i32 %337 to i64
  %349 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !115
  %351 = zext i32 %339 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !115
  %354 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  %355 = getelementptr inbounds i32, ptr %354, i64 %121
  %356 = load i32, ptr %355, align 4, !tbaa !119
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !115
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %340, ptr noundef %350, ptr noundef %353, ptr noundef %359) #16
  br label %361

361:                                              ; preds = %347, %333, %327
  %362 = phi i32 [ %337, %347 ], [ %337, %333 ], [ %310, %327 ]
  %363 = load i1, ptr @allocno_p, align 1
  br i1 %363, label %371, label %364, !prof !169

364:                                              ; preds = %361
  %365 = load ptr, ptr @temp_costs, align 8, !tbaa !115
  %366 = load i32, ptr %365, align 4, !tbaa !121
  %367 = icmp sgt i32 %309, %366
  %368 = select i1 %367, i32 0, i32 %362
  %369 = load ptr, ptr @pref, align 8, !tbaa !115
  %370 = getelementptr inbounds i32, ptr %369, i64 %121
  store i32 %368, ptr %370, align 4, !tbaa !119
  br label %518

371:                                              ; preds = %361
  %372 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !115
  %373 = getelementptr inbounds ptr, ptr %372, i64 %121
  %374 = load ptr, ptr %373, align 8, !tbaa !115
  %375 = icmp eq ptr %374, null
  br i1 %375, label %518, label %376, !prof !164

376:                                              ; preds = %371
  %377 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  br label %378

378:                                              ; preds = %376, %509
  %379 = phi ptr [ %510, %509 ], [ %377, %376 ]
  %380 = phi ptr [ %511, %509 ], [ %377, %376 ]
  %381 = phi ptr [ %516, %509 ], [ %374, %376 ]
  %382 = load i32, ptr %381, align 8, !tbaa !143
  %383 = getelementptr inbounds i32, ptr %380, i64 %121
  %384 = load i32, ptr %383, align 4, !tbaa !119
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %467, label %386, !prof !187

386:                                              ; preds = %378
  %387 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %461, !prof !173

389:                                              ; preds = %386
  %390 = trunc i64 %121 to i32
  %391 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  br label %392

392:                                              ; preds = %389, %450
  %393 = phi ptr [ %379, %389 ], [ %451, %450 ]
  %394 = phi ptr [ %379, %389 ], [ %452, %450 ]
  %395 = phi ptr [ %391, %389 ], [ %453, %450 ]
  %396 = phi i64 [ 0, %389 ], [ %457, %450 ]
  %397 = phi i32 [ 26, %389 ], [ %456, %450 ]
  %398 = phi i32 [ 1073741823, %389 ], [ %455, %450 ]
  %399 = phi i32 [ 1073741823, %389 ], [ %454, %450 ]
  %400 = getelementptr inbounds i32, ptr %395, i64 %396
  %401 = load i32, ptr %400, align 4, !tbaa !119
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, ptr %394, i64 %121
  %404 = load i32, ptr %403, align 4, !tbaa !119
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %402, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !119
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %450, label %409, !prof !178

409:                                              ; preds = %392
  %410 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %411 = getelementptr inbounds ptr, ptr %410, i64 %121
  %412 = load ptr, ptr %411, align 8, !tbaa !115
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  %416 = zext nneg i32 %415 to i64
  %417 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %402, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !177
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %450, label %420, !prof !191

420:                                              ; preds = %409
  %421 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %390, i32 noundef %401, i32 noundef %415) #17
  %422 = icmp eq i8 %421, 0
  %423 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %424 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  br i1 %422, label %425, label %450, !prof !179

425:                                              ; preds = %420
  %426 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !115
  %427 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %428 = mul nsw i32 %427, %382
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, ptr %426, i64 %429
  %431 = getelementptr inbounds %struct.costs, ptr %430, i64 0, i32 1, i64 %396
  %432 = load i32, ptr %431, align 4, !tbaa !119
  %433 = icmp slt i32 %432, %399
  br i1 %433, label %434, label %439, !prof !180

434:                                              ; preds = %425
  %435 = load ptr, ptr @costs, align 8, !tbaa !115
  %436 = getelementptr inbounds i8, ptr %435, i64 %429
  %437 = getelementptr inbounds %struct.costs, ptr %436, i64 0, i32 1, i64 %396
  %438 = load i32, ptr %437, align 4, !tbaa !119
  br label %450

439:                                              ; preds = %425
  %440 = icmp eq i32 %432, %399
  br i1 %440, label %441, label %450, !prof !181

441:                                              ; preds = %439
  %442 = zext i32 %397 to i64
  %443 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %442, i64 %402
  %444 = load i32, ptr %443, align 4, !tbaa !119
  %445 = load ptr, ptr @costs, align 8, !tbaa !115
  %446 = getelementptr inbounds i8, ptr %445, i64 %429
  %447 = getelementptr inbounds %struct.costs, ptr %446, i64 0, i32 1, i64 %396
  %448 = load i32, ptr %447, align 4, !tbaa !119
  %449 = tail call i32 @llvm.smax.i32(i32 %398, i32 %448)
  br label %450

450:                                              ; preds = %420, %409, %439, %441, %434, %392
  %451 = phi ptr [ %424, %420 ], [ %424, %434 ], [ %424, %441 ], [ %424, %439 ], [ %393, %409 ], [ %393, %392 ]
  %452 = phi ptr [ %424, %420 ], [ %424, %434 ], [ %424, %441 ], [ %424, %439 ], [ %394, %409 ], [ %394, %392 ]
  %453 = phi ptr [ %423, %420 ], [ %423, %434 ], [ %423, %441 ], [ %423, %439 ], [ %395, %409 ], [ %395, %392 ]
  %454 = phi i32 [ %399, %420 ], [ %432, %434 ], [ %399, %441 ], [ %399, %439 ], [ %399, %409 ], [ %399, %392 ]
  %455 = phi i32 [ %398, %420 ], [ %438, %434 ], [ %449, %441 ], [ %398, %439 ], [ %398, %409 ], [ %398, %392 ]
  %456 = phi i32 [ %397, %420 ], [ %401, %434 ], [ %444, %441 ], [ %397, %439 ], [ %397, %409 ], [ %397, %392 ]
  %457 = add nuw nsw i64 %396, 1
  %458 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %459 = sext i32 %458 to i64
  %460 = icmp slt i64 %457, %459
  br i1 %460, label %392, label %461, !prof !185, !llvm.loop !192

461:                                              ; preds = %450, %386
  %462 = phi ptr [ %379, %386 ], [ %451, %450 ]
  %463 = phi ptr [ %380, %386 ], [ %452, %450 ]
  %464 = phi i32 [ 1073741823, %386 ], [ %455, %450 ]
  %465 = phi i32 [ 26, %386 ], [ %456, %450 ]
  %466 = getelementptr inbounds %struct.ira_allocno, ptr %381, i64 0, i32 10
  store i32 %464, ptr %466, align 4, !tbaa !193
  br label %467

467:                                              ; preds = %378, %461
  %468 = phi ptr [ %462, %461 ], [ %379, %378 ]
  %469 = phi ptr [ %463, %461 ], [ %380, %378 ]
  %470 = phi i32 [ %465, %461 ], [ 0, %378 ]
  %471 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !119
  %472 = icmp sgt i32 %471, 2
  %473 = and i1 %42, %472
  br i1 %473, label %474, label %509, !prof !194

474:                                              ; preds = %467
  br i1 %111, label %481, label %475

475:                                              ; preds = %474
  %476 = load ptr, ptr @pref, align 8, !tbaa !115
  %477 = sext i32 %382 to i64
  %478 = getelementptr inbounds i32, ptr %476, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !119
  %480 = icmp eq i32 %479, %470
  br i1 %480, label %509, label %481

481:                                              ; preds = %475, %474
  %482 = trunc i64 %121 to i32
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %382, i32 noundef %482) #16
  %484 = getelementptr inbounds %struct.ira_allocno, ptr %381, i64 0, i32 6
  %485 = load ptr, ptr %484, align 8, !tbaa !166
  %486 = load ptr, ptr %485, align 8, !tbaa !195
  %487 = icmp eq ptr %486, null
  br i1 %487, label %490, label %488

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %486, i64 0, i32 9
  br label %493

490:                                              ; preds = %481
  %491 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %485, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !196
  br label %493

493:                                              ; preds = %490, %488
  %494 = phi ptr [ %492, %490 ], [ %489, %488 ]
  %495 = phi ptr [ @.str.4, %490 ], [ @.str.3, %488 ]
  %496 = load i32, ptr %494, align 8, !tbaa !119
  %497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull %495, i32 noundef %496) #16
  %498 = zext i32 %470 to i64
  %499 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !115
  %501 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  %502 = getelementptr inbounds i32, ptr %501, i64 %121
  %503 = load i32, ptr %502, align 4, !tbaa !119
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !115
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %500, ptr noundef %506) #16
  %508 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  br label %509

509:                                              ; preds = %493, %475, %467
  %510 = phi ptr [ %508, %493 ], [ %468, %475 ], [ %468, %467 ]
  %511 = phi ptr [ %508, %493 ], [ %469, %475 ], [ %469, %467 ]
  %512 = load ptr, ptr @pref, align 8, !tbaa !115
  %513 = sext i32 %382 to i64
  %514 = getelementptr inbounds i32, ptr %512, i64 %513
  store i32 %470, ptr %514, align 4, !tbaa !119
  %515 = getelementptr inbounds %struct.ira_allocno, ptr %381, i64 0, i32 5
  %516 = load ptr, ptr %515, align 8, !tbaa !115
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %378, !prof !173, !llvm.loop !197

518:                                              ; preds = %509, %371, %135, %123, %364
  %519 = icmp sgt i64 %120, 54
  br i1 %519, label %119, label %520, !prof !198, !llvm.loop !199

520:                                              ; preds = %518, %114
  %521 = load i32, ptr @internal_flag_ira_verbose, align 4
  %522 = icmp sgt i32 %521, 4
  %523 = and i1 %42, %522
  br i1 %523, label %524, label %531, !prof !200

524:                                              ; preds = %520
  %525 = load i1, ptr @allocno_p, align 1
  br i1 %525, label %526, label %527

526:                                              ; preds = %524
  tail call fastcc void @print_allocno_costs(ptr noundef nonnull %0) #16
  br label %528

527:                                              ; preds = %524
  tail call fastcc void @print_pseudo_costs(ptr noundef nonnull %0) #16
  br label %528

528:                                              ; preds = %527, %526
  %529 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  %530 = load i32, ptr @internal_flag_ira_verbose, align 4
  br label %531

531:                                              ; preds = %520, %528
  %532 = phi i32 [ %521, %520 ], [ %530, %528 ]
  %533 = add nuw nsw i32 %46, 1
  %534 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !119
  %535 = icmp slt i32 %46, %534
  br i1 %535, label %44, label %536, !prof !201, !llvm.loop !202

536:                                              ; preds = %531, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_cover_class_and_costs() unnamed_addr #2 !prof !135 !PGOFuncName !203 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %89, label %5, !prof !147

5:                                                ; preds = %0, %86
  %6 = load ptr, ptr %1, align 8, !tbaa !115
  %7 = load i32, ptr %6, align 8, !tbaa !143
  %8 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !140
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !119
  %14 = load ptr, ptr @costs, align 8, !tbaa !115
  %15 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %16 = mul nsw i32 %15, %7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !121
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  store i32 %19, ptr %20, align 4, !tbaa !204
  tail call void @ira_set_allocno_cover_class(ptr noundef nonnull %6, i32 noundef %13) #17
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %86, label %22, !prof !189

22:                                               ; preds = %5
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !119
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 38
  store i32 %25, ptr %26, align 4, !tbaa !205
  %27 = load i32, ptr @optimize, align 4, !tbaa !119
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %29, !prof !189

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !206
  %32 = load ptr, ptr @pref, align 8, !tbaa !115
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !119
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %86, label %37, !prof !207

37:                                               ; preds = %29
  %38 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %23
  %39 = load i32, ptr %38, align 4, !tbaa !119
  %40 = tail call ptr @ira_allocate_cost_vector(i32 noundef %13) #17
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  store ptr %40, ptr %41, align 8, !tbaa !208
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %86, !prof !209

43:                                               ; preds = %37
  %44 = load ptr, ptr @pref, align 8, !tbaa !115
  %45 = getelementptr inbounds i32, ptr %44, i64 %33
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %47 = load ptr, ptr @costs, align 8
  %48 = load i32, ptr @struct_costs_size, align 4
  %49 = mul nsw i32 %48, %7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = zext nneg i32 %39 to i64
  br label %53

53:                                               ; preds = %43, %81
  %54 = phi i64 [ %52, %43 ], [ %55, %81 ]
  %55 = add nsw i64 %54, -1
  %56 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %23, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !210
  %58 = sext i16 %57 to i64
  %59 = load i32, ptr %45, align 4, !tbaa !119
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !212
  %63 = and i64 %58, 4294967295
  %64 = shl nuw i64 1, %63
  %65 = and i64 %62, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %81, !prof !213

67:                                               ; preds = %53
  %68 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %58
  %69 = load i32, ptr %68, align 4, !tbaa !119
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !119
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77, !prof !214

74:                                               ; preds = %67
  %75 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %23
  %76 = load i32, ptr %75, align 4, !tbaa !119
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ %76, %74 ], [ %72, %67 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.costs, ptr %51, i64 0, i32 1, i64 %79
  br label %81

81:                                               ; preds = %53, %77
  %82 = phi ptr [ %80, %77 ], [ %46, %53 ]
  %83 = load i32, ptr %82, align 4, !tbaa !119
  %84 = getelementptr inbounds i32, ptr %40, i64 %55
  store i32 %83, ptr %84, align 4, !tbaa !119
  %85 = icmp ugt i64 %54, 1
  br i1 %85, label %53, label %86, !prof !215, !llvm.loop !216

86:                                               ; preds = %81, %22, %29, %37, %5
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !139
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %5, !prof !217, !llvm.loop !218

89:                                               ; preds = %86, %0
  %90 = load i32, ptr @optimize, align 4, !tbaa !119
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !219

92:                                               ; preds = %89
  %93 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !115
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %93, ptr noundef nonnull @process_bb_node_for_hard_reg_moves, ptr noundef null) #17
  br label %94

94:                                               ; preds = %92, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_costs() unnamed_addr #2 !prof !135 !PGOFuncName !220 {
  %1 = load ptr, ptr @regno_cover_class, align 8, !tbaa !115
  tail call void @ira_free(ptr noundef %1) #17
  %2 = load ptr, ptr @pref_buffer, align 8, !tbaa !115
  tail call void @ira_free(ptr noundef %2) #17
  %3 = load ptr, ptr @costs, align 8, !tbaa !115
  tail call void @ira_free(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_set_pseudo_classes(ptr noundef %0) local_unnamed_addr #2 !prof !221 {
  store i1 false, ptr @allocno_p, align 1
  %2 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !119
  store i32 %2, ptr @internal_flag_ira_verbose, align 4, !tbaa !119
  %3 = tail call i32 @max_reg_num() #17
  store i32 %3, ptr @cost_elements_num, align 4, !tbaa !119
  tail call fastcc void @init_costs() #16
  tail call fastcc void @find_costs_and_classes(ptr noundef %0) #16
  store i1 true, ptr @pseudo_classes_defined_p, align 1
  tail call fastcc void @finish_costs() #16
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #2 !prof !135 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !139
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %66, label %5, !prof !147

5:                                                ; preds = %0, %63
  %6 = load ptr, ptr %1, align 8, !tbaa !115
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !206
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10, !prof !189

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !222
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !223
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17, !prof !224

17:                                               ; preds = %10
  %18 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !119
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !193
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %20, i32 noundef %8, i32 noundef %22) #16
  %23 = load ptr, ptr %20, align 8, !tbaa !208
  %24 = icmp sgt i32 %19, 0
  br i1 %24, label %25, label %63, !prof !225

25:                                               ; preds = %17
  %26 = load i64, ptr @call_used_reg_set, align 8, !tbaa !212
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 29
  %28 = zext i32 %12 to i64
  %29 = zext nneg i32 %19 to i64
  br label %30

30:                                               ; preds = %25, %53
  %31 = phi i64 [ %29, %25 ], [ %33, %53 ]
  %32 = phi i32 [ 2147483647, %25 ], [ %58, %53 ]
  %33 = add nsw i64 %31, -1
  %34 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %13, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !210
  %36 = sext i16 %35 to i32
  %37 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %36, i32 noundef %12, i64 noundef %26) #16, !range !139
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %53, !prof !226

39:                                               ; preds = %30
  %40 = sext i16 %35 to i64
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !119
  %43 = load i32, ptr %27, align 4, !tbaa !227
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44
  %46 = load i16, ptr %45, align 4, !tbaa !210
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !210
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, %47
  %52 = mul nsw i32 %51, %43
  br label %53

53:                                               ; preds = %39, %30
  %54 = phi i32 [ 0, %30 ], [ %52, %39 ]
  %55 = getelementptr inbounds i32, ptr %23, i64 %33
  %56 = load i32, ptr %55, align 4, !tbaa !119
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 4, !tbaa !119
  %58 = tail call i32 @llvm.smin.i32(i32 %32, i32 %57)
  %59 = icmp ugt i64 %31, 1
  br i1 %59, label %30, label %60, !prof !228, !llvm.loop !229

60:                                               ; preds = %53
  %61 = icmp eq i32 %58, 2147483647
  br i1 %61, label %63, label %62, !prof !230

62:                                               ; preds = %60
  store i32 %58, ptr %21, align 4, !tbaa !193
  br label %63

63:                                               ; preds = %17, %60, %62, %10, %5
  %64 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !139
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %5, !prof !217, !llvm.loop !231

66:                                               ; preds = %63, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !232 !PGOFuncName !233 {
  store i32 0, ptr %0, align 4, !tbaa !234
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !236 !PGOFuncName !237 {
  %3 = load i32, ptr %0, align 4, !tbaa !234
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !119
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !149

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !115
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !187

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !115
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !234
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !238, !llvm.loop !239

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !240 !PGOFuncName !241 {
  %4 = load ptr, ptr %0, align 8, !tbaa !115
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45, !prof !242

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #17
  store ptr %7, ptr %0, align 8, !tbaa !115
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45, !prof !243

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
  store i32 %2, ptr %25, align 4, !tbaa !119
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !119
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !119
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !119
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !prof !244, !llvm.loop !245

45:                                               ; preds = %41, %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #6 !prof !248 !PGOFuncName !249 {
  %4 = sext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !177
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %13, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18, !prof !250

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %13, %4
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %9, label %18, !prof !226, !llvm.loop !251

18:                                               ; preds = %9, %12
  %19 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %19
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_subregs_of_mode() local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @resize_reg_info() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_for_costs(ptr nocapture noundef readonly %0) #2 !prof !252 !PGOFuncName !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !254

4:                                                ; preds = %1
  tail call fastcc void @process_bb_for_costs(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_bb_for_costs(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !255 !PGOFuncName !256 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !119
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %22, !prof !257

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !119
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !257

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !258
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !259
  %18 = add i32 %17, 9
  %19 = icmp ult i32 %18, 19
  br i1 %19, label %22, label %20, !prof !260

20:                                               ; preds = %15
  %21 = sdiv i32 %17, 10
  br label %22

22:                                               ; preds = %20, %15, %1, %7
  %23 = phi i32 [ %21, %20 ], [ 1, %15 ], [ 1000, %1 ], [ 1000, %7 ]
  store i32 %23, ptr @frequency, align 4, !tbaa !119
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !177
  %26 = load ptr, ptr %25, align 8, !tbaa !177
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28, !prof !261

28:                                               ; preds = %22, %36
  %29 = phi ptr [ %39, %36 ], [ %26, %22 ]
  %30 = load ptr, ptr %24, align 8, !tbaa !177
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !262
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !177
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %41, label %36, !prof !264

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @scan_one_insn(ptr noundef nonnull %29) #16
  %38 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !177
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !prof !265, !llvm.loop !266

41:                                               ; preds = %28, %36, %22
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invalid_mode_change_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_costs(ptr nocapture noundef %0) unnamed_addr #2 !prof !221 !PGOFuncName !267 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %5 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !139
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %89, label %7

7:                                                ; preds = %1, %79
  %8 = load ptr, ptr %2, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !140
  %11 = load i32, ptr %8, align 8, !tbaa !143
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %10) #16
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !166
  %15 = load ptr, ptr %14, align 8, !tbaa !195
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  br label %22

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !196
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %21, %19 ], [ %18, %17 ]
  %24 = phi ptr [ @.str.4, %19 ], [ @.str.3, %17 ]
  %25 = load i32, ptr %23, align 8, !tbaa !119
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %25) #16
  %27 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %28 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %22
  %31 = sext i32 %10 to i64
  br label %32

32:                                               ; preds = %30, %74
  %33 = phi i64 [ 0, %30 ], [ %75, %74 ]
  %34 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %35 = getelementptr inbounds i32, ptr %34, i64 %33
  %36 = load i32, ptr %35, align 4, !tbaa !119
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !115
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %37, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !177
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %32
  %49 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %10, i32 noundef %36, i32 noundef %43) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  %54 = load ptr, ptr @costs, align 8, !tbaa !115
  %55 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %56 = mul nsw i32 %55, %11
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = getelementptr inbounds %struct.costs, ptr %58, i64 0, i32 1, i64 %33
  %60 = load i32, ptr %59, align 4, !tbaa !119
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %53, i32 noundef %60) #16
  %62 = load i32, ptr @flag_ira_region, align 4
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !115
  %67 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %68 = mul nsw i32 %67, %11
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = getelementptr inbounds %struct.costs, ptr %70, i64 0, i32 1, i64 %33
  %72 = load i32, ptr %71, align 4, !tbaa !119
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %72) #16
  br label %74

74:                                               ; preds = %32, %48, %51, %65
  %75 = add nuw nsw i64 %33, 1
  %76 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %32, label %79, !llvm.loop !268

79:                                               ; preds = %74, %22
  %80 = load ptr, ptr @costs, align 8, !tbaa !115
  %81 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %82 = mul nsw i32 %81, %11
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !121
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %85) #16
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !139
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %7, !llvm.loop !269

89:                                               ; preds = %79, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pseudo_costs(ptr nocapture noundef %0) unnamed_addr #2 !prof !221 !PGOFuncName !270 {
  %2 = tail call i32 @fputc(i32 10, ptr %0)
  %3 = tail call i32 @max_reg_num() #17
  %4 = icmp sgt i32 %3, 53
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  br label %8

8:                                                ; preds = %5, %64
  %9 = phi ptr [ %7, %5 ], [ %65, %64 ]
  %10 = phi i64 [ %6, %5 ], [ %11, %64 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %8
  %16 = trunc i64 %11 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16) #16
  %18 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %15, %50
  %21 = phi i64 [ %51, %50 ], [ 0, %15 ]
  %22 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !119
  %25 = sext i32 %24 to i64
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  %27 = getelementptr inbounds ptr, ptr %26, i64 %11
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %25, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !177
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %20
  %37 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %16, i32 noundef %24, i32 noundef %31) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %25
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  %42 = load ptr, ptr @costs, align 8, !tbaa !115
  %43 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %11, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.costs, ptr %46, i64 0, i32 1, i64 %21
  %48 = load i32, ptr %47, align 4, !tbaa !119
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef %48) #16
  br label %50

50:                                               ; preds = %20, %36, %39
  %51 = add nuw nsw i64 %21, 1
  %52 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %20, label %55, !llvm.loop !271

55:                                               ; preds = %50, %15
  %56 = load ptr, ptr @costs, align 8, !tbaa !115
  %57 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %11, %58
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !121
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %61) #16
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !115
  br label %64

64:                                               ; preds = %8, %55
  %65 = phi ptr [ %9, %8 ], [ %63, %55 ]
  %66 = icmp sgt i64 %10, 54
  br i1 %66, label %8, label %67, !llvm.loop !272

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scan_one_insn(ptr noundef returned %0) unnamed_addr #2 !prof !273 !PGOFuncName !274 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -11
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %141, label %6, !prof !275

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = and i32 %9, 65534
  %12 = icmp eq i32 %11, 24
  %13 = and i32 %9, 65531
  %14 = icmp eq i32 %13, 16
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %10, 21
  %17 = or i1 %16, %15
  br i1 %17, label %141, label %18, !prof !276

18:                                               ; preds = %6
  %19 = icmp eq i32 %10, 23
  br i1 %19, label %20, label %21, !prof !277

20:                                               ; preds = %18
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  br label %24

21:                                               ; preds = %18
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %89, label %24, !prof !278

24:                                               ; preds = %20, %21
  %25 = phi ptr [ %8, %20 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !177
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %89, !prof !279

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !177
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %89, !prof !280

37:                                               ; preds = %31
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 3, ptr noundef null) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %89, label %40, !prof !281

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !177
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %89, !prof !282

46:                                               ; preds = %40
  %47 = load ptr, ptr %26, align 8, !tbaa !177
  %48 = load i1, ptr @allocno_p, align 1
  br i1 %48, label %49, label %56, !prof !282

49:                                               ; preds = %46
  %50 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !115
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !115
  %55 = load i32, ptr %54, align 8, !tbaa !143
  br label %58

56:                                               ; preds = %46
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %55, %49 ], [ %57, %56 ]
  %60 = load ptr, ptr @pref, align 8, !tbaa !115
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62, !prof !283

62:                                               ; preds = %58
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !119
  %66 = zext i32 %65 to i64
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i64 [ %66, %62 ], [ 13, %58 ]
  %69 = load i32, ptr %47, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %72, i64 %68, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !210
  %75 = sext i16 %74 to i32
  %76 = load i32, ptr @frequency, align 4, !tbaa !119
  %77 = mul nsw i32 %76, %75
  %78 = load ptr, ptr @costs, align 8, !tbaa !115
  %79 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %80 = mul nsw i32 %79, %59
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !121
  %84 = sub nsw i32 %83, %77
  store i32 %84, ptr %82, align 4, !tbaa !121
  %85 = load ptr, ptr %32, align 8, !tbaa !177
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !177
  %88 = shl nsw i32 %76, 1
  tail call fastcc void @record_address_regs(ptr noundef %87, i32 noundef 0, i32 noundef %88) #16
  br label %89

89:                                               ; preds = %67, %40, %37, %31, %24, %21
  %90 = load ptr, ptr @pref, align 8, !tbaa !115
  tail call fastcc void @record_operand_costs(ptr noundef nonnull %0, ptr noundef %90) #16
  %91 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !284
  %92 = icmp sgt i8 %91, 0
  br i1 %92, label %93, label %141, !prof !286

93:                                               ; preds = %89
  %94 = zext nneg i8 %91 to i64
  %95 = load ptr, ptr @costs, align 8
  %96 = load i1, ptr @allocno_p, align 1
  %97 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %98 = load i32, ptr @struct_costs_size, align 4
  %99 = load i32, ptr @cost_classes_num, align 4
  br label %100

100:                                              ; preds = %93, %138
  %101 = phi i64 [ 0, %93 ], [ %139, %138 ]
  %102 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !115
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %107, label %138, !prof !287

107:                                              ; preds = %100
  %108 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %103) #16
  %109 = icmp ugt i32 %108, 52
  br i1 %109, label %110, label %138, !prof !288

110:                                              ; preds = %107
  br i1 %96, label %111, label %116, !prof !289

111:                                              ; preds = %110
  %112 = sext i32 %108 to i64
  %113 = getelementptr inbounds ptr, ptr %97, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !115
  %115 = load i32, ptr %114, align 8, !tbaa !143
  br label %116

116:                                              ; preds = %110, %111
  %117 = phi i32 [ %115, %111 ], [ %108, %110 ]
  %118 = icmp sgt i32 %99, 0
  %119 = mul nsw i32 %98, %117
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %95, i64 %120
  %122 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %101
  %123 = load ptr, ptr %122, align 8, !tbaa !115
  %124 = load i32, ptr %123, align 4, !tbaa !121
  %125 = load i32, ptr %121, align 4, !tbaa !121
  %126 = add nsw i32 %125, %124
  store i32 %126, ptr %121, align 4, !tbaa !121
  br i1 %118, label %127, label %138, !prof !290

127:                                              ; preds = %116
  %128 = zext nneg i32 %99 to i64
  br label %129

129:                                              ; preds = %127, %129
  %130 = phi i64 [ %136, %129 ], [ 0, %127 ]
  %131 = getelementptr inbounds %struct.costs, ptr %123, i64 0, i32 1, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !119
  %133 = getelementptr inbounds %struct.costs, ptr %121, i64 0, i32 1, i64 %130
  %134 = load i32, ptr %133, align 4, !tbaa !119
  %135 = add nsw i32 %134, %132
  store i32 %135, ptr %133, align 4, !tbaa !119
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %138, label %129, !prof !291, !llvm.loop !292

138:                                              ; preds = %129, %116, %100, %107
  %139 = add nuw nsw i64 %101, 1
  %140 = icmp eq i64 %139, %94
  br i1 %140, label %141, label %100, !prof !293, !llvm.loop !294

141:                                              ; preds = %138, %89, %1, %6
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !295 !PGOFuncName !296 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !177
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_address_regs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !297 !PGOFuncName !298 {
  br label %4

4:                                                ; preds = %38, %3
  %5 = phi ptr [ %0, %3 ], [ %39, %38 ]
  %6 = phi i32 [ %1, %3 ], [ %40, %38 ]
  %7 = phi i32 [ %2, %3 ], [ %41, %38 ]
  %8 = load i32, ptr %5, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %165 [
    i16 30, label %187
    i16 35, label %187
    i16 46, label %187
    i16 36, label %187
    i16 45, label %187
    i16 44, label %187
    i16 49, label %10
    i16 79, label %96
    i16 78, label %96
    i16 77, label %107
    i16 75, label %107
    i16 76, label %107
    i16 74, label %107
    i16 37, label %111
  ], !prof !299

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %16, 39
  br i1 %19, label %20, label %25, !prof !300

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !177
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i32 [ %24, %20 ], [ %16, %10 ]
  %27 = phi ptr [ %22, %20 ], [ %12, %10 ]
  %28 = icmp eq i32 %18, 39
  br i1 %28, label %29, label %34, !prof !300

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !177
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi ptr [ %31, %29 ], [ %14, %25 ]
  %36 = phi i32 [ %33, %29 ], [ %18, %25 ]
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %42 [
    i16 32, label %38
    i16 30, label %38
  ]

38:                                               ; preds = %34, %34, %60, %71, %82, %93, %94, %107, %42, %96
  %39 = phi ptr [ %35, %60 ], [ %27, %71 ], [ %35, %82 ], [ %35, %93 ], [ %35, %94 ], [ %109, %107 ], [ %27, %42 ], [ %103, %96 ], [ %27, %34 ], [ %27, %34 ]
  %40 = phi i32 [ %61, %60 ], [ %72, %71 ], [ 1, %82 ], [ 0, %93 ], [ 1, %94 ], [ 0, %107 ], [ 1, %42 ], [ 1, %96 ], [ %6, %34 ], [ %6, %34 ]
  %41 = phi i32 [ %7, %60 ], [ %7, %71 ], [ %7, %82 ], [ %7, %93 ], [ %95, %94 ], [ %110, %107 ], [ %7, %42 ], [ %100, %96 ], [ %7, %34 ], [ %7, %34 ]
  br label %4

42:                                               ; preds = %34
  %43 = icmp eq i32 %36, 35
  %44 = and i32 %36, 65534
  %45 = icmp eq i32 %44, 44
  %46 = or i1 %43, %45
  br i1 %46, label %38, label %47, !prof !301

47:                                               ; preds = %42
  %48 = icmp eq i32 %26, 37
  %49 = icmp eq i32 %36, 37
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %73, !prof !302

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #16
  %53 = icmp ult i32 %52, 53
  br i1 %53, label %54, label %62, !prof !303

54:                                               ; preds = %51
  %55 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr noundef nonnull %27) #16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %27) #16, !range !139
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %54
  %61 = zext nneg i8 %55 to i32
  br label %38

62:                                               ; preds = %51, %57
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #16
  %64 = icmp ult i32 %63, 53
  br i1 %64, label %65, label %74, !prof !303

65:                                               ; preds = %62
  %66 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr noundef nonnull %35) #16
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %35) #16, !range !139
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %65
  %72 = zext nneg i8 %66 to i32
  br label %38

73:                                               ; preds = %47
  br i1 %48, label %74, label %80, !prof !304

74:                                               ; preds = %62, %68, %73
  %75 = load i32, ptr %27, align 8
  %76 = and i32 %75, 1073741824
  %77 = icmp ne i32 %76, 0
  %78 = icmp eq i32 %36, 52
  %79 = or i1 %78, %77
  br i1 %79, label %82, label %84, !prof !305

80:                                               ; preds = %73
  %81 = icmp eq i32 %36, 52
  br i1 %81, label %82, label %83, !prof !306

82:                                               ; preds = %80, %74
  tail call fastcc void @record_address_regs(ptr noundef nonnull %27, i32 noundef 0, i32 noundef %7) #16
  br label %38

83:                                               ; preds = %80
  br i1 %49, label %85, label %91, !prof !307

84:                                               ; preds = %74
  br i1 %49, label %85, label %94, !prof !307

85:                                               ; preds = %84, %83
  %86 = load i32, ptr %35, align 8
  %87 = and i32 %86, 1073741824
  %88 = icmp ne i32 %87, 0
  %89 = icmp eq i32 %26, 52
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %93, label %94, !prof !308

91:                                               ; preds = %83
  %92 = icmp eq i32 %26, 52
  br i1 %92, label %93, label %94, !prof !309

93:                                               ; preds = %91, %85
  tail call fastcc void @record_address_regs(ptr noundef nonnull %27, i32 noundef 1, i32 noundef %7) #16
  br label %38

94:                                               ; preds = %84, %85, %91
  %95 = sdiv i32 %7, 2
  tail call fastcc void @record_address_regs(ptr noundef nonnull %27, i32 noundef 0, i32 noundef %95) #16
  tail call fastcc void @record_address_regs(ptr noundef nonnull %27, i32 noundef 1, i32 noundef %95) #16
  tail call fastcc void @record_address_regs(ptr noundef nonnull %35, i32 noundef 0, i32 noundef %95) #16
  br label %38

96:                                               ; preds = %4, %4
  %97 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !177
  %99 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = shl nsw i32 %7, 1
  tail call fastcc void @record_address_regs(ptr noundef %98, i32 noundef 0, i32 noundef %100) #16
  %101 = load ptr, ptr %99, align 8, !tbaa !177
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !177
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %38, label %187

107:                                              ; preds = %4, %4, %4, %4
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !177
  %110 = shl nsw i32 %7, 1
  br label %38

111:                                              ; preds = %4
  %112 = icmp eq i32 %6, 1
  %113 = select i1 %112, i32 11, i32 13, !prof !310
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %115 = icmp ult i32 %114, 53
  br i1 %115, label %187, label %116, !prof !311

116:                                              ; preds = %111
  %117 = load i1, ptr @allocno_p, align 1
  br i1 %117, label %118, label %131, !prof !312

118:                                              ; preds = %116
  %119 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !115
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !115
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 31
  %124 = load i16, ptr %123, align 4
  %125 = or i16 %124, 64
  store i16 %125, ptr %123, align 4
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %119, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = load i32, ptr %129, align 8, !tbaa !143
  br label %133

131:                                              ; preds = %116
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  br label %133

133:                                              ; preds = %131, %118
  %134 = phi i32 [ %130, %118 ], [ %132, %131 ]
  %135 = load ptr, ptr @costs, align 8, !tbaa !115
  %136 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %137 = mul nsw i32 %136, %134
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  %140 = zext nneg i32 %113 to i64
  %141 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 16, i64 %140, i64 1
  %142 = load i16, ptr %141, align 2, !tbaa !210
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %7, %143
  %145 = sdiv i32 %144, 2
  %146 = load i32, ptr %139, align 4, !tbaa !121
  %147 = add nsw i32 %145, %146
  store i32 %147, ptr %139, align 4, !tbaa !121
  %148 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %187, !prof !313

150:                                              ; preds = %133, %150
  %151 = phi i64 [ %161, %150 ], [ 0, %133 ]
  %152 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %153 = getelementptr inbounds i32, ptr %152, i64 %151
  %154 = load i32, ptr %153, align 4, !tbaa !119
  %155 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef 16, i32 noundef %154, i32 noundef %113, i8 noundef zeroext 1) #16, !range !314
  %156 = mul nsw i32 %155, %7
  %157 = sdiv i32 %156, 2
  %158 = getelementptr inbounds %struct.costs, ptr %139, i64 0, i32 1, i64 %151
  %159 = load i32, ptr %158, align 4, !tbaa !119
  %160 = add nsw i32 %157, %159
  store i32 %160, ptr %158, align 4, !tbaa !119
  %161 = add nuw nsw i64 %151, 1
  %162 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %150, label %187, !prof !315, !llvm.loop !316

165:                                              ; preds = %4
  %166 = and i32 %8, 65535
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !115
  %170 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %167
  %171 = load i8, ptr %170, align 1, !tbaa !177
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %187, label %173, !prof !317

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %175 = zext i8 %171 to i64
  br label %176

176:                                              ; preds = %173, %185
  %177 = phi i64 [ %175, %173 ], [ %178, %185 ]
  %178 = add nsw i64 %177, -1
  %179 = getelementptr inbounds i8, ptr %169, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !177
  %181 = icmp eq i8 %180, 101
  br i1 %181, label %182, label %185, !prof !318

182:                                              ; preds = %176
  %183 = getelementptr inbounds [1 x %union.rtunion_def], ptr %174, i64 0, i64 %178
  %184 = load ptr, ptr %183, align 8, !tbaa !177
  tail call fastcc void @record_address_regs(ptr noundef %184, i32 noundef %6, i32 noundef %7) #16
  br label %185

185:                                              ; preds = %176, %182
  %186 = icmp ugt i64 %177, 1
  br i1 %186, label %176, label %187, !prof !319, !llvm.loop !320

187:                                              ; preds = %96, %4, %4, %4, %4, %4, %4, %150, %185, %133, %165, %111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_operand_costs(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !321 !PGOFuncName !322 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #18
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !284
  %7 = sext i8 %6 to i32
  %8 = icmp sgt i8 %6, 0
  br i1 %8, label %9, label %86, !prof !286

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw nsw i64 %10, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %11, i1 false), !tbaa !115
  %12 = shl nuw nsw i64 %10, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 0), i64 %12, i1 false), !tbaa !119
  br label %16

13:                                               ; preds = %50
  %14 = sext i8 %52 to i32
  %15 = icmp sgt i8 %52, 1
  br i1 %15, label %55, label %86, !prof !278

16:                                               ; preds = %9, %50
  %17 = phi i64 [ 0, %9 ], [ %51, %50 ]
  %18 = getelementptr inbounds ptr, ptr @op_costs, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load ptr, ptr @init_cost, align 8, !tbaa !115
  %21 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %22 = sext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false)
  %23 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %17
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %32, !prof !323

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  store ptr %30, ptr %23, align 8, !tbaa !115
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %16
  %33 = phi i32 [ %31, %28 ], [ %25, %16 ]
  %34 = phi ptr [ %30, %28 ], [ %24, %16 ]
  %35 = and i32 %33, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %42, !prof !324

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !177
  %40 = load i32, ptr @frequency, align 4, !tbaa !119
  %41 = shl nsw i32 %40, 1
  tail call fastcc void @record_address_regs(ptr noundef %39, i32 noundef 0, i32 noundef %41) #16
  br label %50

42:                                               ; preds = %32
  %43 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %17
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = load i8, ptr %44, align 1, !tbaa !177
  %46 = icmp eq i8 %45, 112
  br i1 %46, label %47, label %50, !prof !325

47:                                               ; preds = %42
  %48 = load i32, ptr @frequency, align 4, !tbaa !119
  %49 = shl nsw i32 %48, 1
  tail call fastcc void @record_address_regs(ptr noundef nonnull %34, i32 noundef 0, i32 noundef %49) #16
  br label %50

50:                                               ; preds = %37, %47, %42
  %51 = add nuw nsw i64 %17, 1
  %52 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !284
  %53 = sext i8 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %16, label %13, !prof !326, !llvm.loop !327

55:                                               ; preds = %13, %79
  %56 = phi i8 [ %81, %79 ], [ %52, %13 ]
  %57 = phi i64 [ %80, %79 ], [ 0, %13 ]
  %58 = phi i32 [ %82, %79 ], [ %14, %13 ]
  %59 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !115
  %61 = load i8, ptr %60, align 1, !tbaa !177
  %62 = icmp eq i8 %61, 37
  br i1 %62, label %65, label %63, !prof !328

63:                                               ; preds = %55
  %64 = add nuw nsw i64 %57, 1
  br label %79

65:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #18
  %66 = icmp sgt i32 %58, 0
  br i1 %66, label %67, label %70, !prof !329

67:                                               ; preds = %65
  %68 = zext nneg i32 %58 to i64
  %69 = shl nuw nsw i64 %68, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 16 %3, i64 %69, i1 false), !tbaa !115
  br label %70

70:                                               ; preds = %67, %65
  %71 = add nuw nsw i64 %57, 1
  %72 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !115
  %74 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %57
  store ptr %73, ptr %74, align 8, !tbaa !115
  %75 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %71
  store ptr %60, ptr %75, align 8, !tbaa !115
  %76 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !330
  %77 = sext i8 %76 to i32
  call fastcc void @record_reg_classes(i32 noundef %77, i32 noundef %58, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #18
  %78 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !284
  br label %79

79:                                               ; preds = %63, %70
  %80 = phi i64 [ %64, %63 ], [ %71, %70 ]
  %81 = phi i8 [ %56, %63 ], [ %78, %70 ]
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %55, label %86, !prof !331, !llvm.loop !332

86:                                               ; preds = %79, %2, %13
  %87 = phi i32 [ %14, %13 ], [ %7, %2 ], [ %82, %79 ]
  %88 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !330
  %89 = sext i8 %88 to i32
  call fastcc void @record_reg_classes(i32 noundef %89, i32 noundef %87, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !221 !PGOFuncName !333 {
  %2 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 52
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !221 !PGOFuncName !334 {
  %2 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %3 = add i32 %2, -53
  %4 = icmp ult i32 %3, -46
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = zext nneg i32 %2 to i64
  %7 = add nsw i64 %6, -37
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !115
  %11 = getelementptr inbounds i16, ptr %10, i64 %6
  %12 = load i16, ptr %11, align 2, !tbaa !210
  %13 = icmp ult i16 %12, 7
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = sext i16 %12 to i64
  %16 = and i64 %15, 4294967295
  %17 = add nsw i64 %16, -37
  %18 = icmp ult i64 %17, 8
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %5, %9, %14, %1
  %21 = phi i8 [ 1, %1 ], [ 1, %9 ], [ 1, %5 ], [ %19, %14 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_may_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 !prof !335 !PGOFuncName !336 {
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !337

9:                                                ; preds = %4
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i8 %3, 0
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = select i1 %11, ptr @ira_may_move_out_cost, ptr @ira_may_move_in_cost, !prof !338
  %15 = getelementptr inbounds [87 x ptr], ptr %14, i64 0, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds [27 x i16], ptr %16, i64 %12, i64 %13
  %18 = load i16, ptr %17, align 2, !tbaa !210
  %19 = zext i16 %18 to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #12 !prof !221 !PGOFuncName !339 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !115
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !210
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = sext i16 %13 to i64
  %17 = and i64 %16, 4294967295
  %18 = add nsw i64 %17, -37
  %19 = icmp ult i64 %18, 8
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %10, %15, %3, %1
  %22 = phi i8 [ 1, %3 ], [ 1, %1 ], [ 1, %10 ], [ %20, %15 ]
  ret i8 %22
}

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_reg_classes(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readonly %5) unnamed_addr #2 !prof !340 !PGOFuncName !341 {
  %7 = alloca [30 x i32], align 16
  %8 = alloca [30 x i32], align 16
  %9 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #18
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14, !prof !342

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 0, i64 %13, i1 false), !tbaa !119
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %606, !prof !342

16:                                               ; preds = %14
  %17 = icmp eq ptr %5, null
  %18 = zext nneg i32 %1 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %16, %603
  %21 = phi i32 [ 0, %16 ], [ %604, %603 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #18
  br i1 %10, label %22, label %603, !prof !343

22:                                               ; preds = %20, %550
  %23 = phi i64 [ %553, %550 ], [ 0, %20 ]
  %24 = phi i32 [ %552, %550 ], [ 0, %20 ]
  %25 = phi i32 [ %551, %550 ], [ 0, %20 ]
  %26 = getelementptr inbounds ptr, ptr %3, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = getelementptr inbounds ptr, ptr @recog_data, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = getelementptr inbounds i32, ptr %2, i64 %23
  %31 = load i32, ptr %30, align 4, !tbaa !119
  %32 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %23
  store i32 0, ptr %32, align 4, !tbaa !119
  %33 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %23
  store i32 0, ptr %33, align 4, !tbaa !119
  %34 = load i8, ptr %27, align 1, !tbaa !177
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %48, !prof !344

36:                                               ; preds = %22
  %37 = load i32, ptr %29, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %550, !prof !345

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %42 = icmp ugt i32 %41, 52
  br i1 %42, label %43, label %550

43:                                               ; preds = %40
  %44 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %45 = load ptr, ptr %44, align 8, !tbaa !115
  %46 = load i32, ptr @struct_costs_size, align 4, !tbaa !119
  %47 = sext i32 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %45, i8 0, i64 %47, i1 false)
  br label %550

48:                                               ; preds = %22, %51
  %49 = phi i8 [ %53, %51 ], [ %34, %22 ]
  %50 = phi ptr [ %52, %51 ], [ %27, %22 ]
  switch i8 %49, label %54 [
    i8 37, label %51
    i8 61, label %51
    i8 43, label %51
    i8 38, label %51
  ], !prof !346

51:                                               ; preds = %48, %48, %48, %48
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !177
  br label %48, !llvm.loop !347

54:                                               ; preds = %48
  %55 = icmp slt i8 %49, 48
  %56 = add nuw nsw i64 %23, 48
  %57 = zext nneg i8 %49 to i64
  %58 = icmp ult i64 %56, %57
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %227, label %60, !prof !348

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %50, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !177
  switch i8 %62, label %227 [
    i8 44, label %63
    i8 0, label %63
  ], !prof !349

63:                                               ; preds = %60, %60
  %64 = zext nneg i8 %49 to i64
  %65 = add nsw i64 %64, -48
  %66 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !119
  store i32 %67, ptr %32, align 4, !tbaa !119
  %68 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !119
  store i32 %69, ptr %33, align 4, !tbaa !119
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !350

71:                                               ; preds = %63
  %72 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %72, align 4, !tbaa !119
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i32, ptr %29, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %80, !prof !351

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %79 = icmp ult i32 %78, 53
  br i1 %79, label %80, label %87, !prof !352

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %82 = load ptr, ptr %81, align 8, !tbaa !115
  %83 = tail call i32 @rtx_equal_p(ptr noundef %82, ptr noundef nonnull %29) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %227, !prof !353

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0
  br i1 %86, label %227, label %222, !prof !354

87:                                               ; preds = %77
  %88 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %89 = load ptr, ptr %88, align 8, !tbaa !115
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %96, !prof !355

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #16
  %95 = icmp ult i32 %94, 53
  br i1 %95, label %96, label %98, !prof !352

96:                                               ; preds = %93, %87
  %97 = icmp eq i32 %67, 0
  br i1 %97, label %227, label %222

98:                                               ; preds = %93
  %99 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %100 = load ptr, ptr %99, align 8, !tbaa !115
  %101 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %130, !prof !356

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %105

105:                                              ; preds = %103, %119
  %106 = phi i64 [ 0, %103 ], [ %126, %119 ]
  %107 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %108 = getelementptr inbounds i32, ptr %107, i64 %106
  %109 = load i32, ptr %108, align 4, !tbaa !119
  %110 = load i32, ptr %104, align 4, !tbaa !119
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %116, label %112, !prof !357

112:                                              ; preds = %105
  %113 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %109, i32 noundef %67, i8 noundef zeroext 1) #16, !range !314
  %114 = load i32, ptr %104, align 4, !tbaa !119
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116, !prof !278

116:                                              ; preds = %105, %112
  %117 = phi i32 [ %113, %112 ], [ 0, %105 ]
  %118 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %67, i32 noundef %109, i8 noundef zeroext 0) #16, !range !314
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi i32 [ %117, %116 ], [ %113, %112 ]
  %121 = phi i32 [ %118, %116 ], [ 0, %112 ]
  %122 = add nuw nsw i32 %121, %120
  %123 = load i32, ptr @frequency, align 4, !tbaa !119
  %124 = mul nsw i32 %122, %123
  %125 = getelementptr inbounds %struct.costs, ptr %100, i64 0, i32 1, i64 %106
  store i32 %124, ptr %125, align 4, !tbaa !119
  %126 = add nuw nsw i64 %106, 1
  %127 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %105, label %130, !prof !358, !llvm.loop !359

130:                                              ; preds = %119, %98
  %131 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %132 = load i32, ptr %131, align 4, !tbaa !119
  %133 = icmp eq i32 %132, 0
  %134 = zext i32 %31 to i64
  %135 = zext i32 %67 to i64
  br i1 %133, label %141, label %136, !prof !355

136:                                              ; preds = %130
  %137 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135
  %138 = load i16, ptr %137, align 4, !tbaa !210
  %139 = sext i16 %138 to i32
  %140 = icmp eq i32 %132, 1
  br i1 %140, label %146, label %141, !prof !278

141:                                              ; preds = %130, %136
  %142 = phi i32 [ %139, %136 ], [ 0, %130 ]
  %143 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !210
  %145 = sext i16 %144 to i32
  br label %146

146:                                              ; preds = %136, %141
  %147 = phi i32 [ %142, %141 ], [ %139, %136 ]
  %148 = phi i32 [ %145, %141 ], [ 0, %136 ]
  %149 = sub i32 %147, %69
  %150 = add i32 %149, %148
  %151 = load i32, ptr @frequency, align 4, !tbaa !119
  %152 = mul nsw i32 %150, %151
  store i32 %152, ptr %100, align 4, !tbaa !121
  br i1 %17, label %199, label %153, !prof !360

153:                                              ; preds = %146
  %154 = load i1, ptr @allocno_p, align 1
  br i1 %154, label %155, label %162, !prof !361

155:                                              ; preds = %153
  %156 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !115
  %157 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !115
  %161 = load i32, ptr %160, align 8, !tbaa !143
  br label %164

162:                                              ; preds = %153
  %163 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  br label %164

164:                                              ; preds = %162, %155
  %165 = phi i32 [ %161, %155 ], [ %163, %162 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !119
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %190, !prof !362

170:                                              ; preds = %164
  %171 = load i32, ptr %131, align 4, !tbaa !119
  %172 = icmp eq i32 %171, 0
  %173 = zext i32 %31 to i64
  %174 = zext i32 %67 to i64
  br i1 %172, label %180, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174
  %177 = load i16, ptr %176, align 4, !tbaa !210
  %178 = sext i16 %177 to i32
  %179 = icmp eq i32 %171, 1
  br i1 %179, label %185, label %180

180:                                              ; preds = %170, %175
  %181 = phi i32 [ %178, %175 ], [ 0, %170 ]
  %182 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !210
  %184 = sext i16 %183 to i32
  br label %185

185:                                              ; preds = %175, %180
  %186 = phi i32 [ %181, %180 ], [ %178, %175 ]
  %187 = phi i32 [ %184, %180 ], [ 0, %175 ]
  %188 = add i32 %186, %25
  %189 = add i32 %188, %187
  br label %199

190:                                              ; preds = %164
  %191 = zext i32 %168 to i64
  %192 = zext i32 %67 to i64
  %193 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %191, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !119
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199, !prof !363

196:                                              ; preds = %190
  %197 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %168, i32 noundef %67) #16, !range !314
  %198 = add nsw i32 %197, %25
  br label %199

199:                                              ; preds = %185, %196, %190, %146
  %200 = phi i32 [ %25, %146 ], [ %189, %185 ], [ %198, %196 ], [ %25, %190 ]
  %201 = load ptr, ptr %28, align 8, !tbaa !115
  %202 = tail call fastcc i32 @rhs_regno(ptr noundef %201) #16
  %203 = load ptr, ptr %88, align 8, !tbaa !115
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef %203) #16
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %211, label %206, !prof !364

206:                                              ; preds = %199
  %207 = tail call ptr @find_reg_note(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %29) #17
  %208 = icmp eq ptr %207, null
  %209 = add nsw i32 %200, 2
  %210 = select i1 %208, i32 %209, i32 %200, !prof !365
  br label %211

211:                                              ; preds = %206, %199
  %212 = phi i32 [ %200, %199 ], [ %210, %206 ]
  br label %213

213:                                              ; preds = %217, %211
  %214 = phi ptr [ %50, %211 ], [ %218, %217 ]
  %215 = load i8, ptr %214, align 1, !tbaa !177
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217, !prof !366

217:                                              ; preds = %213
  %218 = getelementptr inbounds i8, ptr %214, i64 1
  %219 = icmp eq i8 %215, 44
  br i1 %219, label %220, label %213, !prof !367, !llvm.loop !368

220:                                              ; preds = %213, %217
  %221 = phi ptr [ %218, %217 ], [ %214, %213 ]
  store ptr %221, ptr %26, align 8, !tbaa !115
  br label %550

222:                                              ; preds = %96, %85
  %223 = phi ptr [ %29, %85 ], [ %89, %96 ]
  %224 = phi i32 [ 1, %85 ], [ 0, %96 ]
  %225 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %223, i32 noundef %31, i32 noundef %67, i8 noundef zeroext 1, ptr noundef null) #16
  %226 = add nsw i32 %225, %25
  br label %227

227:                                              ; preds = %222, %96, %80, %60, %85, %54
  %228 = phi i32 [ %69, %85 ], [ 0, %54 ], [ 0, %60 ], [ %69, %80 ], [ %69, %96 ], [ %69, %222 ]
  %229 = phi i32 [ 0, %85 ], [ 0, %54 ], [ 0, %60 ], [ %67, %80 ], [ 0, %96 ], [ %67, %222 ]
  %230 = phi i32 [ 0, %85 ], [ 0, %54 ], [ 0, %60 ], [ 1, %80 ], [ 0, %96 ], [ %224, %222 ]
  %231 = phi i32 [ %25, %85 ], [ %25, %54 ], [ %25, %60 ], [ %25, %80 ], [ %25, %96 ], [ %226, %222 ]
  %232 = phi i32 [ %24, %85 ], [ %24, %54 ], [ %24, %60 ], [ %24, %80 ], [ 1, %96 ], [ %24, %222 ]
  br label %233

233:                                              ; preds = %382, %227
  %234 = phi i32 [ %228, %227 ], [ %383, %382 ]
  %235 = phi i32 [ %229, %227 ], [ %384, %382 ]
  %236 = phi i32 [ %230, %227 ], [ %385, %382 ]
  %237 = phi i32 [ 0, %227 ], [ %386, %382 ]
  %238 = phi ptr [ %50, %227 ], [ %391, %382 ]
  %239 = phi i32 [ %231, %227 ], [ %389, %382 ]
  %240 = load i8, ptr %238, align 1, !tbaa !177
  switch i8 %240, label %366 [
    i8 0, label %393
    i8 44, label %382
    i8 42, label %243
    i8 63, label %246
    i8 33, label %382
    i8 35, label %382
    i8 38, label %382
    i8 48, label %382
    i8 49, label %382
    i8 50, label %382
    i8 51, label %382
    i8 52, label %382
    i8 53, label %382
    i8 54, label %382
    i8 55, label %382
    i8 56, label %382
    i8 57, label %382
    i8 112, label %248
    i8 109, label %256
    i8 111, label %256
    i8 86, label %256
    i8 60, label %262
    i8 62, label %272
    i8 69, label %282
    i8 70, label %282
    i8 71, label %293
    i8 72, label %293
    i8 115, label %302
    i8 105, label %241
    i8 110, label %322
    i8 73, label %329
    i8 74, label %329
    i8 75, label %329
    i8 76, label %329
    i8 77, label %329
    i8 78, label %329
    i8 79, label %329
    i8 80, label %329
    i8 88, label %340
    i8 103, label %341
    i8 114, label %360
  ], !prof !369

241:                                              ; preds = %233
  %242 = load i32, ptr %29, align 8
  br label %308

243:                                              ; preds = %233
  %244 = getelementptr inbounds i8, ptr %238, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !177
  br label %382

246:                                              ; preds = %233
  %247 = add nsw i32 %239, 2
  br label %382

248:                                              ; preds = %233
  %249 = load i32, ptr %29, align 8
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  %252 = tail call i32 @address_operand(ptr noundef nonnull %29, i32 noundef %251) #17
  %253 = zext i32 %235 to i64
  %254 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %253, i64 13
  %255 = load i32, ptr %254, align 4, !tbaa !119
  store i32 %255, ptr %32, align 4, !tbaa !119
  br label %382

256:                                              ; preds = %233, %233, %233
  %257 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %33, align 4, !tbaa !119
  store i32 1, ptr %257, align 4, !tbaa !119
  %258 = load i32, ptr %29, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 43
  %261 = select i1 %260, i32 1, i32 %236, !prof !370
  br label %382

262:                                              ; preds = %233
  %263 = load i32, ptr %29, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 43
  br i1 %265, label %266, label %382

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !177
  %269 = load i32, ptr %268, align 8
  %270 = trunc i32 %269 to i16
  switch i16 %270, label %382 [
    i16 74, label %271
    i16 76, label %271
  ]

271:                                              ; preds = %266, %266
  br label %382

272:                                              ; preds = %233
  %273 = load i32, ptr %29, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 43
  br i1 %275, label %276, label %382

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !177
  %279 = load i32, ptr %278, align 8
  %280 = trunc i32 %279 to i16
  switch i16 %280, label %382 [
    i16 75, label %281
    i16 77, label %281
  ]

281:                                              ; preds = %276, %276
  br label %382

282:                                              ; preds = %233, %233
  %283 = load i32, ptr %29, align 8
  %284 = trunc i32 %283 to i16
  switch i16 %284, label %382 [
    i16 32, label %292
    i16 33, label %285
  ]

285:                                              ; preds = %282
  %286 = lshr i32 %283, 16
  %287 = and i32 %286, 255
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !177
  %291 = icmp eq i8 %290, 17
  br i1 %291, label %292, label %382

292:                                              ; preds = %282, %285
  br label %382

293:                                              ; preds = %233, %233
  %294 = load i32, ptr %29, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 32
  br i1 %296, label %297, label %382

297:                                              ; preds = %293
  %298 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %299 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %29, i32 noundef %298) #17
  %300 = icmp eq i8 %299, 0
  %301 = select i1 %300, i32 %236, i32 1
  br label %382

302:                                              ; preds = %233
  %303 = load i32, ptr %29, align 8
  %304 = trunc i32 %303 to i16
  switch i16 %304, label %308 [
    i16 30, label %382
    i16 32, label %305
  ]

305:                                              ; preds = %302
  %306 = and i32 %303, 16711680
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %382, label %308

308:                                              ; preds = %241, %302, %305
  %309 = phi i32 [ %242, %241 ], [ %303, %302 ], [ %303, %305 ]
  %310 = and i32 %309, 65535
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !119
  %314 = icmp eq i32 %313, 9
  br i1 %314, label %315, label %382, !prof !371

315:                                              ; preds = %308
  %316 = load i32, ptr @flag_pic, align 4, !tbaa !119
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318, !prof !372

318:                                              ; preds = %315
  %319 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %29) #17
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %382, label %321

321:                                              ; preds = %318, %315
  br label %382

322:                                              ; preds = %233
  %323 = load i32, ptr %29, align 8
  %324 = trunc i32 %323 to i16
  switch i16 %324, label %382 [
    i16 30, label %328
    i16 32, label %325
  ], !prof !373

325:                                              ; preds = %322
  %326 = and i32 %323, 16711680
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %382

328:                                              ; preds = %322, %325
  br label %382

329:                                              ; preds = %233, %233, %233, %233, %233, %233, %233, %233
  %330 = load i32, ptr %29, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 30
  br i1 %332, label %333, label %382, !prof !374

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !177
  %336 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %337 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %335, i32 noundef %336) #17
  %338 = icmp eq i8 %337, 0
  %339 = select i1 %338, i32 %236, i32 1, !prof !375
  br label %382

340:                                              ; preds = %233
  br label %382

341:                                              ; preds = %233
  %342 = load i32, ptr %29, align 8
  %343 = and i32 %342, 65535
  %344 = icmp eq i32 %343, 43
  br i1 %344, label %356, label %345, !prof !376

345:                                              ; preds = %341
  %346 = zext nneg i32 %343 to i64
  %347 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !119
  %349 = icmp eq i32 %348, 9
  br i1 %349, label %350, label %357, !prof !377

350:                                              ; preds = %345
  %351 = load i32, ptr @flag_pic, align 4, !tbaa !119
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %356, label %353, !prof !378

353:                                              ; preds = %350
  %354 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %29) #17
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %353, %350, %341
  br label %357

357:                                              ; preds = %356, %353, %345
  %358 = phi i32 [ 1, %356 ], [ %236, %353 ], [ %236, %345 ]
  %359 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %33, align 4, !tbaa !119
  store i32 1, ptr %359, align 4, !tbaa !119
  br label %360

360:                                              ; preds = %233, %357
  %361 = phi i32 [ 1, %357 ], [ %234, %233 ]
  %362 = phi i32 [ %358, %357 ], [ %236, %233 ]
  %363 = zext i32 %235 to i64
  %364 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %363, i64 13
  %365 = load i32, ptr %364, align 4, !tbaa !119
  store i32 %365, ptr %32, align 4, !tbaa !119
  br label %382

366:                                              ; preds = %233
  %367 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %368 = tail call i32 @regclass_for_constraint(i32 noundef %367) #17
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %377, label %370, !prof !379

370:                                              ; preds = %366
  %371 = zext i32 %235 to i64
  %372 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %373 = tail call i32 @regclass_for_constraint(i32 noundef %372) #17
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %371, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !119
  store i32 %376, ptr %32, align 4, !tbaa !119
  br label %382

377:                                              ; preds = %366
  %378 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %379 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %29, i32 noundef %378) #17
  %380 = icmp eq i8 %379, 0
  %381 = select i1 %380, i32 %236, i32 1, !prof !380
  br label %382

382:                                              ; preds = %377, %333, %297, %256, %322, %302, %282, %276, %266, %233, %233, %233, %233, %233, %233, %233, %233, %233, %233, %233, %233, %233, %233, %370, %329, %325, %328, %308, %318, %321, %305, %293, %285, %292, %272, %281, %262, %271, %246, %360, %340, %248, %243
  %383 = phi i32 [ %234, %370 ], [ %361, %360 ], [ %234, %340 ], [ %234, %329 ], [ %234, %328 ], [ %234, %325 ], [ %234, %321 ], [ %234, %318 ], [ %234, %308 ], [ %234, %302 ], [ %234, %305 ], [ %234, %293 ], [ %234, %292 ], [ %234, %285 ], [ %234, %281 ], [ %234, %272 ], [ %234, %271 ], [ %234, %262 ], [ %234, %248 ], [ %234, %246 ], [ %234, %243 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ %234, %233 ], [ 1, %256 ], [ %234, %266 ], [ %234, %276 ], [ %234, %282 ], [ %234, %297 ], [ %234, %322 ], [ %234, %333 ], [ %234, %377 ]
  %384 = phi i32 [ %376, %370 ], [ %365, %360 ], [ %235, %340 ], [ %235, %329 ], [ %235, %328 ], [ %235, %325 ], [ %235, %321 ], [ %235, %318 ], [ %235, %308 ], [ %235, %302 ], [ %235, %305 ], [ %235, %293 ], [ %235, %292 ], [ %235, %285 ], [ %235, %281 ], [ %235, %272 ], [ %235, %271 ], [ %235, %262 ], [ %255, %248 ], [ %235, %246 ], [ %235, %243 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %233 ], [ %235, %256 ], [ %235, %266 ], [ %235, %276 ], [ %235, %282 ], [ %235, %297 ], [ %235, %322 ], [ %235, %333 ], [ %235, %377 ]
  %385 = phi i32 [ %236, %370 ], [ %362, %360 ], [ 1, %340 ], [ %236, %329 ], [ 1, %328 ], [ %236, %325 ], [ 1, %321 ], [ %236, %318 ], [ %236, %308 ], [ %236, %302 ], [ %236, %305 ], [ %236, %293 ], [ 1, %292 ], [ %236, %285 ], [ 1, %281 ], [ %236, %272 ], [ 1, %271 ], [ %236, %262 ], [ %252, %248 ], [ %236, %246 ], [ %236, %243 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %236, %233 ], [ %261, %256 ], [ %236, %266 ], [ %236, %276 ], [ %236, %282 ], [ %301, %297 ], [ %236, %322 ], [ %339, %333 ], [ %381, %377 ]
  %386 = phi i32 [ %237, %370 ], [ %237, %360 ], [ %237, %340 ], [ %237, %329 ], [ %237, %328 ], [ %237, %325 ], [ %237, %321 ], [ %237, %318 ], [ %237, %308 ], [ %237, %302 ], [ %237, %305 ], [ %237, %293 ], [ %237, %292 ], [ %237, %285 ], [ %237, %281 ], [ %237, %272 ], [ %237, %271 ], [ %237, %262 ], [ 1, %248 ], [ %237, %246 ], [ %237, %243 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %233 ], [ %237, %256 ], [ %237, %266 ], [ %237, %276 ], [ %237, %282 ], [ %237, %297 ], [ %237, %322 ], [ %237, %333 ], [ %237, %377 ]
  %387 = phi ptr [ %238, %370 ], [ %238, %360 ], [ %238, %340 ], [ %238, %329 ], [ %238, %328 ], [ %238, %325 ], [ %238, %321 ], [ %238, %318 ], [ %238, %308 ], [ %238, %302 ], [ %238, %305 ], [ %238, %293 ], [ %238, %292 ], [ %238, %285 ], [ %238, %281 ], [ %238, %272 ], [ %238, %271 ], [ %238, %262 ], [ %238, %248 ], [ %238, %246 ], [ %244, %243 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %233 ], [ %238, %256 ], [ %238, %266 ], [ %238, %276 ], [ %238, %282 ], [ %238, %297 ], [ %238, %322 ], [ %238, %333 ], [ %238, %377 ]
  %388 = phi i8 [ %240, %370 ], [ %240, %360 ], [ 88, %340 ], [ %240, %329 ], [ 110, %328 ], [ 110, %325 ], [ %240, %321 ], [ %240, %318 ], [ %240, %308 ], [ 115, %302 ], [ 115, %305 ], [ %240, %293 ], [ %240, %292 ], [ %240, %285 ], [ 62, %281 ], [ 62, %272 ], [ 60, %271 ], [ 60, %262 ], [ 112, %248 ], [ 63, %246 ], [ %245, %243 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %233 ], [ %240, %256 ], [ 60, %266 ], [ 62, %276 ], [ %240, %282 ], [ %240, %297 ], [ 110, %322 ], [ %240, %333 ], [ %240, %377 ]
  %389 = phi i32 [ %239, %370 ], [ %239, %360 ], [ %239, %340 ], [ %239, %329 ], [ %239, %328 ], [ %239, %325 ], [ %239, %321 ], [ %239, %318 ], [ %239, %308 ], [ %239, %302 ], [ %239, %305 ], [ %239, %293 ], [ %239, %292 ], [ %239, %285 ], [ %239, %281 ], [ %239, %272 ], [ %239, %271 ], [ %239, %262 ], [ %239, %248 ], [ %247, %246 ], [ %239, %243 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %233 ], [ %239, %256 ], [ %239, %266 ], [ %239, %276 ], [ %239, %282 ], [ %239, %297 ], [ %239, %322 ], [ %239, %333 ], [ %239, %377 ]
  %390 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %388) #16
  %391 = getelementptr inbounds i8, ptr %387, i64 %390
  %392 = icmp eq i8 %388, 44
  br i1 %392, label %393, label %233, !prof !381, !llvm.loop !382

393:                                              ; preds = %233, %382
  %394 = phi i32 [ %383, %382 ], [ %234, %233 ]
  %395 = phi i32 [ %384, %382 ], [ %235, %233 ]
  %396 = phi i32 [ %385, %382 ], [ %236, %233 ]
  %397 = phi i32 [ %386, %382 ], [ %237, %233 ]
  %398 = phi ptr [ %391, %382 ], [ %238, %233 ]
  %399 = phi i32 [ %389, %382 ], [ %239, %233 ]
  store ptr %398, ptr %26, align 8, !tbaa !115
  %400 = load i32, ptr %29, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 37
  br i1 %402, label %403, label %511, !prof !383

403:                                              ; preds = %393
  %404 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %405 = icmp ugt i32 %404, 52
  br i1 %405, label %406, label %509, !prof !384

406:                                              ; preds = %403
  %407 = icmp eq i32 %395, 0
  br i1 %407, label %550, label %408, !prof !385

408:                                              ; preds = %406
  %409 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %410 = load ptr, ptr %409, align 8, !tbaa !115
  %411 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %440, !prof !386

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %415

415:                                              ; preds = %413, %429
  %416 = phi i64 [ 0, %413 ], [ %436, %429 ]
  %417 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  %418 = getelementptr inbounds i32, ptr %417, i64 %416
  %419 = load i32, ptr %418, align 4, !tbaa !119
  %420 = load i32, ptr %414, align 4, !tbaa !119
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %426, label %422, !prof !387

422:                                              ; preds = %415
  %423 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %419, i32 noundef %395, i8 noundef zeroext 1) #16, !range !314
  %424 = load i32, ptr %414, align 4, !tbaa !119
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %429, label %426, !prof !278

426:                                              ; preds = %415, %422
  %427 = phi i32 [ %423, %422 ], [ 0, %415 ]
  %428 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %395, i32 noundef %419, i8 noundef zeroext 0) #16, !range !314
  br label %429

429:                                              ; preds = %422, %426
  %430 = phi i32 [ %427, %426 ], [ %423, %422 ]
  %431 = phi i32 [ %428, %426 ], [ 0, %422 ]
  %432 = add nuw nsw i32 %431, %430
  %433 = load i32, ptr @frequency, align 4, !tbaa !119
  %434 = mul nsw i32 %432, %433
  %435 = getelementptr inbounds %struct.costs, ptr %410, i64 0, i32 1, i64 %416
  store i32 %434, ptr %435, align 4, !tbaa !119
  %436 = add nuw nsw i64 %416, 1
  %437 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %438 = sext i32 %437 to i64
  %439 = icmp slt i64 %436, %438
  br i1 %439, label %415, label %440, !prof !388, !llvm.loop !389

440:                                              ; preds = %429, %408
  %441 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %442 = load i32, ptr %441, align 4, !tbaa !119
  %443 = icmp eq i32 %442, 0
  %444 = zext i32 %31 to i64
  %445 = zext i32 %395 to i64
  br i1 %443, label %451, label %446, !prof !390

446:                                              ; preds = %440
  %447 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %444, i64 %445
  %448 = load i16, ptr %447, align 4, !tbaa !210
  %449 = sext i16 %448 to i32
  %450 = icmp eq i32 %442, 1
  br i1 %450, label %456, label %451, !prof !278

451:                                              ; preds = %440, %446
  %452 = phi i32 [ %449, %446 ], [ 0, %440 ]
  %453 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %444, i64 %445, i64 1
  %454 = load i16, ptr %453, align 2, !tbaa !210
  %455 = sext i16 %454 to i32
  br label %456

456:                                              ; preds = %446, %451
  %457 = phi i32 [ %452, %451 ], [ %449, %446 ]
  %458 = phi i32 [ %455, %451 ], [ 0, %446 ]
  %459 = add nsw i32 %458, %457
  %460 = sub i32 %459, %394
  %461 = load i32, ptr @frequency, align 4, !tbaa !119
  %462 = mul nsw i32 %460, %461
  store i32 %462, ptr %410, align 4, !tbaa !121
  br i1 %17, label %550, label %463, !prof !391

463:                                              ; preds = %456
  %464 = load i1, ptr @allocno_p, align 1
  br i1 %464, label %465, label %472, !prof !392

465:                                              ; preds = %463
  %466 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !115
  %467 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds ptr, ptr %466, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !115
  %471 = load i32, ptr %470, align 8, !tbaa !143
  br label %474

472:                                              ; preds = %463
  %473 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  br label %474

474:                                              ; preds = %472, %465
  %475 = phi i32 [ %471, %465 ], [ %473, %472 ]
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, ptr %5, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !119
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %500, !prof !393

480:                                              ; preds = %474
  %481 = load i32, ptr %441, align 4, !tbaa !119
  %482 = icmp eq i32 %481, 0
  %483 = zext i32 %31 to i64
  %484 = zext i32 %395 to i64
  br i1 %482, label %490, label %485

485:                                              ; preds = %480
  %486 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %483, i64 %484
  %487 = load i16, ptr %486, align 4, !tbaa !210
  %488 = sext i16 %487 to i32
  %489 = icmp eq i32 %481, 1
  br i1 %489, label %495, label %490

490:                                              ; preds = %480, %485
  %491 = phi i32 [ %488, %485 ], [ 0, %480 ]
  %492 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %483, i64 %484, i64 1
  %493 = load i16, ptr %492, align 2, !tbaa !210
  %494 = sext i16 %493 to i32
  br label %495

495:                                              ; preds = %485, %490
  %496 = phi i32 [ %491, %490 ], [ %488, %485 ]
  %497 = phi i32 [ %494, %490 ], [ 0, %485 ]
  %498 = add i32 %496, %399
  %499 = add i32 %498, %497
  br label %550

500:                                              ; preds = %474
  %501 = zext i32 %478 to i64
  %502 = zext i32 %395 to i64
  %503 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %501, i64 %502
  %504 = load i32, ptr %503, align 4, !tbaa !119
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %550, !prof !393

506:                                              ; preds = %500
  %507 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %478, i32 noundef %395) #16, !range !314
  %508 = add nsw i32 %507, %399
  br label %550

509:                                              ; preds = %403
  %510 = icmp eq i32 %396, 0
  br i1 %510, label %513, label %550, !prof !394

511:                                              ; preds = %393
  %512 = icmp eq i32 %396, 0
  br i1 %512, label %518, label %550, !prof !394

513:                                              ; preds = %509
  %514 = lshr i32 %400, 16
  %515 = and i32 %514, 255
  %516 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %29, i32 noundef %395, i32 noundef 0, i32 noundef %515) #17
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %550, !prof !395

518:                                              ; preds = %511, %513
  %519 = icmp eq i32 %395, 0
  br i1 %519, label %533, label %520, !prof !396

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %522 = load i32, ptr %521, align 4, !tbaa !119
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %529, label %524, !prof !397

524:                                              ; preds = %520
  %525 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %395, i8 noundef zeroext 1, ptr noundef null) #16
  %526 = add nsw i32 %525, %399
  %527 = load i32, ptr %521, align 4, !tbaa !119
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %550, label %529, !prof !278

529:                                              ; preds = %520, %524
  %530 = phi i32 [ %526, %524 ], [ %399, %520 ]
  %531 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %395, i8 noundef zeroext 0, ptr noundef null) #16
  %532 = add nsw i32 %531, %530
  br label %550

533:                                              ; preds = %518
  %534 = load i32, ptr %29, align 8
  %535 = and i32 %534, 65535
  %536 = zext nneg i32 %535 to i64
  %537 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !119
  %539 = icmp eq i32 %538, 9
  br i1 %539, label %540, label %550, !prof !398

540:                                              ; preds = %533
  %541 = icmp eq i32 %397, 0
  %542 = icmp eq i32 %394, 0
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %550, label %544, !prof !399

544:                                              ; preds = %540
  %545 = zext i32 %31 to i64
  %546 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %545, i64 0, i64 1
  %547 = load i16, ptr %546, align 2, !tbaa !210
  %548 = sext i16 %547 to i32
  %549 = add nsw i32 %399, %548
  br label %550

550:                                              ; preds = %540, %511, %529, %524, %544, %509, %513, %406, %495, %506, %500, %456, %533, %36, %40, %43, %220
  %551 = phi i32 [ %212, %220 ], [ %25, %43 ], [ %25, %40 ], [ %25, %36 ], [ %399, %509 ], [ %399, %513 ], [ %532, %529 ], [ %526, %524 ], [ %549, %544 ], [ %399, %406 ], [ %399, %456 ], [ %499, %495 ], [ %508, %506 ], [ %399, %500 ], [ %399, %533 ], [ %399, %511 ], [ %399, %540 ]
  %552 = phi i32 [ %24, %220 ], [ %24, %43 ], [ %24, %40 ], [ %24, %36 ], [ %232, %509 ], [ %232, %513 ], [ %232, %529 ], [ %232, %524 ], [ %232, %544 ], [ 1, %406 ], [ %232, %456 ], [ %232, %495 ], [ %232, %506 ], [ %232, %500 ], [ 1, %533 ], [ %232, %511 ], [ 1, %540 ]
  %553 = add nuw nsw i64 %23, 1
  %554 = icmp eq i64 %553, %18
  br i1 %554, label %555, label %22, !prof !400, !llvm.loop !401

555:                                              ; preds = %550
  %556 = icmp eq i32 %552, 0
  br i1 %556, label %557, label %603, !prof !402

557:                                              ; preds = %555
  %558 = load i32, ptr @frequency, align 4, !tbaa !119
  %559 = mul nsw i32 %558, %551
  br i1 %10, label %560, label %603, !prof !278

560:                                              ; preds = %557
  %561 = load i32, ptr @cost_classes_num, align 4
  br label %562

562:                                              ; preds = %560, %600
  %563 = phi i64 [ 0, %560 ], [ %601, %600 ]
  %564 = getelementptr inbounds ptr, ptr @recog_data, i64 %563
  %565 = load ptr, ptr %564, align 8, !tbaa !115
  %566 = load i32, ptr %565, align 8
  %567 = and i32 %566, 65535
  %568 = icmp eq i32 %567, 37
  br i1 %568, label %569, label %600, !prof !403

569:                                              ; preds = %562
  %570 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %565) #16
  %571 = icmp ugt i32 %570, 52
  br i1 %571, label %572, label %600, !prof !404

572:                                              ; preds = %569
  %573 = icmp sgt i32 %561, 0
  %574 = getelementptr inbounds ptr, ptr @op_costs, i64 %563
  %575 = load ptr, ptr %574, align 8, !tbaa !115
  %576 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %563
  %577 = load ptr, ptr %576, align 8, !tbaa !115
  %578 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %563
  %579 = load i32, ptr %578, align 4, !tbaa !119
  %580 = icmp eq i32 %579, 2
  %581 = load i32, ptr %575, align 4, !tbaa !121
  %582 = load i32, ptr %577, align 4, !tbaa !121
  %583 = add nsw i32 %582, %559
  %584 = zext i1 %580 to i32
  %585 = shl i32 %583, %584
  %586 = tail call i32 @llvm.smin.i32(i32 %581, i32 %585)
  store i32 %586, ptr %575, align 4, !tbaa !121
  br i1 %573, label %587, label %600, !prof !405

587:                                              ; preds = %572
  %588 = zext nneg i32 %561 to i64
  br label %589

589:                                              ; preds = %587, %589
  %590 = phi i64 [ %598, %589 ], [ 0, %587 ]
  %591 = getelementptr inbounds %struct.costs, ptr %575, i64 0, i32 1, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !119
  %593 = getelementptr inbounds %struct.costs, ptr %577, i64 0, i32 1, i64 %590
  %594 = load i32, ptr %593, align 4, !tbaa !119
  %595 = add nsw i32 %594, %559
  %596 = shl i32 %595, %584
  %597 = tail call i32 @llvm.smin.i32(i32 %592, i32 %596)
  store i32 %597, ptr %591, align 4, !tbaa !119
  %598 = add nuw nsw i64 %590, 1
  %599 = icmp eq i64 %598, %588
  br i1 %599, label %600, label %589, !prof !406, !llvm.loop !407

600:                                              ; preds = %589, %572, %562, %569
  %601 = add nuw nsw i64 %563, 1
  %602 = icmp eq i64 %601, %19
  br i1 %602, label %603, label %562, !prof !408, !llvm.loop !409

603:                                              ; preds = %600, %20, %557, %555
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #18
  %604 = add nuw nsw i32 %21, 1
  %605 = icmp eq i32 %604, %0
  br i1 %605, label %606, label %20, !prof !410, !llvm.loop !411

606:                                              ; preds = %603, %14
  %607 = load i1, ptr @allocno_p, align 1
  %608 = and i1 %607, %10
  br i1 %608, label %609, label %639, !prof !412

609:                                              ; preds = %606
  %610 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %611 = zext nneg i32 %1 to i64
  br label %612

612:                                              ; preds = %609, %636
  %613 = phi i64 [ 0, %609 ], [ %637, %636 ]
  %614 = getelementptr inbounds ptr, ptr @recog_data, i64 %613
  %615 = load ptr, ptr %614, align 8, !tbaa !115
  %616 = load i32, ptr %615, align 8
  %617 = and i32 %616, 65535
  %618 = icmp eq i32 %617, 37
  br i1 %618, label %619, label %636, !prof !413

619:                                              ; preds = %612
  %620 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %615) #16
  %621 = icmp ult i32 %620, 53
  br i1 %621, label %636, label %622, !prof !414

622:                                              ; preds = %619
  %623 = zext i32 %620 to i64
  %624 = getelementptr inbounds ptr, ptr %610, i64 %623
  %625 = load ptr, ptr %624, align 8, !tbaa !115
  %626 = getelementptr inbounds %struct.ira_allocno, ptr %625, i64 0, i32 31
  %627 = load i16, ptr %626, align 4
  %628 = and i16 %627, 64
  %629 = icmp eq i16 %628, 0
  br i1 %629, label %630, label %636, !prof !415

630:                                              ; preds = %622
  %631 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %613
  %632 = load i32, ptr %631, align 4, !tbaa !119
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %636, !prof !416

634:                                              ; preds = %630
  %635 = or disjoint i16 %627, 64
  store i16 %635, ptr %626, align 4
  br label %636

636:                                              ; preds = %622, %630, %634, %612, %619
  %637 = add nuw nsw i64 %613, 1
  %638 = icmp eq i64 %637, %611
  br i1 %638, label %639, label %612, !prof !417, !llvm.loop !418

639:                                              ; preds = %636, %606
  %640 = load i32, ptr %4, align 8
  %641 = and i32 %640, 65535
  %642 = add nsw i32 %641, -7
  %643 = icmp ult i32 %642, 4
  br i1 %643, label %644, label %774, !prof !419

644:                                              ; preds = %639
  %645 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %646 = load ptr, ptr %645, align 8, !tbaa !177
  %647 = load i32, ptr %646, align 8
  %648 = and i32 %647, 65535
  %649 = icmp eq i32 %648, 23
  br i1 %649, label %653, label %650, !prof !420

650:                                              ; preds = %644
  %651 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %646) #17
  %652 = icmp eq ptr %651, null
  br i1 %652, label %774, label %653, !prof !421

653:                                              ; preds = %644, %650
  %654 = phi ptr [ %651, %650 ], [ %646, %644 ]
  %655 = load ptr, ptr @recog_data, align 8, !tbaa !115
  %656 = getelementptr inbounds %struct.rtx_def, ptr %654, i64 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !177
  %658 = icmp eq ptr %655, %657
  br i1 %658, label %659, label %774, !prof !422

659:                                              ; preds = %653
  %660 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !115
  %661 = getelementptr inbounds %struct.rtx_def, ptr %654, i64 0, i32 1, i32 0, i32 0, i64 1
  %662 = load ptr, ptr %661, align 8, !tbaa !177
  %663 = icmp eq ptr %660, %662
  br i1 %663, label %664, label %774, !prof !423

664:                                              ; preds = %659
  %665 = load i32, ptr %655, align 8
  %666 = and i32 %665, 65535
  %667 = icmp eq i32 %666, 37
  br i1 %667, label %668, label %774, !prof !424

668:                                              ; preds = %664
  %669 = load i32, ptr %660, align 8
  %670 = and i32 %669, 65535
  %671 = icmp eq i32 %670, 37
  br i1 %671, label %672, label %774, !prof !425

672:                                              ; preds = %668
  %673 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %660) #16
  %674 = tail call ptr @find_regno_note(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %673) #17
  %675 = icmp eq ptr %674, null
  br i1 %675, label %774, label %676, !prof !426

676:                                              ; preds = %672, %773
  %677 = phi i1 [ false, %773 ], [ true, %672 ]
  %678 = phi i64 [ 1, %773 ], [ 0, %672 ]
  %679 = getelementptr inbounds ptr, ptr @recog_data, i64 %678
  %680 = load ptr, ptr %679, align 8, !tbaa !115
  %681 = tail call fastcc i32 @rhs_regno(ptr noundef %680) #16
  %682 = icmp ugt i32 %681, 52
  br i1 %682, label %683, label %773, !prof !427

683:                                              ; preds = %676
  %684 = xor i64 %678, 1
  %685 = getelementptr inbounds ptr, ptr @recog_data, i64 %684
  %686 = load ptr, ptr %685, align 8, !tbaa !115
  %687 = tail call fastcc i32 @rhs_regno(ptr noundef %686) #16
  %688 = icmp ult i32 %687, 53
  %689 = load i32, ptr @cost_classes_num, align 4
  %690 = icmp sgt i32 %689, 0
  %691 = select i1 %688, i1 %690, i1 false
  br i1 %691, label %692, label %773, !prof !428

692:                                              ; preds = %683
  %693 = load i32, ptr %686, align 8
  %694 = lshr i32 %693, 16
  %695 = and i32 %694, 255
  %696 = zext nneg i32 %687 to i64
  %697 = shl nuw nsw i64 1, %696
  %698 = icmp eq i32 %695, 40
  %699 = zext nneg i32 %695 to i64
  %700 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %699
  %701 = getelementptr inbounds ptr, ptr @op_costs, i64 %678
  %702 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  br label %703

703:                                              ; preds = %692, %767
  %704 = phi ptr [ %702, %692 ], [ %768, %767 ]
  %705 = phi i64 [ 0, %692 ], [ %769, %767 ]
  %706 = getelementptr inbounds i32, ptr %704, i64 %705
  %707 = load i32, ptr %706, align 4, !tbaa !119
  %708 = zext i32 %707 to i64
  %709 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %708
  %710 = load i64, ptr %709, align 8, !tbaa !212
  %711 = and i64 %710, %697
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %767, label %713, !prof !429

713:                                              ; preds = %703
  %714 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %708
  %715 = load i32, ptr %714, align 4, !tbaa !119
  %716 = tail call i32 @reg_classes_intersect_p(i32 noundef %707, i32 noundef 13) #17
  %717 = icmp eq i32 %716, 0
  %718 = load ptr, ptr @cost_classes, align 8, !tbaa !115
  br i1 %717, label %719, label %726, !prof !430

719:                                              ; preds = %713
  %720 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %699
  %721 = load i8, ptr %720, align 1, !tbaa !177
  %722 = freeze i8 %721
  %723 = and i8 %722, -2
  %724 = icmp eq i8 %723, 10
  %725 = select i1 %724, i32 2, i32 1, !prof !431
  br label %734

726:                                              ; preds = %713
  br i1 %698, label %730, label %727

727:                                              ; preds = %726
  %728 = load i8, ptr %700, align 1, !tbaa !177
  %729 = zext i8 %728 to i32
  br label %730

730:                                              ; preds = %726, %727
  %731 = phi i32 [ %729, %727 ], [ 12, %726 ]
  %732 = add nuw nsw i32 %731, 3
  %733 = lshr i32 %732, 2
  br label %734

734:                                              ; preds = %719, %730
  %735 = phi i32 [ %733, %730 ], [ %725, %719 ]
  %736 = icmp eq i32 %715, %735
  br i1 %736, label %737, label %767, !prof !432

737:                                              ; preds = %734
  %738 = load i32, ptr %714, align 4, !tbaa !119
  %739 = icmp eq i32 %738, 1
  br i1 %739, label %762, label %740, !prof !432

740:                                              ; preds = %737
  %741 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %696, i64 %699
  %742 = load i8, ptr %741, align 1, !tbaa !177
  %743 = zext i8 %742 to i32
  %744 = icmp eq i8 %742, 0
  br i1 %744, label %759, label %745

745:                                              ; preds = %740
  %746 = load i64, ptr %709, align 8, !tbaa !212
  %747 = zext i8 %742 to i64
  br label %748

748:                                              ; preds = %745, %754
  %749 = phi i64 [ 0, %745 ], [ %755, %754 ]
  %750 = add nuw nsw i64 %749, %696
  %751 = shl nuw i64 1, %750
  %752 = and i64 %746, %751
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %757, label %754

754:                                              ; preds = %748
  %755 = add nuw nsw i64 %749, 1
  %756 = icmp eq i64 %755, %747
  br i1 %756, label %762, label %748, !llvm.loop !433

757:                                              ; preds = %748
  %758 = trunc i64 %749 to i32
  br label %759

759:                                              ; preds = %757, %740
  %760 = phi i32 [ 0, %740 ], [ %758, %757 ]
  %761 = icmp eq i32 %760, %743
  br i1 %761, label %762, label %767

762:                                              ; preds = %754, %759, %737
  %763 = load i32, ptr @frequency, align 4, !tbaa !119
  %764 = sub nsw i32 0, %763
  %765 = load ptr, ptr %701, align 8, !tbaa !115
  %766 = getelementptr inbounds %struct.costs, ptr %765, i64 0, i32 1, i64 %705
  store i32 %764, ptr %766, align 4, !tbaa !119
  br label %767

767:                                              ; preds = %762, %703, %734, %759
  %768 = phi ptr [ %704, %703 ], [ %718, %734 ], [ %718, %759 ], [ %718, %762 ]
  %769 = add nuw nsw i64 %705, 1
  %770 = load i32, ptr @cost_classes_num, align 4, !tbaa !119
  %771 = sext i32 %770 to i64
  %772 = icmp slt i64 %769, %771
  br i1 %772, label %703, label %773, !prof !434, !llvm.loop !435

773:                                              ; preds = %767, %683, %676
  br i1 %677, label %676, label %774, !prof !436, !llvm.loop !437

774:                                              ; preds = %773, %639, %672, %668, %664, %659, %653, %650
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @copy_cost(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 !prof !438 !PGOFuncName !439 {
  %6 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %76, label %10, !prof !440

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %0, i32 noundef %2) #17
  %12 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 2
  store ptr %4, ptr %12, align 8, !tbaa !441
  %13 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !443
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !444
  %15 = call i32 %14(i8 noundef zeroext %3, ptr noundef nonnull %0, i32 noundef %11, i32 noundef %1, ptr noundef nonnull %6) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17, !prof !456

17:                                               ; preds = %10
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !115
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void @init_move_cost(i32 noundef %1) #17
  %23 = load ptr, ptr %19, align 8, !tbaa !115
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  %26 = zext i32 %15 to i64
  %27 = zext i32 %11 to i64
  %28 = getelementptr inbounds [27 x i16], ptr %25, i64 %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !210
  %30 = zext i16 %29 to i32
  %31 = load i32, ptr %13, align 4, !tbaa !443
  %32 = add nsw i32 %31, %30
  %33 = call fastcc i32 @copy_cost(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %15, i8 noundef zeroext %3, ptr noundef nonnull %6) #16
  %34 = add nsw i32 %32, %33
  br label %76

35:                                               ; preds = %10
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  %39 = icmp eq i32 %11, 0
  %40 = or i1 %39, %38
  br i1 %40, label %41, label %51, !prof !457

41:                                               ; preds = %35
  %42 = load i32, ptr %13, align 4, !tbaa !443
  %43 = zext i32 %1 to i64
  %44 = zext i32 %11 to i64
  %45 = icmp ne i8 %3, 0
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %43, i64 %44, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !210
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %42, %49
  br label %76

51:                                               ; preds = %35
  %52 = icmp eq i32 %37, 37
  br i1 %52, label %53, label %73, !prof !458

53:                                               ; preds = %51
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !115
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  call void @init_move_cost(i32 noundef %1) #17
  %59 = load ptr, ptr %55, align 8, !tbaa !115
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  %62 = load i32, ptr %13, align 4, !tbaa !443
  %63 = call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !119
  %67 = zext i32 %66 to i64
  %68 = zext i32 %11 to i64
  %69 = getelementptr inbounds [27 x i16], ptr %61, i64 %67, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !210
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %62, %71
  br label %76

73:                                               ; preds = %51
  %74 = load i32, ptr %13, align 4, !tbaa !443
  %75 = add nsw i32 %74, 4
  br label %76

76:                                               ; preds = %5, %73, %60, %41, %24
  %77 = phi i32 [ %34, %24 ], [ %50, %41 ], [ %72, %60 ], [ %75, %73 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !459 !PGOFuncName !460 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !461

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  %9 = load ptr, ptr %5, align 8, !tbaa !115
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !210
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @address_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #13 !prof !462 !PGOFuncName !463 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !464
  ret i64 %3
}

; Function Attrs: optsize
declare i32 @reg_fits_class_p(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_classes_intersect_p(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ix86_preferred_reload_class(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_move_cost(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ira_set_allocno_cover_class(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ira_allocate_cost_vector(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_for_hard_reg_moves(ptr nocapture noundef readonly %0) #2 !prof !465 !PGOFuncName !466 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = icmp eq ptr %2, null
  br i1 %3, label %127, label %4, !prof !467

4:                                                ; preds = %1
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !119
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25, !prof !468

7:                                                ; preds = %4
  %8 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !119
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !468

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !258
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10, %7
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !259
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23, !prof !469

23:                                               ; preds = %18
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %18, %4, %10
  %26 = phi i32 [ %24, %23 ], [ 1, %18 ], [ 1000, %4 ], [ 1000, %10 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !177
  %29 = load ptr, ptr %28, align 8, !tbaa !177
  %30 = icmp eq ptr %29, null
  br i1 %30, label %127, label %31, !prof !470

31:                                               ; preds = %25, %123
  %32 = phi ptr [ %125, %123 ], [ %29, %25 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !177
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !262
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !177
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %127, label %39, !prof !471

39:                                               ; preds = %31
  %40 = load i32, ptr %32, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -8
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %123, !prof !472

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !177
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 23
  br i1 %49, label %53, label %50, !prof !473

50:                                               ; preds = %44
  %51 = tail call ptr @single_set_2(ptr noundef nonnull %32, ptr noundef nonnull %46) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %123, label %53, !prof !278

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %51, %50 ], [ %46, %44 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !177
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !177
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %123, !prof !474

62:                                               ; preds = %53
  %63 = load i32, ptr %58, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %123, !prof !475

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #16
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #16
  %69 = icmp slt i32 %67, 53
  %70 = icmp sgt i32 %68, 52
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %74, !prof !476

72:                                               ; preds = %66
  %73 = and i1 %69, %70
  br i1 %73, label %74, label %123, !prof !477

74:                                               ; preds = %72, %66
  %75 = phi i32 [ %67, %66 ], [ %68, %72 ]
  %76 = phi i32 [ %68, %66 ], [ %67, %72 ]
  %77 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !115
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !115
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !206
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !212
  %86 = zext nneg i32 %76 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %85, %87
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %123, label %90, !prof !478

90:                                               ; preds = %74
  %91 = sext i32 %76 to i64
  %92 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %83, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !210
  %94 = sext i16 %93 to i64
  %95 = icmp slt i16 %93, 0
  br i1 %95, label %123, label %96, !prof !478

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !222
  %99 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %91
  %100 = load i32, ptr %99, align 4, !tbaa !119
  br i1 %71, label %103, label %101, !prof !479

101:                                              ; preds = %96
  %102 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %98, i32 noundef %100, i32 noundef %82) #16, !range !314
  br label %105

103:                                              ; preds = %96
  %104 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %98, i32 noundef %82, i32 noundef %100) #16, !range !314
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = mul nsw i32 %106, %26
  %108 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 33
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 10
  %110 = load i32, ptr %109, align 4, !tbaa !193
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %108, i32 noundef %82, i32 noundef %110) #16
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %111, i32 noundef %82, i32 noundef 0) #16
  %112 = load ptr, ptr %108, align 8, !tbaa !208
  %113 = getelementptr inbounds i32, ptr %112, i64 %94
  %114 = load i32, ptr %113, align 4, !tbaa !119
  %115 = sub nsw i32 %114, %107
  store i32 %115, ptr %113, align 4, !tbaa !119
  %116 = load ptr, ptr %111, align 8, !tbaa !480
  %117 = getelementptr inbounds i32, ptr %116, i64 %94
  %118 = load i32, ptr %117, align 4, !tbaa !119
  %119 = sub nsw i32 %118, %107
  store i32 %119, ptr %117, align 4, !tbaa !119
  %120 = load i32, ptr %109, align 4, !tbaa !193
  %121 = load i32, ptr %113, align 4, !tbaa !119
  %122 = tail call i32 @llvm.smin.i32(i32 %120, i32 %121)
  store i32 %122, ptr %109, align 4, !tbaa !193
  br label %123

123:                                              ; preds = %39, %90, %74, %72, %53, %62, %50, %105
  %124 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !177
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %31, !prof !481, !llvm.loop !482

127:                                              ; preds = %123, %31, %25, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!113}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!35 = !{ptr @ira_init_costs, ptr @free_ira_costs, i64 1}
!36 = !{ptr @ira_init_costs, ptr @xmalloc, i64 35}
!37 = !{ptr @free_ira_costs, ptr @free, i64 43}
!38 = !{ptr @ira_finish_costs_once, ptr @free_ira_costs, i64 1}
!39 = !{ptr @ira_costs, ptr @init_costs, i64 38}
!40 = !{ptr @ira_costs, ptr @ira_allocate, i64 38}
!41 = !{ptr @ira_costs, ptr @find_costs_and_classes, i64 38}
!42 = !{ptr @ira_costs, ptr @setup_allocno_cover_class_and_costs, i64 38}
!43 = !{ptr @ira_costs, ptr @finish_costs, i64 38}
!44 = !{ptr @ira_costs, ptr @ira_free, i64 38}
!45 = !{ptr @init_costs, ptr @init_subregs_of_mode, i64 38}
!46 = !{ptr @init_costs, ptr @ira_allocate, i64 114}
!47 = !{ptr @init_costs, ptr @max_reg_num, i64 38}
!48 = !{ptr @find_costs_and_classes, ptr @init_recog, i64 38}
!49 = !{ptr @find_costs_and_classes, ptr @resize_reg_info, i64 38}
!50 = !{ptr @find_costs_and_classes, ptr @ira_allocno_iter_init, i64 1}
!51 = !{ptr @find_costs_and_classes, ptr @ira_allocno_iter_cond, i64 19}
!52 = !{ptr @find_costs_and_classes, ptr @reg_preferred_class, i64 18}
!53 = !{ptr @find_costs_and_classes, ptr @fprintf, i64 5}
!54 = !{ptr @find_costs_and_classes, ptr @ira_traverse_loop_tree, i64 74}
!55 = !{ptr @find_costs_and_classes, ptr @process_bb_for_costs, i64 19}
!56 = !{ptr @find_costs_and_classes, ptr @max_reg_num, i64 75}
!57 = !{ptr @find_costs_and_classes, ptr @bitmap_bit_p, i64 1}
!58 = !{ptr @find_costs_and_classes, ptr @invalid_mode_change_p, i64 4605820}
!59 = !{ptr @find_costs_and_classes, ptr @setup_reg_classes, i64 104679}
!60 = !{ptr @find_costs_and_classes, ptr @fputc, i64 1}
!61 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocno_iter_init, i64 38}
!62 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocno_iter_cond, i64 104717}
!63 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_set_allocno_cover_class, i64 104679}
!64 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocate_cost_vector, i64 65781}
!65 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_traverse_loop_tree, i64 37}
!66 = !{ptr @finish_costs, ptr @ira_free, i64 114}
!67 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocno_iter_init, i64 38}
!68 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocno_iter_cond, i64 104717}
!69 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocate_and_set_costs, i64 1006}
!70 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_hard_reg_not_in_set_p, i64 6034}
!71 = !{ptr @ira_allocate_and_set_costs, ptr @ira_allocate_cost_vector, i64 66957}
!72 = !{ptr @process_bb_node_for_costs, ptr @process_bb_for_costs, i64 311307}
!73 = !{ptr @process_bb_for_costs, ptr @scan_one_insn, i64 1779604}
!74 = !{ptr @scan_one_insn, ptr @extract_insn, i64 1247271}
!75 = !{ptr @scan_one_insn, ptr @single_set_2, i64 1}
!76 = !{ptr @scan_one_insn, ptr @find_reg_note, i64 63480}
!77 = !{ptr @scan_one_insn, ptr @rhs_regno, i64 1017459}
!78 = !{ptr @scan_one_insn, ptr @record_address_regs, i64 38141}
!79 = !{ptr @scan_one_insn, ptr @record_operand_costs, i64 1247271}
!80 = !{ptr @record_address_regs, ptr @rhs_regno, i64 188855}
!81 = !{ptr @record_address_regs, ptr @ok_for_base_p_nonstrict, i64 40}
!82 = !{ptr @record_address_regs, ptr @ok_for_index_p_nonstrict, i64 16}
!83 = !{ptr @record_address_regs, ptr @record_address_regs, i64 18066}
!84 = !{ptr @record_address_regs, ptr @ira_get_may_move_cost, i64 34489}
!85 = !{ptr @record_operand_costs, ptr @record_address_regs, i64 319074}
!86 = !{ptr @record_operand_costs, ptr @record_reg_classes, i64 1263271}
!87 = !{ptr @ira_get_may_move_cost, ptr @ira_init_register_move_cost, i64 3}
!88 = !{ptr @record_reg_classes, ptr @rhs_regno, i64 11739019}
!89 = !{ptr @record_reg_classes, ptr @rtx_equal_p, i64 32629}
!90 = !{ptr @record_reg_classes, ptr @ira_get_may_move_cost, i64 34204990}
!91 = !{ptr @record_reg_classes, ptr @ira_get_register_move_cost, i64 294}
!92 = !{ptr @record_reg_classes, ptr @find_reg_note, i64 24798}
!93 = !{ptr @record_reg_classes, ptr @copy_cost, i64 1139930}
!94 = !{ptr @record_reg_classes, ptr @address_operand, i64 487}
!95 = !{ptr @record_reg_classes, ptr @lookup_constraint, i64 2077885}
!96 = !{ptr @record_reg_classes, ptr @constraint_satisfied_p, i64 944079}
!97 = !{ptr @record_reg_classes, ptr @legitimate_pic_operand_p, i64 2}
!98 = !{ptr @record_reg_classes, ptr @insn_const_int_ok_for_constraint, i64 3810}
!99 = !{ptr @record_reg_classes, ptr @regclass_for_constraint, i64 1129996}
!100 = !{ptr @record_reg_classes, ptr @insn_constraint_len, i64 28097798}
!101 = !{ptr @record_reg_classes, ptr @reg_fits_class_p, i64 1261188}
!102 = !{ptr @record_reg_classes, ptr @single_set_2, i64 1}
!103 = !{ptr @record_reg_classes, ptr @find_regno_note, i64 134132}
!104 = !{ptr @record_reg_classes, ptr @reg_classes_intersect_p, i64 669661}
!105 = !{ptr @copy_cost, ptr @ix86_preferred_reload_class, i64 1115005}
!106 = !{ptr @copy_cost, ptr @copy_cost, i64 1}
!107 = !{ptr @copy_cost, ptr @rhs_regno, i64 1}
!108 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!109 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @single_set_2, i64 1}
!110 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @rhs_regno, i64 133042}
!111 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @ira_get_register_move_cost, i64 66421}
!112 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @ira_allocate_and_set_costs, i64 132842}
!113 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!114 = !{!"function_entry_count", i64 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !117, i64 0}
!121 = !{!122, !120, i64 0}
!122 = !{!"costs", !120, i64 0, !117, i64 4}
!123 = !{!"branch_weights", i32 127, i32 1}
!124 = !{!"branch_weights", i32 961, i32 127}
!125 = distinct !{!125, !126}
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"branch_weights", i32 2, i32 29}
!128 = distinct !{!128, !126}
!129 = !{!"function_entry_count", i64 2}
!130 = !{!"ira-costs.c:free_ira_costs"}
!131 = !{!"branch_weights", i32 2, i32 2}
!132 = !{!"branch_weights", i32 31, i32 31}
!133 = !{!"branch_weights", i32 3, i32 58}
!134 = distinct !{!134, !126}
!135 = !{!"function_entry_count", i64 38}
!136 = !{!"ira-costs.c:init_costs"}
!137 = !{!"ira-costs.c:find_costs_and_classes"}
!138 = !{!"branch_weights", i32 1521, i32 62479}
!139 = !{i8 0, i8 2}
!140 = !{!141, !120, i64 4}
!141 = !{!"ira_allocno", !120, i64 0, !120, i64 4, !120, i64 8, !120, i64 12, !116, i64 16, !116, i64 24, !116, i64 32, !120, i64 40, !120, i64 44, !120, i64 48, !120, i64 52, !120, i64 56, !120, i64 60, !120, i64 64, !120, i64 68, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !120, i64 120, !120, i64 124, !116, i64 128, !120, i64 136, !120, i64 140, !142, i64 144, !142, i64 152, !120, i64 160, !120, i64 164, !120, i64 168, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 172, !120, i64 173, !120, i64 173, !120, i64 173, !120, i64 173, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !120, i64 216, !120, i64 220, !116, i64 224, !116, i64 232, !120, i64 240}
!142 = !{!"long", !117, i64 0}
!143 = !{!141, !120, i64 0}
!144 = distinct !{!144, !126}
!145 = !{!"branch_weights", i32 2061584303, i32 85899345}
!146 = !{!"branch_weights", i32 39, i32 1}
!147 = !{!"branch_weights", i32 1, i32 155}
!148 = !{!"branch_weights", i32 6007, i32 468545}
!149 = !{!"branch_weights", i32 153, i32 1}
!150 = !{!"branch_weights", i32 2281, i32 153}
!151 = distinct !{!151, !126}
!152 = !{!"branch_weights", i32 77, i32 1}
!153 = !{!154, !116, i64 8}
!154 = !{!"function", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !120, i64 104, !120, i64 108, !120, i64 112, !120, i64 116, !120, i64 120, !120, i64 124, !116, i64 128, !120, i64 136, !120, i64 137, !120, i64 138, !120, i64 138, !120, i64 138, !120, i64 138, !120, i64 138, !120, i64 138, !120, i64 138, !120, i64 139, !120, i64 139, !120, i64 139, !120, i64 139, !120, i64 139, !120, i64 139, !120, i64 139}
!155 = !{!156, !116, i64 0}
!156 = !{!"control_flow_graph", !116, i64 0, !116, i64 8, !116, i64 16, !120, i64 24, !120, i64 28, !120, i64 32, !116, i64 40, !120, i64 48, !117, i64 52, !117, i64 60, !120, i64 68, !120, i64 72}
!157 = !{!158, !116, i64 56}
!158 = !{!"basic_block_def", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !117, i64 32, !116, i64 48, !116, i64 56, !117, i64 64, !142, i64 72, !120, i64 80, !120, i64 84, !120, i64 88, !120, i64 92, !120, i64 96}
!159 = !{!156, !116, i64 8}
!160 = distinct !{!160, !126}
!161 = !{!"branch_weights", i32 39, i32 39}
!162 = !{!"branch_weights", i32 579977, i32 1}
!163 = !{!"branch_weights", i32 365111, i32 214867}
!164 = !{!"branch_weights", i32 1, i32 214866}
!165 = !{!"branch_weights", i32 -1409464637, i32 13429}
!166 = !{!141, !116, i64 32}
!167 = !{!168, !116, i64 48}
!168 = !{!"ira_loop_tree_node", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !120, i64 56, !117, i64 60, !116, i64 64, !117, i64 72, !117, i64 76, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208}
!169 = !{!"branch_weights", i32 214867, i32 1}
!170 = !{!168, !116, i64 64}
!171 = !{!168, !116, i64 192}
!172 = distinct !{!172, !126}
!173 = !{!"branch_weights", i32 214866, i32 1}
!174 = !{!"branch_weights", i32 214866, i32 3222991}
!175 = distinct !{!175, !126}
!176 = distinct !{!176, !126}
!177 = !{!117, !117, i64 0}
!178 = !{!"branch_weights", i32 1074331, i32 2363527}
!179 = !{!"branch_weights", i32 2363527, i32 1}
!180 = !{!"branch_weights", i32 215271, i32 2148257}
!181 = !{!"branch_weights", i32 807385, i32 1340873}
!182 = !{!"branch_weights", i32 1181764, i32 1181764}
!183 = !{!"branch_weights", i32 1181764, i32 1}
!184 = !{!"branch_weights", i32 537166, i32 644599}
!185 = !{!"branch_weights", i32 3222991, i32 214866}
!186 = distinct !{!186, !126}
!187 = !{!"branch_weights", i32 1, i32 214867}
!188 = !{!"branch_weights", i32 107434, i32 107434}
!189 = !{!"branch_weights", i32 1, i32 107434}
!190 = !{!"branch_weights", i32 22014, i32 -1929791619}
!191 = !{!"branch_weights", i32 1, i32 2363527}
!192 = distinct !{!192, !126}
!193 = !{!141, !120, i64 52}
!194 = !{!"branch_weights", i32 13429, i32 -1409464637}
!195 = !{!168, !116, i64 0}
!196 = !{!168, !116, i64 8}
!197 = distinct !{!197, !126}
!198 = !{!"branch_weights", i32 1159801, i32 153}
!199 = distinct !{!199, !126}
!200 = !{!"branch_weights", i32 77, i32 6007}
!201 = !{!"branch_weights", i32 153, i32 155}
!202 = distinct !{!202, !126}
!203 = !{!"ira-costs.c:setup_allocno_cover_class_and_costs"}
!204 = !{!141, !120, i64 60}
!205 = !{!141, !120, i64 220}
!206 = !{!141, !120, i64 48}
!207 = !{!"branch_weights", i32 39921, i32 67514}
!208 = !{!141, !116, i64 184}
!209 = !{!"branch_weights", i32 67513, i32 1}
!210 = !{!211, !211, i64 0}
!211 = !{!"short", !117, i64 0}
!212 = !{!142, !142, i64 0}
!213 = !{!"branch_weights", i32 335421, i32 69659}
!214 = !{!"branch_weights", i32 1, i32 335421}
!215 = !{!"branch_weights", i32 337566, i32 67513}
!216 = distinct !{!216, !126}
!217 = !{!"branch_weights", i32 155, i32 429581}
!218 = distinct !{!218, !126}
!219 = !{!"branch_weights", i32 1, i32 39}
!220 = !{!"ira-costs.c:finish_costs"}
!221 = !{!"function_entry_count", i64 0}
!222 = !{!141, !120, i64 8}
!223 = !{!141, !120, i64 168}
!224 = !{!"branch_weights", i32 106402, i32 1033}
!225 = !{!"branch_weights", i32 1032, i32 1}
!226 = !{!"branch_weights", i32 3097, i32 3097}
!227 = !{!141, !120, i64 164}
!228 = !{!"branch_weights", i32 5161, i32 1032}
!229 = distinct !{!229, !126}
!230 = !{!"branch_weights", i32 0, i32 -2147483648}
!231 = distinct !{!231, !126}
!232 = !{!"function_entry_count", i64 76}
!233 = !{!"ira-costs.c:ira_allocno_iter_init"}
!234 = !{!235, !120, i64 0}
!235 = !{!"", !120, i64 0}
!236 = !{!"function_entry_count", i64 214942}
!237 = !{!"ira-costs.c:ira_allocno_iter_cond"}
!238 = !{!"branch_weights", i32 153, i32 429581}
!239 = distinct !{!239, !126}
!240 = !{!"function_entry_count", i64 134436}
!241 = !{!"ira-costs.c:ira_allocate_and_set_costs"}
!242 = !{!"branch_weights", i32 66958, i32 67480}
!243 = !{!"branch_weights", i32 66957, i32 1}
!244 = !{!"branch_weights", i32 66957, i32 0}
!245 = distinct !{!245, !126, !246, !247}
!246 = !{!"llvm.loop.isvectorized", i32 1}
!247 = !{!"llvm.loop.unroll.runtime.disable"}
!248 = !{!"function_entry_count", i64 6192}
!249 = !{!"ira-costs.c:ira_hard_reg_not_in_set_p"}
!250 = !{!"branch_weights", i32 6193, i32 3097}
!251 = distinct !{!251, !126}
!252 = !{!"function_entry_count", i64 311384}
!253 = !{!"ira-costs.c:process_bb_node_for_costs"}
!254 = !{!"branch_weights", i32 77, i32 311309}
!255 = !{!"function_entry_count", i64 311308}
!256 = !{!"ira-costs.c:process_bb_for_costs"}
!257 = !{!"branch_weights", i32 311309, i32 1}
!258 = !{!158, !142, i64 72}
!259 = !{!158, !120, i64 88}
!260 = !{!"branch_weights", i32 1, i32 48433}
!261 = !{!"branch_weights", i32 1, i32 251}
!262 = !{!263, !116, i64 8}
!263 = !{!"rtl_bb_info", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !120, i64 32}
!264 = !{!"branch_weights", i32 311309, i32 1787007}
!265 = !{!"branch_weights", i32 251, i32 8392761}
!266 = distinct !{!266, !126}
!267 = !{!"ira-costs.c:print_allocno_costs"}
!268 = distinct !{!268, !126}
!269 = distinct !{!269, !126}
!270 = !{!"ira-costs.c:print_pseudo_costs"}
!271 = distinct !{!271, !126}
!272 = distinct !{!272, !126}
!273 = !{!"function_entry_count", i64 1787006}
!274 = !{!"ira-costs.c:scan_one_insn"}
!275 = !{!"branch_weights", i32 1509166051, i32 -806688226}
!276 = !{!"branch_weights", i32 166048, i32 -1738060644}
!277 = !{!"branch_weights", i32 1226035, i32 1}
!278 = !{!"branch_weights", i32 -2147483648, i32 0}
!279 = !{!"branch_weights", i32 768495, i32 474075}
!280 = !{!"branch_weights", i32 63241, i32 705255}
!281 = !{!"branch_weights", i32 25243, i32 37999}
!282 = !{!"branch_weights", i32 37999, i32 1}
!283 = !{!"branch_weights", i32 19000, i32 19000}
!284 = !{!285, !117, i64 1086}
!285 = !{!"recog_data", !117, i64 0, !117, i64 240, !117, i64 480, !117, i64 720, !117, i64 840, !117, i64 960, !117, i64 1072, !117, i64 1086, !117, i64 1087, !117, i64 1088, !117, i64 1089, !116, i64 1120}
!286 = !{!"branch_weights", i32 1247276, i32 1}
!287 = !{!"branch_weights", i32 979323, i32 1648751}
!288 = !{!"branch_weights", i32 712401, i32 266923}
!289 = !{!"branch_weights", i32 712401, i32 1}
!290 = !{!"branch_weights", i32 712400, i32 1}
!291 = !{!"branch_weights", i32 712400, i32 10686001}
!292 = distinct !{!292, !126}
!293 = !{!"branch_weights", i32 1247276, i32 1380797}
!294 = distinct !{!294, !126}
!295 = !{!"function_entry_count", i64 14511661}
!296 = !{!"ira-costs.c:rhs_regno"}
!297 = !{!"function_entry_count", i64 385300}
!298 = !{!"ira-costs.c:record_address_regs"}
!299 = !{!"branch_weights", i32 329, i32 329, i32 41665, i32 1, i32 1, i32 150761, i32 1, i32 26729, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 165493}
!300 = !{!"branch_weights", i32 1, i32 26729}
!301 = !{!"branch_weights", i32 10414913, i32 88196215}
!302 = !{!"branch_weights", i32 47089, i32 43599}
!303 = !{!"branch_weights", i32 1, i32 217}
!304 = !{!"branch_weights", i32 19418765, i32 2128064883}
!305 = !{!"branch_weights", i32 633, i32 90055}
!306 = !{!"branch_weights", i32 1, i32 415}
!307 = !{!"branch_weights", i32 415, i32 1}
!308 = !{!"branch_weights", i32 80613, i32 87451}
!309 = !{!"branch_weights", i32 2072955254, i32 74528394}
!310 = !{!"branch_weights", i32 1165, i32 384137}
!311 = !{!"branch_weights", i32 163487, i32 2007}
!312 = !{!"branch_weights", i32 2007, i32 1}
!313 = !{!"branch_weights", i32 2006, i32 1}
!314 = !{i32 0, i32 65536}
!315 = !{!"branch_weights", i32 30091, i32 2006}
!316 = distinct !{!316, !126}
!317 = !{!"branch_weights", i32 1, i32 328}
!318 = !{!"branch_weights", i32 657, i32 1}
!319 = !{!"branch_weights", i32 329, i32 328}
!320 = distinct !{!320, !126}
!321 = !{!"function_entry_count", i64 1247276}
!322 = !{!"ira-costs.c:record_operand_costs"}
!323 = !{!"branch_weights", i32 405, i32 2627669}
!324 = !{!"branch_weights", i32 318587, i32 2309487}
!325 = !{!"branch_weights", i32 487, i32 2309001}
!326 = !{!"branch_weights", i32 1380797, i32 1247276}
!327 = distinct !{!327, !126}
!328 = !{!"branch_weights", i32 15995, i32 1364803}
!329 = !{!"branch_weights", i32 15994, i32 1}
!330 = !{!285, !117, i64 1088}
!331 = !{!"branch_weights", i32 133521, i32 1247276}
!332 = distinct !{!332, !126}
!333 = !{!"ira-costs.c:ok_for_base_p_nonstrict"}
!334 = !{!"ira-costs.c:ok_for_index_p_nonstrict"}
!335 = !{!"function_entry_count", i64 34237184}
!336 = !{!"ira-costs.c:ira_get_may_move_cost"}
!337 = !{!"branch_weights", i32 3, i32 34237183}
!338 = !{!"branch_weights", i32 16855169, i32 17382017}
!339 = !{!"ira-costs.c:ok_for_base_p_1"}
!340 = !{!"function_entry_count", i64 1263270}
!341 = !{!"ira-costs.c:record_reg_classes"}
!342 = !{!"branch_weights", i32 1263270, i32 1}
!343 = !{!"branch_weights", i32 6399960, i32 1}
!344 = !{!"branch_weights", i32 135877, i32 12765817}
!345 = !{!"branch_weights", i32 1, i32 135877}
!346 = !{!"branch_weights", i32 -1300410516, i32 7822717, i32 124831137, i32 244, i32 127246560}
!347 = distinct !{!347, !126}
!348 = !{!"branch_weights", i32 -1181103793, i32 18704142}
!349 = !{!"branch_weights", i32 2417, i32 178465326, i32 5841889}
!350 = !{!"branch_weights", i32 47309, i32 28915}
!351 = !{!"branch_weights", i32 43595, i32 32629}
!352 = !{!"branch_weights", i32 1, i32 43595}
!353 = !{!"branch_weights", i32 32629, i32 1}
!354 = !{!"branch_weights", i32 1, i32 32629}
!355 = !{!"branch_weights", i32 43595, i32 1}
!356 = !{!"branch_weights", i32 43594, i32 1}
!357 = !{!"branch_weights", i32 1, i32 697505}
!358 = !{!"branch_weights", i32 653911, i32 43594}
!359 = distinct !{!359, !126}
!360 = !{!"branch_weights", i32 21798, i32 21798}
!361 = !{!"branch_weights", i32 21798, i32 1}
!362 = !{!"branch_weights", i32 1, i32 21798}
!363 = !{!"branch_weights", i32 293, i32 21506}
!364 = !{!"branch_weights", i32 18795, i32 24801}
!365 = !{!"branch_weights", i32 14923, i32 9879}
!366 = !{!"branch_weights", i32 2393, i32 84797}
!367 = !{!"branch_weights", i32 43595, i32 43595}
!368 = distinct !{!368, !126}
!369 = !{!"branch_weights", i32 222309357, i32 339579296, i32 -1907291458, i32 1215271101, i32 419360218, i32 980310, i32 214, i32 214, i32 6994656, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 104397, i32 627491402, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 214, i32 158302104, i32 6592500, i32 115545, i32 214, i32 214, i32 1517949, i32 28939, i32 2931929, i32 214, i32 214, i32 214, i32 105293285, i32 868343921}
!370 = !{!"branch_weights", i32 708659, i32 2218493}
!371 = !{!"branch_weights", i32 381881, i32 356575}
!372 = !{!"branch_weights", i32 381881, i32 1}
!373 = !{!"branch_weights", i32 464273209, i32 198392436, i32 21547}
!374 = !{!"branch_weights", i32 3809, i32 17621}
!375 = !{!"branch_weights", i32 3541, i32 269}
!376 = !{!"branch_weights", i32 63239, i32 427939}
!377 = !{!"branch_weights", i32 148885, i32 279055}
!378 = !{!"branch_weights", i32 148885, i32 1}
!379 = !{!"branch_weights", i32 944081, i32 92959}
!380 = !{!"branch_weights", i32 913237, i32 30845}
!381 = !{!"branch_weights", i32 11138141, i32 16959677}
!382 = distinct !{!382, !126}
!383 = !{!"branch_weights", i32 7570309, i32 5151915}
!384 = !{!"branch_weights", i32 5985377, i32 1584933}
!385 = !{!"branch_weights", i32 3891153, i32 2094225}
!386 = !{!"branch_weights", i32 2094224, i32 1}
!387 = !{!"branch_weights", i32 16855169, i32 16652417}
!388 = !{!"branch_weights", i32 31413361, i32 2094224}
!389 = distinct !{!389, !126}
!390 = !{!"branch_weights", i32 1040777, i32 1053449}
!391 = !{!"branch_weights", i32 1047113, i32 1047113}
!392 = !{!"branch_weights", i32 1047113, i32 1}
!393 = !{!"branch_weights", i32 1, i32 1047113}
!394 = !{!"branch_weights", i32 5360755, i32 1376093}
!395 = !{!"branch_weights", i32 1041821, i32 543113}
!396 = !{!"branch_weights", i32 3735265, i32 1082379}
!397 = !{!"branch_weights", i32 326833, i32 755547}
!398 = !{!"branch_weights", i32 1097863, i32 2637403}
!399 = !{!"branch_weights", i32 -188689499, i32 601946275}
!400 = !{!"branch_weights", i32 6399960, i32 6501733}
!401 = distinct !{!401, !126}
!402 = !{!"branch_weights", i32 453179525, i32 1694304123}
!403 = !{!"branch_weights", i32 1380603, i32 1414247}
!404 = !{!"branch_weights", i32 1231257, i32 149347}
!405 = !{!"branch_weights", i32 1231256, i32 1}
!406 = !{!"branch_weights", i32 1231256, i32 18468841}
!407 = distinct !{!407, !126}
!408 = !{!"branch_weights", i32 1350572, i32 1444277}
!409 = distinct !{!409, !126}
!410 = !{!"branch_weights", i32 1263270, i32 5136691}
!411 = distinct !{!411, !126}
!412 = !{!"branch_weights", i32 -1178068163, i32 4934}
!413 = !{!"branch_weights", i32 1008417, i32 1665353}
!414 = !{!"branch_weights", i32 266923, i32 741495}
!415 = !{!"branch_weights", i32 473978, i32 267518}
!416 = !{!"branch_weights", i32 12875, i32 461104}
!417 = !{!"branch_weights", i32 1263270, i32 1410499}
!418 = distinct !{!418, !126}
!419 = !{!"branch_weights", i32 -309312042, i32 3154}
!420 = !{!"branch_weights", i32 1228321, i32 1}
!421 = !{!"branch_weights", i32 9828300, i32 2137655348}
!422 = !{!"branch_weights", i32 643365, i32 614891}
!423 = !{!"branch_weights", i32 479493, i32 163873}
!424 = !{!"branch_weights", i32 316077, i32 163417}
!425 = !{!"branch_weights", i32 133601, i32 182477}
!426 = !{!"branch_weights", i32 75, i32 133527}
!427 = !{!"branch_weights", i32 133649, i32 133405}
!428 = !{!"branch_weights", i32 -2070372219, i32 4102203}
!429 = !{!"branch_weights", i32 1467445, i32 667021}
!430 = !{!"branch_weights", i32 1, i32 667021}
!431 = !{!"branch_weights", i32 1334043, i32 1}
!432 = !{!"branch_weights", i32 133405, i32 1}
!433 = distinct !{!433, !126}
!434 = !{!"branch_weights", i32 2001061, i32 133404}
!435 = distinct !{!435, !126}
!436 = !{!"branch_weights", i32 133526, i32 133527}
!437 = distinct !{!437, !126}
!438 = !{!"function_entry_count", i64 1115006}
!439 = !{!"ira-costs.c:copy_cost"}
!440 = !{!"branch_weights", i32 1, i32 1115007}
!441 = !{!442, !116, i64 8}
!442 = !{!"secondary_reload_info", !120, i64 0, !120, i64 4, !116, i64 8, !120, i64 16}
!443 = !{!442, !120, i64 4}
!444 = !{!445, !116, i64 1728}
!445 = !{!"gcc_target", !446, i64 0, !448, i64 368, !449, i64 664, !120, i64 744, !116, i64 752, !116, i64 760, !116, i64 768, !116, i64 776, !116, i64 784, !116, i64 792, !116, i64 800, !116, i64 808, !116, i64 816, !116, i64 824, !116, i64 832, !116, i64 840, !116, i64 848, !116, i64 856, !116, i64 864, !116, i64 872, !116, i64 880, !116, i64 888, !116, i64 896, !116, i64 904, !116, i64 912, !116, i64 920, !116, i64 928, !116, i64 936, !116, i64 944, !116, i64 952, !116, i64 960, !116, i64 968, !116, i64 976, !116, i64 984, !116, i64 992, !116, i64 1000, !116, i64 1008, !116, i64 1016, !116, i64 1024, !116, i64 1032, !116, i64 1040, !116, i64 1048, !116, i64 1056, !142, i64 1064, !142, i64 1072, !116, i64 1080, !116, i64 1088, !116, i64 1096, !116, i64 1104, !116, i64 1112, !116, i64 1120, !116, i64 1128, !116, i64 1136, !116, i64 1144, !116, i64 1152, !116, i64 1160, !116, i64 1168, !450, i64 1176, !116, i64 1232, !116, i64 1240, !116, i64 1248, !116, i64 1256, !116, i64 1264, !116, i64 1272, !116, i64 1280, !116, i64 1288, !116, i64 1296, !116, i64 1304, !116, i64 1312, !116, i64 1320, !116, i64 1328, !116, i64 1336, !116, i64 1344, !116, i64 1352, !116, i64 1360, !116, i64 1368, !116, i64 1376, !116, i64 1384, !116, i64 1392, !116, i64 1400, !116, i64 1408, !116, i64 1416, !116, i64 1424, !116, i64 1432, !116, i64 1440, !116, i64 1448, !116, i64 1456, !142, i64 1464, !451, i64 1472, !116, i64 1664, !116, i64 1672, !116, i64 1680, !116, i64 1688, !116, i64 1696, !116, i64 1704, !116, i64 1712, !116, i64 1720, !116, i64 1728, !116, i64 1736, !116, i64 1744, !116, i64 1752, !116, i64 1760, !116, i64 1768, !116, i64 1776, !452, i64 1784, !453, i64 1792, !454, i64 1896, !455, i64 1968, !116, i64 2016, !117, i64 2024, !117, i64 2025, !117, i64 2026, !117, i64 2027, !117, i64 2028, !117, i64 2029, !117, i64 2030, !117, i64 2031, !117, i64 2032, !117, i64 2033, !117, i64 2034, !117, i64 2035}
!446 = !{!"asm_out", !116, i64 0, !116, i64 8, !116, i64 16, !447, i64 24, !447, i64 56, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !116, i64 240, !116, i64 248, !116, i64 256, !116, i64 264, !116, i64 272, !116, i64 280, !116, i64 288, !116, i64 296, !116, i64 304, !116, i64 312, !116, i64 320, !116, i64 328, !116, i64 336, !116, i64 344, !116, i64 352, !116, i64 360}
!447 = !{!"asm_int_op", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!448 = !{!"sched", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !116, i64 240, !116, i64 248, !116, i64 256, !116, i64 264, !116, i64 272, !116, i64 280, !116, i64 288}
!449 = !{!"vectorize", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72}
!450 = !{!"addr_space", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48}
!451 = !{!"calls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184}
!452 = !{!"c", !116, i64 0}
!453 = !{!"cxx", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96}
!454 = !{!"emutls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !117, i64 64, !117, i64 65}
!455 = !{!"target_option_hooks", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40}
!456 = !{!"branch_weights", i32 1115007, i32 1}
!457 = !{!"branch_weights", i32 -1867225348, i32 -1798328679}
!458 = !{!"branch_weights", i32 1, i32 565305}
!459 = !{!"function_entry_count", i64 66994}
!460 = !{!"ira-costs.c:ira_get_register_move_cost"}
!461 = !{!"branch_weights", i32 1, i32 66995}
!462 = !{!"function_entry_count", i64 28097816}
!463 = !{!"ira-costs.c:insn_constraint_len"}
!464 = !{!"branch_weights", i32 944081, i32 27153737}
!465 = !{!"function_entry_count", i64 155692}
!466 = !{!"ira-costs.c:process_bb_node_for_hard_reg_moves"}
!467 = !{!"branch_weights", i32 39, i32 155655}
!468 = !{!"branch_weights", i32 155655, i32 1}
!469 = !{!"branch_weights", i32 1, i32 24217}
!470 = !{!"branch_weights", i32 1, i32 127}
!471 = !{!"branch_weights", i32 155655, i32 893504}
!472 = !{!"branch_weights", i32 -559105504, i32 1616286492}
!473 = !{!"branch_weights", i32 613018, i32 1}
!474 = !{!"branch_weights", i32 384248, i32 237038}
!475 = !{!"branch_weights", i32 66801, i32 317448}
!476 = !{!"branch_weights", i32 4573353, i32 -2069522884}
!477 = !{!"branch_weights", i32 5168, i32 13601}
!478 = !{!"branch_weights", i32 1, i32 66703}
!479 = !{!"branch_weights", i32 38, i32 66666}
!480 = !{!141, !116, i64 200}
!481 = !{!"branch_weights", i32 127, i32 4196381}
!482 = distinct !{!482, !126}

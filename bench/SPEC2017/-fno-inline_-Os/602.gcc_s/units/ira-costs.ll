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
@costs = internal unnamed_addr global ptr null, align 8
@pref_buffer = internal unnamed_addr global ptr null, align 8
@regno_cover_class = internal unnamed_addr global ptr null, align 8
@pref = internal unnamed_addr global ptr null, align 8
@pseudo_classes_defined_p = internal unnamed_addr global i1 false, align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
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
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@frequency = internal unnamed_addr global i32 0, align 4
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
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
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"  a%d(r%d,\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c") costs:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s:%d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  r%d costs:\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@optimize = external local_unnamed_addr global i32, align 4
@ira_class_hard_regs_num = external local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_regs = external local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_class_hard_reg_index = external local_unnamed_addr global [27 x [53 x i16]], align 16
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@call_used_reg_set = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ira_init_costs_once() local_unnamed_addr #0 !prof !118 {
  store ptr null, ptr @init_cost, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @op_costs, i8 0, i64 240, i1 false), !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @this_op_costs, i8 0, i64 240, i1 false), !tbaa !119
  store ptr null, ptr @temp_costs, align 8, !tbaa !119
  store ptr null, ptr @cost_classes, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_costs() local_unnamed_addr #2 !prof !118 {
  tail call fastcc void @free_ira_costs() #16
  %1 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %2 = shl i32 %1, 2
  %3 = add i32 %2, 4
  store i32 %3, ptr @max_struct_costs_size, align 4, !tbaa !123
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #17
  store ptr %5, ptr @init_cost, align 8, !tbaa !119
  store i32 1000000, ptr %5, align 4, !tbaa !125
  %6 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15, !prof !127

8:                                                ; preds = %0, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.costs, ptr %5, i64 0, i32 1, i64 %9
  store i32 1000000, ptr %10, align 4, !tbaa !123
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %8, label %15, !prof !128, !llvm.loop !129

15:                                               ; preds = %8, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ %26, %16 ], [ 0, %15 ]
  %18 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xmalloc(i64 noundef %19) #17
  %21 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %17
  store ptr %20, ptr %21, align 8, !tbaa !119
  %22 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %17
  store ptr %24, ptr %25, align 8, !tbaa !119
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 30
  br i1 %27, label %28, label %16, !prof !131, !llvm.loop !132

28:                                               ; preds = %16
  %29 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #17
  store ptr %31, ptr @temp_costs, align 8, !tbaa !119
  %32 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #17
  store ptr %35, ptr @cost_classes, align 8, !tbaa !119
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ira_costs() unnamed_addr #2 !prof !133 !PGOFuncName !134 {
  %1 = load ptr, ptr @init_cost, align 8, !tbaa !119
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !135

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @init_cost, align 8, !tbaa !119
  br label %5

5:                                                ; preds = %4, %16
  %6 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !136

10:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !136

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !119
  store ptr null, ptr %7, align 8, !tbaa !119
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 30
  br i1 %18, label %19, label %5, !prof !137, !llvm.loop !138

19:                                               ; preds = %16
  %20 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !135

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #16
  br label %23

23:                                               ; preds = %22, %19
  store ptr null, ptr @temp_costs, align 8, !tbaa !119
  %24 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !135

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %24) #16
  br label %27

27:                                               ; preds = %26, %23
  store ptr null, ptr @cost_classes, align 8, !tbaa !119
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_costs_once() local_unnamed_addr #2 !prof !118 {
  tail call fastcc void @free_ira_costs() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_costs() local_unnamed_addr #2 !prof !139 {
  store i1 true, ptr @allocno_p, align 1
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !123
  store i32 %1, ptr @cost_elements_num, align 4, !tbaa !123
  tail call fastcc void @init_costs() #16
  %2 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !123
  %4 = mul nsw i32 %3, %2
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #17
  store ptr %6, ptr @total_allocno_costs, align 8, !tbaa !119
  %7 = load ptr, ptr @ira_dump_file, align 8, !tbaa !119
  tail call fastcc void @find_costs_and_classes(ptr noundef %7) #16
  tail call fastcc void @setup_allocno_cover_class_and_costs() #16
  tail call fastcc void @finish_costs() #16
  %8 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !119
  tail call void @ira_free(ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_costs() unnamed_addr #2 !prof !139 !PGOFuncName !140 {
  tail call void @init_subregs_of_mode() #17
  %1 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %2 = load i32, ptr @cost_elements_num, align 4, !tbaa !123
  %3 = mul nsw i32 %2, %1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #17
  store ptr %5, ptr @costs, align 8, !tbaa !119
  %6 = load i32, ptr @cost_elements_num, align 4, !tbaa !123
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #17
  store ptr %9, ptr @pref_buffer, align 8, !tbaa !119
  %10 = tail call i32 @max_reg_num() #17
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #17
  store ptr %13, ptr @regno_cover_class, align 8, !tbaa !119
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_costs_and_classes(ptr noundef %0) unnamed_addr #2 !prof !139 !PGOFuncName !141 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  tail call void @init_recog() #17
  store ptr null, ptr @pref, align 8, !tbaa !119
  %4 = tail call zeroext i8 @resize_reg_info() #17
  %5 = icmp eq i8 %4, 0
  %6 = load i1, ptr @allocno_p, align 1
  %7 = select i1 %5, i1 %6, i1 false
  %8 = load i1, ptr @pseudo_classes_defined_p, align 1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %34, !prof !142

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %11 = load ptr, ptr @pref_buffer, align 8, !tbaa !119
  store ptr %11, ptr @pref, align 8, !tbaa !119
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %12 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !143
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %35

18:                                               ; preds = %10, %18
  %19 = load ptr, ptr %2, align 8, !tbaa !119
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !144
  %22 = tail call i32 @reg_preferred_class(i32 noundef %21) #17
  %23 = load ptr, ptr @pref, align 8, !tbaa !119
  %24 = load i32, ptr %19, align 8, !tbaa !147
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %22, ptr %26, align 4, !tbaa !123
  %27 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !143
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !148

29:                                               ; preds = %18
  %30 = load i1, ptr @allocno_p, align 1
  %31 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br i1 %30, label %35, label %37, !prof !149

34:                                               ; preds = %1
  br i1 %6, label %35, label %37, !prof !150

35:                                               ; preds = %14, %29, %34
  %36 = phi i32 [ %33, %29 ], [ 0, %34 ], [ %17, %14 ]
  store i1 false, ptr @pseudo_classes_defined_p, align 1
  br label %37

37:                                               ; preds = %29, %35, %34
  %38 = phi i32 [ %33, %29 ], [ %36, %35 ], [ 0, %34 ]
  %39 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %536, label %41, !prof !151

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
  br i1 %51, label %52, label %54, !prof !152

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %46) #16
  br label %54

54:                                               ; preds = %44, %52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cost_class_nums, i8 -1, i64 108, i1 false), !tbaa !123
  %55 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %73, !prof !153

57:                                               ; preds = %54
  %58 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %67, %59 ]
  %61 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !123
  %63 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %62, ptr %63, align 4, !tbaa !123
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %64
  %66 = trunc i64 %60 to i32
  store i32 %66, ptr %65, align 4, !tbaa !123
  %67 = add nuw nsw i64 %60, 1
  %68 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !123
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %59, label %71, !prof !154, !llvm.loop !155

71:                                               ; preds = %59
  %72 = trunc i64 %67 to i32
  br label %73

73:                                               ; preds = %71, %54
  %74 = phi i32 [ 0, %54 ], [ %72, %71 ]
  store i32 %74, ptr @cost_classes_num, align 4, !tbaa !123
  %75 = shl i32 %74, 2
  %76 = add i32 %75, 4
  store i32 %76, ptr @struct_costs_size, align 4, !tbaa !123
  %77 = load ptr, ptr @costs, align 8, !tbaa !119
  %78 = load i32, ptr @cost_elements_num, align 4, !tbaa !123
  %79 = mul nsw i32 %78, %76
  %80 = sext i32 %79 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %77, i8 0, i64 %80, i1 false)
  %81 = load i1, ptr @allocno_p, align 1
  br i1 %81, label %82, label %90, !prof !156

82:                                               ; preds = %73
  %83 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !119
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %83, ptr noundef nonnull @process_bb_node_for_costs, ptr noundef null) #17
  %84 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !119
  %85 = load ptr, ptr @costs, align 8, !tbaa !119
  %86 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !123
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !123
  %88 = mul nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 %89, i1 false)
  br label %110

90:                                               ; preds = %73
  %91 = load ptr, ptr @cfun, align 8, !tbaa !119
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !157
  %94 = load ptr, ptr %93, align 8, !tbaa !159
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !161
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !163
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90, %100
  %101 = phi ptr [ %103, %100 ], [ %96, %90 ]
  tail call fastcc void @process_bb_for_costs(ptr noundef %101) #16
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !161
  %104 = load ptr, ptr @cfun, align 8, !tbaa !119
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !157
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !163
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %100, !llvm.loop !164

110:                                              ; preds = %100, %90, %82
  %111 = icmp eq i32 %46, 0
  br i1 %111, label %112, label %114, !prof !165

112:                                              ; preds = %110
  %113 = load ptr, ptr @pref_buffer, align 8, !tbaa !119
  store ptr %113, ptr @pref, align 8, !tbaa !119
  br label %114

114:                                              ; preds = %112, %110
  %115 = tail call i32 @max_reg_num() #17
  %116 = icmp sgt i32 %115, 53
  br i1 %116, label %117, label %520, !prof !153

117:                                              ; preds = %114
  %118 = zext nneg i32 %115 to i64
  br label %119

119:                                              ; preds = %117, %518
  %120 = phi i64 [ %118, %117 ], [ %121, %518 ]
  %121 = add nsw i64 %120, -1
  %122 = load i1, ptr @allocno_p, align 1
  br i1 %122, label %135, label %123, !prof !166

123:                                              ; preds = %119
  %124 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  %125 = getelementptr inbounds ptr, ptr %124, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !119
  %127 = icmp eq ptr %126, null
  br i1 %127, label %518, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %130 = load ptr, ptr @costs, align 8, !tbaa !119
  %131 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %121, %132
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %129, ptr align 4 %134, i64 %132, i1 false)
  br label %233

135:                                              ; preds = %119
  %136 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !119
  %137 = getelementptr inbounds ptr, ptr %136, i64 %121
  %138 = load ptr, ptr %137, align 8, !tbaa !119
  %139 = icmp eq ptr %138, null
  br i1 %139, label %518, label %140, !prof !167

140:                                              ; preds = %135
  %141 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %142 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %143 = sext i32 %142 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %141, i8 0, i64 %143, i1 false)
  %144 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !119
  %145 = getelementptr inbounds ptr, ptr %144, i64 %121
  %146 = load ptr, ptr %145, align 8, !tbaa !119
  %147 = icmp eq ptr %146, null
  br i1 %147, label %233, label %148, !prof !168

148:                                              ; preds = %140, %225
  %149 = phi i32 [ %206, %225 ], [ %142, %140 ]
  %150 = phi ptr [ %231, %225 ], [ %146, %140 ]
  %151 = load i32, ptr %150, align 8, !tbaa !147
  %152 = load i32, ptr @flag_ira_region, align 4
  %153 = add i32 %152, -1
  %154 = icmp ult i32 %153, 2
  br i1 %154, label %155, label %205, !prof !169

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !170
  %158 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !171
  %160 = icmp eq ptr %159, null
  br i1 %160, label %205, label %161, !prof !173

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %159, i64 0, i32 9
  %163 = load ptr, ptr %162, align 8, !tbaa !174
  %164 = getelementptr inbounds ptr, ptr %163, i64 %121
  %165 = load ptr, ptr %164, align 8, !tbaa !119
  %166 = icmp eq ptr %165, null
  br i1 %166, label %205, label %167, !prof !175

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 13
  %169 = load ptr, ptr %168, align 8, !tbaa !176
  %170 = tail call i32 @bitmap_bit_p(ptr noundef %169, i32 noundef %151) #17
  %171 = icmp eq i32 %170, 0
  %172 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  br i1 %171, label %205, label %173, !prof !177

173:                                              ; preds = %167
  %174 = load i32, ptr %165, align 8, !tbaa !147
  %175 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %176 = icmp sgt i32 %175, 0
  %177 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !119
  %178 = mul nsw i32 %172, %151
  %179 = sext i32 %178 to i64
  br i1 %176, label %183, label %180, !prof !178

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
  %192 = load i32, ptr %191, align 4, !tbaa !123
  %193 = getelementptr inbounds %struct.costs, ptr %187, i64 0, i32 1, i64 %190
  %194 = load i32, ptr %193, align 4, !tbaa !123
  %195 = add nsw i32 %194, %192
  store i32 %195, ptr %193, align 4, !tbaa !123
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %188
  br i1 %197, label %198, label %189, !prof !179, !llvm.loop !180

198:                                              ; preds = %189, %180
  %199 = phi i64 [ %182, %180 ], [ %186, %189 ]
  %200 = getelementptr inbounds i8, ptr %177, i64 %179
  %201 = load i32, ptr %200, align 4, !tbaa !125
  %202 = getelementptr inbounds i8, ptr %177, i64 %199
  %203 = load i32, ptr %202, align 4, !tbaa !125
  %204 = add nsw i32 %203, %201
  store i32 %204, ptr %202, align 4, !tbaa !125
  br label %205

205:                                              ; preds = %148, %198, %167, %161, %155
  %206 = phi i32 [ %149, %148 ], [ %172, %198 ], [ %172, %167 ], [ %149, %161 ], [ %149, %155 ]
  %207 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %208 = icmp sgt i32 %207, 0
  %209 = load ptr, ptr @costs, align 8, !tbaa !119
  %210 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %211 = mul nsw i32 %206, %151
  %212 = sext i32 %211 to i64
  br i1 %208, label %213, label %225, !prof !181

213:                                              ; preds = %205
  %214 = getelementptr inbounds i8, ptr %209, i64 %212
  %215 = zext nneg i32 %207 to i64
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ 0, %213 ], [ %223, %216 ]
  %218 = getelementptr inbounds %struct.costs, ptr %214, i64 0, i32 1, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !123
  %220 = getelementptr inbounds %struct.costs, ptr %210, i64 0, i32 1, i64 %217
  %221 = load i32, ptr %220, align 4, !tbaa !123
  %222 = add nsw i32 %221, %219
  store i32 %222, ptr %220, align 4, !tbaa !123
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %225, label %216, !prof !182, !llvm.loop !183

225:                                              ; preds = %216, %205
  %226 = getelementptr inbounds i8, ptr %209, i64 %212
  %227 = load i32, ptr %226, align 4, !tbaa !125
  %228 = load i32, ptr %210, align 4, !tbaa !125
  %229 = add nsw i32 %228, %227
  store i32 %229, ptr %210, align 4, !tbaa !125
  %230 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 5
  %231 = load ptr, ptr %230, align 8, !tbaa !119
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %148, !prof !184, !llvm.loop !185

233:                                              ; preds = %225, %140, %128
  %234 = phi ptr [ %141, %140 ], [ %129, %128 ], [ %210, %225 ]
  %235 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %307, !prof !186

237:                                              ; preds = %233
  %238 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %239 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
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
  %249 = load i32, ptr %248, align 4, !tbaa !123
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %242, i64 %121
  %252 = load ptr, ptr %251, align 8, !tbaa !119
  %253 = load i32, ptr %252, align 8
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %250, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !187
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %295, label %260, !prof !188

260:                                              ; preds = %241
  %261 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %240, i32 noundef %249, i32 noundef %255) #17
  %262 = icmp eq i8 %261, 0
  %263 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %264 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  br i1 %262, label %265, label %295, !prof !189

265:                                              ; preds = %260
  %266 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %267 = getelementptr inbounds %struct.costs, ptr %266, i64 0, i32 1, i64 %244
  %268 = load i32, ptr %267, align 4, !tbaa !123
  %269 = icmp slt i32 %268, %247
  br i1 %269, label %276, label %270, !prof !190

270:                                              ; preds = %265
  %271 = icmp eq i32 %268, %247
  br i1 %271, label %272, label %276, !prof !191

272:                                              ; preds = %270
  %273 = zext i32 %246 to i64
  %274 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %273, i64 %250
  %275 = load i32, ptr %274, align 4, !tbaa !123
  br label %276

276:                                              ; preds = %265, %270, %272
  %277 = phi i32 [ %247, %272 ], [ %247, %270 ], [ %268, %265 ]
  %278 = phi i32 [ %275, %272 ], [ %246, %270 ], [ %249, %265 ]
  %279 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %280 = icmp eq i32 %46, %279
  br i1 %280, label %281, label %295, !prof !192

281:                                              ; preds = %276
  %282 = load i32, ptr %266, align 4, !tbaa !125
  %283 = icmp slt i32 %268, %282
  br i1 %283, label %284, label %295, !prof !193

284:                                              ; preds = %281
  %285 = zext i32 %245 to i64
  %286 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %285, i64 %250
  %287 = load i32, ptr %286, align 4, !tbaa !123
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !123
  %291 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %285
  %292 = load i32, ptr %291, align 4, !tbaa !123
  %293 = icmp ugt i32 %290, %292
  %294 = select i1 %293, i32 %287, i32 %245, !prof !194
  br label %295

295:                                              ; preds = %284, %276, %281, %241, %260
  %296 = phi ptr [ %264, %260 ], [ %264, %281 ], [ %264, %276 ], [ %242, %241 ], [ %264, %284 ]
  %297 = phi ptr [ %263, %260 ], [ %263, %281 ], [ %263, %276 ], [ %243, %241 ], [ %263, %284 ]
  %298 = phi i32 [ %247, %260 ], [ %277, %281 ], [ %277, %276 ], [ %247, %241 ], [ %277, %284 ]
  %299 = phi i32 [ %246, %260 ], [ %278, %281 ], [ %278, %276 ], [ %246, %241 ], [ %278, %284 ]
  %300 = phi i32 [ %245, %260 ], [ %245, %281 ], [ %245, %276 ], [ %245, %241 ], [ %294, %284 ]
  %301 = add nuw nsw i64 %244, 1
  %302 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %303 = sext i32 %302 to i64
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %241, label %305, !prof !195, !llvm.loop !196

305:                                              ; preds = %295
  %306 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  br label %307

307:                                              ; preds = %305, %233
  %308 = phi ptr [ %234, %233 ], [ %306, %305 ]
  %309 = phi i32 [ 1073741823, %233 ], [ %298, %305 ]
  %310 = phi i32 [ 26, %233 ], [ %299, %305 ]
  %311 = phi i32 [ 0, %233 ], [ %300, %305 ]
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !123
  %315 = load i32, ptr %308, align 4, !tbaa !125
  %316 = icmp sgt i32 %309, %315
  br i1 %316, label %327, label %317, !prof !197

317:                                              ; preds = %307
  %318 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !123
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %323, !prof !197

320:                                              ; preds = %317
  %321 = icmp eq i32 %314, 0
  %322 = select i1 %321, i32 %310, i32 %314
  br label %327

323:                                              ; preds = %317
  %324 = zext i32 %310 to i64
  %325 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !123
  br label %327

327:                                              ; preds = %307, %320, %323
  %328 = phi i32 [ %322, %320 ], [ %326, %323 ], [ 0, %307 ]
  %329 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  %330 = getelementptr inbounds i32, ptr %329, i64 %121
  store i32 %328, ptr %330, align 4, !tbaa !123
  %331 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %332 = icmp eq i32 %46, %331
  br i1 %332, label %333, label %361, !prof !198

333:                                              ; preds = %327
  %334 = load i32, ptr %308, align 4, !tbaa !125
  %335 = icmp sgt i32 %309, %334
  %336 = icmp eq i32 %310, %314
  %337 = select i1 %335, i32 0, i32 %310, !prof !199
  %338 = select i1 %335, i1 true, i1 %336
  %339 = select i1 %338, i32 0, i32 %314, !prof !199
  %340 = trunc i64 %121 to i32
  tail call void @setup_reg_classes(i32 noundef %340, i32 noundef %337, i32 noundef %339, i32 noundef %328) #17
  %341 = load i1, ptr @allocno_p, align 1
  %342 = xor i1 %341, true
  %343 = load i32, ptr @internal_flag_ira_verbose, align 4
  %344 = icmp sgt i32 %343, 2
  %345 = select i1 %342, i1 true, i1 %344
  %346 = and i1 %42, %345
  br i1 %346, label %347, label %361, !prof !200

347:                                              ; preds = %333
  %348 = zext i32 %337 to i64
  %349 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !119
  %351 = zext i32 %339 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !119
  %354 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  %355 = getelementptr inbounds i32, ptr %354, i64 %121
  %356 = load i32, ptr %355, align 4, !tbaa !123
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !119
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %340, ptr noundef %350, ptr noundef %353, ptr noundef %359) #16
  br label %361

361:                                              ; preds = %347, %333, %327
  %362 = phi i32 [ %337, %347 ], [ %337, %333 ], [ %310, %327 ]
  %363 = load i1, ptr @allocno_p, align 1
  br i1 %363, label %371, label %364, !prof !201

364:                                              ; preds = %361
  %365 = load ptr, ptr @temp_costs, align 8, !tbaa !119
  %366 = load i32, ptr %365, align 4, !tbaa !125
  %367 = icmp sgt i32 %309, %366
  %368 = select i1 %367, i32 0, i32 %362
  %369 = load ptr, ptr @pref, align 8, !tbaa !119
  %370 = getelementptr inbounds i32, ptr %369, i64 %121
  store i32 %368, ptr %370, align 4, !tbaa !123
  br label %518

371:                                              ; preds = %361
  %372 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !119
  %373 = getelementptr inbounds ptr, ptr %372, i64 %121
  %374 = load ptr, ptr %373, align 8, !tbaa !119
  %375 = icmp eq ptr %374, null
  br i1 %375, label %518, label %376, !prof !168

376:                                              ; preds = %371
  %377 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  %378 = trunc i64 %121 to i32
  br label %379

379:                                              ; preds = %376, %509
  %380 = phi ptr [ %510, %509 ], [ %377, %376 ]
  %381 = phi ptr [ %511, %509 ], [ %377, %376 ]
  %382 = phi ptr [ %516, %509 ], [ %374, %376 ]
  %383 = load i32, ptr %382, align 8, !tbaa !147
  %384 = getelementptr inbounds i32, ptr %381, i64 %121
  %385 = load i32, ptr %384, align 4, !tbaa !123
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %467, label %387, !prof !202

387:                                              ; preds = %379
  %388 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %461, !prof !181

390:                                              ; preds = %387
  %391 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  br label %392

392:                                              ; preds = %390, %450
  %393 = phi ptr [ %380, %390 ], [ %451, %450 ]
  %394 = phi ptr [ %380, %390 ], [ %452, %450 ]
  %395 = phi ptr [ %391, %390 ], [ %453, %450 ]
  %396 = phi i64 [ 0, %390 ], [ %457, %450 ]
  %397 = phi i32 [ 26, %390 ], [ %456, %450 ]
  %398 = phi i32 [ 1073741823, %390 ], [ %455, %450 ]
  %399 = phi i32 [ 1073741823, %390 ], [ %454, %450 ]
  %400 = getelementptr inbounds i32, ptr %395, i64 %396
  %401 = load i32, ptr %400, align 4, !tbaa !123
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, ptr %394, i64 %121
  %404 = load i32, ptr %403, align 4, !tbaa !123
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %402, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !123
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %450, label %409, !prof !203

409:                                              ; preds = %392
  %410 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  %411 = getelementptr inbounds ptr, ptr %410, i64 %121
  %412 = load ptr, ptr %411, align 8, !tbaa !119
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 16
  %415 = and i32 %414, 255
  %416 = zext nneg i32 %415 to i64
  %417 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %402, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !187
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %450, label %420, !prof !204

420:                                              ; preds = %409
  %421 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %378, i32 noundef %401, i32 noundef %415) #17
  %422 = icmp eq i8 %421, 0
  %423 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %424 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  br i1 %422, label %425, label %450, !prof !205

425:                                              ; preds = %420
  %426 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !119
  %427 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %428 = mul nsw i32 %427, %383
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, ptr %426, i64 %429
  %431 = getelementptr inbounds %struct.costs, ptr %430, i64 0, i32 1, i64 %396
  %432 = load i32, ptr %431, align 4, !tbaa !123
  %433 = icmp slt i32 %432, %399
  br i1 %433, label %434, label %439, !prof !206

434:                                              ; preds = %425
  %435 = load ptr, ptr @costs, align 8, !tbaa !119
  %436 = getelementptr inbounds i8, ptr %435, i64 %429
  %437 = getelementptr inbounds %struct.costs, ptr %436, i64 0, i32 1, i64 %396
  %438 = load i32, ptr %437, align 4, !tbaa !123
  br label %450

439:                                              ; preds = %425
  %440 = icmp eq i32 %432, %399
  br i1 %440, label %441, label %450, !prof !207

441:                                              ; preds = %439
  %442 = zext i32 %397 to i64
  %443 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %442, i64 %402
  %444 = load i32, ptr %443, align 4, !tbaa !123
  %445 = load ptr, ptr @costs, align 8, !tbaa !119
  %446 = getelementptr inbounds i8, ptr %445, i64 %429
  %447 = getelementptr inbounds %struct.costs, ptr %446, i64 0, i32 1, i64 %396
  %448 = load i32, ptr %447, align 4, !tbaa !123
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
  %458 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %459 = sext i32 %458 to i64
  %460 = icmp slt i64 %457, %459
  br i1 %460, label %392, label %461, !prof !208, !llvm.loop !209

461:                                              ; preds = %450, %387
  %462 = phi ptr [ %380, %387 ], [ %451, %450 ]
  %463 = phi ptr [ %381, %387 ], [ %452, %450 ]
  %464 = phi i32 [ 1073741823, %387 ], [ %455, %450 ]
  %465 = phi i32 [ 26, %387 ], [ %456, %450 ]
  %466 = getelementptr inbounds %struct.ira_allocno, ptr %382, i64 0, i32 10
  store i32 %464, ptr %466, align 4, !tbaa !210
  br label %467

467:                                              ; preds = %379, %461
  %468 = phi ptr [ %462, %461 ], [ %380, %379 ]
  %469 = phi ptr [ %463, %461 ], [ %381, %379 ]
  %470 = phi i32 [ %465, %461 ], [ 0, %379 ]
  %471 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !123
  %472 = icmp sgt i32 %471, 2
  %473 = and i1 %42, %472
  br i1 %473, label %474, label %509, !prof !211

474:                                              ; preds = %467
  br i1 %111, label %481, label %475

475:                                              ; preds = %474
  %476 = load ptr, ptr @pref, align 8, !tbaa !119
  %477 = sext i32 %383 to i64
  %478 = getelementptr inbounds i32, ptr %476, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !123
  %480 = icmp eq i32 %479, %470
  br i1 %480, label %509, label %481

481:                                              ; preds = %475, %474
  %482 = trunc i64 %121 to i32
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %383, i32 noundef %482) #16
  %484 = getelementptr inbounds %struct.ira_allocno, ptr %382, i64 0, i32 6
  %485 = load ptr, ptr %484, align 8, !tbaa !170
  %486 = load ptr, ptr %485, align 8, !tbaa !212
  %487 = icmp eq ptr %486, null
  br i1 %487, label %490, label %488

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %486, i64 0, i32 9
  br label %493

490:                                              ; preds = %481
  %491 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %485, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !213
  br label %493

493:                                              ; preds = %490, %488
  %494 = phi ptr [ %492, %490 ], [ %489, %488 ]
  %495 = phi ptr [ @.str.4, %490 ], [ @.str.3, %488 ]
  %496 = load i32, ptr %494, align 8, !tbaa !123
  %497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull %495, i32 noundef %496) #16
  %498 = zext i32 %470 to i64
  %499 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !119
  %501 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  %502 = getelementptr inbounds i32, ptr %501, i64 %121
  %503 = load i32, ptr %502, align 4, !tbaa !123
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !119
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %500, ptr noundef %506) #16
  %508 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  br label %509

509:                                              ; preds = %493, %475, %467
  %510 = phi ptr [ %508, %493 ], [ %468, %475 ], [ %468, %467 ]
  %511 = phi ptr [ %508, %493 ], [ %469, %475 ], [ %469, %467 ]
  %512 = load ptr, ptr @pref, align 8, !tbaa !119
  %513 = sext i32 %383 to i64
  %514 = getelementptr inbounds i32, ptr %512, i64 %513
  store i32 %470, ptr %514, align 4, !tbaa !123
  %515 = getelementptr inbounds %struct.ira_allocno, ptr %382, i64 0, i32 5
  %516 = load ptr, ptr %515, align 8, !tbaa !119
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %379, !prof !184, !llvm.loop !214

518:                                              ; preds = %509, %371, %135, %123, %364
  %519 = icmp sgt i64 %120, 54
  br i1 %519, label %119, label %520, !prof !215, !llvm.loop !216

520:                                              ; preds = %518, %114
  %521 = load i32, ptr @internal_flag_ira_verbose, align 4
  %522 = icmp sgt i32 %521, 4
  %523 = and i1 %42, %522
  br i1 %523, label %524, label %531, !prof !217

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
  %534 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !123
  %535 = icmp slt i32 %46, %534
  br i1 %535, label %44, label %536, !prof !218, !llvm.loop !219

536:                                              ; preds = %531, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_cover_class_and_costs() unnamed_addr #2 !prof !139 !PGOFuncName !220 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !143
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %89, label %5, !prof !151

5:                                                ; preds = %0, %86
  %6 = load ptr, ptr %1, align 8, !tbaa !119
  %7 = load i32, ptr %6, align 8, !tbaa !147
  %8 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = load ptr, ptr @costs, align 8, !tbaa !119
  %15 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %16 = mul nsw i32 %15, %7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !125
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  store i32 %19, ptr %20, align 4, !tbaa !221
  tail call void @ira_set_allocno_cover_class(ptr noundef nonnull %6, i32 noundef %13) #17
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %86, label %22, !prof !222

22:                                               ; preds = %5
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !123
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 38
  store i32 %25, ptr %26, align 4, !tbaa !223
  %27 = load i32, ptr @optimize, align 4, !tbaa !123
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %29, !prof !222

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !224
  %32 = load ptr, ptr @pref, align 8, !tbaa !119
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !123
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %86, label %37, !prof !225

37:                                               ; preds = %29
  %38 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %23
  %39 = load i32, ptr %38, align 4, !tbaa !123
  %40 = tail call ptr @ira_allocate_cost_vector(i32 noundef %13) #17
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  store ptr %40, ptr %41, align 8, !tbaa !226
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %86, !prof !227

43:                                               ; preds = %37
  %44 = load ptr, ptr @pref, align 8, !tbaa !119
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
  %57 = load i16, ptr %56, align 2, !tbaa !228
  %58 = sext i16 %57 to i64
  %59 = load i32, ptr %45, align 4, !tbaa !123
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !230
  %63 = and i64 %58, 4294967295
  %64 = shl nuw i64 1, %63
  %65 = and i64 %62, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %81, !prof !231

67:                                               ; preds = %53
  %68 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %58
  %69 = load i32, ptr %68, align 4, !tbaa !123
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !123
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77, !prof !232

74:                                               ; preds = %67
  %75 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %23
  %76 = load i32, ptr %75, align 4, !tbaa !123
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ %76, %74 ], [ %72, %67 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.costs, ptr %51, i64 0, i32 1, i64 %79
  br label %81

81:                                               ; preds = %53, %77
  %82 = phi ptr [ %80, %77 ], [ %46, %53 ]
  %83 = load i32, ptr %82, align 4, !tbaa !123
  %84 = getelementptr inbounds i32, ptr %40, i64 %55
  store i32 %83, ptr %84, align 4, !tbaa !123
  %85 = icmp ugt i64 %54, 1
  br i1 %85, label %53, label %86, !prof !233, !llvm.loop !234

86:                                               ; preds = %81, %22, %29, %37, %5
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !143
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %5, !prof !235, !llvm.loop !236

89:                                               ; preds = %86, %0
  %90 = load i32, ptr @optimize, align 4, !tbaa !123
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92, !prof !237

92:                                               ; preds = %89
  %93 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !119
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %93, ptr noundef nonnull @process_bb_node_for_hard_reg_moves, ptr noundef null) #17
  br label %94

94:                                               ; preds = %92, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_costs() unnamed_addr #2 !prof !139 !PGOFuncName !238 {
  %1 = load ptr, ptr @regno_cover_class, align 8, !tbaa !119
  tail call void @ira_free(ptr noundef %1) #17
  %2 = load ptr, ptr @pref_buffer, align 8, !tbaa !119
  tail call void @ira_free(ptr noundef %2) #17
  %3 = load ptr, ptr @costs, align 8, !tbaa !119
  tail call void @ira_free(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_subregs_of_mode() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @resize_reg_info() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #5 !prof !239 !PGOFuncName !240 {
  store i32 0, ptr %0, align 4, !tbaa !241
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !prof !243 !PGOFuncName !244 {
  %3 = load i32, ptr %0, align 4, !tbaa !241
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !123
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !153

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !119
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !245

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !119
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !241
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !246, !llvm.loop !247

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @process_bb_node_for_costs(ptr nocapture noundef readonly %0) #2 !prof !248 !PGOFuncName !249 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !250

4:                                                ; preds = %1
  tail call fastcc void @process_bb_for_costs(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_bb_for_costs(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !251 !PGOFuncName !252 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !123
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %22, !prof !253

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !123
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7, !prof !253

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !254
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !255
  %18 = add i32 %17, 9
  %19 = icmp ult i32 %18, 19
  br i1 %19, label %22, label %20, !prof !256

20:                                               ; preds = %15
  %21 = sdiv i32 %17, 10
  br label %22

22:                                               ; preds = %20, %15, %1, %7
  %23 = phi i32 [ %21, %20 ], [ 1, %15 ], [ 1000, %1 ], [ 1000, %7 ]
  store i32 %23, ptr @frequency, align 4, !tbaa !123
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !187
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28, !prof !257

28:                                               ; preds = %22, %36
  %29 = phi ptr [ %39, %36 ], [ %26, %22 ]
  %30 = load ptr, ptr %24, align 8, !tbaa !187
  %31 = getelementptr inbounds %struct.rtl_bb_info, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !258
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !187
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %41, label %36, !prof !260

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @scan_one_insn(ptr noundef nonnull %29) #16
  %38 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !187
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !prof !261, !llvm.loop !262

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
define internal fastcc void @print_allocno_costs(ptr nocapture noundef %0) unnamed_addr #2 !prof !263 !PGOFuncName !264 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %5 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !143
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %89, label %7

7:                                                ; preds = %1, %79
  %8 = load ptr, ptr %2, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = load i32, ptr %8, align 8, !tbaa !147
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %10) #16
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = load ptr, ptr %14, align 8, !tbaa !212
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  br label %22

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %21, %19 ], [ %18, %17 ]
  %24 = phi ptr [ @.str.4, %19 ], [ @.str.3, %17 ]
  %25 = load i32, ptr %23, align 8, !tbaa !123
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %25) #16
  %27 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %28 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %22
  %31 = sext i32 %10 to i64
  br label %32

32:                                               ; preds = %30, %74
  %33 = phi i64 [ 0, %30 ], [ %75, %74 ]
  %34 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %35 = getelementptr inbounds i32, ptr %34, i64 %33
  %36 = load i32, ptr %35, align 4, !tbaa !123
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !119
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %37, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !187
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %32
  %49 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %10, i32 noundef %36, i32 noundef %43) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !119
  %54 = load ptr, ptr @costs, align 8, !tbaa !119
  %55 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %56 = mul nsw i32 %55, %11
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = getelementptr inbounds %struct.costs, ptr %58, i64 0, i32 1, i64 %33
  %60 = load i32, ptr %59, align 4, !tbaa !123
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %53, i32 noundef %60) #16
  %62 = load i32, ptr @flag_ira_region, align 4
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !119
  %67 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %68 = mul nsw i32 %67, %11
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = getelementptr inbounds %struct.costs, ptr %70, i64 0, i32 1, i64 %33
  %72 = load i32, ptr %71, align 4, !tbaa !123
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %72) #16
  br label %74

74:                                               ; preds = %32, %48, %51, %65
  %75 = add nuw nsw i64 %33, 1
  %76 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %32, label %79, !llvm.loop !265

79:                                               ; preds = %74, %22
  %80 = load ptr, ptr @costs, align 8, !tbaa !119
  %81 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %82 = mul nsw i32 %81, %11
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !125
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %85) #16
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !143
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %7, !llvm.loop !266

89:                                               ; preds = %79, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pseudo_costs(ptr nocapture noundef %0) unnamed_addr #2 !prof !263 !PGOFuncName !267 {
  %2 = tail call i32 @fputc(i32 10, ptr %0)
  %3 = tail call i32 @max_reg_num() #17
  %4 = icmp sgt i32 %3, 53
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %5, %64
  %9 = phi ptr [ %7, %5 ], [ %65, %64 ]
  %10 = phi i64 [ %6, %5 ], [ %11, %64 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %8
  %16 = trunc i64 %11 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16) #16
  %18 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %15, %50
  %21 = phi i64 [ %51, %50 ], [ 0, %15 ]
  %22 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !123
  %25 = sext i32 %24 to i64
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  %27 = getelementptr inbounds ptr, ptr %26, i64 %11
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %25, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !187
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %20
  %37 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %16, i32 noundef %24, i32 noundef %31) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %25
  %41 = load ptr, ptr %40, align 8, !tbaa !119
  %42 = load ptr, ptr @costs, align 8, !tbaa !119
  %43 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %11, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.costs, ptr %46, i64 0, i32 1, i64 %21
  %48 = load i32, ptr %47, align 4, !tbaa !123
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef %48) #16
  br label %50

50:                                               ; preds = %20, %36, %39
  %51 = add nuw nsw i64 %21, 1
  %52 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %20, label %55, !llvm.loop !268

55:                                               ; preds = %50, %15
  %56 = load ptr, ptr @costs, align 8, !tbaa !119
  %57 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %11, %58
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !125
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %61) #16
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !119
  br label %64

64:                                               ; preds = %8, %55
  %65 = phi ptr [ %9, %8 ], [ %63, %55 ]
  %66 = icmp sgt i64 %10, 54
  br i1 %66, label %8, label %67, !llvm.loop !269

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scan_one_insn(ptr noundef returned %0) unnamed_addr #2 !prof !270 !PGOFuncName !271 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -11
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %141, label %6, !prof !272

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = and i32 %9, 65534
  %12 = icmp eq i32 %11, 24
  %13 = and i32 %9, 65531
  %14 = icmp eq i32 %13, 16
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %10, 21
  %17 = or i1 %16, %15
  br i1 %17, label %141, label %18, !prof !273

18:                                               ; preds = %6
  %19 = icmp eq i32 %10, 23
  br i1 %19, label %20, label %21, !prof !274

20:                                               ; preds = %18
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  br label %24

21:                                               ; preds = %18
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %89, label %24, !prof !275

24:                                               ; preds = %20, %21
  %25 = phi ptr [ %8, %20 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %89, !prof !276

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !187
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %89, !prof !277

37:                                               ; preds = %31
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 3, ptr noundef null) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %89, label %40, !prof !278

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !187
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %89, !prof !279

46:                                               ; preds = %40
  %47 = load ptr, ptr %26, align 8, !tbaa !187
  %48 = load i1, ptr @allocno_p, align 1
  br i1 %48, label %49, label %56, !prof !280

49:                                               ; preds = %46
  %50 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !119
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = load i32, ptr %54, align 8, !tbaa !147
  br label %58

56:                                               ; preds = %46
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %55, %49 ], [ %57, %56 ]
  %60 = load ptr, ptr @pref, align 8, !tbaa !119
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62, !prof !281

62:                                               ; preds = %58
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !123
  %66 = zext i32 %65 to i64
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i64 [ %66, %62 ], [ 13, %58 ]
  %69 = load i32, ptr %47, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %72, i64 %68, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !228
  %75 = sext i16 %74 to i32
  %76 = load i32, ptr @frequency, align 4, !tbaa !123
  %77 = mul nsw i32 %76, %75
  %78 = load ptr, ptr @costs, align 8, !tbaa !119
  %79 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %80 = mul nsw i32 %79, %59
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !125
  %84 = sub nsw i32 %83, %77
  store i32 %84, ptr %82, align 4, !tbaa !125
  %85 = load ptr, ptr %32, align 8, !tbaa !187
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !187
  %88 = shl nsw i32 %76, 1
  tail call fastcc void @record_address_regs(ptr noundef %87, i32 noundef 0, i32 noundef %88) #16
  br label %89

89:                                               ; preds = %67, %40, %37, %31, %24, %21
  %90 = load ptr, ptr @pref, align 8, !tbaa !119
  tail call fastcc void @record_operand_costs(ptr noundef nonnull %0, ptr noundef %90) #16
  %91 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !282
  %92 = icmp sgt i8 %91, 0
  br i1 %92, label %93, label %141, !prof !284

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
  %103 = load ptr, ptr %102, align 8, !tbaa !119
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %107, label %138, !prof !285

107:                                              ; preds = %100
  %108 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %103) #16
  %109 = icmp ugt i32 %108, 52
  br i1 %109, label %110, label %138, !prof !286

110:                                              ; preds = %107
  br i1 %96, label %111, label %116, !prof !287

111:                                              ; preds = %110
  %112 = sext i32 %108 to i64
  %113 = getelementptr inbounds ptr, ptr %97, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !119
  %115 = load i32, ptr %114, align 8, !tbaa !147
  br label %116

116:                                              ; preds = %110, %111
  %117 = phi i32 [ %115, %111 ], [ %108, %110 ]
  %118 = icmp sgt i32 %99, 0
  %119 = mul nsw i32 %98, %117
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %95, i64 %120
  %122 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %101
  %123 = load ptr, ptr %122, align 8, !tbaa !119
  %124 = load i32, ptr %123, align 4, !tbaa !125
  %125 = load i32, ptr %121, align 4, !tbaa !125
  %126 = add nsw i32 %125, %124
  store i32 %126, ptr %121, align 4, !tbaa !125
  br i1 %118, label %127, label %138, !prof !288

127:                                              ; preds = %116
  %128 = zext nneg i32 %99 to i64
  br label %129

129:                                              ; preds = %127, %129
  %130 = phi i64 [ %136, %129 ], [ 0, %127 ]
  %131 = getelementptr inbounds %struct.costs, ptr %123, i64 0, i32 1, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !123
  %133 = getelementptr inbounds %struct.costs, ptr %121, i64 0, i32 1, i64 %130
  %134 = load i32, ptr %133, align 4, !tbaa !123
  %135 = add nsw i32 %134, %132
  store i32 %135, ptr %133, align 4, !tbaa !123
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %138, label %129, !prof !289, !llvm.loop !290

138:                                              ; preds = %129, %116, %100, %107
  %139 = add nuw nsw i64 %101, 1
  %140 = icmp eq i64 %139, %94
  br i1 %140, label %141, label %100, !prof !291, !llvm.loop !292

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !293 !PGOFuncName !294 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !187
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_address_regs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !295 !PGOFuncName !296 {
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
  ], !prof !297

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %16, 39
  br i1 %19, label %20, label %25, !prof !298

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i32 [ %24, %20 ], [ %16, %10 ]
  %27 = phi ptr [ %22, %20 ], [ %12, %10 ]
  %28 = icmp eq i32 %18, 39
  br i1 %28, label %29, label %34, !prof !298

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !187
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
  br i1 %46, label %38, label %47, !prof !299

47:                                               ; preds = %42
  %48 = icmp eq i32 %26, 37
  %49 = icmp eq i32 %36, 37
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %73, !prof !300

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #16
  %53 = icmp ult i32 %52, 53
  br i1 %53, label %54, label %62, !prof !301

54:                                               ; preds = %51
  %55 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr noundef nonnull %27) #16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60, !prof !302

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %27) #16, !range !143
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
  %69 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %35) #16, !range !143
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
  %98 = load ptr, ptr %97, align 8, !tbaa !187
  %99 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = shl nsw i32 %7, 1
  tail call fastcc void @record_address_regs(ptr noundef %98, i32 noundef 0, i32 noundef %100) #16
  %101 = load ptr, ptr %99, align 8, !tbaa !187
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !187
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %38, label %187

107:                                              ; preds = %4, %4, %4, %4
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !187
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
  %119 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !119
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !119
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 31
  %124 = load i16, ptr %123, align 4
  %125 = or i16 %124, 64
  store i16 %125, ptr %123, align 4
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %119, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !119
  %130 = load i32, ptr %129, align 8, !tbaa !147
  br label %133

131:                                              ; preds = %116
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  br label %133

133:                                              ; preds = %131, %118
  %134 = phi i32 [ %130, %118 ], [ %132, %131 ]
  %135 = load ptr, ptr @costs, align 8, !tbaa !119
  %136 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %137 = mul nsw i32 %136, %134
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  %140 = zext nneg i32 %113 to i64
  %141 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 16, i64 %140, i64 1
  %142 = load i16, ptr %141, align 2, !tbaa !228
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %7, %143
  %145 = sdiv i32 %144, 2
  %146 = load i32, ptr %139, align 4, !tbaa !125
  %147 = add nsw i32 %145, %146
  store i32 %147, ptr %139, align 4, !tbaa !125
  %148 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %187, !prof !313

150:                                              ; preds = %133, %150
  %151 = phi i64 [ %161, %150 ], [ 0, %133 ]
  %152 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %153 = getelementptr inbounds i32, ptr %152, i64 %151
  %154 = load i32, ptr %153, align 4, !tbaa !123
  %155 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef 16, i32 noundef %154, i32 noundef %113, i8 noundef zeroext 1) #16, !range !314
  %156 = mul nsw i32 %155, %7
  %157 = sdiv i32 %156, 2
  %158 = getelementptr inbounds %struct.costs, ptr %139, i64 0, i32 1, i64 %151
  %159 = load i32, ptr %158, align 4, !tbaa !123
  %160 = add nsw i32 %157, %159
  store i32 %160, ptr %158, align 4, !tbaa !123
  %161 = add nuw nsw i64 %151, 1
  %162 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %150, label %187, !prof !315, !llvm.loop !316

165:                                              ; preds = %4
  %166 = and i32 %8, 65535
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !119
  %170 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %167
  %171 = load i8, ptr %170, align 1, !tbaa !187
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
  %180 = load i8, ptr %179, align 1, !tbaa !187
  %181 = icmp eq i8 %180, 101
  br i1 %181, label %182, label %185, !prof !318

182:                                              ; preds = %176
  %183 = getelementptr inbounds [1 x %union.rtunion_def], ptr %174, i64 0, i64 %178
  %184 = load ptr, ptr %183, align 8, !tbaa !187
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
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !282
  %7 = sext i8 %6 to i32
  %8 = icmp sgt i8 %6, 0
  br i1 %8, label %9, label %86, !prof !284

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw nsw i64 %10, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %11, i1 false), !tbaa !119
  %12 = shl nuw nsw i64 %10, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 0), i64 %12, i1 false), !tbaa !123
  br label %16

13:                                               ; preds = %50
  %14 = sext i8 %52 to i32
  %15 = icmp sgt i8 %52, 1
  br i1 %15, label %55, label %86, !prof !275

16:                                               ; preds = %9, %50
  %17 = phi i64 [ 0, %9 ], [ %51, %50 ]
  %18 = getelementptr inbounds ptr, ptr @op_costs, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = load ptr, ptr @init_cost, align 8, !tbaa !119
  %21 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
  %22 = sext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false)
  %23 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %17
  %24 = load ptr, ptr %23, align 8, !tbaa !119
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %32, !prof !323

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !187
  store ptr %30, ptr %23, align 8, !tbaa !119
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
  %39 = load ptr, ptr %38, align 8, !tbaa !187
  %40 = load i32, ptr @frequency, align 4, !tbaa !123
  %41 = shl nsw i32 %40, 1
  tail call fastcc void @record_address_regs(ptr noundef %39, i32 noundef 0, i32 noundef %41) #16
  br label %50

42:                                               ; preds = %32
  %43 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %17
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  %45 = load i8, ptr %44, align 1, !tbaa !187
  %46 = icmp eq i8 %45, 112
  br i1 %46, label %47, label %50, !prof !325

47:                                               ; preds = %42
  %48 = load i32, ptr @frequency, align 4, !tbaa !123
  %49 = shl nsw i32 %48, 1
  tail call fastcc void @record_address_regs(ptr noundef nonnull %34, i32 noundef 0, i32 noundef %49) #16
  br label %50

50:                                               ; preds = %37, %47, %42
  %51 = add nuw nsw i64 %17, 1
  %52 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !282
  %53 = sext i8 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %16, label %13, !prof !326, !llvm.loop !327

55:                                               ; preds = %13, %79
  %56 = phi i8 [ %81, %79 ], [ %52, %13 ]
  %57 = phi i64 [ %80, %79 ], [ 0, %13 ]
  %58 = phi i32 [ %82, %79 ], [ %14, %13 ]
  %59 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !119
  %61 = load i8, ptr %60, align 1, !tbaa !187
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 16 %3, i64 %69, i1 false), !tbaa !119
  br label %70

70:                                               ; preds = %67, %65
  %71 = add nuw nsw i64 %57, 1
  %72 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !119
  %74 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %57
  store ptr %73, ptr %74, align 8, !tbaa !119
  %75 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %71
  store ptr %60, ptr %75, align 8, !tbaa !119
  %76 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !330
  %77 = sext i8 %76 to i32
  call fastcc void @record_reg_classes(i32 noundef %77, i32 noundef %58, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #18
  %78 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !282
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
define internal fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !333 !PGOFuncName !334 {
  %2 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 52
  br i1 %3, label %6, label %4, !prof !335

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !263 !PGOFuncName !336 {
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
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !119
  %11 = getelementptr inbounds i16, ptr %10, i64 %6
  %12 = load i16, ptr %11, align 2, !tbaa !228
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
define internal fastcc i32 @ira_get_may_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 !prof !337 !PGOFuncName !338 {
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !339

9:                                                ; preds = %4
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i8 %3, 0
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = select i1 %11, ptr @ira_may_move_out_cost, ptr @ira_may_move_in_cost, !prof !340
  %15 = getelementptr inbounds [87 x ptr], ptr %14, i64 0, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds [27 x i16], ptr %16, i64 %12, i64 %13
  %18 = load i16, ptr %17, align 2, !tbaa !228
  %19 = zext i16 %18 to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #11 !prof !333 !PGOFuncName !341 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %21, label %3, !prof !335

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = add nsw i64 %4, -37
  %6 = icmp ult i64 %5, 8
  %7 = and i32 %0, -5
  %8 = icmp eq i32 %7, 16
  %9 = or i1 %8, %6
  br i1 %9, label %21, label %10, !prof !342

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !119
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !228
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
define internal fastcc void @record_reg_classes(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readonly %5) unnamed_addr #2 !prof !343 !PGOFuncName !344 {
  %7 = alloca [30 x i32], align 16
  %8 = alloca [30 x i32], align 16
  %9 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #18
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14, !prof !345

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 0, i64 %13, i1 false), !tbaa !123
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %605, !prof !345

16:                                               ; preds = %14
  %17 = icmp eq ptr %5, null
  %18 = zext nneg i32 %1 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %16, %602
  %21 = phi i32 [ 0, %16 ], [ %603, %602 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #18
  br i1 %10, label %22, label %602, !prof !346

22:                                               ; preds = %20, %550
  %23 = phi i64 [ %553, %550 ], [ 0, %20 ]
  %24 = phi i32 [ %552, %550 ], [ 0, %20 ]
  %25 = phi i32 [ %551, %550 ], [ 0, %20 ]
  %26 = getelementptr inbounds ptr, ptr %3, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !119
  %28 = getelementptr inbounds ptr, ptr @recog_data, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !119
  %30 = getelementptr inbounds i32, ptr %2, i64 %23
  %31 = load i32, ptr %30, align 4, !tbaa !123
  %32 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %23
  store i32 0, ptr %32, align 4, !tbaa !123
  %33 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %23
  store i32 0, ptr %33, align 4, !tbaa !123
  %34 = load i8, ptr %27, align 1, !tbaa !187
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %48, !prof !347

36:                                               ; preds = %22
  %37 = load i32, ptr %29, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %550, !prof !348

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %42 = icmp ugt i32 %41, 52
  br i1 %42, label %43, label %550, !prof !349

43:                                               ; preds = %40
  %44 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %45 = load ptr, ptr %44, align 8, !tbaa !119
  %46 = load i32, ptr @struct_costs_size, align 4, !tbaa !123
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
  ], !prof !350

51:                                               ; preds = %48, %48, %48, %48
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !187
  br label %48, !llvm.loop !351

54:                                               ; preds = %48
  %55 = icmp slt i8 %49, 48
  %56 = add nuw nsw i64 %23, 48
  %57 = zext nneg i8 %49 to i64
  %58 = icmp ult i64 %56, %57
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %227, label %60, !prof !352

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %50, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !187
  switch i8 %62, label %227 [
    i8 44, label %63
    i8 0, label %63
  ], !prof !353

63:                                               ; preds = %60, %60
  %64 = zext nneg i8 %49 to i64
  %65 = add nsw i64 %64, -48
  %66 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !123
  store i32 %67, ptr %32, align 4, !tbaa !123
  %68 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !123
  store i32 %69, ptr %33, align 4, !tbaa !123
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !354

71:                                               ; preds = %63
  %72 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %72, align 4, !tbaa !123
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i32, ptr %29, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %80, !prof !355

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %79 = icmp ult i32 %78, 53
  br i1 %79, label %80, label %87, !prof !356

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %82 = load ptr, ptr %81, align 8, !tbaa !119
  %83 = tail call i32 @rtx_equal_p(ptr noundef %82, ptr noundef nonnull %29) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %227, !prof !357

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0
  br i1 %86, label %227, label %222, !prof !358

87:                                               ; preds = %77
  %88 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %89 = load ptr, ptr %88, align 8, !tbaa !119
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %96, !prof !359

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #16
  %95 = icmp ult i32 %94, 53
  br i1 %95, label %96, label %98, !prof !360

96:                                               ; preds = %93, %87
  %97 = icmp eq i32 %67, 0
  br i1 %97, label %227, label %222, !prof !361

98:                                               ; preds = %93
  %99 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %100 = load ptr, ptr %99, align 8, !tbaa !119
  %101 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %130, !prof !362

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %105

105:                                              ; preds = %103, %119
  %106 = phi i64 [ 0, %103 ], [ %126, %119 ]
  %107 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %108 = getelementptr inbounds i32, ptr %107, i64 %106
  %109 = load i32, ptr %108, align 4, !tbaa !123
  %110 = load i32, ptr %104, align 4, !tbaa !123
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %116, label %112, !prof !363

112:                                              ; preds = %105
  %113 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %109, i32 noundef %67, i8 noundef zeroext 1) #16, !range !314
  %114 = load i32, ptr %104, align 4, !tbaa !123
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116, !prof !275

116:                                              ; preds = %105, %112
  %117 = phi i32 [ %113, %112 ], [ 0, %105 ]
  %118 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %67, i32 noundef %109, i8 noundef zeroext 0) #16, !range !314
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi i32 [ %117, %116 ], [ %113, %112 ]
  %121 = phi i32 [ %118, %116 ], [ 0, %112 ]
  %122 = add nuw nsw i32 %121, %120
  %123 = load i32, ptr @frequency, align 4, !tbaa !123
  %124 = mul nsw i32 %122, %123
  %125 = getelementptr inbounds %struct.costs, ptr %100, i64 0, i32 1, i64 %106
  store i32 %124, ptr %125, align 4, !tbaa !123
  %126 = add nuw nsw i64 %106, 1
  %127 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %105, label %130, !prof !364, !llvm.loop !365

130:                                              ; preds = %119, %98
  %131 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %132 = load i32, ptr %131, align 4, !tbaa !123
  %133 = icmp eq i32 %132, 0
  %134 = zext i32 %31 to i64
  %135 = zext i32 %67 to i64
  br i1 %133, label %141, label %136, !prof !366

136:                                              ; preds = %130
  %137 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135
  %138 = load i16, ptr %137, align 4, !tbaa !228
  %139 = sext i16 %138 to i32
  %140 = icmp eq i32 %132, 1
  br i1 %140, label %146, label %141, !prof !275

141:                                              ; preds = %130, %136
  %142 = phi i32 [ %139, %136 ], [ 0, %130 ]
  %143 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !228
  %145 = sext i16 %144 to i32
  br label %146

146:                                              ; preds = %136, %141
  %147 = phi i32 [ %142, %141 ], [ %139, %136 ]
  %148 = phi i32 [ %145, %141 ], [ 0, %136 ]
  %149 = sub i32 %147, %69
  %150 = add i32 %149, %148
  %151 = load i32, ptr @frequency, align 4, !tbaa !123
  %152 = mul nsw i32 %150, %151
  store i32 %152, ptr %100, align 4, !tbaa !125
  br i1 %17, label %199, label %153, !prof !367

153:                                              ; preds = %146
  %154 = load i1, ptr @allocno_p, align 1
  br i1 %154, label %155, label %162, !prof !368

155:                                              ; preds = %153
  %156 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !119
  %157 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !119
  %161 = load i32, ptr %160, align 8, !tbaa !147
  br label %164

162:                                              ; preds = %153
  %163 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  br label %164

164:                                              ; preds = %162, %155
  %165 = phi i32 [ %161, %155 ], [ %163, %162 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !123
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %190, !prof !369

170:                                              ; preds = %164
  %171 = load i32, ptr %131, align 4, !tbaa !123
  %172 = icmp eq i32 %171, 0
  %173 = zext i32 %31 to i64
  %174 = zext i32 %67 to i64
  br i1 %172, label %180, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174
  %177 = load i16, ptr %176, align 4, !tbaa !228
  %178 = sext i16 %177 to i32
  %179 = icmp eq i32 %171, 1
  br i1 %179, label %185, label %180

180:                                              ; preds = %170, %175
  %181 = phi i32 [ %178, %175 ], [ 0, %170 ]
  %182 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !228
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
  %194 = load i32, ptr %193, align 4, !tbaa !123
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199, !prof !370

196:                                              ; preds = %190
  %197 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %168, i32 noundef %67) #16, !range !314
  %198 = add nsw i32 %197, %25
  br label %199

199:                                              ; preds = %185, %196, %190, %146
  %200 = phi i32 [ %25, %146 ], [ %189, %185 ], [ %198, %196 ], [ %25, %190 ]
  %201 = load ptr, ptr %28, align 8, !tbaa !119
  %202 = tail call fastcc i32 @rhs_regno(ptr noundef %201) #16
  %203 = load ptr, ptr %88, align 8, !tbaa !119
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef %203) #16
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %211, label %206, !prof !371

206:                                              ; preds = %199
  %207 = tail call ptr @find_reg_note(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %29) #17
  %208 = icmp eq ptr %207, null
  %209 = add nsw i32 %200, 2
  %210 = select i1 %208, i32 %209, i32 %200, !prof !372
  br label %211

211:                                              ; preds = %206, %199
  %212 = phi i32 [ %200, %199 ], [ %210, %206 ]
  br label %213

213:                                              ; preds = %217, %211
  %214 = phi ptr [ %50, %211 ], [ %218, %217 ]
  %215 = load i8, ptr %214, align 1, !tbaa !187
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217, !prof !373

217:                                              ; preds = %213
  %218 = getelementptr inbounds i8, ptr %214, i64 1
  %219 = icmp eq i8 %215, 44
  br i1 %219, label %220, label %213, !prof !374, !llvm.loop !375

220:                                              ; preds = %213, %217
  %221 = phi ptr [ %218, %217 ], [ %214, %213 ]
  store ptr %221, ptr %26, align 8, !tbaa !119
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
  %240 = load i8, ptr %238, align 1, !tbaa !187
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
  ], !prof !376

241:                                              ; preds = %233
  %242 = load i32, ptr %29, align 8
  br label %308

243:                                              ; preds = %233
  %244 = getelementptr inbounds i8, ptr %238, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !187
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
  %255 = load i32, ptr %254, align 4, !tbaa !123
  store i32 %255, ptr %32, align 4, !tbaa !123
  br label %382

256:                                              ; preds = %233, %233, %233
  %257 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %33, align 4, !tbaa !123
  store i32 1, ptr %257, align 4, !tbaa !123
  %258 = load i32, ptr %29, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 43
  %261 = select i1 %260, i32 1, i32 %236, !prof !377
  br label %382

262:                                              ; preds = %233
  %263 = load i32, ptr %29, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 43
  br i1 %265, label %266, label %382

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !187
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
  %278 = load ptr, ptr %277, align 8, !tbaa !187
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
  ], !prof !378

285:                                              ; preds = %282
  %286 = lshr i32 %283, 16
  %287 = and i32 %286, 255
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !187
  %291 = icmp eq i8 %290, 17
  br i1 %291, label %292, label %382

292:                                              ; preds = %282, %285
  br label %382

293:                                              ; preds = %233, %233
  %294 = load i32, ptr %29, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 32
  br i1 %296, label %297, label %382, !prof !379

297:                                              ; preds = %293
  %298 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %299 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %29, i32 noundef %298) #17
  %300 = icmp eq i8 %299, 0
  %301 = select i1 %300, i32 %236, i32 1, !prof !380
  br label %382

302:                                              ; preds = %233
  %303 = load i32, ptr %29, align 8
  %304 = trunc i32 %303 to i16
  switch i16 %304, label %308 [
    i16 30, label %382
    i16 32, label %305
  ], !prof !381

305:                                              ; preds = %302
  %306 = and i32 %303, 16711680
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %382, label %308

308:                                              ; preds = %241, %302, %305
  %309 = phi i32 [ %242, %241 ], [ %303, %302 ], [ %303, %305 ]
  %310 = and i32 %309, 65535
  %311 = zext nneg i32 %310 to i64
  %312 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !123
  %314 = icmp eq i32 %313, 9
  br i1 %314, label %315, label %382, !prof !382

315:                                              ; preds = %308
  %316 = load i32, ptr @flag_pic, align 4, !tbaa !123
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318, !prof !383

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
  ], !prof !384

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
  br i1 %332, label %333, label %382, !prof !385

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !187
  %336 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %337 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %335, i32 noundef %336) #17
  %338 = icmp eq i8 %337, 0
  %339 = select i1 %338, i32 %236, i32 1, !prof !386
  br label %382

340:                                              ; preds = %233
  br label %382

341:                                              ; preds = %233
  %342 = load i32, ptr %29, align 8
  %343 = and i32 %342, 65535
  %344 = icmp eq i32 %343, 43
  br i1 %344, label %356, label %345, !prof !387

345:                                              ; preds = %341
  %346 = zext nneg i32 %343 to i64
  %347 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !123
  %349 = icmp eq i32 %348, 9
  br i1 %349, label %350, label %357, !prof !388

350:                                              ; preds = %345
  %351 = load i32, ptr @flag_pic, align 4, !tbaa !123
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %356, label %353, !prof !389

353:                                              ; preds = %350
  %354 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %29) #17
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %353, %350, %341
  br label %357

357:                                              ; preds = %356, %353, %345
  %358 = phi i32 [ 1, %356 ], [ %236, %353 ], [ %236, %345 ]
  %359 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %33, align 4, !tbaa !123
  store i32 1, ptr %359, align 4, !tbaa !123
  br label %360

360:                                              ; preds = %233, %357
  %361 = phi i32 [ 1, %357 ], [ %234, %233 ]
  %362 = phi i32 [ %358, %357 ], [ %236, %233 ]
  %363 = zext i32 %235 to i64
  %364 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %363, i64 13
  %365 = load i32, ptr %364, align 4, !tbaa !123
  store i32 %365, ptr %32, align 4, !tbaa !123
  br label %382

366:                                              ; preds = %233
  %367 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %368 = tail call i32 @regclass_for_constraint(i32 noundef %367) #17
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %377, label %370, !prof !390

370:                                              ; preds = %366
  %371 = zext i32 %235 to i64
  %372 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %373 = tail call i32 @regclass_for_constraint(i32 noundef %372) #17
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %371, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !123
  store i32 %376, ptr %32, align 4, !tbaa !123
  br label %382

377:                                              ; preds = %366
  %378 = tail call i32 @lookup_constraint(ptr noundef nonnull %238) #17
  %379 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %29, i32 noundef %378) #17
  %380 = icmp eq i8 %379, 0
  %381 = select i1 %380, i32 %236, i32 1, !prof !391
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
  br i1 %392, label %393, label %233, !prof !392, !llvm.loop !393

393:                                              ; preds = %233, %382
  %394 = phi i32 [ %383, %382 ], [ %234, %233 ]
  %395 = phi i32 [ %384, %382 ], [ %235, %233 ]
  %396 = phi i32 [ %385, %382 ], [ %236, %233 ]
  %397 = phi i32 [ %386, %382 ], [ %237, %233 ]
  %398 = phi ptr [ %391, %382 ], [ %238, %233 ]
  %399 = phi i32 [ %389, %382 ], [ %239, %233 ]
  store ptr %398, ptr %26, align 8, !tbaa !119
  %400 = load i32, ptr %29, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 37
  br i1 %402, label %403, label %511, !prof !394

403:                                              ; preds = %393
  %404 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %405 = icmp ugt i32 %404, 52
  br i1 %405, label %406, label %509, !prof !395

406:                                              ; preds = %403
  %407 = icmp eq i32 %395, 0
  br i1 %407, label %550, label %408, !prof !396

408:                                              ; preds = %406
  %409 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %410 = load ptr, ptr %409, align 8, !tbaa !119
  %411 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %440, !prof !397

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %415

415:                                              ; preds = %413, %429
  %416 = phi i64 [ 0, %413 ], [ %436, %429 ]
  %417 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  %418 = getelementptr inbounds i32, ptr %417, i64 %416
  %419 = load i32, ptr %418, align 4, !tbaa !123
  %420 = load i32, ptr %414, align 4, !tbaa !123
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %426, label %422, !prof !398

422:                                              ; preds = %415
  %423 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %419, i32 noundef %395, i8 noundef zeroext 1) #16, !range !314
  %424 = load i32, ptr %414, align 4, !tbaa !123
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %429, label %426, !prof !399

426:                                              ; preds = %415, %422
  %427 = phi i32 [ %423, %422 ], [ 0, %415 ]
  %428 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %395, i32 noundef %419, i8 noundef zeroext 0) #16, !range !314
  br label %429

429:                                              ; preds = %422, %426
  %430 = phi i32 [ %427, %426 ], [ %423, %422 ]
  %431 = phi i32 [ %428, %426 ], [ 0, %422 ]
  %432 = add nuw nsw i32 %431, %430
  %433 = load i32, ptr @frequency, align 4, !tbaa !123
  %434 = mul nsw i32 %432, %433
  %435 = getelementptr inbounds %struct.costs, ptr %410, i64 0, i32 1, i64 %416
  store i32 %434, ptr %435, align 4, !tbaa !123
  %436 = add nuw nsw i64 %416, 1
  %437 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %438 = sext i32 %437 to i64
  %439 = icmp slt i64 %436, %438
  br i1 %439, label %415, label %440, !prof !400, !llvm.loop !401

440:                                              ; preds = %429, %408
  %441 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %442 = load i32, ptr %441, align 4, !tbaa !123
  %443 = icmp eq i32 %442, 0
  %444 = zext i32 %31 to i64
  %445 = zext i32 %395 to i64
  br i1 %443, label %451, label %446, !prof !402

446:                                              ; preds = %440
  %447 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %444, i64 %445
  %448 = load i16, ptr %447, align 4, !tbaa !228
  %449 = sext i16 %448 to i32
  %450 = icmp eq i32 %442, 1
  br i1 %450, label %456, label %451, !prof !403

451:                                              ; preds = %440, %446
  %452 = phi i32 [ %449, %446 ], [ 0, %440 ]
  %453 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %444, i64 %445, i64 1
  %454 = load i16, ptr %453, align 2, !tbaa !228
  %455 = sext i16 %454 to i32
  br label %456

456:                                              ; preds = %446, %451
  %457 = phi i32 [ %452, %451 ], [ %449, %446 ]
  %458 = phi i32 [ %455, %451 ], [ 0, %446 ]
  %459 = add nsw i32 %458, %457
  %460 = sub i32 %459, %394
  %461 = load i32, ptr @frequency, align 4, !tbaa !123
  %462 = mul nsw i32 %460, %461
  store i32 %462, ptr %410, align 4, !tbaa !125
  br i1 %17, label %550, label %463, !prof !404

463:                                              ; preds = %456
  %464 = load i1, ptr @allocno_p, align 1
  br i1 %464, label %465, label %472, !prof !405

465:                                              ; preds = %463
  %466 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !119
  %467 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds ptr, ptr %466, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !119
  %471 = load i32, ptr %470, align 8, !tbaa !147
  br label %474

472:                                              ; preds = %463
  %473 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  br label %474

474:                                              ; preds = %472, %465
  %475 = phi i32 [ %471, %465 ], [ %473, %472 ]
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, ptr %5, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !123
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %500, !prof !406

480:                                              ; preds = %474
  %481 = load i32, ptr %441, align 4, !tbaa !123
  %482 = icmp eq i32 %481, 0
  %483 = zext i32 %31 to i64
  %484 = zext i32 %395 to i64
  br i1 %482, label %490, label %485

485:                                              ; preds = %480
  %486 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %483, i64 %484
  %487 = load i16, ptr %486, align 4, !tbaa !228
  %488 = sext i16 %487 to i32
  %489 = icmp eq i32 %481, 1
  br i1 %489, label %495, label %490

490:                                              ; preds = %480, %485
  %491 = phi i32 [ %488, %485 ], [ 0, %480 ]
  %492 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %483, i64 %484, i64 1
  %493 = load i16, ptr %492, align 2, !tbaa !228
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
  %504 = load i32, ptr %503, align 4, !tbaa !123
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %550, !prof !407

506:                                              ; preds = %500
  %507 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %478, i32 noundef %395) #16, !range !314
  %508 = add nsw i32 %507, %399
  br label %550

509:                                              ; preds = %403
  %510 = icmp eq i32 %396, 0
  br i1 %510, label %513, label %550, !prof !408

511:                                              ; preds = %393
  %512 = icmp eq i32 %396, 0
  br i1 %512, label %518, label %550, !prof !408

513:                                              ; preds = %509
  %514 = lshr i32 %400, 16
  %515 = and i32 %514, 255
  %516 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %29, i32 noundef %395, i32 noundef 0, i32 noundef %515) #17
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %550, !prof !409

518:                                              ; preds = %511, %513
  %519 = icmp eq i32 %395, 0
  br i1 %519, label %533, label %520, !prof !410

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %522 = load i32, ptr %521, align 4, !tbaa !123
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %529, label %524, !prof !411

524:                                              ; preds = %520
  %525 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %395, i8 noundef zeroext 1, ptr noundef null) #16
  %526 = add nsw i32 %525, %399
  %527 = load i32, ptr %521, align 4, !tbaa !123
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %550, label %529, !prof !275

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
  %538 = load i32, ptr %537, align 4, !tbaa !123
  %539 = icmp eq i32 %538, 9
  br i1 %539, label %540, label %550, !prof !412

540:                                              ; preds = %533
  %541 = icmp eq i32 %397, 0
  %542 = icmp eq i32 %394, 0
  %543 = select i1 %541, i1 %542, i1 false
  br i1 %543, label %550, label %544, !prof !413

544:                                              ; preds = %540
  %545 = zext i32 %31 to i64
  %546 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %545, i64 0, i64 1
  %547 = load i16, ptr %546, align 2, !tbaa !228
  %548 = sext i16 %547 to i32
  %549 = add nsw i32 %399, %548
  br label %550

550:                                              ; preds = %540, %511, %529, %524, %544, %509, %513, %406, %495, %506, %500, %456, %533, %36, %40, %43, %220
  %551 = phi i32 [ %212, %220 ], [ %25, %43 ], [ %25, %40 ], [ %25, %36 ], [ %399, %509 ], [ %399, %513 ], [ %532, %529 ], [ %526, %524 ], [ %549, %544 ], [ %399, %406 ], [ %399, %456 ], [ %499, %495 ], [ %508, %506 ], [ %399, %500 ], [ %399, %533 ], [ %399, %511 ], [ %399, %540 ]
  %552 = phi i32 [ %24, %220 ], [ %24, %43 ], [ %24, %40 ], [ %24, %36 ], [ %232, %509 ], [ %232, %513 ], [ %232, %529 ], [ %232, %524 ], [ %232, %544 ], [ 1, %406 ], [ %232, %456 ], [ %232, %495 ], [ %232, %506 ], [ %232, %500 ], [ 1, %533 ], [ %232, %511 ], [ 1, %540 ]
  %553 = add nuw nsw i64 %23, 1
  %554 = icmp eq i64 %553, %18
  br i1 %554, label %555, label %22, !prof !414, !llvm.loop !415

555:                                              ; preds = %550
  %556 = icmp eq i32 %552, 0
  br i1 %556, label %557, label %602, !prof !416

557:                                              ; preds = %555
  %558 = load i32, ptr @frequency, align 4, !tbaa !123
  %559 = mul nsw i32 %558, %551
  br i1 %10, label %560, label %602, !prof !275

560:                                              ; preds = %557
  %561 = load i32, ptr @cost_classes_num, align 4
  %562 = icmp sgt i32 %561, 0
  %563 = zext nneg i32 %561 to i64
  br label %564

564:                                              ; preds = %560, %599
  %565 = phi i64 [ 0, %560 ], [ %600, %599 ]
  %566 = getelementptr inbounds ptr, ptr @recog_data, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !119
  %568 = load i32, ptr %567, align 8
  %569 = and i32 %568, 65535
  %570 = icmp eq i32 %569, 37
  br i1 %570, label %571, label %599, !prof !417

571:                                              ; preds = %564
  %572 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %567) #16
  %573 = icmp ugt i32 %572, 52
  br i1 %573, label %574, label %599, !prof !418

574:                                              ; preds = %571
  %575 = getelementptr inbounds ptr, ptr @op_costs, i64 %565
  %576 = load ptr, ptr %575, align 8, !tbaa !119
  %577 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %565
  %578 = load ptr, ptr %577, align 8, !tbaa !119
  %579 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %565
  %580 = load i32, ptr %579, align 4, !tbaa !123
  %581 = icmp eq i32 %580, 2
  %582 = load i32, ptr %576, align 4, !tbaa !125
  %583 = load i32, ptr %578, align 4, !tbaa !125
  %584 = add nsw i32 %583, %559
  %585 = zext i1 %581 to i32
  %586 = shl i32 %584, %585
  %587 = tail call i32 @llvm.smin.i32(i32 %582, i32 %586)
  store i32 %587, ptr %576, align 4, !tbaa !125
  br i1 %562, label %588, label %599, !prof !419

588:                                              ; preds = %574, %588
  %589 = phi i64 [ %597, %588 ], [ 0, %574 ]
  %590 = getelementptr inbounds %struct.costs, ptr %576, i64 0, i32 1, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !123
  %592 = getelementptr inbounds %struct.costs, ptr %578, i64 0, i32 1, i64 %589
  %593 = load i32, ptr %592, align 4, !tbaa !123
  %594 = add nsw i32 %593, %559
  %595 = shl i32 %594, %585
  %596 = tail call i32 @llvm.smin.i32(i32 %591, i32 %595)
  store i32 %596, ptr %590, align 4, !tbaa !123
  %597 = add nuw nsw i64 %589, 1
  %598 = icmp eq i64 %597, %563
  br i1 %598, label %599, label %588, !prof !420, !llvm.loop !421

599:                                              ; preds = %588, %574, %564, %571
  %600 = add nuw nsw i64 %565, 1
  %601 = icmp eq i64 %600, %19
  br i1 %601, label %602, label %564, !prof !422, !llvm.loop !423

602:                                              ; preds = %599, %20, %557, %555
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #18
  %603 = add nuw nsw i32 %21, 1
  %604 = icmp eq i32 %603, %0
  br i1 %604, label %605, label %20, !prof !424, !llvm.loop !425

605:                                              ; preds = %602, %14
  %606 = load i1, ptr @allocno_p, align 1
  %607 = and i1 %606, %10
  br i1 %607, label %608, label %638, !prof !426

608:                                              ; preds = %605
  %609 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %610 = zext nneg i32 %1 to i64
  br label %611

611:                                              ; preds = %608, %635
  %612 = phi i64 [ 0, %608 ], [ %636, %635 ]
  %613 = getelementptr inbounds ptr, ptr @recog_data, i64 %612
  %614 = load ptr, ptr %613, align 8, !tbaa !119
  %615 = load i32, ptr %614, align 8
  %616 = and i32 %615, 65535
  %617 = icmp eq i32 %616, 37
  br i1 %617, label %618, label %635, !prof !427

618:                                              ; preds = %611
  %619 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %614) #16
  %620 = icmp ult i32 %619, 53
  br i1 %620, label %635, label %621, !prof !428

621:                                              ; preds = %618
  %622 = zext i32 %619 to i64
  %623 = getelementptr inbounds ptr, ptr %609, i64 %622
  %624 = load ptr, ptr %623, align 8, !tbaa !119
  %625 = getelementptr inbounds %struct.ira_allocno, ptr %624, i64 0, i32 31
  %626 = load i16, ptr %625, align 4
  %627 = and i16 %626, 64
  %628 = icmp eq i16 %627, 0
  br i1 %628, label %629, label %635, !prof !429

629:                                              ; preds = %621
  %630 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %612
  %631 = load i32, ptr %630, align 4, !tbaa !123
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %635, !prof !430

633:                                              ; preds = %629
  %634 = or disjoint i16 %626, 64
  store i16 %634, ptr %625, align 4
  br label %635

635:                                              ; preds = %621, %629, %633, %611, %618
  %636 = add nuw nsw i64 %612, 1
  %637 = icmp eq i64 %636, %610
  br i1 %637, label %638, label %611, !prof !431, !llvm.loop !432

638:                                              ; preds = %635, %605
  %639 = load i32, ptr %4, align 8
  %640 = and i32 %639, 65535
  %641 = add nsw i32 %640, -7
  %642 = icmp ult i32 %641, 4
  br i1 %642, label %643, label %773, !prof !433

643:                                              ; preds = %638
  %644 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %645 = load ptr, ptr %644, align 8, !tbaa !187
  %646 = load i32, ptr %645, align 8
  %647 = and i32 %646, 65535
  %648 = icmp eq i32 %647, 23
  br i1 %648, label %652, label %649, !prof !434

649:                                              ; preds = %643
  %650 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %645) #17
  %651 = icmp eq ptr %650, null
  br i1 %651, label %773, label %652, !prof !435

652:                                              ; preds = %643, %649
  %653 = phi ptr [ %650, %649 ], [ %645, %643 ]
  %654 = load ptr, ptr @recog_data, align 8, !tbaa !119
  %655 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !187
  %657 = icmp eq ptr %654, %656
  br i1 %657, label %658, label %773, !prof !436

658:                                              ; preds = %652
  %659 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !119
  %660 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1, i32 0, i32 0, i64 1
  %661 = load ptr, ptr %660, align 8, !tbaa !187
  %662 = icmp eq ptr %659, %661
  br i1 %662, label %663, label %773, !prof !437

663:                                              ; preds = %658
  %664 = load i32, ptr %654, align 8
  %665 = and i32 %664, 65535
  %666 = icmp eq i32 %665, 37
  br i1 %666, label %667, label %773, !prof !438

667:                                              ; preds = %663
  %668 = load i32, ptr %659, align 8
  %669 = and i32 %668, 65535
  %670 = icmp eq i32 %669, 37
  br i1 %670, label %671, label %773, !prof !439

671:                                              ; preds = %667
  %672 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %659) #16
  %673 = tail call ptr @find_regno_note(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %672) #17
  %674 = icmp eq ptr %673, null
  br i1 %674, label %773, label %675, !prof !440

675:                                              ; preds = %671, %772
  %676 = phi i1 [ false, %772 ], [ true, %671 ]
  %677 = phi i64 [ 1, %772 ], [ 0, %671 ]
  %678 = getelementptr inbounds ptr, ptr @recog_data, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !119
  %680 = tail call fastcc i32 @rhs_regno(ptr noundef %679) #16
  %681 = icmp ugt i32 %680, 52
  br i1 %681, label %682, label %772, !prof !441

682:                                              ; preds = %675
  %683 = xor i64 %677, 1
  %684 = getelementptr inbounds ptr, ptr @recog_data, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !119
  %686 = tail call fastcc i32 @rhs_regno(ptr noundef %685) #16
  %687 = icmp ult i32 %686, 53
  %688 = load i32, ptr @cost_classes_num, align 4
  %689 = icmp sgt i32 %688, 0
  %690 = select i1 %687, i1 %689, i1 false
  br i1 %690, label %691, label %772, !prof !442

691:                                              ; preds = %682
  %692 = load i32, ptr %685, align 8
  %693 = lshr i32 %692, 16
  %694 = and i32 %693, 255
  %695 = zext nneg i32 %686 to i64
  %696 = shl nuw nsw i64 1, %695
  %697 = icmp eq i32 %694, 40
  %698 = zext nneg i32 %694 to i64
  %699 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %698
  %700 = getelementptr inbounds ptr, ptr @op_costs, i64 %677
  %701 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  br label %702

702:                                              ; preds = %691, %766
  %703 = phi ptr [ %701, %691 ], [ %767, %766 ]
  %704 = phi i64 [ 0, %691 ], [ %768, %766 ]
  %705 = getelementptr inbounds i32, ptr %703, i64 %704
  %706 = load i32, ptr %705, align 4, !tbaa !123
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %707
  %709 = load i64, ptr %708, align 8, !tbaa !230
  %710 = and i64 %709, %696
  %711 = icmp eq i64 %710, 0
  br i1 %711, label %766, label %712, !prof !443

712:                                              ; preds = %702
  %713 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %707
  %714 = load i32, ptr %713, align 4, !tbaa !123
  %715 = tail call i32 @reg_classes_intersect_p(i32 noundef %706, i32 noundef 13) #17
  %716 = icmp eq i32 %715, 0
  %717 = load ptr, ptr @cost_classes, align 8, !tbaa !119
  br i1 %716, label %718, label %725, !prof !444

718:                                              ; preds = %712
  %719 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %698
  %720 = load i8, ptr %719, align 1, !tbaa !187
  %721 = freeze i8 %720
  %722 = and i8 %721, -2
  %723 = icmp eq i8 %722, 10
  %724 = select i1 %723, i32 2, i32 1, !prof !445
  br label %733

725:                                              ; preds = %712
  br i1 %697, label %729, label %726, !prof !446

726:                                              ; preds = %725
  %727 = load i8, ptr %699, align 1, !tbaa !187
  %728 = zext i8 %727 to i32
  br label %729

729:                                              ; preds = %725, %726
  %730 = phi i32 [ %728, %726 ], [ 12, %725 ]
  %731 = add nuw nsw i32 %730, 3
  %732 = lshr i32 %731, 2
  br label %733

733:                                              ; preds = %718, %729
  %734 = phi i32 [ %732, %729 ], [ %724, %718 ]
  %735 = icmp eq i32 %714, %734
  br i1 %735, label %736, label %766, !prof !447

736:                                              ; preds = %733
  %737 = load i32, ptr %713, align 4, !tbaa !123
  %738 = icmp eq i32 %737, 1
  br i1 %738, label %761, label %739, !prof !448

739:                                              ; preds = %736
  %740 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %695, i64 %698
  %741 = load i8, ptr %740, align 1, !tbaa !187
  %742 = zext i8 %741 to i32
  %743 = icmp eq i8 %741, 0
  br i1 %743, label %758, label %744, !prof !449

744:                                              ; preds = %739
  %745 = load i64, ptr %708, align 8, !tbaa !230
  %746 = zext i8 %741 to i64
  br label %747

747:                                              ; preds = %744, %753
  %748 = phi i64 [ 0, %744 ], [ %754, %753 ]
  %749 = add nuw nsw i64 %748, %695
  %750 = shl nuw i64 1, %749
  %751 = and i64 %745, %750
  %752 = icmp eq i64 %751, 0
  br i1 %752, label %756, label %753, !prof !380

753:                                              ; preds = %747
  %754 = add nuw nsw i64 %748, 1
  %755 = icmp eq i64 %754, %746
  br i1 %755, label %761, label %747, !prof !450, !llvm.loop !451

756:                                              ; preds = %747
  %757 = trunc i64 %748 to i32
  br label %758

758:                                              ; preds = %756, %739
  %759 = phi i32 [ 0, %739 ], [ %757, %756 ]
  %760 = icmp eq i32 %759, %742
  br i1 %760, label %761, label %766, !prof !452

761:                                              ; preds = %753, %758, %736
  %762 = load i32, ptr @frequency, align 4, !tbaa !123
  %763 = sub nsw i32 0, %762
  %764 = load ptr, ptr %700, align 8, !tbaa !119
  %765 = getelementptr inbounds %struct.costs, ptr %764, i64 0, i32 1, i64 %704
  store i32 %763, ptr %765, align 4, !tbaa !123
  br label %766

766:                                              ; preds = %761, %702, %733, %758
  %767 = phi ptr [ %703, %702 ], [ %717, %733 ], [ %717, %758 ], [ %717, %761 ]
  %768 = add nuw nsw i64 %704, 1
  %769 = load i32, ptr @cost_classes_num, align 4, !tbaa !123
  %770 = sext i32 %769 to i64
  %771 = icmp slt i64 %768, %770
  br i1 %771, label %702, label %772, !prof !453, !llvm.loop !454

772:                                              ; preds = %766, %682, %675
  br i1 %676, label %675, label %773, !prof !455, !llvm.loop !456

773:                                              ; preds = %772, %638, %671, %667, %663, %658, %652, %649
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @copy_cost(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 !prof !457 !PGOFuncName !458 {
  %6 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %76, label %10, !prof !459

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %0, i32 noundef %2) #17
  %12 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 2
  store ptr %4, ptr %12, align 8, !tbaa !460
  %13 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !462
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !463
  %15 = call i32 %14(i8 noundef zeroext %3, ptr noundef nonnull %0, i32 noundef %11, i32 noundef %1, ptr noundef nonnull %6) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17, !prof !475

17:                                               ; preds = %10
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void @init_move_cost(i32 noundef %1) #17
  %23 = load ptr, ptr %19, align 8, !tbaa !119
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  %26 = zext i32 %15 to i64
  %27 = zext i32 %11 to i64
  %28 = getelementptr inbounds [27 x i16], ptr %25, i64 %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !228
  %30 = zext i16 %29 to i32
  %31 = load i32, ptr %13, align 4, !tbaa !462
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
  br i1 %40, label %41, label %51, !prof !476

41:                                               ; preds = %35
  %42 = load i32, ptr %13, align 4, !tbaa !462
  %43 = zext i32 %1 to i64
  %44 = zext i32 %11 to i64
  %45 = icmp ne i8 %3, 0
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %43, i64 %44, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !228
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %42, %49
  br label %76

51:                                               ; preds = %35
  %52 = icmp eq i32 %37, 37
  br i1 %52, label %53, label %73, !prof !477

53:                                               ; preds = %51
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !119
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60, !prof !478

58:                                               ; preds = %53
  call void @init_move_cost(i32 noundef %1) #17
  %59 = load ptr, ptr %55, align 8, !tbaa !119
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  %62 = load i32, ptr %13, align 4, !tbaa !462
  %63 = call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !123
  %67 = zext i32 %66 to i64
  %68 = zext i32 %11 to i64
  %69 = getelementptr inbounds [27 x i16], ptr %61, i64 %67, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !228
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %62, %71
  br label %76

73:                                               ; preds = %51
  %74 = load i32, ptr %13, align 4, !tbaa !462
  %75 = add nsw i32 %74, 4
  br label %76

76:                                               ; preds = %5, %73, %60, %41, %24
  %77 = phi i32 [ %34, %24 ], [ %50, %41 ], [ %72, %60 ], [ %75, %73 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !479 !PGOFuncName !480 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !481

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  %9 = load ptr, ptr %5, align 8, !tbaa !119
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !228
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #12 !prof !482 !PGOFuncName !483 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !484
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
define internal void @process_bb_node_for_hard_reg_moves(ptr nocapture noundef readonly %0) #2 !prof !485 !PGOFuncName !486 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = icmp eq ptr %2, null
  br i1 %3, label %127, label %4, !prof !487

4:                                                ; preds = %1
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !123
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25, !prof !488

7:                                                ; preds = %4
  %8 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !488

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  %14 = load ptr, ptr %13, align 8, !tbaa !159
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !254
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10, %7
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !255
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23, !prof !489

23:                                               ; preds = %18
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %18, %4, %10
  %26 = phi i32 [ %24, %23 ], [ 1, %18 ], [ 1000, %4 ], [ 1000, %10 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !187
  %29 = load ptr, ptr %28, align 8, !tbaa !187
  %30 = icmp eq ptr %29, null
  br i1 %30, label %127, label %31, !prof !490

31:                                               ; preds = %25, %123
  %32 = phi ptr [ %125, %123 ], [ %29, %25 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !187
  %34 = getelementptr inbounds %struct.rtl_bb_info, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !258
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !187
  %38 = icmp eq ptr %32, %37
  br i1 %38, label %127, label %39, !prof !491

39:                                               ; preds = %31
  %40 = load i32, ptr %32, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -8
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %123, !prof !492

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !187
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 23
  br i1 %49, label %53, label %50, !prof !493

50:                                               ; preds = %44
  %51 = tail call ptr @single_set_2(ptr noundef nonnull %32, ptr noundef nonnull %46) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %123, label %53, !prof !275

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %51, %50 ], [ %46, %44 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !187
  %57 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !187
  %59 = load i32, ptr %56, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %123, !prof !494

62:                                               ; preds = %53
  %63 = load i32, ptr %58, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %123, !prof !495

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #16
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #16
  %69 = icmp slt i32 %67, 53
  %70 = icmp sgt i32 %68, 52
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %72, label %74, !prof !496

72:                                               ; preds = %66
  %73 = and i1 %69, %70
  br i1 %73, label %74, label %123, !prof !497

74:                                               ; preds = %72, %66
  %75 = phi i32 [ %67, %66 ], [ %68, %72 ]
  %76 = phi i32 [ %68, %66 ], [ %67, %72 ]
  %77 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !119
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !224
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !230
  %86 = zext nneg i32 %76 to i64
  %87 = shl nuw i64 1, %86
  %88 = and i64 %85, %87
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %123, label %90, !prof !498

90:                                               ; preds = %74
  %91 = sext i32 %76 to i64
  %92 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %83, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !228
  %94 = sext i16 %93 to i64
  %95 = icmp slt i16 %93, 0
  br i1 %95, label %123, label %96, !prof !498

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !499
  %99 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %91
  %100 = load i32, ptr %99, align 4, !tbaa !123
  br i1 %71, label %103, label %101, !prof !500

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
  %110 = load i32, ptr %109, align 4, !tbaa !210
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %108, i32 noundef %82, i32 noundef %110) #16
  %111 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %111, i32 noundef %82, i32 noundef 0) #16
  %112 = load ptr, ptr %108, align 8, !tbaa !226
  %113 = getelementptr inbounds i32, ptr %112, i64 %94
  %114 = load i32, ptr %113, align 4, !tbaa !123
  %115 = sub nsw i32 %114, %107
  store i32 %115, ptr %113, align 4, !tbaa !123
  %116 = load ptr, ptr %111, align 8, !tbaa !501
  %117 = getelementptr inbounds i32, ptr %116, i64 %94
  %118 = load i32, ptr %117, align 4, !tbaa !123
  %119 = sub nsw i32 %118, %107
  store i32 %119, ptr %117, align 4, !tbaa !123
  %120 = load i32, ptr %109, align 4, !tbaa !210
  %121 = load i32, ptr %113, align 4, !tbaa !123
  %122 = tail call i32 @llvm.smin.i32(i32 %120, i32 %121)
  store i32 %122, ptr %109, align 4, !tbaa !210
  br label %123

123:                                              ; preds = %39, %90, %74, %72, %53, %62, %50, %105
  %124 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %125 = load ptr, ptr %124, align 8, !tbaa !187
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %31, !prof !502, !llvm.loop !503

127:                                              ; preds = %123, %31, %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !504 !PGOFuncName !505 {
  %4 = load ptr, ptr %0, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45, !prof !506

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #17
  store ptr %7, ptr %0, align 8, !tbaa !119
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !123
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45, !prof !507

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
  store i32 %2, ptr %25, align 4, !tbaa !123
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !123
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !123
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !123
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !prof !508, !llvm.loop !509

45:                                               ; preds = %41, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_set_pseudo_classes(ptr noundef %0) local_unnamed_addr #2 !prof !263 {
  store i1 false, ptr @allocno_p, align 1
  %2 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !123
  store i32 %2, ptr @internal_flag_ira_verbose, align 4, !tbaa !123
  %3 = tail call i32 @max_reg_num() #17
  store i32 %3, ptr @cost_elements_num, align 4, !tbaa !123
  tail call fastcc void @init_costs() #16
  tail call fastcc void @find_costs_and_classes(ptr noundef %0) #16
  store i1 true, ptr @pseudo_classes_defined_p, align 1
  tail call fastcc void @finish_costs() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #2 !prof !139 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !143
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %66, label %5, !prof !151

5:                                                ; preds = %0, %63
  %6 = load ptr, ptr %1, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !224
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10, !prof !512

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !499
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !513
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17, !prof !514

17:                                               ; preds = %10
  %18 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !123
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !210
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %20, i32 noundef %8, i32 noundef %22) #16
  %23 = load ptr, ptr %20, align 8, !tbaa !226
  %24 = icmp sgt i32 %19, 0
  br i1 %24, label %25, label %63, !prof !515

25:                                               ; preds = %17
  %26 = load i64, ptr @call_used_reg_set, align 8, !tbaa !230
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 29
  %28 = zext i32 %12 to i64
  %29 = zext nneg i32 %19 to i64
  br label %30

30:                                               ; preds = %25, %53
  %31 = phi i64 [ %29, %25 ], [ %33, %53 ]
  %32 = phi i32 [ 2147483647, %25 ], [ %58, %53 ]
  %33 = add nsw i64 %31, -1
  %34 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %13, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !228
  %36 = sext i16 %35 to i32
  %37 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %36, i32 noundef %12, i64 noundef %26) #16, !range !143
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %53, !prof !516

39:                                               ; preds = %30
  %40 = sext i16 %35 to i64
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !123
  %43 = load i32, ptr %27, align 4, !tbaa !517
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44
  %46 = load i16, ptr %45, align 4, !tbaa !228
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !228
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, %47
  %52 = mul nsw i32 %51, %43
  br label %53

53:                                               ; preds = %39, %30
  %54 = phi i32 [ 0, %30 ], [ %52, %39 ]
  %55 = getelementptr inbounds i32, ptr %23, i64 %33
  %56 = load i32, ptr %55, align 4, !tbaa !123
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 4, !tbaa !123
  %58 = tail call i32 @llvm.smin.i32(i32 %32, i32 %57)
  %59 = icmp ugt i64 %31, 1
  br i1 %59, label %30, label %60, !prof !518, !llvm.loop !519

60:                                               ; preds = %53
  %61 = icmp eq i32 %58, 2147483647
  br i1 %61, label %63, label %62, !prof !520

62:                                               ; preds = %60
  store i32 %58, ptr %21, align 4, !tbaa !210
  br label %63

63:                                               ; preds = %17, %60, %62, %10, %5
  %64 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !143
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %5, !prof !521, !llvm.loop !522

66:                                               ; preds = %63, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #13 !prof !523 !PGOFuncName !524 {
  %4 = sext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !187
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %13, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18, !prof !525

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %13, %4
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %9, label %18, !prof !526, !llvm.loop !527

18:                                               ; preds = %9, %12
  %19 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %19
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
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!117}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!36 = !{ptr @ira_init_costs, ptr @free_ira_costs, i64 1}
!37 = !{ptr @ira_init_costs, ptr @xmalloc, i64 35}
!38 = !{ptr @free_ira_costs, ptr @free, i64 43}
!39 = !{ptr @ira_finish_costs_once, ptr @free_ira_costs, i64 1}
!40 = !{ptr @ira_costs, ptr @init_costs, i64 6652}
!41 = !{ptr @ira_costs, ptr @ira_allocate, i64 6652}
!42 = !{ptr @ira_costs, ptr @find_costs_and_classes, i64 6652}
!43 = !{ptr @ira_costs, ptr @setup_allocno_cover_class_and_costs, i64 6652}
!44 = !{ptr @ira_costs, ptr @finish_costs, i64 6652}
!45 = !{ptr @ira_costs, ptr @ira_free, i64 6652}
!46 = !{ptr @init_costs, ptr @init_subregs_of_mode, i64 6652}
!47 = !{ptr @init_costs, ptr @ira_allocate, i64 19956}
!48 = !{ptr @init_costs, ptr @max_reg_num, i64 6652}
!49 = !{ptr @find_costs_and_classes, ptr @init_recog, i64 6652}
!50 = !{ptr @find_costs_and_classes, ptr @resize_reg_info, i64 6652}
!51 = !{ptr @find_costs_and_classes, ptr @ira_allocno_iter_init, i64 1}
!52 = !{ptr @find_costs_and_classes, ptr @ira_allocno_iter_cond, i64 21}
!53 = !{ptr @find_costs_and_classes, ptr @reg_preferred_class, i64 20}
!54 = !{ptr @find_costs_and_classes, ptr @fprintf, i64 5}
!55 = !{ptr @find_costs_and_classes, ptr @ira_traverse_loop_tree, i64 13302}
!56 = !{ptr @find_costs_and_classes, ptr @process_bb_for_costs, i64 20}
!57 = !{ptr @find_costs_and_classes, ptr @max_reg_num, i64 13303}
!58 = !{ptr @find_costs_and_classes, ptr @bitmap_bit_p, i64 272966}
!59 = !{ptr @find_costs_and_classes, ptr @invalid_mode_change_p, i64 14131085}
!60 = !{ptr @find_costs_and_classes, ptr @setup_reg_classes, i64 253198}
!61 = !{ptr @find_costs_and_classes, ptr @fputc, i64 1}
!62 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocno_iter_init, i64 6652}
!63 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocno_iter_cond, i64 396574}
!64 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_set_allocno_cover_class, i64 389922}
!65 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_allocate_cost_vector, i64 79313}
!66 = !{ptr @setup_allocno_cover_class_and_costs, ptr @ira_traverse_loop_tree, i64 6651}
!67 = !{ptr @finish_costs, ptr @ira_free, i64 19956}
!68 = !{ptr @process_bb_node_for_costs, ptr @process_bb_for_costs, i64 514347}
!69 = !{ptr @process_bb_for_costs, ptr @scan_one_insn, i64 3015281}
!70 = !{ptr @scan_one_insn, ptr @extract_insn, i64 2151942}
!71 = !{ptr @scan_one_insn, ptr @single_set_2, i64 1}
!72 = !{ptr @scan_one_insn, ptr @find_reg_note, i64 348350}
!73 = !{ptr @scan_one_insn, ptr @rhs_regno, i64 1932585}
!74 = !{ptr @scan_one_insn, ptr @record_address_regs, i64 118093}
!75 = !{ptr @scan_one_insn, ptr @record_operand_costs, i64 2151942}
!76 = !{ptr @record_address_regs, ptr @rhs_regno, i64 2379357}
!77 = !{ptr @record_address_regs, ptr @ok_for_base_p_nonstrict, i64 2287}
!78 = !{ptr @record_address_regs, ptr @ok_for_index_p_nonstrict, i64 8}
!79 = !{ptr @record_address_regs, ptr @record_address_regs, i64 340952}
!80 = !{ptr @record_address_regs, ptr @ira_get_may_move_cost, i64 13225351}
!81 = !{ptr @record_operand_costs, ptr @record_address_regs, i64 943703}
!82 = !{ptr @record_operand_costs, ptr @record_reg_classes, i64 2267757}
!83 = !{ptr @ok_for_base_p_nonstrict, ptr @rhs_regno, i64 752}
!84 = !{ptr @ok_for_base_p_nonstrict, ptr @ok_for_base_p_1, i64 751}
!85 = !{ptr @ira_get_may_move_cost, ptr @ira_init_register_move_cost, i64 7}
!86 = !{ptr @record_reg_classes, ptr @rhs_regno, i64 24977256}
!87 = !{ptr @record_reg_classes, ptr @rtx_equal_p, i64 276151}
!88 = !{ptr @record_reg_classes, ptr @ira_get_may_move_cost, i64 85597842}
!89 = !{ptr @record_reg_classes, ptr @ira_get_register_move_cost, i64 3123}
!90 = !{ptr @record_reg_classes, ptr @find_reg_note, i64 194030}
!91 = !{ptr @record_reg_classes, ptr @copy_cost, i64 3003879}
!92 = !{ptr @record_reg_classes, ptr @address_operand, i64 8645}
!93 = !{ptr @record_reg_classes, ptr @lookup_constraint, i64 5909083}
!94 = !{ptr @record_reg_classes, ptr @constraint_satisfied_p, i64 2026753}
!95 = !{ptr @record_reg_classes, ptr @legitimate_pic_operand_p, i64 2}
!96 = !{ptr @record_reg_classes, ptr @insn_const_int_ok_for_constraint, i64 37850}
!97 = !{ptr @record_reg_classes, ptr @regclass_for_constraint, i64 3844480}
!98 = !{ptr @record_reg_classes, ptr @insn_constraint_len, i64 62010405}
!99 = !{ptr @record_reg_classes, ptr @reg_fits_class_p, i64 1477940}
!100 = !{ptr @record_reg_classes, ptr @single_set_2, i64 1}
!101 = !{ptr @record_reg_classes, ptr @find_regno_note, i64 185632}
!102 = !{ptr @record_reg_classes, ptr @reg_classes_intersect_p, i64 693398}
!103 = !{ptr @copy_cost, ptr @ix86_preferred_reload_class, i64 2964999}
!104 = !{ptr @copy_cost, ptr @copy_cost, i64 1}
!105 = !{ptr @copy_cost, ptr @init_move_cost, i64 1}
!106 = !{ptr @copy_cost, ptr @rhs_regno, i64 14617}
!107 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!108 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @single_set_2, i64 1}
!109 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @rhs_regno, i64 182772}
!110 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @ira_get_register_move_cost, i64 76362}
!111 = !{ptr @process_bb_node_for_hard_reg_moves, ptr @ira_allocate_and_set_costs, i64 152724}
!112 = !{ptr @ira_allocate_and_set_costs, ptr @ira_allocate_cost_vector, i64 204774}
!113 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocno_iter_init, i64 6652}
!114 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocno_iter_cond, i64 584898}
!115 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_allocate_and_set_costs, i64 166489}
!116 = !{ptr @ira_tune_allocno_costs_and_cover_classes, ptr @ira_hard_reg_not_in_set_p, i64 998983}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = !{!"function_entry_count", i64 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !121, i64 0}
!125 = !{!126, !124, i64 0}
!126 = !{!"costs", !124, i64 0, !121, i64 4}
!127 = !{!"branch_weights", i32 127, i32 1}
!128 = !{!"branch_weights", i32 961, i32 127}
!129 = distinct !{!129, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"branch_weights", i32 2, i32 29}
!132 = distinct !{!132, !130}
!133 = !{!"function_entry_count", i64 2}
!134 = !{!"ira-costs.c:free_ira_costs"}
!135 = !{!"branch_weights", i32 2, i32 2}
!136 = !{!"branch_weights", i32 31, i32 31}
!137 = !{!"branch_weights", i32 3, i32 58}
!138 = distinct !{!138, !130}
!139 = !{!"function_entry_count", i64 6652}
!140 = !{!"ira-costs.c:init_costs"}
!141 = !{!"ira-costs.c:find_costs_and_classes"}
!142 = !{!"branch_weights", i32 345800, i32 -1993667673}
!143 = !{i8 0, i8 2}
!144 = !{!145, !124, i64 4}
!145 = !{!"ira_allocno", !124, i64 0, !124, i64 4, !124, i64 8, !124, i64 12, !120, i64 16, !120, i64 24, !120, i64 32, !124, i64 40, !124, i64 44, !124, i64 48, !124, i64 52, !124, i64 56, !124, i64 60, !124, i64 64, !124, i64 68, !120, i64 72, !120, i64 80, !120, i64 88, !120, i64 96, !120, i64 104, !120, i64 112, !124, i64 120, !124, i64 124, !120, i64 128, !124, i64 136, !124, i64 140, !146, i64 144, !146, i64 152, !124, i64 160, !124, i64 164, !124, i64 168, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 172, !124, i64 173, !124, i64 173, !124, i64 173, !124, i64 173, !120, i64 176, !120, i64 184, !120, i64 192, !120, i64 200, !120, i64 208, !124, i64 216, !124, i64 220, !120, i64 224, !120, i64 232, !124, i64 240}
!146 = !{!"long", !121, i64 0}
!147 = !{!145, !124, i64 0}
!148 = distinct !{!148, !130}
!149 = !{!"branch_weights", i32 2146967271, i32 516377}
!150 = !{!"branch_weights", i32 6653, i32 1}
!151 = !{!"branch_weights", i32 1, i32 6652}
!152 = !{!"branch_weights", i32 172887, i32 -1994532316}
!153 = !{!"branch_weights", i32 13304, i32 1}
!154 = !{!"branch_weights", i32 199561, i32 13304}
!155 = distinct !{!155, !130}
!156 = !{!"branch_weights", i32 13305, i32 1}
!157 = !{!158, !120, i64 8}
!158 = !{!"function", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72, !120, i64 80, !120, i64 88, !120, i64 96, !124, i64 104, !124, i64 108, !124, i64 112, !124, i64 116, !124, i64 120, !124, i64 124, !120, i64 128, !124, i64 136, !124, i64 137, !124, i64 138, !124, i64 138, !124, i64 138, !124, i64 138, !124, i64 138, !124, i64 138, !124, i64 138, !124, i64 139, !124, i64 139, !124, i64 139, !124, i64 139, !124, i64 139, !124, i64 139, !124, i64 139}
!159 = !{!160, !120, i64 0}
!160 = !{!"control_flow_graph", !120, i64 0, !120, i64 8, !120, i64 16, !124, i64 24, !124, i64 28, !124, i64 32, !120, i64 40, !124, i64 48, !121, i64 52, !121, i64 60, !124, i64 68, !124, i64 72}
!161 = !{!162, !120, i64 56}
!162 = !{!"basic_block_def", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !121, i64 32, !120, i64 48, !120, i64 56, !121, i64 64, !146, i64 72, !124, i64 80, !124, i64 84, !124, i64 88, !124, i64 92, !124, i64 96}
!163 = !{!160, !120, i64 8}
!164 = distinct !{!164, !130}
!165 = !{!"branch_weights", i32 6653, i32 6653}
!166 = !{!"branch_weights", i32 1936137, i32 1}
!167 = !{!"branch_weights", i32 1429665, i32 506473}
!168 = !{!"branch_weights", i32 1, i32 506472}
!169 = !{!"branch_weights", i32 -1918639400, i32 3046}
!170 = !{!145, !120, i64 32}
!171 = !{!172, !120, i64 48}
!172 = !{!"ira_loop_tree_node", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !124, i64 56, !121, i64 60, !120, i64 64, !121, i64 72, !121, i64 76, !120, i64 184, !120, i64 192, !120, i64 200, !120, i64 208}
!173 = !{!"branch_weights", i32 315667, i32 464295}
!174 = !{!172, !120, i64 64}
!175 = !{!"branch_weights", i32 191287, i32 273009}
!176 = !{!172, !120, i64 192}
!177 = !{!"branch_weights", i32 165, i32 272845}
!178 = !{!"branch_weights", i32 272844, i32 1}
!179 = !{!"branch_weights", i32 272844, i32 4092661}
!180 = distinct !{!180, !130}
!181 = !{!"branch_weights", i32 779960, i32 1}
!182 = !{!"branch_weights", i32 779960, i32 11699401}
!183 = distinct !{!183, !130}
!184 = !{!"branch_weights", i32 506472, i32 273489}
!185 = distinct !{!185, !130}
!186 = !{!"branch_weights", i32 506472, i32 1}
!187 = !{!121, !121, i64 0}
!188 = !{!"branch_weights", i32 2538275, i32 5565279}
!189 = !{!"branch_weights", i32 5565279, i32 1}
!190 = !{!"branch_weights", i32 523139, i32 5042141}
!191 = !{!"branch_weights", i32 3690485, i32 1351657}
!192 = !{!"branch_weights", i32 2782640, i32 2782640}
!193 = !{!"branch_weights", i32 2779475, i32 3166}
!194 = !{!"branch_weights", i32 1264741, i32 1514735}
!195 = !{!"branch_weights", i32 7597081, i32 506472}
!196 = distinct !{!196, !130}
!197 = !{!"branch_weights", i32 1, i32 506473}
!198 = !{!"branch_weights", i32 253237, i32 253237}
!199 = !{!"branch_weights", i32 1, i32 253237}
!200 = !{!"branch_weights", i32 15289, i32 -423059514}
!201 = !{!"branch_weights", i32 506473, i32 1}
!202 = !{!"branch_weights", i32 1, i32 779961}
!203 = !{!"branch_weights", i32 3903569, i32 8575793}
!204 = !{!"branch_weights", i32 7837, i32 8567957}
!205 = !{!"branch_weights", i32 8567957, i32 1}
!206 = !{!"branch_weights", i32 796715, i32 7771243}
!207 = !{!"branch_weights", i32 6391927, i32 1379317}
!208 = !{!"branch_weights", i32 11699401, i32 779960}
!209 = distinct !{!209, !130}
!210 = !{!145, !124, i64 52}
!211 = !{!"branch_weights", i32 3046, i32 -1918639400}
!212 = !{!172, !120, i64 0}
!213 = !{!172, !120, i64 8}
!214 = distinct !{!214, !130}
!215 = !{!"branch_weights", i32 1922833, i32 13304}
!216 = distinct !{!216, !130}
!217 = !{!"branch_weights", i32 13305, i32 177036331}
!218 = !{!"branch_weights", i32 6653, i32 6652}
!219 = distinct !{!219, !130}
!220 = !{!"ira-costs.c:setup_allocno_cover_class_and_costs"}
!221 = !{!145, !124, i64 60}
!222 = !{!"branch_weights", i32 1, i32 389981}
!223 = !{!145, !124, i64 220}
!224 = !{!145, !124, i64 48}
!225 = !{!"branch_weights", i32 310656, i32 79326}
!226 = !{!145, !120, i64 184}
!227 = !{!"branch_weights", i32 79325, i32 1}
!228 = !{!229, !229, i64 0}
!229 = !{!"short", !121, i64 0}
!230 = !{!146, !146, i64 0}
!231 = !{!"branch_weights", i32 351501, i32 124465}
!232 = !{!"branch_weights", i32 1, i32 351501}
!233 = !{!"branch_weights", i32 396640, i32 79325}
!234 = distinct !{!234, !130}
!235 = !{!"branch_weights", i32 6652, i32 383329}
!236 = distinct !{!236, !130}
!237 = !{!"branch_weights", i32 1, i32 6653}
!238 = !{!"ira-costs.c:finish_costs"}
!239 = !{!"function_entry_count", i64 13304}
!240 = !{!"ira-costs.c:ira_allocno_iter_init"}
!241 = !{!242, !124, i64 0}
!242 = !{!"", !124, i64 0}
!243 = !{!"function_entry_count", i64 981616}
!244 = !{!"ira-costs.c:ira_allocno_iter_cond"}
!245 = !{!"branch_weights", i32 10579, i32 968313}
!246 = !{!"branch_weights", i32 13304, i32 965587}
!247 = distinct !{!247, !130}
!248 = !{!"function_entry_count", i64 555664}
!249 = !{!"ira-costs.c:process_bb_node_for_costs"}
!250 = !{!"branch_weights", i32 41317, i32 514349}
!251 = !{!"function_entry_count", i64 514348}
!252 = !{!"ira-costs.c:process_bb_for_costs"}
!253 = !{!"branch_weights", i32 514349, i32 1}
!254 = !{!162, !146, i64 72}
!255 = !{!162, !124, i64 88}
!256 = !{!"branch_weights", i32 1, i32 324783}
!257 = !{!"branch_weights", i32 1, i32 11398}
!258 = !{!259, !120, i64 8}
!259 = !{!"rtl_bb_info", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !124, i64 32}
!260 = !{!"branch_weights", i32 514349, i32 3072977}
!261 = !{!"branch_weights", i32 11398, i32 3564529}
!262 = distinct !{!262, !130}
!263 = !{!"function_entry_count", i64 0}
!264 = !{!"ira-costs.c:print_allocno_costs"}
!265 = distinct !{!265, !130}
!266 = distinct !{!266, !130}
!267 = !{!"ira-costs.c:print_pseudo_costs"}
!268 = distinct !{!268, !130}
!269 = distinct !{!269, !130}
!270 = !{!"function_entry_count", i64 3072976}
!271 = !{!"ira-costs.c:scan_one_insn"}
!272 = !{!"branch_weights", i32 1048091663, i32 -1816802493}
!273 = !{!"branch_weights", i32 8706621, i32 -1851864122}
!274 = !{!"branch_weights", i32 1944381, i32 1}
!275 = !{!"branch_weights", i32 -2147483648, i32 0}
!276 = !{!"branch_weights", i32 1211293, i32 879645}
!277 = !{!"branch_weights", i32 338475, i32 872819}
!278 = !{!"branch_weights", i32 223679, i32 114797}
!279 = !{!"branch_weights", i32 114747, i32 51}
!280 = !{!"branch_weights", i32 114747, i32 1}
!281 = !{!"branch_weights", i32 57374, i32 57374}
!282 = !{!283, !121, i64 1086}
!283 = !{!"recog_data", !121, i64 0, !121, i64 240, !121, i64 480, !121, i64 720, !121, i64 840, !121, i64 960, !121, i64 1072, !121, i64 1086, !121, i64 1087, !121, i64 1088, !121, i64 1089, !120, i64 1120}
!284 = !{!"branch_weights", i32 2151946, i32 1}
!285 = !{!"branch_weights", i32 1814497, i32 2645939}
!286 = !{!"branch_weights", i32 1519833, i32 294665}
!287 = !{!"branch_weights", i32 1519833, i32 1}
!288 = !{!"branch_weights", i32 1519832, i32 1}
!289 = !{!"branch_weights", i32 1519832, i32 22797481}
!290 = distinct !{!290, !130}
!291 = !{!"branch_weights", i32 2151946, i32 2308489}
!292 = distinct !{!292, !130}
!293 = !{!"function_entry_count", i64 32343097}
!294 = !{!"ira-costs.c:rhs_regno"}
!295 = !{!"function_entry_count", i64 1831534}
!296 = !{!"ira-costs.c:record_address_regs"}
!297 = !{!"branch_weights", i32 39045, i32 39123, i32 48423, i32 1, i32 1, i32 102175, i32 1, i32 658813, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 943961}
!298 = !{!"branch_weights", i32 1, i32 658813}
!299 = !{!"branch_weights", i32 1889726578, i32 -1733116105}
!300 = !{!"branch_weights", i32 44582329, i32 173227319}
!301 = !{!"branch_weights", i32 377, i32 6301}
!302 = !{!"branch_weights", i32 1, i32 377}
!303 = !{!"branch_weights", i32 1, i32 6301}
!304 = !{!"branch_weights", i32 174174, i32 2147309474}
!305 = !{!"branch_weights", i32 120691493, i32 55247743}
!306 = !{!"branch_weights", i32 1, i32 27917}
!307 = !{!"branch_weights", i32 27917, i32 1}
!308 = !{!"branch_weights", i32 128108509, i32 9750575}
!309 = !{!"branch_weights", i32 1386872767, i32 760610881}
!310 = !{!"branch_weights", i32 135619, i32 1695917}
!311 = !{!"branch_weights", i32 414699, i32 529263}
!312 = !{!"branch_weights", i32 529263, i32 1}
!313 = !{!"branch_weights", i32 529262, i32 1}
!314 = !{i32 0, i32 65536}
!315 = !{!"branch_weights", i32 7938931, i32 529262}
!316 = distinct !{!316, !130}
!317 = !{!"branch_weights", i32 1, i32 39044}
!318 = !{!"branch_weights", i32 78089, i32 1}
!319 = !{!"branch_weights", i32 39045, i32 39044}
!320 = distinct !{!320, !130}
!321 = !{!"function_entry_count", i64 2151946}
!322 = !{!"ira-costs.c:record_operand_costs"}
!323 = !{!"branch_weights", i32 9163, i32 4451273}
!324 = !{!"branch_weights", i32 935059, i32 3525377}
!325 = !{!"branch_weights", i32 8645, i32 3516733}
!326 = !{!"branch_weights", i32 2308489, i32 2151946}
!327 = distinct !{!327, !130}
!328 = !{!"branch_weights", i32 115811, i32 2192679}
!329 = !{!"branch_weights", i32 115810, i32 1}
!330 = !{!283, !121, i64 1088}
!331 = !{!"branch_weights", i32 156543, i32 2151946}
!332 = distinct !{!332, !130}
!333 = !{!"function_entry_count", i64 752}
!334 = !{!"ira-costs.c:ok_for_base_p_nonstrict"}
!335 = !{!"branch_weights", i32 1, i32 753}
!336 = !{!"ira-costs.c:ok_for_index_p_nonstrict"}
!337 = !{!"function_entry_count", i64 94066144}
!338 = !{!"ira-costs.c:ira_get_may_move_cost"}
!339 = !{!"branch_weights", i32 7, i32 94066139}
!340 = !{!"branch_weights", i32 40326945, i32 53739201}
!341 = !{!"ira-costs.c:ok_for_base_p_1"}
!342 = !{!"branch_weights", i32 428094055, i32 567009}
!343 = !{!"function_entry_count", i64 2267756}
!344 = !{!"ira-costs.c:record_reg_classes"}
!345 = !{!"branch_weights", i32 2267756, i32 1}
!346 = !{!"branch_weights", i32 14019028, i32 1}
!347 = !{!"branch_weights", i32 280325, i32 28528415}
!348 = !{!"branch_weights", i32 2483, i32 277843}
!349 = !{!"branch_weights", i32 1, i32 2483}
!350 = !{!"branch_weights", i32 -1944543908, i32 20138584, i32 117066815, i32 7564, i32 130102462}
!351 = distinct !{!351, !130}
!352 = !{!"branch_weights", i32 -379419583, i32 84400790}
!353 = !{!"branch_weights", i32 26212, i32 -1578852409, i32 439730414}
!354 = !{!"branch_weights", i32 371307, i32 230653}
!355 = !{!"branch_weights", i32 340499, i32 261461}
!356 = !{!"branch_weights", i32 14691, i32 325809}
!357 = !{!"branch_weights", i32 253351, i32 22801}
!358 = !{!"branch_weights", i32 3887, i32 249465}
!359 = !{!"branch_weights", i32 319851, i32 5959}
!360 = !{!"branch_weights", i32 1, i32 319851}
!361 = !{!"branch_weights", i32 107, i32 5853}
!362 = !{!"branch_weights", i32 319850, i32 1}
!363 = !{!"branch_weights", i32 1, i32 5117601}
!364 = !{!"branch_weights", i32 4797751, i32 319850}
!365 = distinct !{!365, !130}
!366 = !{!"branch_weights", i32 319851, i32 1}
!367 = !{!"branch_weights", i32 159926, i32 159926}
!368 = !{!"branch_weights", i32 159926, i32 1}
!369 = !{!"branch_weights", i32 1, i32 159926}
!370 = !{!"branch_weights", i32 2918, i32 157009}
!371 = !{!"branch_weights", i32 125819, i32 194033}
!372 = !{!"branch_weights", i32 83289, i32 110745}
!373 = !{!"branch_weights", i32 48027, i32 591675}
!374 = !{!"branch_weights", i32 319851, i32 319851}
!375 = distinct !{!375, !130}
!376 = !{!"branch_weights", i32 347211588, i32 401352697, i32 -1359937291, i32 1439925171, i32 497935271, i32 3459440, i32 118, i32 118, i32 33320694, i32 46482, i32 118, i32 118, i32 118, i32 118, i32 118, i32 118, i32 118, i32 118, i32 1022491, i32 719523014, i32 519584, i32 118, i32 118, i32 118, i32 118, i32 489305, i32 36074, i32 118, i32 769145, i32 169753620, i32 46118813, i32 2343629, i32 5322, i32 910366, i32 3180783, i32 1348459, i32 493800, i32 118, i32 118, i32 90717, i32 135140056, i32 995643809}
!377 = !{!"branch_weights", i32 2158691, i32 3929151}
!378 = !{!"branch_weights", i32 17048641, i32 37170, i32 4129}
!379 = !{!"branch_weights", i32 5, i32 301}
!380 = !{!"branch_weights", i32 1, i32 5}
!381 = !{!"branch_weights", i32 42289009, i32 6504, i32 6503}
!382 = !{!"branch_weights", i32 419295, i32 1022447}
!383 = !{!"branch_weights", i32 419295, i32 1}
!384 = !{!"branch_weights", i32 -1635889157, i32 -1927252774, i32 12891}
!385 = !{!"branch_weights", i32 37847, i32 32175}
!386 = !{!"branch_weights", i32 12787, i32 25061}
!387 = !{!"branch_weights", i32 316089, i32 826499}
!388 = !{!"branch_weights", i32 282063, i32 544437}
!389 = !{!"branch_weights", i32 282063, i32 1}
!390 = !{!"branch_weights", i32 2026751, i32 908867}
!391 = !{!"branch_weights", i32 1869097, i32 157655}
!392 = !{!"branch_weights", i32 24815197, i32 37195233}
!393 = distinct !{!393, !130}
!394 = !{!"branch_weights", i32 14643729, i32 13564837}
!395 = !{!"branch_weights", i32 12682783, i32 1960947}
!396 = !{!"branch_weights", i32 7652847, i32 5029937}
!397 = !{!"branch_weights", i32 5029936, i32 1}
!398 = !{!"branch_weights", i32 40325569, i32 40153409}
!399 = !{!"branch_weights", i32 2147410057, i32 73591}
!400 = !{!"branch_weights", i32 75449041, i32 5029936}
!401 = distinct !{!401, !130}
!402 = !{!"branch_weights", i32 2509503, i32 2520435}
!403 = !{!"branch_weights", i32 2147410374, i32 73274}
!404 = !{!"branch_weights", i32 2514969, i32 2514969}
!405 = !{!"branch_weights", i32 2514969, i32 1}
!406 = !{!"branch_weights", i32 1, i32 2514969}
!407 = !{!"branch_weights", i32 205, i32 2514765}
!408 = !{!"branch_weights", i32 11701587, i32 3824197}
!409 = !{!"branch_weights", i32 1320191, i32 626067}
!410 = !{!"branch_weights", i32 8363841, i32 2711681}
!411 = !{!"branch_weights", i32 999777, i32 1711905}
!412 = !{!"branch_weights", i32 1724821, i32 6639021}
!413 = !{!"branch_weights", i32 -1785890064, i32 396206880}
!414 = !{!"branch_weights", i32 14019028, i32 14789711}
!415 = distinct !{!415, !130}
!416 = !{!"branch_weights", i32 488007948, i32 1659475700}
!417 = !{!"branch_weights", i32 3659371, i32 3431937}
!418 = !{!"branch_weights", i32 3441475, i32 217897}
!419 = !{!"branch_weights", i32 3441474, i32 1}
!420 = !{!"branch_weights", i32 3441474, i32 51622111}
!421 = distinct !{!421, !130}
!422 = !{!"branch_weights", i32 3185774, i32 3905533}
!423 = distinct !{!423, !130}
!424 = !{!"branch_weights", i32 2267756, i32 11751273}
!425 = distinct !{!425, !130}
!426 = !{!"branch_weights", i32 -1783873770, i32 2214}
!427 = !{!"branch_weights", i32 2024237, i32 2769603}
!428 = !{!"branch_weights", i32 299587, i32 1724651}
!429 = !{!"branch_weights", i32 1176588, i32 548064}
!430 = !{!"branch_weights", i32 27727, i32 1148862}
!431 = !{!"branch_weights", i32 2267756, i32 2526083}
!432 = distinct !{!432, !130}
!433 = !{!"branch_weights", i32 -20101164, i32 1885}
!434 = !{!"branch_weights", i32 1959033, i32 1}
!435 = !{!"branch_weights", i32 54862720, i32 2092620928}
!436 = !{!"branch_weights", i32 1463743, i32 739631}
!437 = !{!"branch_weights", i32 1082407, i32 381337}
!438 = !{!"branch_weights", i32 624723, i32 457685}
!439 = !{!"branch_weights", i32 180363, i32 444361}
!440 = !{!"branch_weights", i32 28193, i32 152171}
!441 = !{!"branch_weights", i32 168725, i32 135617}
!442 = !{!"branch_weights", i32 -1995987912, i32 561284858}
!443 = !{!"branch_weights", i32 1496133, i32 673725}
!444 = !{!"branch_weights", i32 49, i32 673677}
!445 = !{!"branch_weights", i32 1347403, i32 49}
!446 = !{!"branch_weights", i32 1, i32 49}
!447 = !{!"branch_weights", i32 135617, i32 1}
!448 = !{!"branch_weights", i32 135615, i32 3}
!449 = !{!"branch_weights", i32 1, i32 191}
!450 = !{!"branch_weights", i32 191, i32 129}
!451 = distinct !{!451, !130}
!452 = !{!"branch_weights", i32 1066722172, i32 1080761476}
!453 = !{!"branch_weights", i32 2034241, i32 135616}
!454 = distinct !{!454, !130}
!455 = !{!"branch_weights", i32 152170, i32 152171}
!456 = distinct !{!456, !130}
!457 = !{!"function_entry_count", i64 2966996}
!458 = !{!"ira-costs.c:copy_cost"}
!459 = !{!"branch_weights", i32 1997, i32 2965001}
!460 = !{!461, !120, i64 8}
!461 = !{!"secondary_reload_info", !124, i64 0, !124, i64 4, !120, i64 8, !124, i64 16}
!462 = !{!461, !124, i64 4}
!463 = !{!464, !120, i64 1728}
!464 = !{!"gcc_target", !465, i64 0, !467, i64 368, !468, i64 664, !124, i64 744, !120, i64 752, !120, i64 760, !120, i64 768, !120, i64 776, !120, i64 784, !120, i64 792, !120, i64 800, !120, i64 808, !120, i64 816, !120, i64 824, !120, i64 832, !120, i64 840, !120, i64 848, !120, i64 856, !120, i64 864, !120, i64 872, !120, i64 880, !120, i64 888, !120, i64 896, !120, i64 904, !120, i64 912, !120, i64 920, !120, i64 928, !120, i64 936, !120, i64 944, !120, i64 952, !120, i64 960, !120, i64 968, !120, i64 976, !120, i64 984, !120, i64 992, !120, i64 1000, !120, i64 1008, !120, i64 1016, !120, i64 1024, !120, i64 1032, !120, i64 1040, !120, i64 1048, !120, i64 1056, !146, i64 1064, !146, i64 1072, !120, i64 1080, !120, i64 1088, !120, i64 1096, !120, i64 1104, !120, i64 1112, !120, i64 1120, !120, i64 1128, !120, i64 1136, !120, i64 1144, !120, i64 1152, !120, i64 1160, !120, i64 1168, !469, i64 1176, !120, i64 1232, !120, i64 1240, !120, i64 1248, !120, i64 1256, !120, i64 1264, !120, i64 1272, !120, i64 1280, !120, i64 1288, !120, i64 1296, !120, i64 1304, !120, i64 1312, !120, i64 1320, !120, i64 1328, !120, i64 1336, !120, i64 1344, !120, i64 1352, !120, i64 1360, !120, i64 1368, !120, i64 1376, !120, i64 1384, !120, i64 1392, !120, i64 1400, !120, i64 1408, !120, i64 1416, !120, i64 1424, !120, i64 1432, !120, i64 1440, !120, i64 1448, !120, i64 1456, !146, i64 1464, !470, i64 1472, !120, i64 1664, !120, i64 1672, !120, i64 1680, !120, i64 1688, !120, i64 1696, !120, i64 1704, !120, i64 1712, !120, i64 1720, !120, i64 1728, !120, i64 1736, !120, i64 1744, !120, i64 1752, !120, i64 1760, !120, i64 1768, !120, i64 1776, !471, i64 1784, !472, i64 1792, !473, i64 1896, !474, i64 1968, !120, i64 2016, !121, i64 2024, !121, i64 2025, !121, i64 2026, !121, i64 2027, !121, i64 2028, !121, i64 2029, !121, i64 2030, !121, i64 2031, !121, i64 2032, !121, i64 2033, !121, i64 2034, !121, i64 2035}
!465 = !{!"asm_out", !120, i64 0, !120, i64 8, !120, i64 16, !466, i64 24, !466, i64 56, !120, i64 88, !120, i64 96, !120, i64 104, !120, i64 112, !120, i64 120, !120, i64 128, !120, i64 136, !120, i64 144, !120, i64 152, !120, i64 160, !120, i64 168, !120, i64 176, !120, i64 184, !120, i64 192, !120, i64 200, !120, i64 208, !120, i64 216, !120, i64 224, !120, i64 232, !120, i64 240, !120, i64 248, !120, i64 256, !120, i64 264, !120, i64 272, !120, i64 280, !120, i64 288, !120, i64 296, !120, i64 304, !120, i64 312, !120, i64 320, !120, i64 328, !120, i64 336, !120, i64 344, !120, i64 352, !120, i64 360}
!466 = !{!"asm_int_op", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24}
!467 = !{!"sched", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72, !120, i64 80, !120, i64 88, !120, i64 96, !120, i64 104, !120, i64 112, !120, i64 120, !120, i64 128, !120, i64 136, !120, i64 144, !120, i64 152, !120, i64 160, !120, i64 168, !120, i64 176, !120, i64 184, !120, i64 192, !120, i64 200, !120, i64 208, !120, i64 216, !120, i64 224, !120, i64 232, !120, i64 240, !120, i64 248, !120, i64 256, !120, i64 264, !120, i64 272, !120, i64 280, !120, i64 288}
!468 = !{!"vectorize", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72}
!469 = !{!"addr_space", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48}
!470 = !{!"calls", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72, !120, i64 80, !120, i64 88, !120, i64 96, !120, i64 104, !120, i64 112, !120, i64 120, !120, i64 128, !120, i64 136, !120, i64 144, !120, i64 152, !120, i64 160, !120, i64 168, !120, i64 176, !120, i64 184}
!471 = !{!"c", !120, i64 0}
!472 = !{!"cxx", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !120, i64 64, !120, i64 72, !120, i64 80, !120, i64 88, !120, i64 96}
!473 = !{!"emutls", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40, !120, i64 48, !120, i64 56, !121, i64 64, !121, i64 65}
!474 = !{!"target_option_hooks", !120, i64 0, !120, i64 8, !120, i64 16, !120, i64 24, !120, i64 32, !120, i64 40}
!475 = !{!"branch_weights", i32 2965001, i32 1}
!476 = !{!"branch_weights", i32 -379689869, i32 2124570631}
!477 = !{!"branch_weights", i32 14617, i32 1028351}
!478 = !{!"branch_weights", i32 1, i32 14617}
!479 = !{!"function_entry_count", i64 78479}
!480 = !{!"ira-costs.c:ira_get_register_move_cost"}
!481 = !{!"branch_weights", i32 1, i32 78480}
!482 = !{!"function_entry_count", i64 62010428}
!483 = !{!"ira-costs.c:insn_constraint_len"}
!484 = !{!"branch_weights", i32 2029541, i32 59980889}
!485 = !{!"function_entry_count", i64 277832}
!486 = !{!"ira-costs.c:process_bb_node_for_hard_reg_moves"}
!487 = !{!"branch_weights", i32 20659, i32 257175}
!488 = !{!"branch_weights", i32 257175, i32 1}
!489 = !{!"branch_weights", i32 1, i32 162392}
!490 = !{!"branch_weights", i32 1, i32 5699}
!491 = !{!"branch_weights", i32 257175, i32 1536489}
!492 = !{!"branch_weights", i32 -173283924, i32 1743189619}
!493 = !{!"branch_weights", i32 972191, i32 1}
!494 = !{!"branch_weights", i32 605647, i32 439823}
!495 = !{!"branch_weights", i32 90182, i32 515466}
!496 = !{!"branch_weights", i32 -1814693321, i32 -542694141}
!497 = !{!"branch_weights", i32 755791135, i32 531906185}
!498 = !{!"branch_weights", i32 1, i32 75359}
!499 = !{!145, !124, i64 8}
!500 = !{!"branch_weights", i32 21065, i32 54295}
!501 = !{!145, !120, i64 200}
!502 = !{!"branch_weights", i32 5699, i32 1782265}
!503 = distinct !{!503, !130}
!504 = !{!"function_entry_count", i64 317230}
!505 = !{!"ira-costs.c:ira_allocate_and_set_costs"}
!506 = !{!"branch_weights", i32 204775, i32 112457}
!507 = !{!"branch_weights", i32 204774, i32 1}
!508 = !{!"branch_weights", i32 204774, i32 0}
!509 = distinct !{!509, !130, !510, !511}
!510 = !{!"llvm.loop.isvectorized", i32 1}
!511 = !{!"llvm.loop.unroll.runtime.disable"}
!512 = !{!"branch_weights", i32 1, i32 578333}
!513 = !{!145, !124, i64 168}
!514 = !{!"branch_weights", i32 411819, i32 166515}
!515 = !{!"branch_weights", i32 166514, i32 1}
!516 = !{!"branch_weights", i32 499673, i32 499465}
!517 = !{!145, !124, i64 164}
!518 = !{!"branch_weights", i32 832623, i32 166514}
!519 = distinct !{!519, !130}
!520 = !{!"branch_weights", i32 0, i32 -2147483648}
!521 = !{!"branch_weights", i32 6652, i32 571681}
!522 = distinct !{!522, !130}
!523 = !{!"function_entry_count", i64 999136}
!524 = !{!"ira-costs.c:ira_hard_reg_not_in_set_p"}
!525 = !{!"branch_weights", i32 999785, i32 499465}
!526 = !{!"branch_weights", i32 500113, i32 499673}
!527 = distinct !{!527, !130}

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
define dso_local void @ira_init_costs_once() local_unnamed_addr #0 {
  store ptr null, ptr @init_cost, align 8, !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @op_costs, i8 0, i64 240, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) @this_op_costs, i8 0, i64 240, i1 false), !tbaa !5
  store ptr null, ptr @temp_costs, align 8, !tbaa !5
  store ptr null, ptr @cost_classes, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_init_costs() local_unnamed_addr #2 {
  tail call fastcc void @free_ira_costs() #16
  %1 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %2 = shl i32 %1, 2
  %3 = add i32 %2, 4
  store i32 %3, ptr @max_struct_costs_size, align 4, !tbaa !9
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @xmalloc(i64 noundef %4) #17
  store ptr %5, ptr @init_cost, align 8, !tbaa !5
  store i32 1000000, ptr %5, align 4, !tbaa !11
  %6 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0, %8
  %9 = phi i64 [ %11, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds %struct.costs, ptr %5, i64 0, i32 1, i64 %9
  store i32 1000000, ptr %10, align 4, !tbaa !9
  %11 = add nuw nsw i64 %9, 1
  %12 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %8, label %15, !llvm.loop !13

15:                                               ; preds = %8, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ %26, %16 ], [ 0, %15 ]
  %18 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @xmalloc(i64 noundef %19) #17
  %21 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %17
  store ptr %20, ptr %21, align 8, !tbaa !5
  %22 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @xmalloc(i64 noundef %23) #17
  %25 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %17
  store ptr %24, ptr %25, align 8, !tbaa !5
  %26 = add nuw nsw i64 %17, 1
  %27 = icmp eq i64 %26, 30
  br i1 %27, label %28, label %16, !llvm.loop !15

28:                                               ; preds = %16
  %29 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #17
  store ptr %31, ptr @temp_costs, align 8, !tbaa !5
  %32 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr @xmalloc(i64 noundef %34) #17
  store ptr %35, ptr @cost_classes, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ira_costs() unnamed_addr #2 {
  %1 = load ptr, ptr @init_cost, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @init_cost, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %16
  %6 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %7 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !5
  store ptr null, ptr %7, align 8, !tbaa !5
  %17 = add nuw nsw i64 %6, 1
  %18 = icmp eq i64 %17, 30
  br i1 %18, label %19, label %5, !llvm.loop !16

19:                                               ; preds = %16
  %20 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %20) #16
  br label %23

23:                                               ; preds = %22, %19
  store ptr null, ptr @temp_costs, align 8, !tbaa !5
  %24 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %24) #16
  br label %27

27:                                               ; preds = %26, %23
  store ptr null, ptr @cost_classes, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_finish_costs_once() local_unnamed_addr #2 {
  tail call fastcc void @free_ira_costs() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_costs() local_unnamed_addr #2 {
  store i1 true, ptr @allocno_p, align 1
  %1 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !9
  store i32 %1, ptr @cost_elements_num, align 4, !tbaa !9
  tail call fastcc void @init_costs() #16
  %2 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %3 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !9
  %4 = mul nsw i32 %3, %2
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @ira_allocate(i64 noundef %5) #17
  store ptr %6, ptr @total_allocno_costs, align 8, !tbaa !5
  %7 = load ptr, ptr @ira_dump_file, align 8, !tbaa !5
  tail call fastcc void @find_costs_and_classes(ptr noundef %7) #16
  tail call fastcc void @setup_allocno_cover_class_and_costs() #16
  tail call fastcc void @finish_costs() #16
  %8 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_costs() unnamed_addr #2 {
  tail call void @init_subregs_of_mode() #17
  %1 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %2 = load i32, ptr @cost_elements_num, align 4, !tbaa !9
  %3 = mul nsw i32 %2, %1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @ira_allocate(i64 noundef %4) #17
  store ptr %5, ptr @costs, align 8, !tbaa !5
  %6 = load i32, ptr @cost_elements_num, align 4, !tbaa !9
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr @ira_allocate(i64 noundef %8) #17
  store ptr %9, ptr @pref_buffer, align 8, !tbaa !5
  %10 = tail call i32 @max_reg_num() #17
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr @ira_allocate(i64 noundef %12) #17
  store ptr %13, ptr @regno_cover_class, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_costs_and_classes(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  tail call void @init_recog() #17
  store ptr null, ptr @pref, align 8, !tbaa !5
  %4 = tail call zeroext i8 @resize_reg_info() #17
  %5 = icmp eq i8 %4, 0
  %6 = load i1, ptr @allocno_p, align 1
  %7 = select i1 %5, i1 %6, i1 false
  %8 = load i1, ptr @pseudo_classes_defined_p, align 1
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %11 = load ptr, ptr @pref_buffer, align 8, !tbaa !5
  store ptr %11, ptr @pref, align 8, !tbaa !5
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %12 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %35

18:                                               ; preds = %10, %18
  %19 = load ptr, ptr %2, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !18
  %22 = tail call i32 @reg_preferred_class(i32 noundef %21) #17
  %23 = load ptr, ptr @pref, align 8, !tbaa !5
  %24 = load i32, ptr %19, align 8, !tbaa !21
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %22, ptr %26, align 4, !tbaa !9
  %27 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !22

29:                                               ; preds = %18
  %30 = load i1, ptr @allocno_p, align 1
  %31 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br i1 %30, label %35, label %37

34:                                               ; preds = %1
  br i1 %6, label %35, label %37

35:                                               ; preds = %14, %29, %34
  %36 = phi i32 [ %33, %29 ], [ 0, %34 ], [ %17, %14 ]
  store i1 false, ptr @pseudo_classes_defined_p, align 1
  br label %37

37:                                               ; preds = %29, %35, %34
  %38 = phi i32 [ %33, %29 ], [ %36, %35 ], [ 0, %34 ]
  %39 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %536, label %41

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
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %46) #16
  br label %54

54:                                               ; preds = %44, %52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) @cost_class_nums, i8 -1, i64 108, i1 false), !tbaa !9
  %55 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi i64 [ 0, %57 ], [ %67, %59 ]
  %61 = getelementptr inbounds [27 x i32], ptr @ira_important_classes, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !9
  %63 = getelementptr inbounds i32, ptr %58, i64 %60
  store i32 %62, ptr %63, align 4, !tbaa !9
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %64
  %66 = trunc i64 %60 to i32
  store i32 %66, ptr %65, align 4, !tbaa !9
  %67 = add nuw nsw i64 %60, 1
  %68 = load i32, ptr @ira_important_classes_num, align 4, !tbaa !9
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %59, label %71, !llvm.loop !23

71:                                               ; preds = %59
  %72 = trunc i64 %67 to i32
  br label %73

73:                                               ; preds = %71, %54
  %74 = phi i32 [ 0, %54 ], [ %72, %71 ]
  store i32 %74, ptr @cost_classes_num, align 4, !tbaa !9
  %75 = shl i32 %74, 2
  %76 = add i32 %75, 4
  store i32 %76, ptr @struct_costs_size, align 4, !tbaa !9
  %77 = load ptr, ptr @costs, align 8, !tbaa !5
  %78 = load i32, ptr @cost_elements_num, align 4, !tbaa !9
  %79 = mul nsw i32 %78, %76
  %80 = sext i32 %79 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %77, i8 0, i64 %80, i1 false)
  %81 = load i1, ptr @allocno_p, align 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %83, ptr noundef nonnull @process_bb_node_for_costs, ptr noundef null) #17
  %84 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !5
  %85 = load ptr, ptr @costs, align 8, !tbaa !5
  %86 = load i32, ptr @max_struct_costs_size, align 4, !tbaa !9
  %87 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !9
  %88 = mul nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %84, ptr align 4 %85, i64 %89, i1 false)
  br label %110

90:                                               ; preds = %73
  %91 = load ptr, ptr @cfun, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !24
  %94 = load ptr, ptr %93, align 8, !tbaa !26
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !28
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %93, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !30
  %99 = icmp eq ptr %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90, %100
  %101 = phi ptr [ %103, %100 ], [ %96, %90 ]
  tail call fastcc void @process_bb_for_costs(ptr noundef %101) #16
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !28
  %104 = load ptr, ptr @cfun, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !24
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %110, label %100, !llvm.loop !31

110:                                              ; preds = %100, %90, %82
  %111 = icmp eq i32 %46, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %110
  %113 = load ptr, ptr @pref_buffer, align 8, !tbaa !5
  store ptr %113, ptr @pref, align 8, !tbaa !5
  br label %114

114:                                              ; preds = %112, %110
  %115 = tail call i32 @max_reg_num() #17
  %116 = icmp sgt i32 %115, 53
  br i1 %116, label %117, label %520

117:                                              ; preds = %114
  %118 = zext nneg i32 %115 to i64
  br label %119

119:                                              ; preds = %117, %518
  %120 = phi i64 [ %118, %117 ], [ %121, %518 ]
  %121 = add nsw i64 %120, -1
  %122 = load i1, ptr @allocno_p, align 1
  br i1 %122, label %135, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %125 = getelementptr inbounds ptr, ptr %124, i64 %121
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %518, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %130 = load ptr, ptr @costs, align 8, !tbaa !5
  %131 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %121, %132
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %129, ptr align 4 %134, i64 %132, i1 false)
  br label %233

135:                                              ; preds = %119
  %136 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !5
  %137 = getelementptr inbounds ptr, ptr %136, i64 %121
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = icmp eq ptr %138, null
  br i1 %139, label %518, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %142 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %143 = sext i32 %142 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %141, i8 0, i64 %143, i1 false)
  %144 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !5
  %145 = getelementptr inbounds ptr, ptr %144, i64 %121
  %146 = load ptr, ptr %145, align 8, !tbaa !5
  %147 = icmp eq ptr %146, null
  br i1 %147, label %233, label %148

148:                                              ; preds = %140, %225
  %149 = phi i32 [ %206, %225 ], [ %142, %140 ]
  %150 = phi ptr [ %231, %225 ], [ %146, %140 ]
  %151 = load i32, ptr %150, align 8, !tbaa !21
  %152 = load i32, ptr @flag_ira_region, align 4
  %153 = add i32 %152, -1
  %154 = icmp ult i32 %153, 2
  br i1 %154, label %155, label %205

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 6
  %157 = load ptr, ptr %156, align 8, !tbaa !32
  %158 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 6
  %159 = load ptr, ptr %158, align 8, !tbaa !33
  %160 = icmp eq ptr %159, null
  br i1 %160, label %205, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %159, i64 0, i32 9
  %163 = load ptr, ptr %162, align 8, !tbaa !35
  %164 = getelementptr inbounds ptr, ptr %163, i64 %121
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %205, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %157, i64 0, i32 13
  %169 = load ptr, ptr %168, align 8, !tbaa !36
  %170 = tail call i32 @bitmap_bit_p(ptr noundef %169, i32 noundef %151) #17
  %171 = icmp eq i32 %170, 0
  %172 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  br i1 %171, label %205, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %165, align 8, !tbaa !21
  %175 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %176 = icmp sgt i32 %175, 0
  %177 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !5
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
  %192 = load i32, ptr %191, align 4, !tbaa !9
  %193 = getelementptr inbounds %struct.costs, ptr %187, i64 0, i32 1, i64 %190
  %194 = load i32, ptr %193, align 4, !tbaa !9
  %195 = add nsw i32 %194, %192
  store i32 %195, ptr %193, align 4, !tbaa !9
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %188
  br i1 %197, label %198, label %189, !llvm.loop !37

198:                                              ; preds = %189, %180
  %199 = phi i64 [ %182, %180 ], [ %186, %189 ]
  %200 = getelementptr inbounds i8, ptr %177, i64 %179
  %201 = load i32, ptr %200, align 4, !tbaa !11
  %202 = getelementptr inbounds i8, ptr %177, i64 %199
  %203 = load i32, ptr %202, align 4, !tbaa !11
  %204 = add nsw i32 %203, %201
  store i32 %204, ptr %202, align 4, !tbaa !11
  br label %205

205:                                              ; preds = %148, %198, %167, %161, %155
  %206 = phi i32 [ %149, %148 ], [ %172, %198 ], [ %172, %167 ], [ %149, %161 ], [ %149, %155 ]
  %207 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %208 = icmp sgt i32 %207, 0
  %209 = load ptr, ptr @costs, align 8, !tbaa !5
  %210 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %211 = mul nsw i32 %206, %151
  %212 = sext i32 %211 to i64
  br i1 %208, label %213, label %225

213:                                              ; preds = %205
  %214 = getelementptr inbounds i8, ptr %209, i64 %212
  %215 = zext nneg i32 %207 to i64
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi i64 [ 0, %213 ], [ %223, %216 ]
  %218 = getelementptr inbounds %struct.costs, ptr %214, i64 0, i32 1, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !9
  %220 = getelementptr inbounds %struct.costs, ptr %210, i64 0, i32 1, i64 %217
  %221 = load i32, ptr %220, align 4, !tbaa !9
  %222 = add nsw i32 %221, %219
  store i32 %222, ptr %220, align 4, !tbaa !9
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %225, label %216, !llvm.loop !38

225:                                              ; preds = %216, %205
  %226 = getelementptr inbounds i8, ptr %209, i64 %212
  %227 = load i32, ptr %226, align 4, !tbaa !11
  %228 = load i32, ptr %210, align 4, !tbaa !11
  %229 = add nsw i32 %228, %227
  store i32 %229, ptr %210, align 4, !tbaa !11
  %230 = getelementptr inbounds %struct.ira_allocno, ptr %150, i64 0, i32 5
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %148, !llvm.loop !39

233:                                              ; preds = %225, %140, %128
  %234 = phi ptr [ %141, %140 ], [ %129, %128 ], [ %210, %225 ]
  %235 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %307

237:                                              ; preds = %233
  %238 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %239 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
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
  %249 = load i32, ptr %248, align 4, !tbaa !9
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %242, i64 %121
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = load i32, ptr %252, align 8
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %250, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !40
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %295, label %260

260:                                              ; preds = %241
  %261 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %240, i32 noundef %249, i32 noundef %255) #17
  %262 = icmp eq i8 %261, 0
  %263 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %264 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  br i1 %262, label %265, label %295

265:                                              ; preds = %260
  %266 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %267 = getelementptr inbounds %struct.costs, ptr %266, i64 0, i32 1, i64 %244
  %268 = load i32, ptr %267, align 4, !tbaa !9
  %269 = icmp slt i32 %268, %247
  br i1 %269, label %276, label %270

270:                                              ; preds = %265
  %271 = icmp eq i32 %268, %247
  br i1 %271, label %272, label %276

272:                                              ; preds = %270
  %273 = zext i32 %246 to i64
  %274 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %273, i64 %250
  %275 = load i32, ptr %274, align 4, !tbaa !9
  br label %276

276:                                              ; preds = %265, %270, %272
  %277 = phi i32 [ %247, %272 ], [ %247, %270 ], [ %268, %265 ]
  %278 = phi i32 [ %275, %272 ], [ %246, %270 ], [ %249, %265 ]
  %279 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %280 = icmp eq i32 %46, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %276
  %282 = load i32, ptr %266, align 4, !tbaa !11
  %283 = icmp slt i32 %268, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %281
  %285 = zext i32 %245 to i64
  %286 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %285, i64 %250
  %287 = load i32, ptr %286, align 4, !tbaa !9
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !9
  %291 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %285
  %292 = load i32, ptr %291, align 4, !tbaa !9
  %293 = icmp ugt i32 %290, %292
  %294 = select i1 %293, i32 %287, i32 %245
  br label %295

295:                                              ; preds = %284, %276, %281, %241, %260
  %296 = phi ptr [ %264, %260 ], [ %264, %281 ], [ %264, %276 ], [ %242, %241 ], [ %264, %284 ]
  %297 = phi ptr [ %263, %260 ], [ %263, %281 ], [ %263, %276 ], [ %243, %241 ], [ %263, %284 ]
  %298 = phi i32 [ %247, %260 ], [ %277, %281 ], [ %277, %276 ], [ %247, %241 ], [ %277, %284 ]
  %299 = phi i32 [ %246, %260 ], [ %278, %281 ], [ %278, %276 ], [ %246, %241 ], [ %278, %284 ]
  %300 = phi i32 [ %245, %260 ], [ %245, %281 ], [ %245, %276 ], [ %245, %241 ], [ %294, %284 ]
  %301 = add nuw nsw i64 %244, 1
  %302 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %303 = sext i32 %302 to i64
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %241, label %305, !llvm.loop !41

305:                                              ; preds = %295
  %306 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  br label %307

307:                                              ; preds = %305, %233
  %308 = phi ptr [ %234, %233 ], [ %306, %305 ]
  %309 = phi i32 [ 1073741823, %233 ], [ %298, %305 ]
  %310 = phi i32 [ 26, %233 ], [ %299, %305 ]
  %311 = phi i32 [ 0, %233 ], [ %300, %305 ]
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !9
  %315 = load i32, ptr %308, align 4, !tbaa !11
  %316 = icmp sgt i32 %309, %315
  br i1 %316, label %327, label %317

317:                                              ; preds = %307
  %318 = load i32, ptr @flag_ira_algorithm, align 4, !tbaa !9
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = icmp eq i32 %314, 0
  %322 = select i1 %321, i32 %310, i32 %314
  br label %327

323:                                              ; preds = %317
  %324 = zext i32 %310 to i64
  %325 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !9
  br label %327

327:                                              ; preds = %307, %320, %323
  %328 = phi i32 [ %322, %320 ], [ %326, %323 ], [ 0, %307 ]
  %329 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  %330 = getelementptr inbounds i32, ptr %329, i64 %121
  store i32 %328, ptr %330, align 4, !tbaa !9
  %331 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %332 = icmp eq i32 %46, %331
  br i1 %332, label %333, label %361

333:                                              ; preds = %327
  %334 = load i32, ptr %308, align 4, !tbaa !11
  %335 = icmp sgt i32 %309, %334
  %336 = icmp eq i32 %310, %314
  %337 = select i1 %335, i32 0, i32 %310
  %338 = select i1 %335, i1 true, i1 %336
  %339 = select i1 %338, i32 0, i32 %314
  %340 = trunc i64 %121 to i32
  tail call void @setup_reg_classes(i32 noundef %340, i32 noundef %337, i32 noundef %339, i32 noundef %328) #17
  %341 = load i1, ptr @allocno_p, align 1
  %342 = xor i1 %341, true
  %343 = load i32, ptr @internal_flag_ira_verbose, align 4
  %344 = icmp sgt i32 %343, 2
  %345 = select i1 %342, i1 true, i1 %344
  %346 = and i1 %42, %345
  br i1 %346, label %347, label %361

347:                                              ; preds = %333
  %348 = zext i32 %337 to i64
  %349 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !5
  %351 = zext i32 %339 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !5
  %354 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  %355 = getelementptr inbounds i32, ptr %354, i64 %121
  %356 = load i32, ptr %355, align 4, !tbaa !9
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !5
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %340, ptr noundef %350, ptr noundef %353, ptr noundef %359) #16
  br label %361

361:                                              ; preds = %347, %333, %327
  %362 = phi i32 [ %337, %347 ], [ %337, %333 ], [ %310, %327 ]
  %363 = load i1, ptr @allocno_p, align 1
  br i1 %363, label %371, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr @temp_costs, align 8, !tbaa !5
  %366 = load i32, ptr %365, align 4, !tbaa !11
  %367 = icmp sgt i32 %309, %366
  %368 = select i1 %367, i32 0, i32 %362
  %369 = load ptr, ptr @pref, align 8, !tbaa !5
  %370 = getelementptr inbounds i32, ptr %369, i64 %121
  store i32 %368, ptr %370, align 4, !tbaa !9
  br label %518

371:                                              ; preds = %361
  %372 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !5
  %373 = getelementptr inbounds ptr, ptr %372, i64 %121
  %374 = load ptr, ptr %373, align 8, !tbaa !5
  %375 = icmp eq ptr %374, null
  br i1 %375, label %518, label %376

376:                                              ; preds = %371
  %377 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  %378 = trunc i64 %121 to i32
  %379 = trunc i64 %121 to i32
  br label %380

380:                                              ; preds = %376, %509
  %381 = phi ptr [ %510, %509 ], [ %377, %376 ]
  %382 = phi ptr [ %511, %509 ], [ %377, %376 ]
  %383 = phi ptr [ %516, %509 ], [ %374, %376 ]
  %384 = load i32, ptr %383, align 8, !tbaa !21
  %385 = getelementptr inbounds i32, ptr %382, i64 %121
  %386 = load i32, ptr %385, align 4, !tbaa !9
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %468, label %388

388:                                              ; preds = %380
  %389 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %462

391:                                              ; preds = %388
  %392 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  br label %393

393:                                              ; preds = %391, %451
  %394 = phi ptr [ %381, %391 ], [ %452, %451 ]
  %395 = phi ptr [ %381, %391 ], [ %453, %451 ]
  %396 = phi ptr [ %392, %391 ], [ %454, %451 ]
  %397 = phi i64 [ 0, %391 ], [ %458, %451 ]
  %398 = phi i32 [ 26, %391 ], [ %457, %451 ]
  %399 = phi i32 [ 1073741823, %391 ], [ %456, %451 ]
  %400 = phi i32 [ 1073741823, %391 ], [ %455, %451 ]
  %401 = getelementptr inbounds i32, ptr %396, i64 %397
  %402 = load i32, ptr %401, align 4, !tbaa !9
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, ptr %395, i64 %121
  %405 = load i32, ptr %404, align 4, !tbaa !9
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_class_subset_p, i64 0, i64 %403, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !9
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %451, label %410

410:                                              ; preds = %393
  %411 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %412 = getelementptr inbounds ptr, ptr %411, i64 %121
  %413 = load ptr, ptr %412, align 8, !tbaa !5
  %414 = load i32, ptr %413, align 8
  %415 = lshr i32 %414, 16
  %416 = and i32 %415, 255
  %417 = zext nneg i32 %416 to i64
  %418 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %403, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !40
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %451, label %421

421:                                              ; preds = %410
  %422 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %378, i32 noundef %402, i32 noundef %416) #17
  %423 = icmp eq i8 %422, 0
  %424 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %425 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  br i1 %423, label %426, label %451

426:                                              ; preds = %421
  %427 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !5
  %428 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %429 = mul nsw i32 %428, %384
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, ptr %427, i64 %430
  %432 = getelementptr inbounds %struct.costs, ptr %431, i64 0, i32 1, i64 %397
  %433 = load i32, ptr %432, align 4, !tbaa !9
  %434 = icmp slt i32 %433, %400
  br i1 %434, label %435, label %440

435:                                              ; preds = %426
  %436 = load ptr, ptr @costs, align 8, !tbaa !5
  %437 = getelementptr inbounds i8, ptr %436, i64 %430
  %438 = getelementptr inbounds %struct.costs, ptr %437, i64 0, i32 1, i64 %397
  %439 = load i32, ptr %438, align 4, !tbaa !9
  br label %451

440:                                              ; preds = %426
  %441 = icmp eq i32 %433, %400
  br i1 %441, label %442, label %451

442:                                              ; preds = %440
  %443 = zext i32 %398 to i64
  %444 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %443, i64 %403
  %445 = load i32, ptr %444, align 4, !tbaa !9
  %446 = load ptr, ptr @costs, align 8, !tbaa !5
  %447 = getelementptr inbounds i8, ptr %446, i64 %430
  %448 = getelementptr inbounds %struct.costs, ptr %447, i64 0, i32 1, i64 %397
  %449 = load i32, ptr %448, align 4, !tbaa !9
  %450 = tail call i32 @llvm.smax.i32(i32 %399, i32 %449)
  br label %451

451:                                              ; preds = %421, %410, %440, %442, %435, %393
  %452 = phi ptr [ %425, %421 ], [ %425, %435 ], [ %425, %442 ], [ %425, %440 ], [ %394, %410 ], [ %394, %393 ]
  %453 = phi ptr [ %425, %421 ], [ %425, %435 ], [ %425, %442 ], [ %425, %440 ], [ %395, %410 ], [ %395, %393 ]
  %454 = phi ptr [ %424, %421 ], [ %424, %435 ], [ %424, %442 ], [ %424, %440 ], [ %396, %410 ], [ %396, %393 ]
  %455 = phi i32 [ %400, %421 ], [ %433, %435 ], [ %400, %442 ], [ %400, %440 ], [ %400, %410 ], [ %400, %393 ]
  %456 = phi i32 [ %399, %421 ], [ %439, %435 ], [ %450, %442 ], [ %399, %440 ], [ %399, %410 ], [ %399, %393 ]
  %457 = phi i32 [ %398, %421 ], [ %402, %435 ], [ %445, %442 ], [ %398, %440 ], [ %398, %410 ], [ %398, %393 ]
  %458 = add nuw nsw i64 %397, 1
  %459 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %460 = sext i32 %459 to i64
  %461 = icmp slt i64 %458, %460
  br i1 %461, label %393, label %462, !llvm.loop !42

462:                                              ; preds = %451, %388
  %463 = phi ptr [ %381, %388 ], [ %452, %451 ]
  %464 = phi ptr [ %382, %388 ], [ %453, %451 ]
  %465 = phi i32 [ 1073741823, %388 ], [ %456, %451 ]
  %466 = phi i32 [ 26, %388 ], [ %457, %451 ]
  %467 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 10
  store i32 %465, ptr %467, align 4, !tbaa !43
  br label %468

468:                                              ; preds = %380, %462
  %469 = phi ptr [ %463, %462 ], [ %381, %380 ]
  %470 = phi ptr [ %464, %462 ], [ %382, %380 ]
  %471 = phi i32 [ %466, %462 ], [ 0, %380 ]
  %472 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !9
  %473 = icmp sgt i32 %472, 2
  %474 = and i1 %42, %473
  br i1 %474, label %475, label %509

475:                                              ; preds = %468
  br i1 %111, label %482, label %476

476:                                              ; preds = %475
  %477 = load ptr, ptr @pref, align 8, !tbaa !5
  %478 = sext i32 %384 to i64
  %479 = getelementptr inbounds i32, ptr %477, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !9
  %481 = icmp eq i32 %480, %471
  br i1 %481, label %509, label %482

482:                                              ; preds = %476, %475
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %384, i32 noundef %379) #16
  %484 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 6
  %485 = load ptr, ptr %484, align 8, !tbaa !32
  %486 = load ptr, ptr %485, align 8, !tbaa !44
  %487 = icmp eq ptr %486, null
  br i1 %487, label %490, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.basic_block_def, ptr %486, i64 0, i32 9
  br label %493

490:                                              ; preds = %482
  %491 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %485, i64 0, i32 1
  %492 = load ptr, ptr %491, align 8, !tbaa !45
  br label %493

493:                                              ; preds = %490, %488
  %494 = phi ptr [ %492, %490 ], [ %489, %488 ]
  %495 = phi ptr [ @.str.4, %490 ], [ @.str.3, %488 ]
  %496 = load i32, ptr %494, align 8, !tbaa !9
  %497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull %495, i32 noundef %496) #16
  %498 = zext i32 %471 to i64
  %499 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !5
  %501 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  %502 = getelementptr inbounds i32, ptr %501, i64 %121
  %503 = load i32, ptr %502, align 4, !tbaa !9
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !5
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %500, ptr noundef %506) #16
  %508 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  br label %509

509:                                              ; preds = %493, %476, %468
  %510 = phi ptr [ %508, %493 ], [ %469, %476 ], [ %469, %468 ]
  %511 = phi ptr [ %508, %493 ], [ %470, %476 ], [ %470, %468 ]
  %512 = load ptr, ptr @pref, align 8, !tbaa !5
  %513 = sext i32 %384 to i64
  %514 = getelementptr inbounds i32, ptr %512, i64 %513
  store i32 %471, ptr %514, align 4, !tbaa !9
  %515 = getelementptr inbounds %struct.ira_allocno, ptr %383, i64 0, i32 5
  %516 = load ptr, ptr %515, align 8, !tbaa !5
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %380, !llvm.loop !46

518:                                              ; preds = %509, %371, %135, %123, %364
  %519 = icmp sgt i64 %120, 54
  br i1 %519, label %119, label %520, !llvm.loop !47

520:                                              ; preds = %518, %114
  %521 = load i32, ptr @internal_flag_ira_verbose, align 4
  %522 = icmp sgt i32 %521, 4
  %523 = and i1 %42, %522
  br i1 %523, label %524, label %531

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
  %534 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !9
  %535 = icmp slt i32 %46, %534
  br i1 %535, label %44, label %536, !llvm.loop !48

536:                                              ; preds = %531, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_allocno_cover_class_and_costs() unnamed_addr #2 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %89, label %5

5:                                                ; preds = %0, %86
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = load ptr, ptr @costs, align 8, !tbaa !5
  %15 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %16 = mul nsw i32 %15, %7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 12
  store i32 %19, ptr %20, align 4, !tbaa !49
  tail call void @ira_set_allocno_cover_class(ptr noundef nonnull %6, i32 noundef %13) #17
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %86, label %22

22:                                               ; preds = %5
  %23 = zext i32 %13 to i64
  %24 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 38
  store i32 %25, ptr %26, align 4, !tbaa !50
  %27 = load i32, ptr @optimize, align 4, !tbaa !9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %86, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !51
  %32 = load ptr, ptr @pref, align 8, !tbaa !5
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !9
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %86, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %23
  %39 = load i32, ptr %38, align 4, !tbaa !9
  %40 = tail call ptr @ira_allocate_cost_vector(i32 noundef %13) #17
  %41 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  store ptr %40, ptr %41, align 8, !tbaa !52
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = load ptr, ptr @pref, align 8, !tbaa !5
  %45 = getelementptr inbounds i32, ptr %44, i64 %33
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %47 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %23
  %48 = load ptr, ptr @costs, align 8
  %49 = load i32, ptr @struct_costs_size, align 4
  %50 = mul nsw i32 %49, %7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = zext nneg i32 %39 to i64
  br label %54

54:                                               ; preds = %43, %81
  %55 = phi i64 [ %53, %43 ], [ %56, %81 ]
  %56 = add nsw i64 %55, -1
  %57 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %23, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !53
  %59 = sext i16 %58 to i64
  %60 = load i32, ptr %45, align 4, !tbaa !9
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !55
  %64 = and i64 %59, 4294967295
  %65 = shl nuw i64 1, %64
  %66 = and i64 %63, %65
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %54
  %69 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %59
  %70 = load i32, ptr %69, align 4, !tbaa !9
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [27 x i32], ptr @cost_class_nums, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !9
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, ptr %47, align 4, !tbaa !9
  br label %77

77:                                               ; preds = %75, %68
  %78 = phi i32 [ %76, %75 ], [ %73, %68 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.costs, ptr %52, i64 0, i32 1, i64 %79
  br label %81

81:                                               ; preds = %54, %77
  %82 = phi ptr [ %80, %77 ], [ %46, %54 ]
  %83 = load i32, ptr %82, align 4, !tbaa !9
  %84 = getelementptr inbounds i32, ptr %40, i64 %56
  store i32 %83, ptr %84, align 4, !tbaa !9
  %85 = icmp ugt i64 %55, 1
  br i1 %85, label %54, label %86, !llvm.loop !56

86:                                               ; preds = %81, %22, %29, %37, %5
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %5, !llvm.loop !57

89:                                               ; preds = %86, %0
  %90 = load i32, ptr @optimize, align 4, !tbaa !9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !5
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %93, ptr noundef nonnull @process_bb_node_for_hard_reg_moves, ptr noundef null) #17
  br label %94

94:                                               ; preds = %92, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_costs() unnamed_addr #2 {
  %1 = load ptr, ptr @regno_cover_class, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %1) #17
  %2 = load ptr, ptr @pref_buffer, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %2) #17
  %3 = load ptr, ptr @costs, align 8, !tbaa !5
  tail call void @ira_free(ptr noundef %3) #17
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_set_pseudo_classes(ptr noundef %0) local_unnamed_addr #2 {
  store i1 false, ptr @allocno_p, align 1
  %2 = load i32, ptr @flag_ira_verbose, align 4, !tbaa !9
  store i32 %2, ptr @internal_flag_ira_verbose, align 4, !tbaa !9
  %3 = tail call i32 @max_reg_num() #17
  store i32 %3, ptr @cost_elements_num, align 4, !tbaa !9
  tail call fastcc void @init_costs() #16
  tail call fastcc void @find_costs_and_classes(ptr noundef %0) #16
  store i1 true, ptr @pseudo_classes_defined_p, align 1
  tail call fastcc void @finish_costs() #16
  ret void
}

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #2 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #16
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %0, %63
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !58
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %13
  %19 = load i32, ptr %18, align 4, !tbaa !9
  %20 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 33
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 10
  %22 = load i32, ptr %21, align 4, !tbaa !43
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %20, i32 noundef %8, i32 noundef %22) #16
  %23 = load ptr, ptr %20, align 8, !tbaa !52
  %24 = icmp sgt i32 %19, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %17
  %26 = load i64, ptr @call_used_reg_set, align 8, !tbaa !55
  %27 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 29
  %28 = zext i32 %12 to i64
  %29 = zext nneg i32 %19 to i64
  br label %30

30:                                               ; preds = %25, %53
  %31 = phi i64 [ %29, %25 ], [ %33, %53 ]
  %32 = phi i32 [ 2147483647, %25 ], [ %58, %53 ]
  %33 = add nsw i64 %31, -1
  %34 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_regs, i64 0, i64 %13, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !53
  %36 = sext i16 %35 to i32
  %37 = tail call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %36, i32 noundef %12, i64 noundef %26) #16, !range !17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %30
  %40 = sext i16 %35 to i64
  %41 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !9
  %43 = load i32, ptr %27, align 4, !tbaa !60
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44
  %46 = load i16, ptr %45, align 4, !tbaa !53
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %28, i64 %44, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !53
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %50, %47
  %52 = mul nsw i32 %51, %43
  br label %53

53:                                               ; preds = %39, %30
  %54 = phi i32 [ 0, %30 ], [ %52, %39 ]
  %55 = getelementptr inbounds i32, ptr %23, i64 %33
  %56 = load i32, ptr %55, align 4, !tbaa !9
  %57 = add nsw i32 %56, %54
  store i32 %57, ptr %55, align 4, !tbaa !9
  %58 = tail call i32 @llvm.smin.i32(i32 %32, i32 %57)
  %59 = icmp ugt i64 %31, 1
  br i1 %59, label %30, label %60, !llvm.loop !61

60:                                               ; preds = %53
  %61 = icmp eq i32 %58, 2147483647
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  store i32 %58, ptr %21, align 4, !tbaa !43
  br label %63

63:                                               ; preds = %17, %60, %62, %10, %5
  %64 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #16, !range !17
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %5, !llvm.loop !62

66:                                               ; preds = %63, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store i32 0, ptr %0, align 4, !tbaa !63
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !63
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !9
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
  store i32 %17, ptr %0, align 4, !tbaa !63
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !65

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ira_allocate_and_set_costs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = tail call ptr @ira_allocate_cost_vector(i32 noundef %1) #17
  store ptr %7, ptr %0, align 8, !tbaa !5
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @ira_class_hard_regs_num, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !9
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
  store i32 %2, ptr %25, align 4, !tbaa !9
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <4 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %20, 1
  %30 = getelementptr inbounds i32, ptr %7, i64 %29
  store i32 %2, ptr %30, align 4, !tbaa !9
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %20, 2
  %35 = getelementptr inbounds i32, ptr %7, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !9
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <4 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or disjoint i64 %20, 3
  %40 = getelementptr inbounds i32, ptr %7, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !9
  br label %41

41:                                               ; preds = %38, %36
  %42 = add i64 %20, 4
  %43 = add <4 x i64> %21, <i64 4, i64 4, i64 4, i64 4>
  %44 = icmp eq i64 %42, %15
  br i1 %44, label %45, label %19, !llvm.loop !66

45:                                               ; preds = %41, %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_hard_reg_not_in_set_p(i32 noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #6 {
  %4 = sext i32 %0 to i64
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !40
  %8 = zext i8 %7 to i64
  br label %9

9:                                                ; preds = %12, %3
  %10 = phi i64 [ %13, %12 ], [ %8, %3 ]
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = add nsw i64 %10, -1
  %14 = add nsw i64 %13, %4
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !69

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
define internal void @process_bb_node_for_costs(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @process_bb_for_costs(ptr noundef nonnull %2) #16
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_bb_for_costs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr @optimize_size, align 4, !tbaa !9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !70
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 8, !tbaa !71
  %18 = add i32 %17, 9
  %19 = icmp ult i32 %18, 19
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = sdiv i32 %17, 10
  br label %22

22:                                               ; preds = %20, %15, %1, %7
  %23 = phi i32 [ 1000, %7 ], [ 1000, %1 ], [ %21, %20 ], [ 1, %15 ]
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 1)
  store i32 %24, ptr @frequency, align 4
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %22, %37
  %30 = phi ptr [ %40, %37 ], [ %27, %22 ]
  %31 = load ptr, ptr %25, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = icmp eq ptr %30, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = tail call fastcc ptr @scan_one_insn(ptr noundef nonnull %30) #16
  %39 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %29, !llvm.loop !74

42:                                               ; preds = %29, %37, %22
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invalid_mode_change_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_allocno_costs(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %3) #16
  %5 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %89, label %7

7:                                                ; preds = %1, %79
  %8 = load ptr, ptr %2, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = load i32, ptr %8, align 8, !tbaa !21
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %10) #16
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  br label %22

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %21, %19 ], [ %18, %17 ]
  %24 = phi ptr [ @.str.4, %19 ], [ @.str.3, %17 ]
  %25 = load i32, ptr %23, align 8, !tbaa !9
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %25) #16
  %27 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 8, i64 1, ptr %0)
  %28 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %22
  %31 = sext i32 %10 to i64
  br label %32

32:                                               ; preds = %30, %74
  %33 = phi i64 [ 0, %30 ], [ %75, %74 ]
  %34 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %35 = getelementptr inbounds i32, ptr %34, i64 %33
  %36 = load i32, ptr %35, align 4, !tbaa !9
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %37, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !40
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %32
  %49 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %10, i32 noundef %36, i32 noundef %43) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = load ptr, ptr @costs, align 8, !tbaa !5
  %55 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %56 = mul nsw i32 %55, %11
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = getelementptr inbounds %struct.costs, ptr %58, i64 0, i32 1, i64 %33
  %60 = load i32, ptr %59, align 4, !tbaa !9
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %53, i32 noundef %60) #16
  %62 = load i32, ptr @flag_ira_region, align 4
  %63 = add i32 %62, -1
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load ptr, ptr @total_allocno_costs, align 8, !tbaa !5
  %67 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %68 = mul nsw i32 %67, %11
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = getelementptr inbounds %struct.costs, ptr %70, i64 0, i32 1, i64 %33
  %72 = load i32, ptr %71, align 4, !tbaa !9
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %72) #16
  br label %74

74:                                               ; preds = %32, %48, %51, %65
  %75 = add nuw nsw i64 %33, 1
  %76 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %32, label %79, !llvm.loop !75

79:                                               ; preds = %74, %22
  %80 = load ptr, ptr @costs, align 8, !tbaa !5
  %81 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %82 = mul nsw i32 %81, %11
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %80, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !11
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %85) #16
  %87 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %3, ptr noundef nonnull %2) #16, !range !17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %7, !llvm.loop !76

89:                                               ; preds = %79, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pseudo_costs(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @fputc(i32 10, ptr %0)
  %3 = tail call i32 @max_reg_num() #17
  %4 = icmp sgt i32 %3, 53
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %5, %64
  %9 = phi ptr [ %7, %5 ], [ %65, %64 ]
  %10 = phi i64 [ %6, %5 ], [ %11, %64 ]
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %8
  %16 = trunc i64 %11 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16) #16
  %18 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %15, %50
  %21 = phi i64 [ %51, %50 ], [ 0, %15 ]
  %22 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !9
  %25 = sext i32 %24 to i64
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %27 = getelementptr inbounds ptr, ptr %26, i64 %11
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [27 x [87 x i8]], ptr @contains_reg_of_mode, i64 0, i64 %25, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !40
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %20
  %37 = tail call zeroext i8 @invalid_mode_change_p(i32 noundef %16, i32 noundef %24, i32 noundef %31) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %25
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = load ptr, ptr @costs, align 8, !tbaa !5
  %43 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %11, %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = getelementptr inbounds %struct.costs, ptr %46, i64 0, i32 1, i64 %21
  %48 = load i32, ptr %47, align 4, !tbaa !9
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef %48) #16
  br label %50

50:                                               ; preds = %20, %36, %39
  %51 = add nuw nsw i64 %21, 1
  %52 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %20, label %55, !llvm.loop !77

55:                                               ; preds = %50, %15
  %56 = load ptr, ptr @costs, align 8, !tbaa !5
  %57 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %11, %58
  %60 = getelementptr inbounds i8, ptr %56, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !11
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %61) #16
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  br label %64

64:                                               ; preds = %8, %55
  %65 = phi ptr [ %9, %8 ], [ %63, %55 ]
  %66 = icmp sgt i64 %10, 54
  br i1 %66, label %8, label %67, !llvm.loop !78

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scan_one_insn(ptr noundef returned %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -11
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %140, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = and i32 %9, 65534
  %12 = icmp eq i32 %11, 24
  %13 = and i32 %9, 65531
  %14 = icmp eq i32 %13, 16
  %15 = or i1 %12, %14
  %16 = icmp eq i32 %10, 21
  %17 = or i1 %16, %15
  br i1 %17, label %140, label %18

18:                                               ; preds = %6
  %19 = icmp eq i32 %10, 23
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  br label %24

21:                                               ; preds = %18
  %22 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  tail call void @extract_insn(ptr noundef nonnull %0) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %89, label %24

24:                                               ; preds = %20, %21
  %25 = phi ptr [ %8, %20 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %89

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %89

37:                                               ; preds = %31
  %38 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 3, ptr noundef null) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %89, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %89

46:                                               ; preds = %40
  %47 = load ptr, ptr %26, align 8, !tbaa !40
  %48 = load i1, ptr @allocno_p, align 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = load i32, ptr %54, align 8, !tbaa !21
  br label %58

56:                                               ; preds = %46
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #16
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %55, %49 ], [ %57, %56 ]
  %60 = load ptr, ptr @pref, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !9
  %66 = zext i32 %65 to i64
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i64 [ %66, %62 ], [ 13, %58 ]
  %69 = load i32, ptr %47, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %72, i64 %68, i64 1
  %74 = load i16, ptr %73, align 2, !tbaa !53
  %75 = sext i16 %74 to i32
  %76 = load i32, ptr @frequency, align 4, !tbaa !9
  %77 = mul nsw i32 %76, %75
  %78 = load ptr, ptr @costs, align 8, !tbaa !5
  %79 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %80 = mul nsw i32 %79, %59
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %78, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !11
  %84 = sub nsw i32 %83, %77
  store i32 %84, ptr %82, align 4, !tbaa !11
  %85 = load ptr, ptr %32, align 8, !tbaa !40
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = shl nsw i32 %76, 1
  tail call fastcc void @record_address_regs(ptr noundef %87, i32 noundef 0, i32 noundef %88) #16
  br label %89

89:                                               ; preds = %67, %40, %37, %31, %24, %21
  %90 = load ptr, ptr @pref, align 8, !tbaa !5
  tail call fastcc void @record_operand_costs(ptr noundef nonnull %0, ptr noundef %90) #16
  %91 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !79
  %92 = icmp sgt i8 %91, 0
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = zext nneg i8 %91 to i64
  %95 = load ptr, ptr @costs, align 8
  %96 = load i1, ptr @allocno_p, align 1
  %97 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %98 = load i32, ptr @struct_costs_size, align 4
  %99 = load i32, ptr @cost_classes_num, align 4
  %100 = icmp sgt i32 %99, 0
  %101 = zext nneg i32 %99 to i64
  br label %102

102:                                              ; preds = %93, %137
  %103 = phi i64 [ 0, %93 ], [ %138, %137 ]
  %104 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %137

109:                                              ; preds = %102
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #16
  %111 = icmp ugt i32 %110, 52
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  br i1 %96, label %113, label %118

113:                                              ; preds = %112
  %114 = sext i32 %110 to i64
  %115 = getelementptr inbounds ptr, ptr %97, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = load i32, ptr %116, align 8, !tbaa !21
  br label %118

118:                                              ; preds = %112, %113
  %119 = phi i32 [ %117, %113 ], [ %110, %112 ]
  %120 = mul nsw i32 %98, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %95, i64 %121
  %123 = getelementptr inbounds [30 x ptr], ptr @op_costs, i64 0, i64 %103
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = load i32, ptr %124, align 4, !tbaa !11
  %126 = load i32, ptr %122, align 4, !tbaa !11
  %127 = add nsw i32 %126, %125
  store i32 %127, ptr %122, align 4, !tbaa !11
  br i1 %100, label %128, label %137

128:                                              ; preds = %118, %128
  %129 = phi i64 [ %135, %128 ], [ 0, %118 ]
  %130 = getelementptr inbounds %struct.costs, ptr %124, i64 0, i32 1, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !9
  %132 = getelementptr inbounds %struct.costs, ptr %122, i64 0, i32 1, i64 %129
  %133 = load i32, ptr %132, align 4, !tbaa !9
  %134 = add nsw i32 %133, %131
  store i32 %134, ptr %132, align 4, !tbaa !9
  %135 = add nuw nsw i64 %129, 1
  %136 = icmp eq i64 %135, %101
  br i1 %136, label %137, label %128, !llvm.loop !81

137:                                              ; preds = %128, %118, %102, %109
  %138 = add nuw nsw i64 %103, 1
  %139 = icmp eq i64 %138, %94
  br i1 %139, label %140, label %102, !llvm.loop !82

140:                                              ; preds = %137, %89, %1, %6
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_address_regs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
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
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %16, 39
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  br label %25

25:                                               ; preds = %20, %10
  %26 = phi i32 [ %24, %20 ], [ %16, %10 ]
  %27 = phi ptr [ %22, %20 ], [ %12, %10 ]
  %28 = icmp eq i32 %18, 39
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !40
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
  br i1 %46, label %38, label %47

47:                                               ; preds = %42
  %48 = icmp eq i32 %26, 37
  %49 = icmp eq i32 %36, 37
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #16
  %53 = icmp ult i32 %52, 53
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr noundef nonnull %27) #16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %27) #16, !range !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %54
  %61 = zext nneg i8 %55 to i32
  br label %38

62:                                               ; preds = %51, %57
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #16
  %64 = icmp ult i32 %63, 53
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr noundef nonnull %35) #16
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr noundef nonnull %35) #16, !range !17
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %65
  %72 = zext nneg i8 %66 to i32
  br label %38

73:                                               ; preds = %47
  br i1 %48, label %74, label %80

74:                                               ; preds = %62, %68, %73
  %75 = load i32, ptr %27, align 8
  %76 = and i32 %75, 1073741824
  %77 = icmp ne i32 %76, 0
  %78 = icmp eq i32 %36, 52
  %79 = or i1 %78, %77
  br i1 %79, label %82, label %84

80:                                               ; preds = %73
  %81 = icmp eq i32 %36, 52
  br i1 %81, label %82, label %83

82:                                               ; preds = %80, %74
  tail call fastcc void @record_address_regs(ptr noundef nonnull %27, i32 noundef 0, i32 noundef %7) #16
  br label %38

83:                                               ; preds = %80
  br i1 %49, label %85, label %91

84:                                               ; preds = %74
  br i1 %49, label %85, label %94

85:                                               ; preds = %84, %83
  %86 = load i32, ptr %35, align 8
  %87 = and i32 %86, 1073741824
  %88 = icmp ne i32 %87, 0
  %89 = icmp eq i32 %26, 52
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %93, label %94

91:                                               ; preds = %83
  %92 = icmp eq i32 %26, 52
  br i1 %92, label %93, label %94

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
  %98 = load ptr, ptr %97, align 8, !tbaa !40
  %99 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = shl nsw i32 %7, 1
  tail call fastcc void @record_address_regs(ptr noundef %98, i32 noundef 0, i32 noundef %100) #16
  %101 = load ptr, ptr %99, align 8, !tbaa !40
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !40
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %38, label %187

107:                                              ; preds = %4, %4, %4, %4
  %108 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !40
  %110 = shl nsw i32 %7, 1
  br label %38

111:                                              ; preds = %4
  %112 = icmp eq i32 %6, 1
  %113 = select i1 %112, i32 11, i32 13
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %115 = icmp ult i32 %114, 53
  br i1 %115, label %187, label %116

116:                                              ; preds = %111
  %117 = load i1, ptr @allocno_p, align 1
  br i1 %117, label %118, label %131

118:                                              ; preds = %116
  %119 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %120 = zext i32 %114 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %122, i64 0, i32 31
  %124 = load i16, ptr %123, align 4
  %125 = or i16 %124, 64
  store i16 %125, ptr %123, align 4
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %119, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = load i32, ptr %129, align 8, !tbaa !21
  br label %133

131:                                              ; preds = %116
  %132 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #16
  br label %133

133:                                              ; preds = %131, %118
  %134 = phi i32 [ %130, %118 ], [ %132, %131 ]
  %135 = load ptr, ptr @costs, align 8, !tbaa !5
  %136 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %137 = mul nsw i32 %136, %134
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %135, i64 %138
  %140 = zext nneg i32 %113 to i64
  %141 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 16, i64 %140, i64 1
  %142 = load i16, ptr %141, align 2, !tbaa !53
  %143 = sext i16 %142 to i32
  %144 = mul nsw i32 %7, %143
  %145 = sdiv i32 %144, 2
  %146 = load i32, ptr %139, align 4, !tbaa !11
  %147 = add nsw i32 %145, %146
  store i32 %147, ptr %139, align 4, !tbaa !11
  %148 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %187

150:                                              ; preds = %133, %150
  %151 = phi i64 [ %161, %150 ], [ 0, %133 ]
  %152 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %153 = getelementptr inbounds i32, ptr %152, i64 %151
  %154 = load i32, ptr %153, align 4, !tbaa !9
  %155 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef 16, i32 noundef %154, i32 noundef %113, i8 noundef zeroext 1) #16, !range !83
  %156 = mul nsw i32 %155, %7
  %157 = sdiv i32 %156, 2
  %158 = getelementptr inbounds %struct.costs, ptr %139, i64 0, i32 1, i64 %151
  %159 = load i32, ptr %158, align 4, !tbaa !9
  %160 = add nsw i32 %157, %159
  store i32 %160, ptr %158, align 4, !tbaa !9
  %161 = add nuw nsw i64 %151, 1
  %162 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %150, label %187, !llvm.loop !84

165:                                              ; preds = %4
  %166 = and i32 %8, 65535
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !5
  %170 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %167
  %171 = load i8, ptr %170, align 1, !tbaa !40
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %175 = zext i8 %171 to i64
  br label %176

176:                                              ; preds = %173, %185
  %177 = phi i64 [ %175, %173 ], [ %178, %185 ]
  %178 = add nsw i64 %177, -1
  %179 = getelementptr inbounds i8, ptr %169, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !40
  %181 = icmp eq i8 %180, 101
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = getelementptr inbounds [1 x %union.rtunion_def], ptr %174, i64 0, i64 %178
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  tail call fastcc void @record_address_regs(ptr noundef %184, i32 noundef %6, i32 noundef %7) #16
  br label %185

185:                                              ; preds = %176, %182
  %186 = icmp ugt i64 %177, 1
  br i1 %186, label %176, label %187, !llvm.loop !85

187:                                              ; preds = %96, %4, %4, %4, %4, %4, %4, %150, %185, %133, %165, %111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_operand_costs(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [30 x ptr], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #18
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !79
  %7 = sext i8 %6 to i32
  %8 = icmp sgt i8 %6, 0
  br i1 %8, label %9, label %86

9:                                                ; preds = %2
  %10 = zext nneg i32 %7 to i64
  %11 = shl nuw nsw i64 %10, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %11, i1 false), !tbaa !5
  %12 = shl nuw nsw i64 %10, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 0), i64 %12, i1 false), !tbaa !9
  br label %16

13:                                               ; preds = %50
  %14 = sext i8 %52 to i32
  %15 = icmp sgt i8 %52, 1
  br i1 %15, label %55, label %86

16:                                               ; preds = %9, %50
  %17 = phi i64 [ 0, %9 ], [ %51, %50 ]
  %18 = getelementptr inbounds ptr, ptr @op_costs, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load ptr, ptr @init_cost, align 8, !tbaa !5
  %21 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %22 = sext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %22, i1 false)
  %23 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %17
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  store ptr %30, ptr %23, align 8, !tbaa !5
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %16
  %33 = phi i32 [ %31, %28 ], [ %25, %16 ]
  %34 = phi ptr [ %30, %28 ], [ %24, %16 ]
  %35 = and i32 %33, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = load i32, ptr @frequency, align 4, !tbaa !9
  %41 = shl nsw i32 %40, 1
  tail call fastcc void @record_address_regs(ptr noundef %39, i32 noundef 0, i32 noundef %41) #16
  br label %50

42:                                               ; preds = %32
  %43 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %17
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = load i8, ptr %44, align 1, !tbaa !40
  %46 = icmp eq i8 %45, 112
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, ptr @frequency, align 4, !tbaa !9
  %49 = shl nsw i32 %48, 1
  tail call fastcc void @record_address_regs(ptr noundef nonnull %34, i32 noundef 0, i32 noundef %49) #16
  br label %50

50:                                               ; preds = %37, %47, %42
  %51 = add nuw nsw i64 %17, 1
  %52 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !79
  %53 = sext i8 %52 to i64
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %16, label %13, !llvm.loop !86

55:                                               ; preds = %13, %79
  %56 = phi i8 [ %81, %79 ], [ %52, %13 ]
  %57 = phi i64 [ %80, %79 ], [ 0, %13 ]
  %58 = phi i32 [ %82, %79 ], [ %14, %13 ]
  %59 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = load i8, ptr %60, align 1, !tbaa !40
  %62 = icmp eq i8 %61, 37
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = add nuw nsw i64 %57, 1
  br label %79

65:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #18
  %66 = icmp sgt i32 %58, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = zext nneg i32 %58 to i64
  %69 = shl nuw nsw i64 %68, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 16 %3, i64 %69, i1 false), !tbaa !5
  br label %70

70:                                               ; preds = %67, %65
  %71 = add nuw nsw i64 %57, 1
  %72 = getelementptr inbounds [30 x ptr], ptr %3, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %57
  store ptr %73, ptr %74, align 8, !tbaa !5
  %75 = getelementptr inbounds [30 x ptr], ptr %5, i64 0, i64 %71
  store ptr %60, ptr %75, align 8, !tbaa !5
  %76 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !87
  %77 = sext i8 %76 to i32
  call fastcc void @record_reg_classes(i32 noundef %77, i32 noundef %58, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #18
  %78 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !79
  br label %79

79:                                               ; preds = %63, %70
  %80 = phi i64 [ %64, %63 ], [ %71, %70 ]
  %81 = phi i8 [ %56, %63 ], [ %78, %70 ]
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %55, label %86, !llvm.loop !88

86:                                               ; preds = %79, %2, %13
  %87 = phi i32 [ %14, %13 ], [ %7, %2 ], [ %82, %79 ]
  %88 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !87
  %89 = sext i8 %88 to i32
  call fastcc void @record_reg_classes(i32 noundef %89, i32 noundef %87, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #12 {
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
define internal fastcc zeroext i8 @ok_for_index_p_nonstrict(ptr nocapture noundef readonly %0) unnamed_addr #12 {
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
  %10 = load ptr, ptr @reg_renumber, align 8, !tbaa !5
  %11 = getelementptr inbounds i16, ptr %10, i64 %6
  %12 = load i16, ptr %11, align 2, !tbaa !53
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
define internal fastcc i32 @ira_get_may_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  br label %10

10:                                               ; preds = %9, %4
  %11 = icmp eq i8 %3, 0
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = select i1 %11, ptr @ira_may_move_out_cost, ptr @ira_may_move_in_cost
  %15 = getelementptr inbounds [87 x ptr], ptr %14, i64 0, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds [27 x i16], ptr %16, i64 %12, i64 %13
  %18 = load i16, ptr %17, align 2, !tbaa !53
  %19 = zext i16 %18 to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 noundef %0) unnamed_addr #12 {
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
  %11 = load ptr, ptr @reg_renumber, align 8, !tbaa !5
  %12 = getelementptr inbounds i16, ptr %11, i64 %4
  %13 = load i16, ptr %12, align 2, !tbaa !53
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
define internal fastcc void @record_reg_classes(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef readonly %5) unnamed_addr #2 {
  %7 = alloca [30 x i32], align 16
  %8 = alloca [30 x i32], align 16
  %9 = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #18
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = zext nneg i32 %1 to i64
  %13 = shl nuw nsw i64 %12, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 0, i64 %13, i1 false), !tbaa !9
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp sgt i32 %0, 0
  br i1 %15, label %16, label %602

16:                                               ; preds = %14
  %17 = icmp eq ptr %5, null
  %18 = zext nneg i32 %1 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %16, %599
  %21 = phi i32 [ 0, %16 ], [ %600, %599 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #18
  br i1 %10, label %22, label %599

22:                                               ; preds = %20, %547
  %23 = phi i64 [ %550, %547 ], [ 0, %20 ]
  %24 = phi i32 [ %549, %547 ], [ 0, %20 ]
  %25 = phi i32 [ %548, %547 ], [ 0, %20 ]
  %26 = getelementptr inbounds ptr, ptr %3, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds ptr, ptr @recog_data, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds i32, ptr %2, i64 %23
  %31 = load i32, ptr %30, align 4, !tbaa !9
  %32 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %23
  store i32 0, ptr %32, align 4, !tbaa !9
  %33 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %23
  store i32 0, ptr %33, align 4, !tbaa !9
  %34 = load i8, ptr %27, align 1, !tbaa !40
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load i32, ptr %29, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %547

40:                                               ; preds = %36
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %42 = icmp ugt i32 %41, 52
  br i1 %42, label %43, label %547

43:                                               ; preds = %40
  %44 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = load i32, ptr @struct_costs_size, align 4, !tbaa !9
  %47 = sext i32 %46 to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %45, i8 0, i64 %47, i1 false)
  br label %547

48:                                               ; preds = %22, %51
  %49 = phi i8 [ %53, %51 ], [ %34, %22 ]
  %50 = phi ptr [ %52, %51 ], [ %27, %22 ]
  switch i8 %49, label %54 [
    i8 37, label %51
    i8 61, label %51
    i8 43, label %51
    i8 38, label %51
  ]

51:                                               ; preds = %48, %48, %48, %48
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !40
  br label %48, !llvm.loop !89

54:                                               ; preds = %48
  %55 = icmp slt i8 %49, 48
  %56 = add nuw nsw i64 %23, 48
  %57 = zext nneg i8 %49 to i64
  %58 = icmp ult i64 %56, %57
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %227, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %50, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !40
  switch i8 %62, label %227 [
    i8 44, label %63
    i8 0, label %63
  ]

63:                                               ; preds = %60, %60
  %64 = zext nneg i8 %49 to i64
  %65 = add nsw i64 %64, -48
  %66 = getelementptr inbounds [30 x i32], ptr %8, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !9
  store i32 %67, ptr %32, align 4, !tbaa !9
  %68 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !9
  store i32 %69, ptr %33, align 4, !tbaa !9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  store i32 1, ptr %72, align 4, !tbaa !9
  br label %73

73:                                               ; preds = %71, %63
  %74 = load i32, ptr %29, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %79 = icmp ult i32 %78, 53
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %73
  %81 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = tail call i32 @rtx_equal_p(ptr noundef %82, ptr noundef nonnull %29) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %227

85:                                               ; preds = %80
  %86 = icmp eq i32 %67, 0
  br i1 %86, label %227, label %222

87:                                               ; preds = %77
  %88 = getelementptr inbounds ptr, ptr @recog_data, i64 %65
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %89) #16
  %95 = icmp ult i32 %94, 53
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %87
  %97 = icmp eq i32 %67, 0
  br i1 %97, label %227, label %222

98:                                               ; preds = %93
  %99 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %105

105:                                              ; preds = %103, %119
  %106 = phi i64 [ 0, %103 ], [ %126, %119 ]
  %107 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %108 = getelementptr inbounds i32, ptr %107, i64 %106
  %109 = load i32, ptr %108, align 4, !tbaa !9
  %110 = load i32, ptr %104, align 4, !tbaa !9
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %109, i32 noundef %67, i8 noundef zeroext 1) #16, !range !83
  %114 = load i32, ptr %104, align 4, !tbaa !9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %105, %112
  %117 = phi i32 [ %113, %112 ], [ 0, %105 ]
  %118 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %67, i32 noundef %109, i8 noundef zeroext 0) #16, !range !83
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi i32 [ %117, %116 ], [ %113, %112 ]
  %121 = phi i32 [ %118, %116 ], [ 0, %112 ]
  %122 = add nuw nsw i32 %121, %120
  %123 = load i32, ptr @frequency, align 4, !tbaa !9
  %124 = mul nsw i32 %122, %123
  %125 = getelementptr inbounds %struct.costs, ptr %100, i64 0, i32 1, i64 %106
  store i32 %124, ptr %125, align 4, !tbaa !9
  %126 = add nuw nsw i64 %106, 1
  %127 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %105, label %130, !llvm.loop !90

130:                                              ; preds = %119, %98
  %131 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %132 = load i32, ptr %131, align 4, !tbaa !9
  %133 = icmp eq i32 %132, 0
  %134 = zext i32 %31 to i64
  %135 = zext i32 %67 to i64
  br i1 %133, label %141, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135
  %138 = load i16, ptr %137, align 4, !tbaa !53
  %139 = sext i16 %138 to i32
  %140 = icmp eq i32 %132, 1
  br i1 %140, label %146, label %141

141:                                              ; preds = %130, %136
  %142 = phi i32 [ %139, %136 ], [ 0, %130 ]
  %143 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %134, i64 %135, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !53
  %145 = sext i16 %144 to i32
  br label %146

146:                                              ; preds = %136, %141
  %147 = phi i32 [ %142, %141 ], [ %139, %136 ]
  %148 = phi i32 [ %145, %141 ], [ 0, %136 ]
  %149 = sub i32 %147, %69
  %150 = add i32 %149, %148
  %151 = load i32, ptr @frequency, align 4, !tbaa !9
  %152 = mul nsw i32 %150, %151
  store i32 %152, ptr %100, align 4, !tbaa !11
  br i1 %17, label %199, label %153

153:                                              ; preds = %146
  %154 = load i1, ptr @allocno_p, align 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %153
  %156 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %157 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !5
  %161 = load i32, ptr %160, align 8, !tbaa !21
  br label %164

162:                                              ; preds = %153
  %163 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  br label %164

164:                                              ; preds = %162, %155
  %165 = phi i32 [ %161, %155 ], [ %163, %162 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, ptr %5, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !9
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %164
  %171 = load i32, ptr %131, align 4, !tbaa !9
  %172 = icmp eq i32 %171, 0
  %173 = zext i32 %31 to i64
  %174 = zext i32 %67 to i64
  br i1 %172, label %180, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174
  %177 = load i16, ptr %176, align 4, !tbaa !53
  %178 = sext i16 %177 to i32
  %179 = icmp eq i32 %171, 1
  br i1 %179, label %185, label %180

180:                                              ; preds = %170, %175
  %181 = phi i32 [ %178, %175 ], [ 0, %170 ]
  %182 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %173, i64 %174, i64 1
  %183 = load i16, ptr %182, align 2, !tbaa !53
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
  %194 = load i32, ptr %193, align 4, !tbaa !9
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %168, i32 noundef %67) #16, !range !83
  %198 = add nsw i32 %197, %25
  br label %199

199:                                              ; preds = %185, %196, %190, %146
  %200 = phi i32 [ %25, %146 ], [ %189, %185 ], [ %198, %196 ], [ %25, %190 ]
  %201 = load ptr, ptr %28, align 8, !tbaa !5
  %202 = tail call fastcc i32 @rhs_regno(ptr noundef %201) #16
  %203 = load ptr, ptr %88, align 8, !tbaa !5
  %204 = tail call fastcc i32 @rhs_regno(ptr noundef %203) #16
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %211, label %206

206:                                              ; preds = %199
  %207 = tail call ptr @find_reg_note(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %29) #17
  %208 = icmp eq ptr %207, null
  %209 = add nsw i32 %200, 2
  %210 = select i1 %208, i32 %209, i32 %200
  br label %211

211:                                              ; preds = %206, %199
  %212 = phi i32 [ %200, %199 ], [ %210, %206 ]
  br label %213

213:                                              ; preds = %217, %211
  %214 = phi ptr [ %50, %211 ], [ %218, %217 ]
  %215 = load i8, ptr %214, align 1, !tbaa !40
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds i8, ptr %214, i64 1
  %219 = icmp eq i8 %215, 44
  br i1 %219, label %220, label %213, !llvm.loop !91

220:                                              ; preds = %213, %217
  %221 = phi ptr [ %218, %217 ], [ %214, %213 ]
  store ptr %221, ptr %26, align 8, !tbaa !5
  br label %547

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
  %233 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %23
  %234 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  br label %235

235:                                              ; preds = %379, %227
  %236 = phi i32 [ %228, %227 ], [ %380, %379 ]
  %237 = phi i32 [ %229, %227 ], [ %381, %379 ]
  %238 = phi i32 [ %230, %227 ], [ %382, %379 ]
  %239 = phi i32 [ 0, %227 ], [ %383, %379 ]
  %240 = phi ptr [ %50, %227 ], [ %388, %379 ]
  %241 = phi i32 [ %231, %227 ], [ %386, %379 ]
  %242 = load i8, ptr %240, align 1, !tbaa !40
  switch i8 %242, label %363 [
    i8 0, label %390
    i8 44, label %379
    i8 42, label %245
    i8 63, label %248
    i8 33, label %379
    i8 35, label %379
    i8 38, label %379
    i8 48, label %379
    i8 49, label %379
    i8 50, label %379
    i8 51, label %379
    i8 52, label %379
    i8 53, label %379
    i8 54, label %379
    i8 55, label %379
    i8 56, label %379
    i8 57, label %379
    i8 112, label %250
    i8 109, label %258
    i8 111, label %258
    i8 86, label %258
    i8 60, label %263
    i8 62, label %272
    i8 69, label %281
    i8 70, label %281
    i8 71, label %292
    i8 72, label %292
    i8 115, label %301
    i8 105, label %243
    i8 110, label %321
    i8 73, label %328
    i8 74, label %328
    i8 75, label %328
    i8 76, label %328
    i8 77, label %328
    i8 78, label %328
    i8 79, label %328
    i8 80, label %328
    i8 88, label %338
    i8 103, label %339
    i8 114, label %357
  ]

243:                                              ; preds = %235
  %244 = load i32, ptr %29, align 8
  br label %307

245:                                              ; preds = %235
  %246 = getelementptr inbounds i8, ptr %240, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !40
  br label %379

248:                                              ; preds = %235
  %249 = add nsw i32 %241, 2
  br label %379

250:                                              ; preds = %235
  %251 = load i32, ptr %29, align 8
  %252 = lshr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = tail call i32 @address_operand(ptr noundef nonnull %29, i32 noundef %253) #17
  %255 = zext i32 %237 to i64
  %256 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %255, i64 13
  %257 = load i32, ptr %256, align 4, !tbaa !9
  store i32 %257, ptr %32, align 4, !tbaa !9
  br label %379

258:                                              ; preds = %235, %235, %235
  store i32 1, ptr %33, align 4, !tbaa !9
  store i32 1, ptr %233, align 4, !tbaa !9
  %259 = load i32, ptr %29, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 43
  %262 = select i1 %261, i32 1, i32 %238
  br label %379

263:                                              ; preds = %235
  %264 = load i32, ptr %29, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 43
  br i1 %266, label %267, label %379

267:                                              ; preds = %263
  %268 = load ptr, ptr %234, align 8, !tbaa !40
  %269 = load i32, ptr %268, align 8
  %270 = trunc i32 %269 to i16
  switch i16 %270, label %379 [
    i16 74, label %271
    i16 76, label %271
  ]

271:                                              ; preds = %267, %267
  br label %379

272:                                              ; preds = %235
  %273 = load i32, ptr %29, align 8
  %274 = and i32 %273, 65535
  %275 = icmp eq i32 %274, 43
  br i1 %275, label %276, label %379

276:                                              ; preds = %272
  %277 = load ptr, ptr %234, align 8, !tbaa !40
  %278 = load i32, ptr %277, align 8
  %279 = trunc i32 %278 to i16
  switch i16 %279, label %379 [
    i16 75, label %280
    i16 77, label %280
  ]

280:                                              ; preds = %276, %276
  br label %379

281:                                              ; preds = %235, %235
  %282 = load i32, ptr %29, align 8
  %283 = trunc i32 %282 to i16
  switch i16 %283, label %379 [
    i16 32, label %291
    i16 33, label %284
  ]

284:                                              ; preds = %281
  %285 = lshr i32 %282, 16
  %286 = and i32 %285, 255
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !40
  %290 = icmp eq i8 %289, 17
  br i1 %290, label %291, label %379

291:                                              ; preds = %281, %284
  br label %379

292:                                              ; preds = %235, %235
  %293 = load i32, ptr %29, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 32
  br i1 %295, label %296, label %379

296:                                              ; preds = %292
  %297 = tail call i32 @lookup_constraint(ptr noundef nonnull %240) #17
  %298 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %29, i32 noundef %297) #17
  %299 = icmp eq i8 %298, 0
  %300 = select i1 %299, i32 %238, i32 1
  br label %379

301:                                              ; preds = %235
  %302 = load i32, ptr %29, align 8
  %303 = trunc i32 %302 to i16
  switch i16 %303, label %307 [
    i16 30, label %379
    i16 32, label %304
  ]

304:                                              ; preds = %301
  %305 = and i32 %302, 16711680
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %379, label %307

307:                                              ; preds = %243, %301, %304
  %308 = phi i32 [ %244, %243 ], [ %302, %301 ], [ %302, %304 ]
  %309 = and i32 %308, 65535
  %310 = zext nneg i32 %309 to i64
  %311 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !9
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %314, label %379

314:                                              ; preds = %307
  %315 = load i32, ptr @flag_pic, align 4, !tbaa !9
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %29) #17
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %379, label %320

320:                                              ; preds = %317, %314
  br label %379

321:                                              ; preds = %235
  %322 = load i32, ptr %29, align 8
  %323 = trunc i32 %322 to i16
  switch i16 %323, label %379 [
    i16 30, label %327
    i16 32, label %324
  ]

324:                                              ; preds = %321
  %325 = and i32 %322, 16711680
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %379

327:                                              ; preds = %321, %324
  br label %379

328:                                              ; preds = %235, %235, %235, %235, %235, %235, %235, %235
  %329 = load i32, ptr %29, align 8
  %330 = and i32 %329, 65535
  %331 = icmp eq i32 %330, 30
  br i1 %331, label %332, label %379

332:                                              ; preds = %328
  %333 = load i64, ptr %234, align 8, !tbaa !40
  %334 = tail call i32 @lookup_constraint(ptr noundef nonnull %240) #17
  %335 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %333, i32 noundef %334) #17
  %336 = icmp eq i8 %335, 0
  %337 = select i1 %336, i32 %238, i32 1
  br label %379

338:                                              ; preds = %235
  br label %379

339:                                              ; preds = %235
  %340 = load i32, ptr %29, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 43
  br i1 %342, label %354, label %343

343:                                              ; preds = %339
  %344 = zext nneg i32 %341 to i64
  %345 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %344
  %346 = load i32, ptr %345, align 4, !tbaa !9
  %347 = icmp eq i32 %346, 9
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load i32, ptr @flag_pic, align 4, !tbaa !9
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %29) #17
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %351, %348, %339
  br label %355

355:                                              ; preds = %354, %351, %343
  %356 = phi i32 [ 1, %354 ], [ %238, %351 ], [ %238, %343 ]
  store i32 1, ptr %33, align 4, !tbaa !9
  store i32 1, ptr %233, align 4, !tbaa !9
  br label %357

357:                                              ; preds = %235, %355
  %358 = phi i32 [ 1, %355 ], [ %236, %235 ]
  %359 = phi i32 [ %356, %355 ], [ %238, %235 ]
  %360 = zext i32 %237 to i64
  %361 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %360, i64 13
  %362 = load i32, ptr %361, align 4, !tbaa !9
  store i32 %362, ptr %32, align 4, !tbaa !9
  br label %379

363:                                              ; preds = %235
  %364 = tail call i32 @lookup_constraint(ptr noundef nonnull %240) #17
  %365 = tail call i32 @regclass_for_constraint(i32 noundef %364) #17
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %374, label %367

367:                                              ; preds = %363
  %368 = zext i32 %237 to i64
  %369 = tail call i32 @lookup_constraint(ptr noundef nonnull %240) #17
  %370 = tail call i32 @regclass_for_constraint(i32 noundef %369) #17
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_union, i64 0, i64 %368, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !9
  store i32 %373, ptr %32, align 4, !tbaa !9
  br label %379

374:                                              ; preds = %363
  %375 = tail call i32 @lookup_constraint(ptr noundef nonnull %240) #17
  %376 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %29, i32 noundef %375) #17
  %377 = icmp eq i8 %376, 0
  %378 = select i1 %377, i32 %238, i32 1
  br label %379

379:                                              ; preds = %374, %332, %296, %258, %321, %301, %281, %276, %267, %235, %235, %235, %235, %235, %235, %235, %235, %235, %235, %235, %235, %235, %235, %367, %328, %324, %327, %307, %317, %320, %304, %292, %284, %291, %272, %280, %263, %271, %248, %357, %338, %250, %245
  %380 = phi i32 [ %236, %367 ], [ %358, %357 ], [ %236, %338 ], [ %236, %328 ], [ %236, %327 ], [ %236, %324 ], [ %236, %320 ], [ %236, %317 ], [ %236, %307 ], [ %236, %301 ], [ %236, %304 ], [ %236, %292 ], [ %236, %291 ], [ %236, %284 ], [ %236, %280 ], [ %236, %272 ], [ %236, %271 ], [ %236, %263 ], [ %236, %250 ], [ %236, %248 ], [ %236, %245 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ %236, %235 ], [ 1, %258 ], [ %236, %267 ], [ %236, %276 ], [ %236, %281 ], [ %236, %296 ], [ %236, %321 ], [ %236, %332 ], [ %236, %374 ]
  %381 = phi i32 [ %373, %367 ], [ %362, %357 ], [ %237, %338 ], [ %237, %328 ], [ %237, %327 ], [ %237, %324 ], [ %237, %320 ], [ %237, %317 ], [ %237, %307 ], [ %237, %301 ], [ %237, %304 ], [ %237, %292 ], [ %237, %291 ], [ %237, %284 ], [ %237, %280 ], [ %237, %272 ], [ %237, %271 ], [ %237, %263 ], [ %257, %250 ], [ %237, %248 ], [ %237, %245 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %235 ], [ %237, %258 ], [ %237, %267 ], [ %237, %276 ], [ %237, %281 ], [ %237, %296 ], [ %237, %321 ], [ %237, %332 ], [ %237, %374 ]
  %382 = phi i32 [ %238, %367 ], [ %359, %357 ], [ 1, %338 ], [ %238, %328 ], [ 1, %327 ], [ %238, %324 ], [ 1, %320 ], [ %238, %317 ], [ %238, %307 ], [ %238, %301 ], [ %238, %304 ], [ %238, %292 ], [ 1, %291 ], [ %238, %284 ], [ 1, %280 ], [ %238, %272 ], [ 1, %271 ], [ %238, %263 ], [ %254, %250 ], [ %238, %248 ], [ %238, %245 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %238, %235 ], [ %262, %258 ], [ %238, %267 ], [ %238, %276 ], [ %238, %281 ], [ %300, %296 ], [ %238, %321 ], [ %337, %332 ], [ %378, %374 ]
  %383 = phi i32 [ %239, %367 ], [ %239, %357 ], [ %239, %338 ], [ %239, %328 ], [ %239, %327 ], [ %239, %324 ], [ %239, %320 ], [ %239, %317 ], [ %239, %307 ], [ %239, %301 ], [ %239, %304 ], [ %239, %292 ], [ %239, %291 ], [ %239, %284 ], [ %239, %280 ], [ %239, %272 ], [ %239, %271 ], [ %239, %263 ], [ 1, %250 ], [ %239, %248 ], [ %239, %245 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %235 ], [ %239, %258 ], [ %239, %267 ], [ %239, %276 ], [ %239, %281 ], [ %239, %296 ], [ %239, %321 ], [ %239, %332 ], [ %239, %374 ]
  %384 = phi ptr [ %240, %367 ], [ %240, %357 ], [ %240, %338 ], [ %240, %328 ], [ %240, %327 ], [ %240, %324 ], [ %240, %320 ], [ %240, %317 ], [ %240, %307 ], [ %240, %301 ], [ %240, %304 ], [ %240, %292 ], [ %240, %291 ], [ %240, %284 ], [ %240, %280 ], [ %240, %272 ], [ %240, %271 ], [ %240, %263 ], [ %240, %250 ], [ %240, %248 ], [ %246, %245 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %235 ], [ %240, %258 ], [ %240, %267 ], [ %240, %276 ], [ %240, %281 ], [ %240, %296 ], [ %240, %321 ], [ %240, %332 ], [ %240, %374 ]
  %385 = phi i8 [ %242, %367 ], [ %242, %357 ], [ 88, %338 ], [ %242, %328 ], [ 110, %327 ], [ 110, %324 ], [ %242, %320 ], [ %242, %317 ], [ %242, %307 ], [ 115, %301 ], [ 115, %304 ], [ %242, %292 ], [ %242, %291 ], [ %242, %284 ], [ 62, %280 ], [ 62, %272 ], [ 60, %271 ], [ 60, %263 ], [ 112, %250 ], [ 63, %248 ], [ %247, %245 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %235 ], [ %242, %258 ], [ 60, %267 ], [ 62, %276 ], [ %242, %281 ], [ %242, %296 ], [ 110, %321 ], [ %242, %332 ], [ %242, %374 ]
  %386 = phi i32 [ %241, %367 ], [ %241, %357 ], [ %241, %338 ], [ %241, %328 ], [ %241, %327 ], [ %241, %324 ], [ %241, %320 ], [ %241, %317 ], [ %241, %307 ], [ %241, %301 ], [ %241, %304 ], [ %241, %292 ], [ %241, %291 ], [ %241, %284 ], [ %241, %280 ], [ %241, %272 ], [ %241, %271 ], [ %241, %263 ], [ %241, %250 ], [ %249, %248 ], [ %241, %245 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %235 ], [ %241, %258 ], [ %241, %267 ], [ %241, %276 ], [ %241, %281 ], [ %241, %296 ], [ %241, %321 ], [ %241, %332 ], [ %241, %374 ]
  %387 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %385) #16
  %388 = getelementptr inbounds i8, ptr %384, i64 %387
  %389 = icmp eq i8 %385, 44
  br i1 %389, label %390, label %235, !llvm.loop !92

390:                                              ; preds = %235, %379
  %391 = phi i32 [ %380, %379 ], [ %236, %235 ]
  %392 = phi i32 [ %381, %379 ], [ %237, %235 ]
  %393 = phi i32 [ %382, %379 ], [ %238, %235 ]
  %394 = phi i32 [ %383, %379 ], [ %239, %235 ]
  %395 = phi ptr [ %388, %379 ], [ %240, %235 ]
  %396 = phi i32 [ %386, %379 ], [ %241, %235 ]
  store ptr %395, ptr %26, align 8, !tbaa !5
  %397 = load i32, ptr %29, align 8
  %398 = and i32 %397, 65535
  %399 = icmp eq i32 %398, 37
  br i1 %399, label %400, label %508

400:                                              ; preds = %390
  %401 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %29) #16
  %402 = icmp ugt i32 %401, 52
  br i1 %402, label %403, label %506

403:                                              ; preds = %400
  %404 = icmp eq i32 %392, 0
  br i1 %404, label %547, label %405

405:                                              ; preds = %403
  %406 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %23
  %407 = load ptr, ptr %406, align 8, !tbaa !5
  %408 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %437

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  br label %412

412:                                              ; preds = %410, %426
  %413 = phi i64 [ 0, %410 ], [ %433, %426 ]
  %414 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  %415 = getelementptr inbounds i32, ptr %414, i64 %413
  %416 = load i32, ptr %415, align 4, !tbaa !9
  %417 = load i32, ptr %411, align 4, !tbaa !9
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %423, label %419

419:                                              ; preds = %412
  %420 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %416, i32 noundef %392, i8 noundef zeroext 1) #16, !range !83
  %421 = load i32, ptr %411, align 4, !tbaa !9
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %412, %419
  %424 = phi i32 [ %420, %419 ], [ 0, %412 ]
  %425 = tail call fastcc i32 @ira_get_may_move_cost(i32 noundef %31, i32 noundef %392, i32 noundef %416, i8 noundef zeroext 0) #16, !range !83
  br label %426

426:                                              ; preds = %419, %423
  %427 = phi i32 [ %424, %423 ], [ %420, %419 ]
  %428 = phi i32 [ %425, %423 ], [ 0, %419 ]
  %429 = add nuw nsw i32 %428, %427
  %430 = load i32, ptr @frequency, align 4, !tbaa !9
  %431 = mul nsw i32 %429, %430
  %432 = getelementptr inbounds %struct.costs, ptr %407, i64 0, i32 1, i64 %413
  store i32 %431, ptr %432, align 4, !tbaa !9
  %433 = add nuw nsw i64 %413, 1
  %434 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %435 = sext i32 %434 to i64
  %436 = icmp slt i64 %433, %435
  br i1 %436, label %412, label %437, !llvm.loop !93

437:                                              ; preds = %426, %405
  %438 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %439 = load i32, ptr %438, align 4, !tbaa !9
  %440 = icmp eq i32 %439, 0
  %441 = zext i32 %31 to i64
  %442 = zext i32 %392 to i64
  br i1 %440, label %448, label %443

443:                                              ; preds = %437
  %444 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %441, i64 %442
  %445 = load i16, ptr %444, align 4, !tbaa !53
  %446 = sext i16 %445 to i32
  %447 = icmp eq i32 %439, 1
  br i1 %447, label %453, label %448

448:                                              ; preds = %437, %443
  %449 = phi i32 [ %446, %443 ], [ 0, %437 ]
  %450 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %441, i64 %442, i64 1
  %451 = load i16, ptr %450, align 2, !tbaa !53
  %452 = sext i16 %451 to i32
  br label %453

453:                                              ; preds = %443, %448
  %454 = phi i32 [ %449, %448 ], [ %446, %443 ]
  %455 = phi i32 [ %452, %448 ], [ 0, %443 ]
  %456 = add nsw i32 %455, %454
  %457 = sub i32 %456, %391
  %458 = load i32, ptr @frequency, align 4, !tbaa !9
  %459 = mul nsw i32 %457, %458
  store i32 %459, ptr %407, align 4, !tbaa !11
  br i1 %17, label %547, label %460

460:                                              ; preds = %453
  %461 = load i1, ptr @allocno_p, align 1
  br i1 %461, label %462, label %469

462:                                              ; preds = %460
  %463 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %464 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !5
  %468 = load i32, ptr %467, align 8, !tbaa !21
  br label %471

469:                                              ; preds = %460
  %470 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #16
  br label %471

471:                                              ; preds = %469, %462
  %472 = phi i32 [ %468, %462 ], [ %470, %469 ]
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, ptr %5, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !9
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %497

477:                                              ; preds = %471
  %478 = load i32, ptr %438, align 4, !tbaa !9
  %479 = icmp eq i32 %478, 0
  %480 = zext i32 %31 to i64
  %481 = zext i32 %392 to i64
  br i1 %479, label %487, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %480, i64 %481
  %484 = load i16, ptr %483, align 4, !tbaa !53
  %485 = sext i16 %484 to i32
  %486 = icmp eq i32 %478, 1
  br i1 %486, label %492, label %487

487:                                              ; preds = %477, %482
  %488 = phi i32 [ %485, %482 ], [ 0, %477 ]
  %489 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %480, i64 %481, i64 1
  %490 = load i16, ptr %489, align 2, !tbaa !53
  %491 = sext i16 %490 to i32
  br label %492

492:                                              ; preds = %482, %487
  %493 = phi i32 [ %488, %487 ], [ %485, %482 ]
  %494 = phi i32 [ %491, %487 ], [ 0, %482 ]
  %495 = add i32 %493, %396
  %496 = add i32 %495, %494
  br label %547

497:                                              ; preds = %471
  %498 = zext i32 %475 to i64
  %499 = zext i32 %392 to i64
  %500 = getelementptr inbounds [27 x [27 x i32]], ptr @ira_reg_class_intersect, i64 0, i64 %498, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !9
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %547

503:                                              ; preds = %497
  %504 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %31, i32 noundef %475, i32 noundef %392) #16, !range !83
  %505 = add nsw i32 %504, %396
  br label %547

506:                                              ; preds = %400
  %507 = icmp eq i32 %393, 0
  br i1 %507, label %510, label %547

508:                                              ; preds = %390
  %509 = icmp eq i32 %393, 0
  br i1 %509, label %515, label %547

510:                                              ; preds = %506
  %511 = lshr i32 %397, 16
  %512 = and i32 %511, 255
  %513 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %29, i32 noundef %392, i32 noundef 0, i32 noundef %512) #17
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %547

515:                                              ; preds = %508, %510
  %516 = icmp eq i32 %392, 0
  br i1 %516, label %530, label %517

517:                                              ; preds = %515
  %518 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %23
  %519 = load i32, ptr %518, align 4, !tbaa !9
  %520 = icmp eq i32 %519, 1
  br i1 %520, label %526, label %521

521:                                              ; preds = %517
  %522 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %392, i8 noundef zeroext 1, ptr noundef null) #16
  %523 = add nsw i32 %522, %396
  %524 = load i32, ptr %518, align 4, !tbaa !9
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %547, label %526

526:                                              ; preds = %517, %521
  %527 = phi i32 [ %523, %521 ], [ %396, %517 ]
  %528 = tail call fastcc i32 @copy_cost(ptr noundef nonnull %29, i32 noundef %31, i32 noundef %392, i8 noundef zeroext 0, ptr noundef null) #16
  %529 = add nsw i32 %528, %527
  br label %547

530:                                              ; preds = %515
  %531 = load i32, ptr %29, align 8
  %532 = and i32 %531, 65535
  %533 = zext nneg i32 %532 to i64
  %534 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !9
  %536 = icmp eq i32 %535, 9
  br i1 %536, label %537, label %547

537:                                              ; preds = %530
  %538 = icmp eq i32 %394, 0
  %539 = icmp eq i32 %391, 0
  %540 = select i1 %538, i1 %539, i1 false
  br i1 %540, label %547, label %541

541:                                              ; preds = %537
  %542 = zext i32 %31 to i64
  %543 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %542, i64 0, i64 1
  %544 = load i16, ptr %543, align 2, !tbaa !53
  %545 = sext i16 %544 to i32
  %546 = add nsw i32 %396, %545
  br label %547

547:                                              ; preds = %537, %508, %526, %521, %541, %506, %510, %403, %492, %503, %497, %453, %530, %36, %40, %43, %220
  %548 = phi i32 [ %212, %220 ], [ %25, %43 ], [ %25, %40 ], [ %25, %36 ], [ %396, %506 ], [ %396, %510 ], [ %529, %526 ], [ %523, %521 ], [ %546, %541 ], [ %396, %403 ], [ %396, %453 ], [ %496, %492 ], [ %505, %503 ], [ %396, %497 ], [ %396, %530 ], [ %396, %508 ], [ %396, %537 ]
  %549 = phi i32 [ %24, %220 ], [ %24, %43 ], [ %24, %40 ], [ %24, %36 ], [ %232, %506 ], [ %232, %510 ], [ %232, %526 ], [ %232, %521 ], [ %232, %541 ], [ 1, %403 ], [ %232, %453 ], [ %232, %492 ], [ %232, %503 ], [ %232, %497 ], [ 1, %530 ], [ %232, %508 ], [ 1, %537 ]
  %550 = add nuw nsw i64 %23, 1
  %551 = icmp eq i64 %550, %18
  br i1 %551, label %552, label %22, !llvm.loop !94

552:                                              ; preds = %547
  %553 = icmp eq i32 %549, 0
  br i1 %553, label %554, label %599

554:                                              ; preds = %552
  %555 = load i32, ptr @frequency, align 4, !tbaa !9
  %556 = mul nsw i32 %555, %548
  br i1 %10, label %557, label %599

557:                                              ; preds = %554
  %558 = load i32, ptr @cost_classes_num, align 4
  %559 = icmp sgt i32 %558, 0
  %560 = zext nneg i32 %558 to i64
  br label %561

561:                                              ; preds = %557, %596
  %562 = phi i64 [ 0, %557 ], [ %597, %596 ]
  %563 = getelementptr inbounds ptr, ptr @recog_data, i64 %562
  %564 = load ptr, ptr %563, align 8, !tbaa !5
  %565 = load i32, ptr %564, align 8
  %566 = and i32 %565, 65535
  %567 = icmp eq i32 %566, 37
  br i1 %567, label %568, label %596

568:                                              ; preds = %561
  %569 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %564) #16
  %570 = icmp ugt i32 %569, 52
  br i1 %570, label %571, label %596

571:                                              ; preds = %568
  %572 = getelementptr inbounds ptr, ptr @op_costs, i64 %562
  %573 = load ptr, ptr %572, align 8, !tbaa !5
  %574 = getelementptr inbounds [30 x ptr], ptr @this_op_costs, i64 0, i64 %562
  %575 = load ptr, ptr %574, align 8, !tbaa !5
  %576 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %562
  %577 = load i32, ptr %576, align 4, !tbaa !9
  %578 = icmp eq i32 %577, 2
  %579 = load i32, ptr %573, align 4, !tbaa !11
  %580 = load i32, ptr %575, align 4, !tbaa !11
  %581 = add nsw i32 %580, %556
  %582 = zext i1 %578 to i32
  %583 = shl i32 %581, %582
  %584 = tail call i32 @llvm.smin.i32(i32 %579, i32 %583)
  store i32 %584, ptr %573, align 4, !tbaa !11
  br i1 %559, label %585, label %596

585:                                              ; preds = %571, %585
  %586 = phi i64 [ %594, %585 ], [ 0, %571 ]
  %587 = getelementptr inbounds %struct.costs, ptr %573, i64 0, i32 1, i64 %586
  %588 = load i32, ptr %587, align 4, !tbaa !9
  %589 = getelementptr inbounds %struct.costs, ptr %575, i64 0, i32 1, i64 %586
  %590 = load i32, ptr %589, align 4, !tbaa !9
  %591 = add nsw i32 %590, %556
  %592 = shl i32 %591, %582
  %593 = tail call i32 @llvm.smin.i32(i32 %588, i32 %592)
  store i32 %593, ptr %587, align 4, !tbaa !9
  %594 = add nuw nsw i64 %586, 1
  %595 = icmp eq i64 %594, %560
  br i1 %595, label %596, label %585, !llvm.loop !95

596:                                              ; preds = %585, %571, %561, %568
  %597 = add nuw nsw i64 %562, 1
  %598 = icmp eq i64 %597, %19
  br i1 %598, label %599, label %561, !llvm.loop !96

599:                                              ; preds = %596, %20, %554, %552
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #18
  %600 = add nuw nsw i32 %21, 1
  %601 = icmp eq i32 %600, %0
  br i1 %601, label %602, label %20, !llvm.loop !97

602:                                              ; preds = %599, %14
  %603 = load i1, ptr @allocno_p, align 1
  %604 = and i1 %603, %10
  br i1 %604, label %605, label %635

605:                                              ; preds = %602
  %606 = load ptr, ptr @ira_curr_regno_allocno_map, align 8
  %607 = zext nneg i32 %1 to i64
  br label %608

608:                                              ; preds = %605, %632
  %609 = phi i64 [ 0, %605 ], [ %633, %632 ]
  %610 = getelementptr inbounds ptr, ptr @recog_data, i64 %609
  %611 = load ptr, ptr %610, align 8, !tbaa !5
  %612 = load i32, ptr %611, align 8
  %613 = and i32 %612, 65535
  %614 = icmp eq i32 %613, 37
  br i1 %614, label %615, label %632

615:                                              ; preds = %608
  %616 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %611) #16
  %617 = icmp ult i32 %616, 53
  br i1 %617, label %632, label %618

618:                                              ; preds = %615
  %619 = zext i32 %616 to i64
  %620 = getelementptr inbounds ptr, ptr %606, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !5
  %622 = getelementptr inbounds %struct.ira_allocno, ptr %621, i64 0, i32 31
  %623 = load i16, ptr %622, align 4
  %624 = and i16 %623, 64
  %625 = icmp eq i16 %624, 0
  br i1 %625, label %626, label %632

626:                                              ; preds = %618
  %627 = getelementptr inbounds [30 x i32], ptr %7, i64 0, i64 %609
  %628 = load i32, ptr %627, align 4, !tbaa !9
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %632

630:                                              ; preds = %626
  %631 = or disjoint i16 %623, 64
  store i16 %631, ptr %622, align 4
  br label %632

632:                                              ; preds = %618, %626, %630, %608, %615
  %633 = add nuw nsw i64 %609, 1
  %634 = icmp eq i64 %633, %607
  br i1 %634, label %635, label %608, !llvm.loop !98

635:                                              ; preds = %632, %602
  %636 = load i32, ptr %4, align 8
  %637 = and i32 %636, 65535
  %638 = add nsw i32 %637, -7
  %639 = icmp ult i32 %638, 4
  br i1 %639, label %640, label %769

640:                                              ; preds = %635
  %641 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %642 = load ptr, ptr %641, align 8, !tbaa !40
  %643 = load i32, ptr %642, align 8
  %644 = and i32 %643, 65535
  %645 = icmp eq i32 %644, 23
  br i1 %645, label %649, label %646

646:                                              ; preds = %640
  %647 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %642) #17
  %648 = icmp eq ptr %647, null
  br i1 %648, label %769, label %649

649:                                              ; preds = %640, %646
  %650 = phi ptr [ %647, %646 ], [ %642, %640 ]
  %651 = load ptr, ptr @recog_data, align 8, !tbaa !5
  %652 = getelementptr inbounds %struct.rtx_def, ptr %650, i64 0, i32 1
  %653 = load ptr, ptr %652, align 8, !tbaa !40
  %654 = icmp eq ptr %651, %653
  br i1 %654, label %655, label %769

655:                                              ; preds = %649
  %656 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 0, i64 1), align 8, !tbaa !5
  %657 = getelementptr inbounds %struct.rtx_def, ptr %650, i64 0, i32 1, i32 0, i32 0, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !40
  %659 = icmp eq ptr %656, %658
  br i1 %659, label %660, label %769

660:                                              ; preds = %655
  %661 = load i32, ptr %651, align 8
  %662 = and i32 %661, 65535
  %663 = icmp eq i32 %662, 37
  br i1 %663, label %664, label %769

664:                                              ; preds = %660
  %665 = load i32, ptr %656, align 8
  %666 = and i32 %665, 65535
  %667 = icmp eq i32 %666, 37
  br i1 %667, label %668, label %769

668:                                              ; preds = %664
  %669 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %656) #16
  %670 = tail call ptr @find_regno_note(ptr noundef nonnull %4, i32 noundef 1, i32 noundef %669) #17
  %671 = icmp eq ptr %670, null
  br i1 %671, label %769, label %672

672:                                              ; preds = %668, %768
  %673 = phi i1 [ false, %768 ], [ true, %668 ]
  %674 = phi i64 [ 1, %768 ], [ 0, %668 ]
  %675 = getelementptr inbounds ptr, ptr @recog_data, i64 %674
  %676 = load ptr, ptr %675, align 8, !tbaa !5
  %677 = tail call fastcc i32 @rhs_regno(ptr noundef %676) #16
  %678 = icmp ugt i32 %677, 52
  br i1 %678, label %679, label %768

679:                                              ; preds = %672
  %680 = xor i64 %674, 1
  %681 = getelementptr inbounds ptr, ptr @recog_data, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !5
  %683 = tail call fastcc i32 @rhs_regno(ptr noundef %682) #16
  %684 = icmp ult i32 %683, 53
  %685 = load i32, ptr @cost_classes_num, align 4
  %686 = icmp sgt i32 %685, 0
  %687 = select i1 %684, i1 %686, i1 false
  br i1 %687, label %688, label %768

688:                                              ; preds = %679
  %689 = load i32, ptr %682, align 8
  %690 = lshr i32 %689, 16
  %691 = and i32 %690, 255
  %692 = zext nneg i32 %683 to i64
  %693 = shl nuw nsw i64 1, %692
  %694 = icmp eq i32 %691, 40
  %695 = zext nneg i32 %691 to i64
  %696 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %695
  %697 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %695
  %698 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %692, i64 %695
  %699 = getelementptr inbounds ptr, ptr @op_costs, i64 %674
  %700 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  br label %701

701:                                              ; preds = %688, %762
  %702 = phi ptr [ %700, %688 ], [ %763, %762 ]
  %703 = phi i64 [ 0, %688 ], [ %764, %762 ]
  %704 = getelementptr inbounds i32, ptr %702, i64 %703
  %705 = load i32, ptr %704, align 4, !tbaa !9
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %706
  %708 = load i64, ptr %707, align 8, !tbaa !55
  %709 = and i64 %708, %693
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %762, label %711

711:                                              ; preds = %701
  %712 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %706
  %713 = load i32, ptr %712, align 4, !tbaa !9
  %714 = tail call i32 @reg_classes_intersect_p(i32 noundef %705, i32 noundef 13) #17
  %715 = icmp eq i32 %714, 0
  %716 = load ptr, ptr @cost_classes, align 8, !tbaa !5
  br i1 %715, label %717, label %722

717:                                              ; preds = %711
  %718 = load i8, ptr %697, align 1, !tbaa !40
  %719 = and i8 %718, -2
  %720 = icmp eq i8 %719, 10
  %721 = select i1 %720, i32 2, i32 1
  br label %730

722:                                              ; preds = %711
  br i1 %694, label %726, label %723

723:                                              ; preds = %722
  %724 = load i8, ptr %696, align 1, !tbaa !40
  %725 = zext i8 %724 to i32
  br label %726

726:                                              ; preds = %722, %723
  %727 = phi i32 [ %725, %723 ], [ 12, %722 ]
  %728 = add nuw nsw i32 %727, 3
  %729 = lshr i32 %728, 2
  br label %730

730:                                              ; preds = %726, %717
  %731 = phi i32 [ %721, %717 ], [ %729, %726 ]
  %732 = icmp eq i32 %713, %731
  br i1 %732, label %733, label %762

733:                                              ; preds = %730
  %734 = load i32, ptr %712, align 4, !tbaa !9
  %735 = icmp eq i32 %734, 1
  br i1 %735, label %757, label %736

736:                                              ; preds = %733
  %737 = load i8, ptr %698, align 1, !tbaa !40
  %738 = zext i8 %737 to i32
  %739 = icmp eq i8 %737, 0
  br i1 %739, label %754, label %740

740:                                              ; preds = %736
  %741 = load i64, ptr %707, align 8, !tbaa !55
  %742 = zext i8 %737 to i64
  br label %743

743:                                              ; preds = %740, %749
  %744 = phi i64 [ 0, %740 ], [ %750, %749 ]
  %745 = add nuw nsw i64 %744, %692
  %746 = shl nuw i64 1, %745
  %747 = and i64 %741, %746
  %748 = icmp eq i64 %747, 0
  br i1 %748, label %752, label %749

749:                                              ; preds = %743
  %750 = add nuw nsw i64 %744, 1
  %751 = icmp eq i64 %750, %742
  br i1 %751, label %757, label %743, !llvm.loop !99

752:                                              ; preds = %743
  %753 = trunc i64 %744 to i32
  br label %754

754:                                              ; preds = %752, %736
  %755 = phi i32 [ 0, %736 ], [ %753, %752 ]
  %756 = icmp eq i32 %755, %738
  br i1 %756, label %757, label %762

757:                                              ; preds = %749, %754, %733
  %758 = load i32, ptr @frequency, align 4, !tbaa !9
  %759 = sub nsw i32 0, %758
  %760 = load ptr, ptr %699, align 8, !tbaa !5
  %761 = getelementptr inbounds %struct.costs, ptr %760, i64 0, i32 1, i64 %703
  store i32 %759, ptr %761, align 4, !tbaa !9
  br label %762

762:                                              ; preds = %757, %701, %730, %754
  %763 = phi ptr [ %702, %701 ], [ %716, %730 ], [ %716, %754 ], [ %716, %757 ]
  %764 = add nuw nsw i64 %703, 1
  %765 = load i32, ptr @cost_classes_num, align 4, !tbaa !9
  %766 = sext i32 %765 to i64
  %767 = icmp slt i64 %764, %766
  br i1 %767, label %701, label %768, !llvm.loop !100

768:                                              ; preds = %762, %679, %672
  br i1 %673, label %672, label %769, !llvm.loop !101

769:                                              ; preds = %768, %635, %668, %664, %660, %655, %649, %646
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @copy_cost(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.secondary_reload_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %76, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_preferred_reload_class(ptr noundef nonnull %0, i32 noundef %2) #17
  %12 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 2
  store ptr %4, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.secondary_reload_info, ptr %6, i64 0, i32 1
  store i32 0, ptr %13, align 4, !tbaa !104
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 97), align 8, !tbaa !105
  %15 = call i32 %14(i8 noundef zeroext %3, ptr noundef nonnull %0, i32 noundef %11, i32 noundef %1, ptr noundef nonnull %6) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %10
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void @init_move_cost(i32 noundef %1) #17
  %23 = load ptr, ptr %19, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %20, %17 ]
  %26 = zext i32 %15 to i64
  %27 = zext i32 %11 to i64
  %28 = getelementptr inbounds [27 x i16], ptr %25, i64 %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !53
  %30 = zext i16 %29 to i32
  %31 = load i32, ptr %13, align 4, !tbaa !104
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
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, ptr %13, align 4, !tbaa !104
  %43 = zext i32 %1 to i64
  %44 = zext i32 %11 to i64
  %45 = icmp ne i8 %3, 0
  %46 = zext i1 %45 to i64
  %47 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %43, i64 %44, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !53
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %42, %49
  br label %76

51:                                               ; preds = %35
  %52 = icmp eq i32 %37, 37
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = zext i32 %1 to i64
  %55 = getelementptr inbounds [87 x ptr], ptr @move_cost, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  call void @init_move_cost(i32 noundef %1) #17
  %59 = load ptr, ptr %55, align 8, !tbaa !5
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  %62 = load i32, ptr %13, align 4, !tbaa !104
  %63 = call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #16
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !9
  %67 = zext i32 %66 to i64
  %68 = zext i32 %11 to i64
  %69 = getelementptr inbounds [27 x i16], ptr %61, i64 %67, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !53
  %71 = zext i16 %70 to i32
  %72 = add nsw i32 %62, %71
  br label %76

73:                                               ; preds = %51
  %74 = load i32, ptr %13, align 4, !tbaa !104
  %75 = add nsw i32 %74, 4
  br label %76

76:                                               ; preds = %5, %73, %60, %41, %24
  %77 = phi i32 [ %34, %24 ], [ %50, %41 ], [ %72, %60 ], [ %75, %73 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #17
  %9 = load ptr, ptr %5, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !53
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #13 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
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
define internal void @process_bb_node_for_hard_reg_moves(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %128, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @optimize_size, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !70
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10, %7
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !71
  %21 = add i32 %20, 9
  %22 = icmp ult i32 %21, 19
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = sdiv i32 %20, 10
  br label %25

25:                                               ; preds = %23, %18, %4, %10
  %26 = phi i32 [ 1000, %10 ], [ 1000, %4 ], [ %24, %23 ], [ 1, %18 ]
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 1)
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %128, label %32

32:                                               ; preds = %25, %124
  %33 = phi ptr [ %126, %124 ], [ %30, %25 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !40
  %35 = getelementptr inbounds %struct.rtl_bb_info, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %128, label %40

40:                                               ; preds = %32
  %41 = load i32, ptr %33, align 8
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -8
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %124

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 23
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = tail call ptr @single_set_2(ptr noundef nonnull %33, ptr noundef nonnull %47) #17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %124, label %54

54:                                               ; preds = %45, %51
  %55 = phi ptr [ %52, %51 ], [ %47, %45 ]
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !40
  %60 = load i32, ptr %57, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %124

63:                                               ; preds = %54
  %64 = load i32, ptr %59, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 37
  br i1 %66, label %67, label %124

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #16
  %69 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %59) #16
  %70 = icmp slt i32 %68, 53
  %71 = icmp sgt i32 %69, 52
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = and i1 %70, %71
  br i1 %74, label %75, label %124

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %68, %67 ], [ %69, %73 ]
  %77 = phi i32 [ %69, %67 ], [ %68, %73 ]
  %78 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !5
  %79 = zext nneg i32 %76 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %81, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !51
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %84
  %86 = load i64, ptr %85, align 8, !tbaa !55
  %87 = zext nneg i32 %77 to i64
  %88 = shl nuw i64 1, %87
  %89 = and i64 %86, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %75
  %92 = sext i32 %77 to i64
  %93 = getelementptr inbounds [27 x [53 x i16]], ptr @ira_class_hard_reg_index, i64 0, i64 %84, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !53
  %95 = sext i16 %94 to i64
  %96 = icmp slt i16 %94, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %81, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !58
  %100 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %92
  %101 = load i32, ptr %100, align 4, !tbaa !9
  br i1 %72, label %104, label %102

102:                                              ; preds = %97
  %103 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %99, i32 noundef %101, i32 noundef %83) #16, !range !83
  br label %106

104:                                              ; preds = %97
  %105 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %99, i32 noundef %83, i32 noundef %101) #16, !range !83
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = mul nsw i32 %107, %27
  %109 = getelementptr inbounds %struct.ira_allocno, ptr %81, i64 0, i32 33
  %110 = getelementptr inbounds %struct.ira_allocno, ptr %81, i64 0, i32 10
  %111 = load i32, ptr %110, align 4, !tbaa !43
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %109, i32 noundef %83, i32 noundef %111) #16
  %112 = getelementptr inbounds %struct.ira_allocno, ptr %81, i64 0, i32 35
  tail call fastcc void @ira_allocate_and_set_costs(ptr noundef nonnull %112, i32 noundef %83, i32 noundef 0) #16
  %113 = load ptr, ptr %109, align 8, !tbaa !52
  %114 = getelementptr inbounds i32, ptr %113, i64 %95
  %115 = load i32, ptr %114, align 4, !tbaa !9
  %116 = sub nsw i32 %115, %108
  store i32 %116, ptr %114, align 4, !tbaa !9
  %117 = load ptr, ptr %112, align 8, !tbaa !117
  %118 = getelementptr inbounds i32, ptr %117, i64 %95
  %119 = load i32, ptr %118, align 4, !tbaa !9
  %120 = sub nsw i32 %119, %108
  store i32 %120, ptr %118, align 4, !tbaa !9
  %121 = load i32, ptr %110, align 4, !tbaa !43
  %122 = load i32, ptr %114, align 4, !tbaa !9
  %123 = tail call i32 @llvm.smin.i32(i32 %121, i32 %122)
  store i32 %123, ptr %110, align 4, !tbaa !43
  br label %124

124:                                              ; preds = %40, %91, %75, %73, %54, %63, %51, %106
  %125 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %32, !llvm.loop !118

128:                                              ; preds = %124, %32, %25, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"costs", !10, i64 0, !7, i64 4}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{i8 0, i8 2}
!18 = !{!19, !10, i64 4}
!19 = !{!"ira_allocno", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !6, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !10, i64 120, !10, i64 124, !6, i64 128, !10, i64 136, !10, i64 140, !20, i64 144, !20, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 172, !10, i64 173, !10, i64 173, !10, i64 173, !10, i64 173, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !10, i64 216, !10, i64 220, !6, i64 224, !6, i64 232, !10, i64 240}
!20 = !{!"long", !7, i64 0}
!21 = !{!19, !10, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!25, !6, i64 8}
!25 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !6, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!26 = !{!27, !6, i64 0}
!27 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !6, i64 40, !10, i64 48, !7, i64 52, !7, i64 60, !10, i64 68, !10, i64 72}
!28 = !{!29, !6, i64 56}
!29 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !20, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!30 = !{!27, !6, i64 8}
!31 = distinct !{!31, !14}
!32 = !{!19, !6, i64 32}
!33 = !{!34, !6, i64 48}
!34 = !{!"ira_loop_tree_node", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !7, i64 60, !6, i64 64, !7, i64 72, !7, i64 76, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208}
!35 = !{!34, !6, i64 64}
!36 = !{!34, !6, i64 192}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = !{!19, !10, i64 52}
!44 = !{!34, !6, i64 0}
!45 = !{!34, !6, i64 8}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = !{!19, !10, i64 60}
!50 = !{!19, !10, i64 220}
!51 = !{!19, !10, i64 48}
!52 = !{!19, !6, i64 184}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !7, i64 0}
!55 = !{!20, !20, i64 0}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = !{!19, !10, i64 8}
!59 = !{!19, !10, i64 168}
!60 = !{!19, !10, i64 164}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{!64, !10, i64 0}
!64 = !{!"", !10, i64 0}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14, !67, !68}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !14}
!70 = !{!29, !20, i64 72}
!71 = !{!29, !10, i64 88}
!72 = !{!73, !6, i64 8}
!73 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = !{!80, !7, i64 1086}
!80 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !6, i64 1120}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = !{i32 0, i32 65536}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = !{!80, !7, i64 1088}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = !{!103, !6, i64 8}
!103 = !{!"secondary_reload_info", !10, i64 0, !10, i64 4, !6, i64 8, !10, i64 16}
!104 = !{!103, !10, i64 4}
!105 = !{!106, !6, i64 1728}
!106 = !{!"gcc_target", !107, i64 0, !109, i64 368, !110, i64 664, !10, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !20, i64 1064, !20, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !111, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !20, i64 1464, !112, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !113, i64 1784, !114, i64 1792, !115, i64 1896, !116, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!107 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !108, i64 24, !108, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!108 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!109 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!110 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!111 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!112 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!113 = !{!"c", !6, i64 0}
!114 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!115 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!116 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!117 = !{!19, !6, i64 200}
!118 = distinct !{!118, !14}

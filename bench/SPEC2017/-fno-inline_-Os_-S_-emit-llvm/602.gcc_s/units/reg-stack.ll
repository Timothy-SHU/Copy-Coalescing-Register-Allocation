; ModuleID = 'reg-stack.c'
source_filename = "reg-stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.VEC_char_base = type { i32, i32, [1 x i8] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.block_info_def = type { %struct.stack_def, %struct.stack_def, i64, i32, i32 }
%struct.stack_def = type { i32, i64, [8 x i8] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }

@regstack_completed = dso_local local_unnamed_addr global i32 0, align 4
@stack_regs_mentioned_data = internal unnamed_addr global ptr null, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@pass_stack_regs = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_stack_regs, ptr null, ptr null, ptr null, i32 0, i32 164, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str = private unnamed_addr constant [12 x i8] c"*stack_regs\00", align 1
@pass_stack_regs_run = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr null, ptr @rest_of_handle_stack_regs, ptr null, ptr null, i32 0, i32 164, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@FP_mode_reg = internal unnamed_addr global [8 x [87 x ptr]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@ix86_flags_rtx = internal unnamed_addr global ptr null, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@ix86_cmodel = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@not_a_num = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@any_malformed_asm = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\0ABasic block %d\0AInput stack: \00", align 1
@current_block = internal unnamed_addr global ptr null, align 8
@starting_stack_p = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"reg-stack.c\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  insn %d input stack: \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Expected live registers [\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" ]\0AOutput stack: \00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Emitting insn initializing reg %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"uninitialized\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"empty\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external local_unnamed_addr global %struct.recog_data, align 8
@recog_op_alt = external local_unnamed_addr global [30 x [30 x %struct.operand_alternative]], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@reg_class_size = external local_unnamed_addr global [27 x i32], align 16
@.str.17 = private unnamed_addr constant [52 x i8] c"output constraint %d must specify a single register\00", align 1
@.str.18 = private unnamed_addr constant [68 x i8] c"output constraint %d cannot be specified together with \22%s\22 clobber\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.19 = private unnamed_addr constant [44 x i8] c"output regs must be grouped at top of stack\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"implicitly popped regs must be grouped at top of stack\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"output operand %d must use %<&%> constraint\00", align 1
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.22 = private unnamed_addr constant [14 x i8] c"Edge %d->%d: \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"no changes needed\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"correcting stack to \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @stack_regs_mentioned(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 10
  %8 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %14, label %41

11:                                               ; preds = %1
  %12 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %8, %6 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = tail call fastcc i32 @VEC_char_base_length(ptr noundef nonnull %15) #19
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = udiv i32 %17, 20
  %22 = add i32 %17, 1
  %23 = add i32 %22, %21
  tail call fastcc void @VEC_char_heap_safe_grow_cleared(i32 noundef %23) #19
  %24 = load ptr, ptr @stack_regs_mentioned_data, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %24, %20 ], [ %15, %14 ]
  %27 = tail call fastcc signext i8 @VEC_char_base_index(ptr noundef %26, i32 noundef %17) #19
  %28 = sext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %32) #19
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 2, i32 1
  %36 = trunc i32 %35 to i8
  tail call fastcc void @VEC_char_base_replace(ptr noundef %26, i32 noundef %17, i8 noundef signext %36) #19
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ %35, %30 ], [ %28, %25 ]
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %6, %11, %37
  %42 = phi i32 [ %40, %37 ], [ 0, %11 ], [ 0, %6 ]
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_char_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !9
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_char_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_char_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %5 = tail call fastcc ptr @VEC_char_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i8 @VEC_char_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !6
  ret i8 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @stack_regs_mentioned_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %7 = and i32 %6, -8
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %46, label %9

9:                                                ; preds = %5, %1
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %18 = zext i8 %14 to i64
  br label %19

19:                                               ; preds = %16, %44
  %20 = phi i64 [ %18, %16 ], [ %21, %44 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %12, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !6
  switch i8 %23, label %44 [
    i8 69, label %24
    i8 101, label %39
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i32, ptr %26, align 8, !tbaa !14
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %33, %24
  %30 = phi i64 [ %34, %33 ], [ %28, %24 ]
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = add nsw i64 %30, -1
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %29, label %46, !llvm.loop !16

39:                                               ; preds = %19
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %17, i64 0, i64 %21
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %41) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29, %19, %39
  %45 = icmp sgt i64 %20, 1
  br i1 %45, label %19, label %46, !llvm.loop !18

46:                                               ; preds = %39, %44, %33, %9, %5
  %47 = phi i32 [ 1, %5 ], [ 0, %9 ], [ 1, %33 ], [ 1, %39 ], [ 0, %44 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_char_base_replace(ptr nocapture noundef %0, i32 noundef %1, i8 noundef signext %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2, i64 %4
  store i8 %2, ptr %5, align 1, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !9
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_char_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12, !nonnull !19, !noundef !19
  store i32 %0, ptr %9, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_char_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %3 = tail call fastcc i32 @VEC_char_base_space(ptr noundef %2, i32 noundef %0) #19, !range !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 1) #20
  store ptr %6, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_char_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !21
  %7 = load i32, ptr %0, align 4, !tbaa !9
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_handle_stack_regs() #5 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_stack_regs() #0 {
  tail call fastcc void @reg_to_stack() #19
  store i32 1, ptr @regstack_completed, align 4, !tbaa !22
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reg_to_stack() unnamed_addr #0 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call fastcc void @VEC_char_heap_free() #19
  br label %7

7:                                                ; preds = %6, %0
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %152, label %11, !llvm.loop !23

11:                                               ; preds = %7, %8
  %12 = phi i32 [ %9, %8 ], [ 8, %7 ]
  %13 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %8, label %15

15:                                               ; preds = %11
  tail call void @df_note_add_problem() #20
  tail call void @df_analyze() #20
  %16 = tail call zeroext i8 @mark_dfs_back_edges() #20
  tail call void @alloc_aux_for_blocks(i32 noundef 64) #20
  %17 = load ptr, ptr @cfun, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !31
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds i8, ptr %1, i64 8
  br label %33

28:                                               ; preds = %94, %15
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !6
  %30 = icmp eq i8 %29, 0
  %31 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1
  %32 = icmp eq i8 %31, 0
  br label %103

33:                                               ; preds = %26, %94
  %34 = phi ptr [ %22, %26 ], [ %96, %94 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef %34) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !33
  store ptr %37, ptr %27, align 8, !tbaa.struct !34
  %38 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %2) #19, !range !35
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.block_info_def, ptr %36, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %58
  %43 = load ptr, ptr %2, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !36
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load ptr, ptr %43, align 8, !tbaa !38
  %50 = load ptr, ptr @cfun, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = load ptr, ptr %52, align 8, !tbaa !26
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %41, align 4, !tbaa !39
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %41, align 4, !tbaa !39
  br label %58

58:                                               ; preds = %42, %48, %55
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %59 = load i32, ptr %1, align 8
  %60 = load ptr, ptr %27, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %2) #19, !range !35
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %42, !llvm.loop !42

63:                                               ; preds = %58, %33
  store i32 -2, ptr %36, align 8, !tbaa !43
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %65 = getelementptr inbounds %struct.block_info_def, ptr %36, i64 0, i32 2
  %66 = getelementptr inbounds %struct.stack_def, ptr %36, i64 0, i32 1
  br label %67

67:                                               ; preds = %63, %91
  %68 = phi i64 [ 8, %63 ], [ %92, %91 ]
  %69 = load i32, ptr %64, align 8, !tbaa !44
  %70 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %69) #19
  %71 = getelementptr inbounds %struct.df_lr_bb_info, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  %73 = trunc i64 %68 to i32
  %74 = tail call i32 @bitmap_bit_p(ptr noundef %72, i32 noundef %73) #20
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = shl nuw nsw i64 1, %68
  %78 = load i64, ptr %65, align 8, !tbaa !47
  %79 = or i64 %78, %77
  store i64 %79, ptr %65, align 8, !tbaa !47
  br label %80

80:                                               ; preds = %76, %67
  %81 = load i32, ptr %64, align 8, !tbaa !44
  %82 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %81) #19
  %83 = getelementptr inbounds %struct.df_lr_bb_info, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = tail call i32 @bitmap_bit_p(ptr noundef %84, i32 noundef %73) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = shl nuw nsw i64 1, %68
  %89 = load i64, ptr %66, align 8, !tbaa !49
  %90 = or i64 %89, %88
  store i64 %90, ptr %66, align 8, !tbaa !49
  br label %91

91:                                               ; preds = %80, %87
  %92 = add nuw nsw i64 %68, 1
  %93 = icmp eq i64 %92, 16
  br i1 %93, label %94, label %67, !llvm.loop !50

94:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !28
  %97 = load ptr, ptr @cfun, align 8, !tbaa !12
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !24
  %100 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !31
  %102 = icmp eq ptr %96, %101
  br i1 %102, label %28, label %33, !llvm.loop !51

103:                                              ; preds = %28, %130
  %104 = phi i64 [ 8, %28 ], [ %131, %130 ]
  br i1 %30, label %108, label %105

105:                                              ; preds = %103
  %106 = add nsw i64 %104, -8
  %107 = trunc i64 %104 to i32
  br label %112

108:                                              ; preds = %112, %103
  br i1 %32, label %130, label %109

109:                                              ; preds = %108
  %110 = add nsw i64 %104, -8
  %111 = trunc i64 %104 to i32
  br label %121

112:                                              ; preds = %105, %112
  %113 = phi i8 [ %29, %105 ], [ %119, %112 ]
  %114 = zext i8 %113 to i32
  %115 = tail call ptr @gen_rtx_REG(i32 noundef %114, i32 noundef %107) #20
  %116 = zext i8 %113 to i64
  %117 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %106, i64 %116
  store ptr %115, ptr %117, align 8, !tbaa !12
  %118 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %116
  %119 = load i8, ptr %118, align 1, !tbaa !6
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %108, label %112, !llvm.loop !52

121:                                              ; preds = %109, %121
  %122 = phi i8 [ %31, %109 ], [ %128, %121 ]
  %123 = zext i8 %122 to i32
  %124 = tail call ptr @gen_rtx_REG(i32 noundef %123, i32 noundef %111) #20
  %125 = zext i8 %122 to i64
  %126 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %110, i64 %125
  store ptr %124, ptr %126, align 8, !tbaa !12
  %127 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %125
  %128 = load i8, ptr %127, align 1, !tbaa !6
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %121, !llvm.loop !53

130:                                              ; preds = %121, %108
  %131 = add nuw nsw i64 %104, 1
  %132 = icmp eq i64 %131, 16
  br i1 %132, label %133, label %103, !llvm.loop !54

133:                                              ; preds = %130
  %134 = tail call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef 17) #20
  store ptr %134, ptr @ix86_flags_rtx, align 8, !tbaa !12
  %135 = load i32, ptr @flag_pic, align 4, !tbaa !22
  %136 = freeze i32 %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, ptr @ix86_cmodel, align 4
  switch i32 %139, label %142 [
    i32 7, label %140
    i32 4, label %140
  ]

140:                                              ; preds = %138, %138, %133
  %141 = load ptr, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 38), align 16, !tbaa !12
  store ptr %141, ptr @not_a_num, align 8, !tbaa !12
  br label %146

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %143 = call zeroext i8 @real_nan(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 38) #20
  %144 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %3, i32 noundef 38) #20
  store ptr %144, ptr @not_a_num, align 8, !tbaa !12
  %145 = call ptr @force_const_mem(i32 noundef 38, ptr noundef %144) #20
  store ptr %145, ptr @not_a_num, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %146

146:                                              ; preds = %142, %140
  %147 = call i32 @get_max_uid() #20
  %148 = add nsw i32 %147, 1
  %149 = call fastcc ptr @VEC_char_heap_alloc(i32 noundef %148) #19
  store ptr %149, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %150 = call fastcc ptr @VEC_char_base_address(ptr noundef %149) #19
  %151 = sext i32 %148 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %150, i8 0, i64 %151, i1 false)
  call fastcc void @convert_regs() #19
  call void @free_aux_for_blocks() #20
  br label %152

152:                                              ; preds = %8, %146
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_char_heap_free() unnamed_addr #8 {
  %1 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stack_regs_mentioned_data, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @df_note_add_problem() local_unnamed_addr #7

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #7

; Function Attrs: optsize
declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !35
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !55
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr @df, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @real_nan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_char_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @convert_regs_entry() #19, !range !20
  tail call fastcc void @convert_regs_exit() #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.block_info_def, ptr %10, i64 0, i32 3
  store i32 1, ptr %11, align 8, !tbaa !60
  %12 = load ptr, ptr %6, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !33
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !34
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %1) #19, !range !35
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %0, %18
  %19 = load ptr, ptr %1, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  tail call fastcc void @convert_regs_2(ptr noundef %21) #19
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %22 = load i32, ptr %2, align 8
  %23 = load ptr, ptr %15, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #19, !range !35
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %18, !llvm.loop !62

26:                                               ; preds = %18, %0
  %27 = load ptr, ptr @cfun, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %26, %46
  %37 = phi ptr [ %47, %46 ], [ %27, %26 ]
  %38 = phi ptr [ %49, %46 ], [ %32, %26 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct.block_info_def, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !60
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  tail call fastcc void @convert_regs_2(ptr noundef nonnull %38) #19
  %45 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %45, %44 ], [ %37, %36 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !31
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %55, label %36, !llvm.loop !63

55:                                               ; preds = %46, %26
  %56 = tail call fastcc zeroext i8 @compensate_edges() #19, !range !35
  %57 = zext nneg i8 %56 to i32
  %58 = or i32 %3, %57
  tail call void @clear_aux_for_blocks() #20
  tail call void @fixup_abnormal_edges() #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @commit_edge_insertions() #20
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %62) #19
  br label %66

66:                                               ; preds = %64, %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @free_aux_for_blocks() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !64
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.4) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @convert_regs_entry() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !33
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !34
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %1) #19, !range !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %0, %41
  %13 = phi i32 [ %38, %41 ], [ 0, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.stack_def, ptr %18, i64 0, i32 1
  br label %20

20:                                               ; preds = %12, %36
  %21 = phi i64 [ 15, %12 ], [ %39, %36 ]
  %22 = phi i32 [ %13, %12 ], [ %38, %36 ]
  %23 = phi i32 [ -1, %12 ], [ %37, %36 ]
  %24 = load i64, ptr %19, align 8, !tbaa !49
  %25 = shl nuw i64 1, %21
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = trunc i64 %21 to i8
  %30 = add nsw i32 %23, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.stack_def, ptr %18, i64 0, i32 2, i64 %31
  store i8 %29, ptr %32, align 1, !tbaa !6
  %33 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 38), align 16, !tbaa !12
  %34 = load ptr, ptr @not_a_num, align 8, !tbaa !12
  %35 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %33, ptr noundef %34) #20
  tail call void @insert_insn_on_edge(ptr noundef %35, ptr noundef %14) #20
  br label %36

36:                                               ; preds = %20, %28
  %37 = phi i32 [ %30, %28 ], [ %23, %20 ]
  %38 = phi i32 [ 1, %28 ], [ %22, %20 ]
  %39 = add nsw i64 %21, -1
  %40 = icmp ugt i64 %21, 8
  br i1 %40, label %20, label %41, !llvm.loop !66

41:                                               ; preds = %36
  store i32 %37, ptr %18, align 8, !tbaa !43
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %42 = load i32, ptr %2, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %1) #19, !range !35
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %12, !llvm.loop !67

46:                                               ; preds = %41, %0
  %47 = phi i32 [ 0, %0 ], [ %38, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_exit() unnamed_addr #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !12
  %2 = tail call fastcc ptr @stack_result(ptr noundef %1) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  br label %27

12:                                               ; preds = %0
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %14 = load i32, ptr %2, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call fastcc i32 @end_hard_regno(i32 noundef %16, i32 noundef %13) #19
  %18 = add i32 %17, -1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !31
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = icmp eq i32 %13, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %4, %12
  %28 = phi ptr [ %11, %4 ], [ %25, %12 ]
  store i32 -1, ptr %28, align 8, !tbaa !68
  br label %47

29:                                               ; preds = %12
  %30 = sub nsw i32 %18, %13
  store i32 %30, ptr %25, align 8, !tbaa !68
  %31 = icmp sgt i32 %13, %18
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.stack_def, ptr %25, i64 0, i32 1
  %34 = sext i32 %13 to i64
  %35 = sext i32 %18 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %34, %32 ], [ %44, %36 ]
  %38 = trunc i64 %37 to i8
  %39 = sub nsw i64 %35, %37
  %40 = getelementptr inbounds %struct.stack_def, ptr %25, i64 0, i32 2, i64 %39
  store i8 %38, ptr %40, align 1, !tbaa !6
  %41 = shl nuw i64 1, %37
  %42 = load i64, ptr %33, align 8, !tbaa !69
  %43 = or i64 %42, %41
  store i64 %43, ptr %33, align 8, !tbaa !69
  %44 = add nsw i64 %37, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %17, %45
  br i1 %46, label %47, label %36, !llvm.loop !70

47:                                               ; preds = %36, %29, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_2(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #20
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %0, ptr %11, align 8, !tbaa !12
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  br label %14

14:                                               ; preds = %46, %1
  %15 = phi ptr [ %12, %1 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %16 = getelementptr inbounds ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %18) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !33
  store ptr %19, ptr %13, align 8, !tbaa.struct !34
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %2) #19, !range !35
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %14, %40
  %23 = phi ptr [ %41, %40 ], [ %16, %14 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !36
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.block_info_def, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4, !tbaa !39
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %31, ptr %23, align 8, !tbaa !12
  br label %40

40:                                               ; preds = %22, %38, %29
  %41 = phi ptr [ %23, %22 ], [ %23, %29 ], [ %39, %38 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %42 = load i32, ptr %3, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %2) #19, !range !35
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %22, !llvm.loop !72

46:                                               ; preds = %40, %14
  %47 = phi ptr [ %16, %14 ], [ %41, %40 ]
  tail call fastcc void @convert_regs_1(ptr noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %48 = icmp eq ptr %47, %11
  br i1 %48, label %49, label %14, !llvm.loop !73

49:                                               ; preds = %46
  tail call void @free(ptr noundef %11) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compensate_edges() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  store i1 false, ptr @starting_stack_p, align 1
  %3 = load ptr, ptr @cfun, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %48, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %38
  %15 = phi ptr [ %3, %12 ], [ %39, %38 ]
  %16 = phi ptr [ %5, %12 ], [ %44, %38 ]
  %17 = phi ptr [ %8, %12 ], [ %42, %38 ]
  %18 = phi i8 [ 0, %12 ], [ %40, %38 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !26
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %38, label %21

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !33
  store ptr %23, ptr %13, align 8, !tbaa.struct !34
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %1) #19, !range !35
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21, %26
  %27 = phi i8 [ %30, %26 ], [ %18, %21 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !12
  %29 = tail call fastcc zeroext i8 @compensate_edge(ptr noundef %28) #19, !range !35
  %30 = or i8 %29, %27
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %1) #19, !range !35
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %26, !llvm.loop !74

35:                                               ; preds = %26, %21
  %36 = phi i8 [ %18, %21 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  %37 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %38

38:                                               ; preds = %14, %35
  %39 = phi ptr [ %37, %35 ], [ %15, %14 ]
  %40 = phi i8 [ %36, %35 ], [ %18, %14 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !31
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %14, !llvm.loop !75

48:                                               ; preds = %38, %0
  %49 = phi i8 [ 0, %0 ], [ %40, %38 ]
  ret i8 %49
}

; Function Attrs: optsize
declare void @clear_aux_for_blocks() local_unnamed_addr #7

; Function Attrs: optsize
declare void @fixup_abnormal_edges() local_unnamed_addr #7

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @stack_result(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call i32 @aggregate_value_p(ptr noundef %3, ptr noundef %0) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !6
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call ptr %18(ptr noundef %20, ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #19
  %29 = and i32 %28, -8
  %30 = icmp eq i32 %29, 8
  %31 = select i1 %30, ptr %21, ptr null
  br label %32

32:                                               ; preds = %13, %6, %23, %17, %27, %1
  %33 = phi ptr [ null, %1 ], [ null, %23 ], [ null, %17 ], [ %31, %27 ], [ null, %6 ], [ null, %13 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !6
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_1(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.stack_def, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  store i1 false, ptr @any_malformed_asm, align 1
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !33
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !34
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %3) #19, !range !35
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %9, %25
  %15 = phi ptr [ %26, %25 ], [ null, %9 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !12
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.block_info_def, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = tail call fastcc ptr @better_edge(ptr noundef %15, ptr noundef nonnull %16) #19
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ %15, %14 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %27 = load i32, ptr %4, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %3) #19, !range !35
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %14, !llvm.loop !88

31:                                               ; preds = %25
  %32 = icmp eq ptr %26, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  tail call fastcc void @propagate_stack(ptr noundef nonnull %26) #19
  br label %51

34:                                               ; preds = %9, %31
  store i32 -1, ptr %6, align 8, !tbaa !43
  %35 = getelementptr inbounds %struct.stack_def, ptr %6, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %48
  %37 = phi i64 [ 15, %34 ], [ %49, %48 ]
  %38 = load i64, ptr %35, align 8, !tbaa !49
  %39 = shl nuw i64 1, %37
  %40 = and i64 %38, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = trunc i64 %37 to i8
  %44 = load i32, ptr %6, align 8, !tbaa !43
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 8, !tbaa !43
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stack_def, ptr %6, i64 0, i32 2, i64 %46
  store i8 %43, ptr %47, align 1, !tbaa !6
  br label %48

48:                                               ; preds = %36, %42
  %49 = add nsw i64 %37, -1
  %50 = icmp ugt i64 %37, 8
  br i1 %50, label %36, label %51, !llvm.loop !89

51:                                               ; preds = %48, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %52

52:                                               ; preds = %51, %1
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.5, i32 noundef %57) #19
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call fastcc void @print_stack(ptr noundef %59, ptr noundef nonnull %6) #19
  br label %60

60:                                               ; preds = %55, %52
  store ptr %0, ptr @current_block, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !92
  store i1 true, ptr @starting_stack_p, align 1
  br label %64

64:                                               ; preds = %108, %60
  %65 = phi i32 [ 0, %60 ], [ %109, %108 ]
  %66 = phi i8 [ 0, %60 ], [ %110, %108 ]
  %67 = phi ptr [ %63, %60 ], [ %70, %108 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2937, ptr noundef nonnull @.str.4) #20
  br label %73

73:                                               ; preds = %64, %72
  %74 = load ptr, ptr %61, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !94
  %77 = icmp eq ptr %67, %76
  %78 = load i32, ptr %67, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i1, ptr @starting_stack_p, align 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = add nsw i32 %65, 1
  br label %108

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 1
  %87 = call i32 @for_each_rtx(ptr noundef nonnull %86, ptr noundef nonnull @subst_stack_regs_in_debug_insn, ptr noundef nonnull %2) #20
  %88 = call ptr @find_reg_note(ptr noundef nonnull %67, i32 noundef 1, ptr noundef null) #20
  %89 = icmp eq ptr %88, null
  br i1 %89, label %108, label %90

90:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2957, ptr noundef nonnull @.str.4) #20
  br label %108

91:                                               ; preds = %73
  %92 = call i32 @stack_regs_mentioned(ptr noundef nonnull %67) #19, !range !20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, ptr %67, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %108

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %68, align 8, !tbaa !6
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %99, ptr noundef nonnull @.str.7, i32 noundef %102) #19
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !12
  call fastcc void @print_stack(ptr noundef %104, ptr noundef nonnull %2) #19
  br label %105

105:                                              ; preds = %101, %98
  %106 = call fastcc zeroext i8 @subst_stack_regs(ptr noundef nonnull %67, ptr noundef nonnull %2) #19
  %107 = or i8 %106, %66
  store i1 false, ptr @starting_stack_p, align 1
  br label %108

108:                                              ; preds = %90, %85, %83, %105, %94
  %109 = phi i32 [ %84, %83 ], [ %65, %90 ], [ %65, %85 ], [ %65, %105 ], [ %65, %94 ]
  %110 = phi i8 [ %66, %83 ], [ %66, %90 ], [ %66, %85 ], [ %107, %105 ], [ %66, %94 ]
  %111 = or i1 %71, %77
  br i1 %111, label %112, label %64, !llvm.loop !95

112:                                              ; preds = %108
  %113 = icmp eq i32 %109, 0
  br i1 %113, label %131, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %61, align 8, !tbaa !6
  br label %116

116:                                              ; preds = %114, %127
  %117 = phi ptr [ %115, %114 ], [ %129, %127 ]
  %118 = phi i32 [ %109, %114 ], [ %128, %127 ]
  %119 = load ptr, ptr %117, align 8, !tbaa !6
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 7
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = add nsw i32 %118, -1
  %125 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 1
  %126 = call i32 @for_each_rtx(ptr noundef nonnull %125, ptr noundef nonnull @subst_stack_regs_in_debug_insn, ptr noundef nonnull %6) #20
  br label %127

127:                                              ; preds = %116, %123
  %128 = phi i32 [ %124, %123 ], [ %118, %116 ]
  %129 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %131, label %116, !llvm.loop !96

131:                                              ; preds = %127, %112
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %133 = icmp eq ptr %132, null
  br i1 %133, label %154, label %134

134:                                              ; preds = %131
  %135 = call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr nonnull %132)
  %136 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 2
  br label %137

137:                                              ; preds = %134, %147
  %138 = phi i64 [ 8, %134 ], [ %148, %147 ]
  %139 = load i64, ptr %136, align 8, !tbaa !47
  %140 = shl nuw nsw i64 1, %138
  %141 = and i64 %139, %140
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %145 = trunc i64 %138 to i32
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.9, i32 noundef %145) #19
  br label %147

147:                                              ; preds = %137, %143
  %148 = add nuw nsw i64 %138, 1
  %149 = icmp eq i64 %148, 16
  br i1 %149, label %150, label %137, !llvm.loop !97

150:                                              ; preds = %147
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %152 = call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %151)
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !12
  call fastcc void @print_stack(ptr noundef %153, ptr noundef nonnull %2) #19
  br label %154

154:                                              ; preds = %150, %131
  %155 = load ptr, ptr %61, align 8, !tbaa !6
  %156 = getelementptr inbounds %struct.rtl_bb_info, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !94
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 9
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi ptr [ %163, %161 ], [ %157, %154 ]
  %166 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 2
  %167 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  br label %168

168:                                              ; preds = %164, %195
  %169 = phi i64 [ 8, %164 ], [ %198, %195 ]
  %170 = phi ptr [ %165, %164 ], [ %197, %195 ]
  %171 = phi i8 [ %110, %164 ], [ %196, %195 ]
  %172 = load i64, ptr %166, align 8, !tbaa !47
  %173 = shl nuw nsw i64 1, %169
  %174 = and i64 %172, %173
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %195, label %176

176:                                              ; preds = %168
  %177 = load i64, ptr %167, align 8, !tbaa !69
  %178 = and i64 %177, %173
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = trunc i64 %169 to i32
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.11, i32 noundef %184) #19
  br label %186

186:                                              ; preds = %183, %180
  %187 = add nsw i64 %169, -8
  %188 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %187, i64 38
  %189 = load ptr, ptr %188, align 8, !tbaa !12
  %190 = load ptr, ptr @not_a_num, align 8, !tbaa !12
  %191 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %189, ptr noundef %190) #20
  %192 = call ptr @emit_insn_after(ptr noundef %191, ptr noundef %170) #20
  %193 = call fastcc zeroext i8 @subst_stack_regs(ptr noundef %192, ptr noundef nonnull %2) #19
  %194 = or i8 %193, %171
  br label %195

195:                                              ; preds = %168, %176, %186
  %196 = phi i8 [ %171, %176 ], [ %194, %186 ], [ %171, %168 ]
  %197 = phi ptr [ %170, %176 ], [ %192, %186 ], [ %170, %168 ]
  %198 = add nuw nsw i64 %169, 1
  %199 = icmp eq i64 %198, 16
  br i1 %199, label %200, label %168, !llvm.loop !98

200:                                              ; preds = %195
  %201 = icmp eq i8 %196, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %200
  %203 = call zeroext i8 @purge_dead_edges(ptr noundef %0) #20
  br label %204

204:                                              ; preds = %202, %200
  %205 = load i64, ptr %167, align 8, !tbaa !69
  %206 = load i64, ptr %166, align 8, !tbaa !47
  %207 = call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %205, i64 noundef %206) #19, !range !35
  %208 = icmp ne i8 %207, 0
  %209 = load i1, ptr @any_malformed_asm, align 1
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3052, ptr noundef nonnull @.str.4) #20
  br label %212

212:                                              ; preds = %204, %211
  %213 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %213, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  %214 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 3
  store i32 1, ptr %214, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @better_edge(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = mul nsw i32 %9, %7
  %11 = add nsw i32 %10, 5000
  %12 = sdiv i32 %11, 10000
  %13 = load ptr, ptr %1, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !100
  %18 = mul nsw i32 %17, %15
  %19 = add nsw i32 %18, 5000
  %20 = sdiv i32 %19, 10000
  %21 = icmp sgt i32 %12, %20
  br i1 %21, label %75, label %22

22:                                               ; preds = %4
  %23 = icmp slt i32 %12, %20
  br i1 %23, label %75, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !101
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %75, label %30

30:                                               ; preds = %24
  %31 = icmp slt i64 %26, %28
  br i1 %31, label %75, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !102
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #19
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #19
  %42 = icmp ugt i32 %41, 1
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %37, %32
  %45 = phi i32 [ 0, %32 ], [ %43, %37 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !102
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #19
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = load ptr, ptr %52, align 8, !tbaa !103
  %54 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %53) #19
  %55 = icmp ugt i32 %54, 1
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i32 [ 0, %44 ], [ %56, %50 ]
  %59 = icmp eq i32 %45, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  br i1 %36, label %61, label %67

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = load ptr, ptr %63, align 8, !tbaa !103
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #19
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %75, label %67

67:                                               ; preds = %61, %60
  br label %75

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !44
  %73 = icmp slt i32 %70, %72
  %74 = select i1 %73, ptr %0, ptr %1
  br label %75

75:                                               ; preds = %67, %61, %30, %24, %22, %4, %2, %68
  %76 = phi ptr [ %74, %68 ], [ %1, %2 ], [ %0, %4 ], [ %1, %22 ], [ %0, %24 ], [ %1, %30 ], [ %1, %67 ], [ %0, %61 ]
  ret ptr %76
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @propagate_stack(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  store i32 -1, ptr %9, align 8, !tbaa !68
  %10 = load i32, ptr %5, align 8, !tbaa !68
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 1
  br label %17

14:                                               ; preds = %33, %1
  %15 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 1
  %16 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1, i32 1
  br label %38

17:                                               ; preds = %12, %33
  %18 = phi i32 [ %10, %12 ], [ %34, %33 ]
  %19 = phi i64 [ 0, %12 ], [ %35, %33 ]
  %20 = load i64, ptr %13, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1, i32 2, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext nneg i8 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %20
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %9, align 8, !tbaa !68
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %9, align 8, !tbaa !68
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 2, i64 %30
  store i8 %22, ptr %31, align 1, !tbaa !6
  %32 = load i32, ptr %5, align 8, !tbaa !68
  br label %33

33:                                               ; preds = %17, %27
  %34 = phi i32 [ %18, %17 ], [ %32, %27 ]
  %35 = add nuw nsw i64 %19, 1
  %36 = sext i32 %34 to i64
  %37 = icmp slt i64 %19, %36
  br i1 %37, label %17, label %14, !llvm.loop !104

38:                                               ; preds = %14, %54
  %39 = phi i64 [ 8, %14 ], [ %55, %54 ]
  %40 = load i64, ptr %15, align 8, !tbaa !69
  %41 = shl nuw nsw i64 1, %39
  %42 = and i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load i64, ptr %16, align 8, !tbaa !69
  %46 = and i64 %45, %41
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = trunc i64 %39 to i8
  %50 = load i32, ptr %9, align 8, !tbaa !68
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %9, align 8, !tbaa !68
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 2, i64 %52
  store i8 %49, ptr %53, align 1, !tbaa !6
  br label %54

54:                                               ; preds = %38, %44, %48
  %55 = add nuw nsw i64 %39, 1
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %57, label %38, !llvm.loop !105

57:                                               ; preds = %54
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_stack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !68
  switch i32 %5, label %10 [
    i32 -2, label %6
    i32 -1, label %8
  ]

6:                                                ; preds = %4
  %7 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 14, i64 1, ptr nonnull %0)
  br label %26

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 6, i64 1, ptr nonnull %0)
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.14, ptr noundef nonnull %0) #19
  %12 = load i32, ptr %1, align 8, !tbaa !68
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %18) #19
  %20 = add nuw nsw i64 %15, 1
  %21 = load i32, ptr %1, align 8, !tbaa !68
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %14, label %24, !llvm.loop !106

24:                                               ; preds = %14, %10
  %25 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #19
  br label %26

26:                                               ; preds = %8, %24, %2, %6
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @subst_stack_regs_in_debug_insn(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc ptr @get_true_reg(ptr noundef %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #19
  %10 = and i32 %9, -8
  %11 = icmp eq i32 %10, 8
  %12 = icmp eq ptr %3, %0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !12
  %16 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %15) #19
  %17 = icmp sgt i32 %16, 7
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1337, ptr noundef nonnull @.str.4) #20
  br label %19

19:                                               ; preds = %14, %18
  tail call fastcc void @replace_reg(ptr noundef nonnull %0, i32 noundef %16) #19
  br label %20

20:                                               ; preds = %2, %8, %19
  %21 = phi i32 [ -1, %19 ], [ 0, %8 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @subst_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !68
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  tail call fastcc void @straighten_stack(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %10 = load i32, ptr %1, align 8, !tbaa !68
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %14 = zext nneg i32 %10 to i64
  %15 = load i64, ptr %13, align 8, !tbaa !69
  %16 = add nuw nsw i64 %14, 2
  %17 = and i64 %16, 4294967294
  %18 = insertelement <2 x i64> poison, i64 %14, i64 0
  %19 = shufflevector <2 x i64> %18, <2 x i64> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x i64> poison, i64 %14, i64 0
  %21 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> zeroinitializer
  %22 = add nsw <2 x i64> %21, <i64 0, i64 -1>
  %23 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %15, i64 0
  br label %24

24:                                               ; preds = %24, %12
  %25 = phi i64 [ 0, %12 ], [ %31, %24 ]
  %26 = phi <2 x i64> [ %22, %12 ], [ %32, %24 ]
  %27 = phi <2 x i64> [ %23, %12 ], [ %30, %24 ]
  %28 = shl <2 x i64> <i64 256, i64 256>, %26
  %29 = xor <2 x i64> %28, <i64 -1, i64 -1>
  %30 = and <2 x i64> %27, %29
  %31 = add i64 %25, 2
  %32 = add <2 x i64> %26, <i64 -2, i64 -2>
  %33 = icmp eq i64 %31, %17
  br i1 %33, label %34, label %24, !llvm.loop !107

34:                                               ; preds = %24
  %35 = insertelement <2 x i64> poison, i64 %25, i64 0
  %36 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> zeroinitializer
  %37 = or disjoint <2 x i64> %36, <i64 0, i64 1>
  %38 = icmp ugt <2 x i64> %37, %19
  %39 = select <2 x i1> %38, <2 x i64> %27, <2 x i64> %30
  %40 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %39)
  store i64 %40, ptr %13, align 8, !tbaa !69
  store i32 -1, ptr %1, align 8, !tbaa !68
  br label %41

41:                                               ; preds = %9, %34, %6, %2
  %42 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %0) #19, !range !20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %100, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = tail call i32 @asm_noperands(ptr noundef %46) #20
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call fastcc void @subst_asm_stack_regs(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %149

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 8, !tbaa !6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %98

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = load i32, ptr %57, align 8, !tbaa !14
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %55, %89
  %61 = phi ptr [ %90, %89 ], [ %51, %55 ]
  %62 = phi i64 [ %92, %89 ], [ 0, %55 ]
  %63 = phi ptr [ %94, %89 ], [ %57, %55 ]
  %64 = phi i8 [ %91, %89 ], [ 0, %55 ]
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !12
  %67 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %66) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %60
  %70 = load i32, ptr %66, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 25
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %66) #20
  %75 = load ptr, ptr %45, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %62
  store ptr %74, ptr %78, align 8, !tbaa !12
  %79 = load ptr, ptr %45, align 8, !tbaa !6
  br label %80

80:                                               ; preds = %73, %69
  %81 = phi ptr [ %79, %73 ], [ %61, %69 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %62
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = tail call fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %85) #19
  %87 = or i8 %86, %64
  %88 = load ptr, ptr %45, align 8, !tbaa !6
  br label %89

89:                                               ; preds = %60, %80
  %90 = phi ptr [ %88, %80 ], [ %61, %60 ]
  %91 = phi i8 [ %87, %80 ], [ %64, %60 ]
  %92 = add nuw nsw i64 %62, 1
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = load i32, ptr %94, align 8, !tbaa !14
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %60, label %100, !llvm.loop !110

98:                                               ; preds = %50
  %99 = tail call fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %51) #19
  br label %100

100:                                              ; preds = %89, %55, %98, %41
  %101 = phi i8 [ 0, %41 ], [ %99, %98 ], [ 0, %55 ], [ %91, %89 ]
  %102 = load i32, ptr %0, align 8
  %103 = and i32 %102, 65535
  %104 = icmp ne i32 %103, 13
  %105 = and i32 %102, 134217728
  %106 = icmp eq i32 %105, 0
  %107 = and i1 %104, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %100
  %109 = icmp eq i32 %103, 10
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #20
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  store i32 -1, ptr %1, align 8, !tbaa !68
  %114 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  store i64 0, ptr %114, align 8, !tbaa !69
  br label %149

115:                                              ; preds = %110, %108
  %116 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = icmp eq ptr %117, null
  br i1 %118, label %149, label %119

119:                                              ; preds = %115, %143
  %120 = phi ptr [ %147, %143 ], [ %117, %115 ]
  %121 = phi ptr [ %145, %143 ], [ %0, %115 ]
  %122 = phi ptr [ %144, %143 ], [ %116, %115 ]
  %123 = load i32, ptr %120, align 8
  %124 = and i32 %123, 16711680
  %125 = icmp eq i32 %124, 393216
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 37
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %128) #19
  %134 = and i32 %133, -8
  %135 = icmp eq i32 %134, 8
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !6
  store ptr %138, ptr %122, align 8, !tbaa !12
  %139 = load ptr, ptr %127, align 8, !tbaa !6
  %140 = tail call fastcc ptr @emit_pop_insn(ptr noundef %121, ptr noundef %1, ptr noundef %139, i32 noundef 0) #19
  br label %143

141:                                              ; preds = %132, %126, %119
  %142 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %143

143:                                              ; preds = %136, %141
  %144 = phi ptr [ %122, %136 ], [ %142, %141 ]
  %145 = phi ptr [ %140, %136 ], [ %121, %141 ]
  %146 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %119, !llvm.loop !111

149:                                              ; preds = %143, %115, %49, %100, %113
  %150 = phi i8 [ %101, %113 ], [ %101, %100 ], [ 0, %49 ], [ %101, %115 ], [ %101, %143 ]
  ret i8 %150
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_true_reg(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %3 = icmp eq i32 %2, 0
  br label %4

4:                                                ; preds = %46, %1
  %5 = phi ptr [ %0, %1 ], [ %47, %46 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %48 [
    i16 39, label %9
    i16 103, label %46
    i16 104, label %46
    i16 101, label %46
    i16 18, label %37
    i16 102, label %45
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #19
  %17 = and i32 %16, -8
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = lshr i32 %12, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !6
  %24 = lshr i32 %7, 16
  %25 = and i32 %24, 255
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %16, i32 noundef %21, i32 noundef %23, i32 noundef %25) #20
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #19
  %28 = add i32 %26, -8
  %29 = add i32 %28, %27
  %30 = zext i32 %29 to i64
  %31 = load i32, ptr %11, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %30, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  store ptr %36, ptr %5, align 8, !tbaa !12
  br label %48

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load i32, ptr %38, align 8, !tbaa !6
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1
  br label %48

45:                                               ; preds = %4
  br i1 %3, label %48, label %46

46:                                               ; preds = %4, %4, %4, %15, %9, %45
  %47 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %4

48:                                               ; preds = %4, %45, %19, %37, %41
  %49 = phi ptr [ %5, %19 ], [ %44, %41 ], [ %5, %37 ], [ %5, %45 ], [ %5, %4 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_hard_regnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 731, ptr noundef nonnull @.str.4) #20
  br label %11

11:                                               ; preds = %6, %10
  %12 = load i32, ptr %0, align 8, !tbaa !68
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  br label %16

16:                                               ; preds = %14, %23
  %17 = phi i32 [ %12, %14 ], [ %24, %23 ]
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !6
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = add nsw i32 %17, -1
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %16, label %29, !llvm.loop !112

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %12, 8
  %28 = sub i32 %27, %17
  br label %29

29:                                               ; preds = %23, %11, %26
  %30 = phi i32 [ %28, %26 ], [ -1, %11 ], [ -1, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_reg(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, -8
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 691, ptr noundef nonnull @.str.4) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !12
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #19
  %13 = and i32 %12, -8
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 692, ptr noundef nonnull @.str.4) #20
  %16 = load ptr, ptr %0, align 8, !tbaa !12
  %17 = load i32, ptr %16, align 8
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi i32 [ %8, %11 ], [ %17, %15 ]
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !6
  switch i8 %24, label %25 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
  ]

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 695, ptr noundef nonnull @.str.4) #20
  %26 = load ptr, ptr %0, align 8, !tbaa !12
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  br label %31

31:                                               ; preds = %18, %18, %18, %25
  %32 = phi i64 [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %30, %25 ]
  %33 = add nsw i32 %1, -8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %34, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  store ptr %36, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @straighten_stack(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.stack_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %4 = load i32, ptr %1, align 8, !tbaa !68
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %154, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !69
  store i32 %4, ptr %3, align 8, !tbaa !68
  %10 = add nuw nsw i32 %4, 8
  %11 = zext nneg i32 %4 to i64
  %12 = add nuw nsw i64 %11, 16
  %13 = and i64 %12, 4294967280
  %14 = insertelement <16 x i64> poison, i64 %11, i64 0
  %15 = shufflevector <16 x i64> %14, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %150, %6
  %17 = phi i64 [ 0, %6 ], [ %151, %150 ]
  %18 = trunc i64 %17 to i32
  %19 = sub i32 %4, %18
  %20 = sub i64 %11, %17
  %21 = insertelement <16 x i64> poison, i64 %17, i64 0
  %22 = shufflevector <16 x i64> %21, <16 x i64> poison, <16 x i32> zeroinitializer
  %23 = or disjoint <16 x i64> %22, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %24 = icmp ule <16 x i64> %23, %15
  %25 = extractelement <16 x i1> %24, i64 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = sub i32 %10, %19
  %28 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %20
  %29 = trunc i32 %27 to i8
  store i8 %29, ptr %28, align 1, !tbaa !6
  br label %30

30:                                               ; preds = %26, %16
  %31 = extractelement <16 x i1> %24, i64 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = add i32 %19, 255
  %34 = add i64 %20, -1
  %35 = sub i32 %10, %33
  %36 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %34
  %37 = trunc i32 %35 to i8
  store i8 %37, ptr %36, align 1, !tbaa !6
  br label %38

38:                                               ; preds = %32, %30
  %39 = extractelement <16 x i1> %24, i64 2
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = add i32 %19, 254
  %42 = add i64 %20, -2
  %43 = sub i32 %10, %41
  %44 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %42
  %45 = trunc i32 %43 to i8
  store i8 %45, ptr %44, align 1, !tbaa !6
  br label %46

46:                                               ; preds = %40, %38
  %47 = extractelement <16 x i1> %24, i64 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = add i32 %19, 253
  %50 = add i64 %20, -3
  %51 = sub i32 %10, %49
  %52 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %50
  %53 = trunc i32 %51 to i8
  store i8 %53, ptr %52, align 1, !tbaa !6
  br label %54

54:                                               ; preds = %48, %46
  %55 = extractelement <16 x i1> %24, i64 4
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = add i32 %19, 252
  %58 = add i64 %20, -4
  %59 = sub i32 %10, %57
  %60 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %58
  %61 = trunc i32 %59 to i8
  store i8 %61, ptr %60, align 1, !tbaa !6
  br label %62

62:                                               ; preds = %56, %54
  %63 = extractelement <16 x i1> %24, i64 5
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = add i32 %19, 251
  %66 = add i64 %20, -5
  %67 = sub i32 %10, %65
  %68 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %66
  %69 = trunc i32 %67 to i8
  store i8 %69, ptr %68, align 1, !tbaa !6
  br label %70

70:                                               ; preds = %64, %62
  %71 = extractelement <16 x i1> %24, i64 6
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = add i32 %19, 250
  %74 = add i64 %20, -6
  %75 = sub i32 %10, %73
  %76 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %74
  %77 = trunc i32 %75 to i8
  store i8 %77, ptr %76, align 1, !tbaa !6
  br label %78

78:                                               ; preds = %72, %70
  %79 = extractelement <16 x i1> %24, i64 7
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = add i32 %19, 249
  %82 = add i64 %20, -7
  %83 = sub i32 %10, %81
  %84 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %82
  %85 = trunc i32 %83 to i8
  store i8 %85, ptr %84, align 1, !tbaa !6
  br label %86

86:                                               ; preds = %80, %78
  %87 = extractelement <16 x i1> %24, i64 8
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = add i32 %19, 248
  %90 = add i64 %20, -8
  %91 = sub i32 %10, %89
  %92 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %90
  %93 = trunc i32 %91 to i8
  store i8 %93, ptr %92, align 1, !tbaa !6
  br label %94

94:                                               ; preds = %88, %86
  %95 = extractelement <16 x i1> %24, i64 9
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = add i32 %19, 247
  %98 = add i64 %20, -9
  %99 = sub i32 %10, %97
  %100 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %98
  %101 = trunc i32 %99 to i8
  store i8 %101, ptr %100, align 1, !tbaa !6
  br label %102

102:                                              ; preds = %96, %94
  %103 = extractelement <16 x i1> %24, i64 10
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = add i32 %19, 246
  %106 = add i64 %20, -10
  %107 = sub i32 %10, %105
  %108 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %106
  %109 = trunc i32 %107 to i8
  store i8 %109, ptr %108, align 1, !tbaa !6
  br label %110

110:                                              ; preds = %104, %102
  %111 = extractelement <16 x i1> %24, i64 11
  br i1 %111, label %112, label %118

112:                                              ; preds = %110
  %113 = add i32 %19, 245
  %114 = add i64 %20, -11
  %115 = sub i32 %10, %113
  %116 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %114
  %117 = trunc i32 %115 to i8
  store i8 %117, ptr %116, align 1, !tbaa !6
  br label %118

118:                                              ; preds = %112, %110
  %119 = extractelement <16 x i1> %24, i64 12
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = add i32 %19, 244
  %122 = add i64 %20, -12
  %123 = sub i32 %10, %121
  %124 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %122
  %125 = trunc i32 %123 to i8
  store i8 %125, ptr %124, align 1, !tbaa !6
  br label %126

126:                                              ; preds = %120, %118
  %127 = extractelement <16 x i1> %24, i64 13
  br i1 %127, label %128, label %134

128:                                              ; preds = %126
  %129 = add i32 %19, 243
  %130 = add i64 %20, -13
  %131 = sub i32 %10, %129
  %132 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %130
  %133 = trunc i32 %131 to i8
  store i8 %133, ptr %132, align 1, !tbaa !6
  br label %134

134:                                              ; preds = %128, %126
  %135 = extractelement <16 x i1> %24, i64 14
  br i1 %135, label %136, label %142

136:                                              ; preds = %134
  %137 = add i32 %19, 242
  %138 = add i64 %20, -14
  %139 = sub i32 %10, %137
  %140 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %138
  %141 = trunc i32 %139 to i8
  store i8 %141, ptr %140, align 1, !tbaa !6
  br label %142

142:                                              ; preds = %136, %134
  %143 = extractelement <16 x i1> %24, i64 15
  br i1 %143, label %144, label %150

144:                                              ; preds = %142
  %145 = add i32 %19, 241
  %146 = add i64 %20, -15
  %147 = sub i32 %10, %145
  %148 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 2, i64 %146
  %149 = trunc i32 %147 to i8
  store i8 %149, ptr %148, align 1, !tbaa !6
  br label %150

150:                                              ; preds = %144, %142
  %151 = add i64 %17, 16
  %152 = icmp eq i64 %151, %13
  br i1 %152, label %153, label %16, !llvm.loop !113

153:                                              ; preds = %150
  call fastcc void @change_stack(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 1) #19
  br label %154

154:                                              ; preds = %2, %153
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @subst_asm_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [0 x i8], align 16
  %4 = alloca %struct.stack_def, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %9 = tail call fastcc i32 @check_asm_stack_operands(ptr noundef %0) #19, !range !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %453, label %11

11:                                               ; preds = %2
  tail call void @extract_insn(ptr noundef nonnull %0) #20
  %12 = tail call i32 @constrain_operands(i32 noundef 1) #20
  %13 = load i32, ptr @which_alternative, align 4, !tbaa !22
  tail call void @preprocess_constraints() #20
  call fastcc void @get_asm_operands_in_out(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2029, ptr noundef nonnull @.str.4) #20
  br label %16

16:                                               ; preds = %11, %15
  %17 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !114
  %18 = icmp sgt i8 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = zext nneg i8 %17 to i64
  br label %21

21:                                               ; preds = %19, %37
  %22 = phi i64 [ 0, %19 ], [ %38, %37 ]
  %23 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %22
  store ptr %29, ptr %35, align 8, !tbaa !12
  %36 = load ptr, ptr %29, align 8, !tbaa !6
  store ptr %36, ptr %23, align 8, !tbaa !12
  br label %37

37:                                               ; preds = %21, %28, %34
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %21, !llvm.loop !116

40:                                               ; preds = %37, %16
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %101, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %49, %44 ], [ %42, %40 ]
  %46 = phi i32 [ %47, %44 ], [ 0, %40 ]
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %44, !llvm.loop !117

51:                                               ; preds = %44
  %52 = zext nneg i32 %47 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = alloca i8, i64 %53, align 16
  %55 = alloca i8, i64 %53, align 16
  %56 = shl nuw nsw i64 %52, 2
  %57 = alloca i8, i64 %56, align 16
  br i1 %43, label %101, label %58

58:                                               ; preds = %51, %96
  %59 = phi ptr [ %99, %96 ], [ %42, %51 ]
  %60 = phi i32 [ %97, %96 ], [ 0, %51 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 39
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  %72 = select i1 %71, i32 %69, i32 %63
  %73 = select i1 %71, ptr %68, ptr %62
  %74 = select i1 %71, ptr %67, ptr %61
  br label %75

75:                                               ; preds = %66, %58
  %76 = phi i32 [ %63, %58 ], [ %72, %66 ]
  %77 = phi ptr [ %62, %58 ], [ %73, %66 ]
  %78 = phi ptr [ %61, %58 ], [ %74, %66 ]
  %79 = and i32 %76, 65535
  %80 = icmp eq i32 %79, 37
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %77) #19
  %83 = and i32 %82, -8
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, ptr %59, align 8
  %87 = lshr i32 %86, 16
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %96 [
    i8 1, label %89
    i8 6, label %89
  ]

89:                                               ; preds = %85, %85
  %90 = and i32 %87, 255
  %91 = sext i32 %60 to i64
  %92 = getelementptr inbounds ptr, ptr %54, i64 %91
  store ptr %77, ptr %92, align 8, !tbaa !12
  %93 = getelementptr inbounds ptr, ptr %55, i64 %91
  store ptr %78, ptr %93, align 8, !tbaa !12
  %94 = getelementptr inbounds i32, ptr %57, i64 %91
  store i32 %90, ptr %94, align 4, !tbaa !22
  %95 = add nsw i32 %60, 1
  br label %96

96:                                               ; preds = %85, %89, %81, %75
  %97 = phi i32 [ %95, %89 ], [ %60, %81 ], [ %60, %75 ], [ %60, %85 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %58, !llvm.loop !118

101:                                              ; preds = %96, %40, %51
  %102 = phi ptr [ %57, %51 ], [ %3, %40 ], [ %57, %96 ]
  %103 = phi ptr [ %55, %51 ], [ %3, %40 ], [ %55, %96 ]
  %104 = phi ptr [ %54, %51 ], [ %3, %40 ], [ %54, %96 ]
  %105 = phi i32 [ 0, %51 ], [ 0, %40 ], [ %97, %96 ]
  %106 = load i32, ptr %8, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 15
  br i1 %108, label %109, label %162

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = load i32, ptr %111, align 8, !tbaa !14
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 3
  %115 = alloca i8, i64 %114, align 16
  %116 = alloca i8, i64 %114, align 16
  %117 = icmp sgt i32 %112, 0
  br i1 %117, label %118, label %162

118:                                              ; preds = %109
  %119 = zext nneg i32 %112 to i64
  br label %120

120:                                              ; preds = %118, %158
  %121 = phi i64 [ 0, %118 ], [ %160, %158 ]
  %122 = phi i32 [ 0, %118 ], [ %159, %158 ]
  %123 = getelementptr inbounds %struct.rtvec_def, ptr %111, i64 0, i32 1, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !12
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 25
  br i1 %127, label %128, label %158

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 39
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 37
  %140 = select i1 %139, i32 %137, i32 %131
  %141 = select i1 %139, ptr %136, ptr %130
  %142 = select i1 %139, ptr %135, ptr %129
  br label %143

143:                                              ; preds = %134, %128
  %144 = phi i32 [ %131, %128 ], [ %140, %134 ]
  %145 = phi ptr [ %130, %128 ], [ %141, %134 ]
  %146 = phi ptr [ %129, %128 ], [ %142, %134 ]
  %147 = and i32 %144, 65535
  %148 = icmp eq i32 %147, 37
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %145) #19
  %151 = and i32 %150, -8
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = sext i32 %122 to i64
  %155 = getelementptr inbounds ptr, ptr %115, i64 %154
  store ptr %145, ptr %155, align 8, !tbaa !12
  %156 = getelementptr inbounds ptr, ptr %116, i64 %154
  store ptr %146, ptr %156, align 8, !tbaa !12
  %157 = add nsw i32 %122, 1
  br label %158

158:                                              ; preds = %143, %149, %153, %120
  %159 = phi i32 [ %122, %120 ], [ %157, %153 ], [ %122, %149 ], [ %122, %143 ]
  %160 = add nuw nsw i64 %121, 1
  %161 = icmp eq i64 %160, %119
  br i1 %161, label %162, label %120, !llvm.loop !119

162:                                              ; preds = %158, %109, %101
  %163 = phi i32 [ 0, %101 ], [ 0, %109 ], [ %159, %158 ]
  %164 = phi ptr [ null, %101 ], [ %116, %109 ], [ %116, %158 ]
  %165 = phi ptr [ null, %101 ], [ %115, %109 ], [ %115, %158 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %166 = load i32, ptr %6, align 4, !tbaa !22
  %167 = load i32, ptr %5, align 4, !tbaa !22
  %168 = add nsw i32 %167, %166
  %169 = icmp sgt i32 %167, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %162
  call fastcc void @change_stack(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 1) #19
  br label %222

171:                                              ; preds = %162
  %172 = sext i32 %13 to i64
  %173 = sext i32 %166 to i64
  %174 = sext i32 %168 to i64
  br label %175

175:                                              ; preds = %171, %215
  %176 = phi i64 [ %173, %171 ], [ %216, %215 ]
  %177 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !12
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 37
  br i1 %181, label %182, label %215

182:                                              ; preds = %175
  %183 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %178) #19
  %184 = and i32 %183, -8
  %185 = icmp eq i32 %184, 8
  br i1 %185, label %186, label %215

186:                                              ; preds = %182
  %187 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %176, i64 %172, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !120
  %189 = tail call i32 @reg_class_subset_p(i32 noundef %188, i32 noundef 16) #20
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %215, label %191

191:                                              ; preds = %186
  %192 = load i32, ptr %187, align 8, !tbaa !120
  %193 = icmp eq i32 %192, 16
  br i1 %193, label %215, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %177, align 8, !tbaa !12
  %196 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %4, ptr noundef %195) #19
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2122, ptr noundef nonnull @.str.4) #20
  br label %199

199:                                              ; preds = %194, %198
  %200 = load ptr, ptr %177, align 8, !tbaa !12
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef %200) #19
  %202 = icmp eq i32 %196, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %4, align 8, !tbaa !68
  %205 = sub i32 %204, %196
  %206 = add i32 %205, 8
  %207 = sub i32 %204, %201
  %208 = add i32 %207, 8
  %209 = sext i32 %206 to i64
  %210 = getelementptr inbounds %struct.stack_def, ptr %4, i64 0, i32 2, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !6
  %212 = sext i32 %208 to i64
  %213 = getelementptr inbounds %struct.stack_def, ptr %4, i64 0, i32 2, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !6
  store i8 %214, ptr %210, align 1, !tbaa !6
  store i8 %211, ptr %213, align 1, !tbaa !6
  br label %215

215:                                              ; preds = %199, %203, %175, %182, %186, %191
  %216 = add nsw i64 %176, 1
  %217 = icmp slt i64 %216, %174
  br i1 %217, label %175, label %218, !llvm.loop !122

218:                                              ; preds = %215
  call fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #19
  br i1 %169, label %219, label %222

219:                                              ; preds = %218
  %220 = sext i32 %166 to i64
  %221 = sext i32 %168 to i64
  br label %226

222:                                              ; preds = %244, %170, %218
  %223 = icmp sgt i32 %105, 0
  br i1 %223, label %224, label %247

224:                                              ; preds = %222
  %225 = zext nneg i32 %105 to i64
  br label %251

226:                                              ; preds = %219, %244
  %227 = phi i64 [ %220, %219 ], [ %245, %244 ]
  %228 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !12
  %230 = load i32, ptr %229, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 37
  br i1 %232, label %233, label %244

233:                                              ; preds = %226
  %234 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %229) #19
  %235 = and i32 %234, -8
  %236 = icmp eq i32 %235, 8
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %229) #19
  %239 = icmp sgt i32 %238, -1
  br i1 %239, label %241, label %240

240:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2155, ptr noundef nonnull @.str.4) #20
  br label %241

241:                                              ; preds = %237, %240
  %242 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %227
  %243 = load ptr, ptr %242, align 8, !tbaa !12
  tail call fastcc void @replace_reg(ptr noundef %243, i32 noundef %238) #19
  br label %244

244:                                              ; preds = %226, %233, %241
  %245 = add nsw i64 %227, 1
  %246 = icmp slt i64 %245, %221
  br i1 %246, label %226, label %222, !llvm.loop !123

247:                                              ; preds = %265, %222
  %248 = icmp sgt i32 %163, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %247
  %250 = zext nneg i32 %163 to i64
  br label %275

251:                                              ; preds = %224, %265
  %252 = phi i64 [ 0, %224 ], [ %266, %265 ]
  %253 = getelementptr inbounds i32, ptr %102, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !22
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = getelementptr inbounds ptr, ptr %104, i64 %252
  %258 = load ptr, ptr %257, align 8, !tbaa !12
  %259 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %258) #19
  %260 = icmp sgt i32 %259, -1
  br i1 %260, label %262, label %261

261:                                              ; preds = %256
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2165, ptr noundef nonnull @.str.4) #20
  br label %262

262:                                              ; preds = %256, %261
  %263 = getelementptr inbounds ptr, ptr %103, i64 %252
  %264 = load ptr, ptr %263, align 8, !tbaa !12
  tail call fastcc void @replace_reg(ptr noundef %264, i32 noundef %259) #19
  br label %265

265:                                              ; preds = %251, %262
  %266 = add nuw nsw i64 %252, 1
  %267 = icmp eq i64 %266, %225
  br i1 %267, label %247, label %251, !llvm.loop !124

268:                                              ; preds = %288, %247
  br i1 %169, label %269, label %291

269:                                              ; preds = %268
  %270 = sext i32 %13 to i64
  %271 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %272 = sext i32 %166 to i64
  %273 = sext i32 %168 to i64
  %274 = zext nneg i32 %163 to i64
  br label %295

275:                                              ; preds = %249, %288
  %276 = phi i64 [ 0, %249 ], [ %289, %288 ]
  %277 = getelementptr inbounds ptr, ptr %165, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !12
  %279 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %278) #19
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = add nsw i32 %279, -8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %283, i64 39
  %285 = load ptr, ptr %284, align 8, !tbaa !12
  %286 = getelementptr inbounds ptr, ptr %164, i64 %276
  %287 = load ptr, ptr %286, align 8, !tbaa !12
  store ptr %285, ptr %287, align 8, !tbaa !12
  br label %288

288:                                              ; preds = %281, %275
  %289 = add nuw nsw i64 %276, 1
  %290 = icmp eq i64 %289, %250
  br i1 %290, label %268, label %275, !llvm.loop !125

291:                                              ; preds = %332, %268
  %292 = icmp sgt i32 %166, 0
  %293 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %294 = zext nneg i32 %166 to i64
  br label %335

295:                                              ; preds = %269, %332
  %296 = phi i64 [ %272, %269 ], [ %333, %332 ]
  %297 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !12
  %299 = load i32, ptr %298, align 8
  %300 = and i32 %299, 65535
  %301 = icmp eq i32 %300, 37
  br i1 %301, label %302, label %332

302:                                              ; preds = %295
  %303 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %298) #19
  %304 = and i32 %303, -8
  %305 = icmp eq i32 %304, 8
  br i1 %305, label %306, label %332

306:                                              ; preds = %302
  br i1 %248, label %310, label %317

307:                                              ; preds = %310
  %308 = add nuw nsw i64 %311, 1
  %309 = icmp eq i64 %308, %274
  br i1 %309, label %317, label %310, !llvm.loop !126

310:                                              ; preds = %306, %307
  %311 = phi i64 [ %308, %307 ], [ 0, %306 ]
  %312 = getelementptr inbounds ptr, ptr %165, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !12
  %314 = load ptr, ptr %297, align 8, !tbaa !12
  %315 = tail call i32 @operands_match_p(ptr noundef %313, ptr noundef %314) #20
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %307, label %321

317:                                              ; preds = %307, %306
  %318 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %296, i64 %270, i32 3
  %319 = load i32, ptr %318, align 16, !tbaa !127
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %332

321:                                              ; preds = %310, %317
  %322 = load i32, ptr %1, align 8, !tbaa !68
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !6
  %326 = zext nneg i8 %325 to i64
  %327 = shl nuw i64 1, %326
  %328 = xor i64 %327, -1
  %329 = load i64, ptr %271, align 8, !tbaa !69
  %330 = and i64 %329, %328
  store i64 %330, ptr %271, align 8, !tbaa !69
  %331 = add nsw i32 %322, -1
  store i32 %331, ptr %1, align 8, !tbaa !68
  br label %332

332:                                              ; preds = %317, %321, %295, %302
  %333 = add nsw i64 %296, 1
  %334 = icmp slt i64 %333, %273
  br i1 %334, label %295, label %291, !llvm.loop !128

335:                                              ; preds = %370, %291
  %336 = phi i64 [ 15, %291 ], [ %371, %370 ]
  br i1 %292, label %342, label %372

337:                                              ; preds = %368
  br i1 %292, label %338, label %374

338:                                              ; preds = %337
  %339 = icmp slt i32 %105, 1
  %340 = zext nneg i32 %166 to i64
  %341 = zext nneg i32 %105 to i64
  br label %381

342:                                              ; preds = %335, %365
  %343 = phi i64 [ %366, %365 ], [ 0, %335 ]
  %344 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !12
  %346 = load i32, ptr %345, align 8
  %347 = and i32 %346, 65535
  %348 = icmp eq i32 %347, 37
  br i1 %348, label %349, label %365

349:                                              ; preds = %342
  %350 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %345) #19
  %351 = and i32 %350, -8
  %352 = icmp eq i32 %351, 8
  %353 = zext nneg i32 %350 to i64
  %354 = icmp eq i64 %336, %353
  %355 = select i1 %352, i1 %354, i1 false
  br i1 %355, label %356, label %365

356:                                              ; preds = %349
  %357 = trunc i64 %336 to i8
  %358 = load i32, ptr %1, align 8, !tbaa !68
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %1, align 8, !tbaa !68
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %360
  store i8 %357, ptr %361, align 1, !tbaa !6
  %362 = shl nuw nsw i64 1, %336
  %363 = load i64, ptr %293, align 8, !tbaa !69
  %364 = or i64 %363, %362
  store i64 %364, ptr %293, align 8, !tbaa !69
  br label %368

365:                                              ; preds = %342, %349
  %366 = add nuw nsw i64 %343, 1
  %367 = icmp eq i64 %366, %294
  br i1 %367, label %368, label %342, !llvm.loop !129

368:                                              ; preds = %365, %356
  %369 = icmp ugt i64 %336, 8
  br i1 %369, label %370, label %337

370:                                              ; preds = %368, %372
  %371 = add nsw i64 %336, -1
  br label %335, !llvm.loop !130

372:                                              ; preds = %335
  %373 = icmp ugt i64 %336, 8
  br i1 %373, label %370, label %374

374:                                              ; preds = %372, %409, %337
  %375 = phi ptr [ %0, %337 ], [ %410, %409 ], [ %0, %372 ]
  %376 = icmp sgt i32 %167, 0
  br i1 %376, label %377, label %453

377:                                              ; preds = %374
  %378 = icmp slt i32 %105, 1
  %379 = sext i32 %166 to i64
  %380 = zext nneg i32 %105 to i64
  br label %413

381:                                              ; preds = %338, %409
  %382 = phi i64 [ 0, %338 ], [ %411, %409 ]
  %383 = phi ptr [ %0, %338 ], [ %410, %409 ]
  %384 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %382
  %385 = load ptr, ptr %384, align 8, !tbaa !12
  %386 = load i32, ptr %385, align 8
  %387 = and i32 %386, 65535
  %388 = icmp eq i32 %387, 37
  br i1 %388, label %389, label %409

389:                                              ; preds = %381
  %390 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %385) #19
  %391 = and i32 %390, -8
  %392 = icmp ne i32 %391, 8
  %393 = select i1 %392, i1 true, i1 %339
  br i1 %393, label %409, label %394

394:                                              ; preds = %389, %406
  %395 = phi i64 [ %407, %406 ], [ 0, %389 ]
  %396 = getelementptr inbounds ptr, ptr %104, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !12
  %398 = tail call fastcc i32 @rhs_regno(ptr noundef %397) #19
  %399 = icmp eq i32 %390, %398
  br i1 %399, label %400, label %406

400:                                              ; preds = %394
  %401 = getelementptr inbounds i32, ptr %102, i64 %395
  %402 = load i32, ptr %401, align 4, !tbaa !22
  %403 = icmp eq i32 %402, 6
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = tail call fastcc ptr @emit_pop_insn(ptr noundef %383, ptr noundef %1, ptr noundef nonnull %385, i32 noundef 0) #19
  br label %409

406:                                              ; preds = %394, %400
  %407 = add nuw nsw i64 %395, 1
  %408 = icmp eq i64 %407, %341
  br i1 %408, label %409, label %394, !llvm.loop !131

409:                                              ; preds = %406, %389, %404, %381
  %410 = phi ptr [ %383, %389 ], [ %383, %381 ], [ %405, %404 ], [ %383, %406 ]
  %411 = add nuw nsw i64 %382, 1
  %412 = icmp eq i64 %411, %340
  br i1 %412, label %374, label %381, !llvm.loop !132

413:                                              ; preds = %377, %448
  %414 = phi i64 [ %379, %377 ], [ %450, %448 ]
  %415 = phi ptr [ %375, %377 ], [ %449, %448 ]
  %416 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %414
  %417 = load ptr, ptr %416, align 8, !tbaa !12
  %418 = load i32, ptr %417, align 8
  %419 = and i32 %418, 65535
  %420 = icmp eq i32 %419, 37
  br i1 %420, label %421, label %448

421:                                              ; preds = %413
  %422 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %417) #19
  %423 = and i32 %422, -8
  %424 = icmp ne i32 %423, 8
  %425 = select i1 %424, i1 true, i1 %378
  br i1 %425, label %448, label %426

426:                                              ; preds = %421
  %427 = zext nneg i32 %422 to i64
  %428 = shl nuw nsw i64 1, %427
  br label %429

429:                                              ; preds = %426, %445
  %430 = phi i64 [ 0, %426 ], [ %446, %445 ]
  %431 = getelementptr inbounds ptr, ptr %104, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !12
  %433 = tail call fastcc i32 @rhs_regno(ptr noundef %432) #19
  %434 = icmp eq i32 %422, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %429
  %436 = getelementptr inbounds i32, ptr %102, i64 %430
  %437 = load i32, ptr %436, align 4, !tbaa !22
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %445

439:                                              ; preds = %435
  %440 = load i64, ptr %293, align 8, !tbaa !69
  %441 = and i64 %440, %428
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %439
  %444 = tail call fastcc ptr @emit_pop_insn(ptr noundef %415, ptr noundef nonnull %1, ptr noundef nonnull %417, i32 noundef 0) #19
  br label %448

445:                                              ; preds = %429, %435, %439
  %446 = add nuw nsw i64 %430, 1
  %447 = icmp eq i64 %446, %380
  br i1 %447, label %448, label %429, !llvm.loop !133

448:                                              ; preds = %445, %421, %443, %413
  %449 = phi ptr [ %415, %421 ], [ %415, %413 ], [ %444, %443 ], [ %415, %445 ]
  %450 = add nsw i64 %414, 1
  %451 = trunc i64 %450 to i32
  %452 = icmp eq i32 %168, %451
  br i1 %452, label %453, label %413, !llvm.loop !134

453:                                              ; preds = %448, %374, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x ptr], align 16
  %5 = load i32, ptr %2, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %819 [
    i16 24, label %7
    i16 138, label %32
    i16 25, label %33
    i16 23, label %90
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %9 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %8) #19
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %819

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #19
  %16 = and i32 %15, -8
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %819

18:                                               ; preds = %14
  %19 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %15) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %819, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !69
  %24 = load ptr, ptr %9, align 8, !tbaa !12
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #19
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %23
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %819, label %30

30:                                               ; preds = %21
  %31 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %24, i32 noundef 0) #19
  br label %819

32:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1378, ptr noundef nonnull @.str.4) #20
  br label %33

33:                                               ; preds = %3, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %35 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %34) #19
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %819

40:                                               ; preds = %33
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #19
  %42 = and i32 %41, -8
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %819

44:                                               ; preds = %40
  %45 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %36) #20
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = icmp eq ptr %47, %2
  %49 = icmp eq ptr %45, null
  br i1 %48, label %60, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %35, align 8, !tbaa !12
  br i1 %49, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call fastcc ptr @emit_pop_insn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %51, i32 noundef 1) #19
  br label %57

54:                                               ; preds = %50
  %55 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %51) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %54
  %58 = phi ptr [ %45, %52 ], [ %55, %54 ]
  tail call void @remove_note(ptr noundef nonnull %0, ptr noundef nonnull %58) #20
  br label %59

59:                                               ; preds = %57, %54
  tail call fastcc void @replace_reg(ptr noundef nonnull %35, i32 noundef 9) #19
  br label %819

60:                                               ; preds = %44
  br i1 %49, label %61, label %819

61:                                               ; preds = %60
  %62 = load ptr, ptr %35, align 8, !tbaa !12
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !6
  %69 = and i8 %68, -2
  %70 = icmp eq i8 %69, 10
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #19
  %73 = add i32 %72, -7
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %74, i64 38
  %76 = load ptr, ptr %75, align 8, !tbaa !12
  %77 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %76) #19
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %76) #20
  %81 = tail call ptr @emit_insn_before(ptr noundef %80, ptr noundef nonnull %0) #20
  %82 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %81, ptr noundef %1, ptr noundef %76) #19
  br label %83

83:                                               ; preds = %61, %71, %79
  %84 = phi i8 [ 0, %61 ], [ %82, %79 ], [ 0, %71 ]
  %85 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %62) #19
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %819

87:                                               ; preds = %83
  %88 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %62) #19
  %89 = or i8 %88, %84
  br label %819

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %92 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %91) #19
  %93 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %93) #19
  %95 = load ptr, ptr %93, align 8, !tbaa !6
  %96 = load ptr, ptr %94, align 8, !tbaa !12
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %96) #19
  %102 = and i32 %101, -8
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %115, label %104

104:                                              ; preds = %100, %90
  %105 = load ptr, ptr %92, align 8, !tbaa !12
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #19
  %111 = and i32 %110, -8
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = trunc i32 %97 to i16
  switch i16 %114, label %117 [
    i16 37, label %115
    i16 43, label %115
    i16 32, label %115
  ]

115:                                              ; preds = %113, %113, %113, %100
  %116 = tail call fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %819

117:                                              ; preds = %113, %109, %104
  %118 = load i32, ptr %95, align 8
  %119 = trunc i32 %118 to i16
  switch i16 %119, label %818 [
    i16 48, label %120
    i16 26, label %121
    i16 37, label %153
    i16 102, label %157
    i16 112, label %157
    i16 111, label %157
    i16 51, label %157
    i16 50, label %190
    i16 55, label %190
    i16 52, label %190
    i16 49, label %190
    i16 18, label %420
    i16 47, label %687
  ]

120:                                              ; preds = %117
  tail call fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %95) #19
  br label %819

121:                                              ; preds = %117
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #19
  %123 = zext i32 %122 to i64
  %124 = lshr i32 %106, 16
  %125 = and i32 %124, 255
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %123, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !6
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %121
  %131 = zext i8 %128 to i32
  %132 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  br label %133

133:                                              ; preds = %130, %133
  %134 = phi ptr [ %105, %130 ], [ %144, %133 ]
  %135 = phi i32 [ %131, %130 ], [ %136, %133 ]
  %136 = add nsw i32 %135, -1
  %137 = tail call fastcc i32 @rhs_regno(ptr noundef %134) #19
  %138 = add i32 %137, %136
  %139 = trunc i32 %138 to i8
  %140 = load i32, ptr %1, align 8, !tbaa !68
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %1, align 8, !tbaa !68
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %142
  store i8 %139, ptr %143, align 1, !tbaa !6
  %144 = load ptr, ptr %92, align 8, !tbaa !12
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef %144) #19
  %146 = add i32 %145, %136
  %147 = zext nneg i32 %146 to i64
  %148 = shl nuw i64 1, %147
  %149 = load i64, ptr %132, align 8, !tbaa !69
  %150 = or i64 %148, %149
  store i64 %150, ptr %132, align 8, !tbaa !69
  %151 = icmp ugt i32 %135, 1
  br i1 %151, label %133, label %152, !llvm.loop !135

152:                                              ; preds = %133, %121
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %819

153:                                              ; preds = %117
  %154 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !12
  %155 = icmp eq ptr %105, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1481, ptr noundef nonnull @.str.4) #20
  br label %160

157:                                              ; preds = %117, %117, %117, %117
  %158 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %159 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %158) #19
  br label %160

160:                                              ; preds = %156, %153, %157
  %161 = phi ptr [ %159, %157 ], [ %94, %153 ], [ %94, %156 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %162) #19
  %163 = load ptr, ptr %161, align 8, !tbaa !12
  %164 = tail call fastcc i32 @rhs_regno(ptr noundef %163) #19
  %165 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %164) #20
  %166 = load ptr, ptr %92, align 8, !tbaa !12
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 37
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %166) #19
  %172 = and i32 %171, -8
  %173 = icmp eq i32 %172, 8
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %175

175:                                              ; preds = %174, %170, %160
  %176 = icmp eq ptr %165, null
  br i1 %176, label %189, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %178, i32 noundef 8) #19
  %179 = load i32, ptr %1, align 8, !tbaa !68
  %180 = add nsw i32 %179, -1
  store i32 %180, ptr %1, align 8, !tbaa !68
  %181 = load ptr, ptr %161, align 8, !tbaa !12
  %182 = tail call fastcc i32 @rhs_regno(ptr noundef %181) #19
  %183 = zext nneg i32 %182 to i64
  %184 = shl nuw i64 1, %183
  %185 = xor i64 %184, -1
  %186 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !69
  %188 = and i64 %187, %185
  store i64 %188, ptr %186, align 8, !tbaa !69
  br label %189

189:                                              ; preds = %177, %175
  tail call fastcc void @replace_reg(ptr noundef nonnull %161, i32 noundef 8) #19
  br label %819

190:                                              ; preds = %117, %117, %117, %117
  %191 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %192 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %191) #19
  %193 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %193) #19
  %195 = load ptr, ptr %192, align 8, !tbaa !12
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 37
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %195) #19
  %201 = and i32 %200, -8
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %200) #20
  br label %205

205:                                              ; preds = %190, %199, %203
  %206 = phi ptr [ %204, %203 ], [ null, %199 ], [ null, %190 ]
  %207 = load ptr, ptr %194, align 8, !tbaa !12
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 37
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %207) #19
  %213 = and i32 %212, -8
  %214 = icmp eq i32 %213, 8
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %212) #20
  br label %217

217:                                              ; preds = %205, %211, %215
  %218 = phi ptr [ %216, %215 ], [ null, %211 ], [ null, %205 ]
  %219 = load ptr, ptr %192, align 8, !tbaa !12
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 37
  br i1 %222, label %223, label %262

223:                                              ; preds = %217
  %224 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %219) #19
  %225 = and i32 %224, -8
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %227, label %262

227:                                              ; preds = %223
  %228 = load ptr, ptr %194, align 8, !tbaa !12
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 37
  br i1 %231, label %232, label %262

232:                                              ; preds = %227
  %233 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %228) #19
  %234 = and i32 %233, -8
  %235 = icmp eq i32 %234, 8
  br i1 %235, label %236, label %262

236:                                              ; preds = %232
  %237 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %219) #19
  %238 = load ptr, ptr %194, align 8, !tbaa !12
  %239 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %238) #19
  %240 = icmp eq i32 %237, -1
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load ptr, ptr %192, align 8, !tbaa !12
  %243 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %242) #20
  %244 = tail call ptr @emit_insn_before(ptr noundef %243, ptr noundef %0) #20
  %245 = load ptr, ptr %192, align 8, !tbaa !12
  %246 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %244, ptr noundef %1, ptr noundef %245) #19
  br label %247

247:                                              ; preds = %241, %236
  %248 = phi i8 [ %246, %241 ], [ 0, %236 ]
  %249 = icmp eq i32 %239, -1
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load ptr, ptr %194, align 8, !tbaa !12
  %252 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %251) #20
  %253 = tail call ptr @emit_insn_before(ptr noundef %252, ptr noundef %0) #20
  %254 = load ptr, ptr %194, align 8, !tbaa !12
  %255 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %253, ptr noundef %1, ptr noundef %254) #19
  %256 = or i8 %255, %248
  br label %257

257:                                              ; preds = %250, %247
  %258 = phi i8 [ %256, %250 ], [ %248, %247 ]
  %259 = icmp ne i32 %237, 8
  %260 = icmp ne i32 %239, 8
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %265

262:                                              ; preds = %257, %217, %223, %227, %232
  %263 = phi i8 [ 0, %232 ], [ 0, %227 ], [ 0, %223 ], [ 0, %217 ], [ %258, %257 ]
  %264 = load ptr, ptr %92, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %264) #19
  br label %265

265:                                              ; preds = %262, %257
  %266 = phi i8 [ %258, %257 ], [ %263, %262 ]
  %267 = load ptr, ptr %192, align 8, !tbaa !12
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 37
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %267) #19
  %273 = and i32 %272, -8
  %274 = icmp eq i32 %273, 8
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %267) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %192, i32 noundef %276) #19
  br label %277

277:                                              ; preds = %275, %271, %265
  %278 = load ptr, ptr %194, align 8, !tbaa !12
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 37
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %278) #19
  %284 = and i32 %283, -8
  %285 = icmp eq i32 %284, 8
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %278) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %194, i32 noundef %287) #19
  br label %288

288:                                              ; preds = %286, %282, %277
  %289 = icmp eq ptr %206, null
  br i1 %289, label %337, label %290

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !6
  %293 = tail call fastcc i32 @rhs_regno(ptr noundef %292) #19
  %294 = load i32, ptr %1, align 8, !tbaa !68
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !6
  %298 = zext i8 %297 to i32
  %299 = icmp eq i32 %293, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %290
  %301 = load ptr, ptr %92, align 8, !tbaa !12
  %302 = tail call fastcc i32 @rhs_regno(ptr noundef %301) #19
  %303 = zext nneg i32 %302 to i64
  %304 = shl nuw i64 1, %303
  %305 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !69
  %307 = or i64 %304, %306
  store i64 %307, ptr %305, align 8, !tbaa !69
  %308 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %301) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %308) #19
  br label %326

309:                                              ; preds = %290
  %310 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %292) #19
  %311 = load ptr, ptr %92, align 8, !tbaa !12
  %312 = tail call fastcc i32 @rhs_regno(ptr noundef %311) #19
  %313 = zext nneg i32 %312 to i64
  %314 = shl nuw i64 1, %313
  %315 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %316 = load i64, ptr %315, align 8, !tbaa !69
  %317 = or i64 %314, %316
  store i64 %317, ptr %315, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %310) #19
  %318 = load i32, ptr %1, align 8, !tbaa !68
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !6
  %322 = sub i32 %318, %310
  %323 = add i32 %322, 8
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %324
  store i8 %321, ptr %325, align 1, !tbaa !6
  br label %326

326:                                              ; preds = %309, %300
  %327 = load ptr, ptr %291, align 8, !tbaa !6
  %328 = tail call fastcc i32 @rhs_regno(ptr noundef %327) #19
  %329 = zext nneg i32 %328 to i64
  %330 = shl nuw i64 1, %329
  %331 = xor i64 %330, -1
  %332 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %333 = load i64, ptr %332, align 8, !tbaa !69
  %334 = and i64 %333, %331
  store i64 %334, ptr %332, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %291, i32 noundef 8) #19
  %335 = load i32, ptr %1, align 8, !tbaa !68
  %336 = add nsw i32 %335, -1
  store i32 %336, ptr %1, align 8, !tbaa !68
  br label %395

337:                                              ; preds = %288
  %338 = icmp eq ptr %218, null
  br i1 %338, label %386, label %339

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = tail call fastcc i32 @rhs_regno(ptr noundef %341) #19
  %343 = load i32, ptr %1, align 8, !tbaa !68
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !6
  %347 = zext i8 %346 to i32
  %348 = icmp eq i32 %342, %347
  br i1 %348, label %349, label %358

349:                                              ; preds = %339
  %350 = load ptr, ptr %92, align 8, !tbaa !12
  %351 = tail call fastcc i32 @rhs_regno(ptr noundef %350) #19
  %352 = zext nneg i32 %351 to i64
  %353 = shl nuw i64 1, %352
  %354 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !69
  %356 = or i64 %353, %355
  store i64 %356, ptr %354, align 8, !tbaa !69
  %357 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %350) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %357) #19
  br label %375

358:                                              ; preds = %339
  %359 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %341) #19
  %360 = load ptr, ptr %92, align 8, !tbaa !12
  %361 = tail call fastcc i32 @rhs_regno(ptr noundef %360) #19
  %362 = zext nneg i32 %361 to i64
  %363 = shl nuw i64 1, %362
  %364 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %365 = load i64, ptr %364, align 8, !tbaa !69
  %366 = or i64 %363, %365
  store i64 %366, ptr %364, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %359) #19
  %367 = load i32, ptr %1, align 8, !tbaa !68
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !6
  %371 = sub i32 %367, %359
  %372 = add i32 %371, 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %373
  store i8 %370, ptr %374, align 1, !tbaa !6
  br label %375

375:                                              ; preds = %358, %349
  %376 = load ptr, ptr %340, align 8, !tbaa !6
  %377 = tail call fastcc i32 @rhs_regno(ptr noundef %376) #19
  %378 = zext nneg i32 %377 to i64
  %379 = shl nuw i64 1, %378
  %380 = xor i64 %379, -1
  %381 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %382 = load i64, ptr %381, align 8, !tbaa !69
  %383 = and i64 %382, %380
  store i64 %383, ptr %381, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %340, i32 noundef 8) #19
  %384 = load i32, ptr %1, align 8, !tbaa !68
  %385 = add nsw i32 %384, -1
  store i32 %385, ptr %1, align 8, !tbaa !68
  br label %395

386:                                              ; preds = %337
  %387 = load ptr, ptr %92, align 8, !tbaa !12
  %388 = tail call fastcc i32 @rhs_regno(ptr noundef %387) #19
  %389 = zext nneg i32 %388 to i64
  %390 = shl nuw i64 1, %389
  %391 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %392 = load i64, ptr %391, align 8, !tbaa !69
  %393 = or i64 %390, %392
  store i64 %393, ptr %391, align 8, !tbaa !69
  %394 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %387) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %394) #19
  br label %395

395:                                              ; preds = %375, %386, %326
  %396 = load i32, ptr %95, align 8
  %397 = and i32 %396, 65535
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !22
  %401 = icmp eq i32 %400, 3
  br i1 %401, label %402, label %819

402:                                              ; preds = %395
  %403 = load ptr, ptr %192, align 8, !tbaa !12
  %404 = load i32, ptr %403, align 8
  %405 = and i32 %404, 65535
  %406 = icmp eq i32 %405, 37
  br i1 %406, label %407, label %819

407:                                              ; preds = %402
  %408 = load ptr, ptr %194, align 8, !tbaa !12
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 37
  br i1 %411, label %412, label %819

412:                                              ; preds = %407
  %413 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %403) #19
  %414 = load ptr, ptr %92, align 8, !tbaa !12
  %415 = tail call fastcc i32 @rhs_regno(ptr noundef %414) #19
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %819, label %417

417:                                              ; preds = %412
  %418 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %403) #19
  %419 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %408) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %192, i32 noundef %419) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %194, i32 noundef %418) #19
  br label %819

420:                                              ; preds = %117
  %421 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %422 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load i32, ptr %422, align 8, !tbaa !6
  switch i32 %423, label %686 [
    i32 66, label %426
    i32 74, label %426
    i32 75, label %426
    i32 69, label %458
    i32 60, label %473
    i32 61, label %473
    i32 65, label %473
    i32 67, label %473
    i32 70, label %473
    i32 71, label %473
    i32 72, label %473
    i32 73, label %473
    i32 80, label %473
    i32 84, label %473
    i32 81, label %494
    i32 85, label %494
    i32 68, label %424
    i32 62, label %533
    i32 63, label %533
    i32 64, label %533
    i32 86, label %584
    i32 88, label %584
    i32 90, label %584
    i32 87, label %626
    i32 89, label %626
    i32 91, label %626
    i32 95, label %655
    i32 32, label %662
    i32 31, label %675
  ]

424:                                              ; preds = %420
  %425 = load i32, ptr %1, align 8, !tbaa !68
  br label %497

426:                                              ; preds = %420, %420, %420
  %427 = load ptr, ptr %421, align 8, !tbaa !6
  %428 = getelementptr inbounds %struct.rtvec_def, ptr %427, i64 0, i32 1
  %429 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %428) #19
  %430 = load ptr, ptr %429, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %430) #19
  %431 = load ptr, ptr %429, align 8, !tbaa !12
  %432 = tail call fastcc i32 @rhs_regno(ptr noundef %431) #19
  %433 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %432) #20
  %434 = load ptr, ptr %92, align 8, !tbaa !12
  %435 = load i32, ptr %434, align 8
  %436 = and i32 %435, 65535
  %437 = icmp eq i32 %436, 37
  br i1 %437, label %438, label %443

438:                                              ; preds = %426
  %439 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %434) #19
  %440 = and i32 %439, -8
  %441 = icmp eq i32 %440, 8
  br i1 %441, label %442, label %443

442:                                              ; preds = %438
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %443

443:                                              ; preds = %442, %438, %426
  %444 = icmp eq ptr %433, null
  br i1 %444, label %457, label %445

445:                                              ; preds = %443
  %446 = getelementptr inbounds %struct.rtx_def, ptr %433, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %446, i32 noundef 8) #19
  %447 = load i32, ptr %1, align 8, !tbaa !68
  %448 = add nsw i32 %447, -1
  store i32 %448, ptr %1, align 8, !tbaa !68
  %449 = load ptr, ptr %429, align 8, !tbaa !12
  %450 = tail call fastcc i32 @rhs_regno(ptr noundef %449) #19
  %451 = zext nneg i32 %450 to i64
  %452 = shl nuw i64 1, %451
  %453 = xor i64 %452, -1
  %454 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %455 = load i64, ptr %454, align 8, !tbaa !69
  %456 = and i64 %455, %453
  store i64 %456, ptr %454, align 8, !tbaa !69
  br label %457

457:                                              ; preds = %445, %443
  tail call fastcc void @replace_reg(ptr noundef nonnull %429, i32 noundef 8) #19
  br label %819

458:                                              ; preds = %420
  %459 = load ptr, ptr %421, align 8, !tbaa !6
  %460 = getelementptr inbounds %struct.rtvec_def, ptr %459, i64 0, i32 1
  %461 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %460) #19
  %462 = load ptr, ptr %461, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %462) #19
  %463 = load ptr, ptr %461, align 8, !tbaa !12
  %464 = tail call fastcc i32 @rhs_regno(ptr noundef %463) #19
  %465 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %464) #20
  tail call fastcc void @replace_reg(ptr noundef nonnull %461, i32 noundef 8) #19
  %466 = icmp eq ptr %465, null
  br i1 %466, label %819, label %467

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.rtx_def, ptr %465, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !6
  %470 = tail call fastcc i32 @rhs_regno(ptr noundef %469) #19
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %470) #19
  %471 = load ptr, ptr %468, align 8, !tbaa !6
  %472 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %471, i32 noundef 0) #19
  br label %819

473:                                              ; preds = %420, %420, %420, %420, %420, %420, %420, %420, %420, %420
  %474 = load ptr, ptr %421, align 8, !tbaa !6
  %475 = getelementptr inbounds %struct.rtvec_def, ptr %474, i64 0, i32 1
  %476 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %475) #19
  %477 = load ptr, ptr %476, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %477) #19
  %478 = load ptr, ptr %476, align 8, !tbaa !12
  %479 = tail call fastcc i32 @rhs_regno(ptr noundef %478) #19
  %480 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %479) #20
  %481 = icmp eq ptr %480, null
  br i1 %481, label %483, label %482

482:                                              ; preds = %473
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1729, ptr noundef nonnull @.str.4) #20
  br label %483

483:                                              ; preds = %473, %482
  %484 = load ptr, ptr %92, align 8, !tbaa !12
  %485 = load i32, ptr %484, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 37
  br i1 %487, label %488, label %493

488:                                              ; preds = %483
  %489 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %484) #19
  %490 = and i32 %489, -8
  %491 = icmp eq i32 %490, 8
  br i1 %491, label %492, label %493

492:                                              ; preds = %488
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %493

493:                                              ; preds = %492, %488, %483
  tail call fastcc void @replace_reg(ptr noundef nonnull %476, i32 noundef 8) #19
  br label %819

494:                                              ; preds = %420, %420
  %495 = load i32, ptr %1, align 8, !tbaa !68
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %1, align 8, !tbaa !68
  br label %497

497:                                              ; preds = %424, %494
  %498 = phi i32 [ %425, %424 ], [ %496, %494 ]
  %499 = add nsw i32 %498, -1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !6
  %503 = sext i32 %498 to i64
  %504 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %503
  store i8 %502, ptr %504, align 1, !tbaa !6
  %505 = load ptr, ptr %92, align 8, !tbaa !12
  %506 = load i32, ptr %505, align 8
  %507 = and i32 %506, 65535
  %508 = icmp eq i32 %507, 37
  br i1 %508, label %509, label %513

509:                                              ; preds = %497
  %510 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %505) #19
  %511 = and i32 %510, -8
  %512 = icmp eq i32 %511, 8
  br i1 %512, label %515, label %513

513:                                              ; preds = %509, %497
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1756, ptr noundef nonnull @.str.4) #20
  %514 = load ptr, ptr %92, align 8, !tbaa !12
  br label %515

515:                                              ; preds = %509, %513
  %516 = phi ptr [ %505, %509 ], [ %514, %513 ]
  %517 = tail call fastcc i32 @rhs_regno(ptr noundef %516) #19
  %518 = trunc i32 %517 to i8
  %519 = load i32, ptr %1, align 8, !tbaa !68
  %520 = add nsw i32 %519, -1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %521
  store i8 %518, ptr %522, align 1, !tbaa !6
  %523 = load ptr, ptr %92, align 8, !tbaa !12
  %524 = tail call fastcc i32 @rhs_regno(ptr noundef %523) #19
  %525 = zext nneg i32 %524 to i64
  %526 = shl nuw i64 1, %525
  %527 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %528 = load i64, ptr %527, align 8, !tbaa !69
  %529 = or i64 %526, %528
  store i64 %529, ptr %527, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 9) #19
  %530 = load ptr, ptr %421, align 8, !tbaa !6
  %531 = getelementptr inbounds %struct.rtvec_def, ptr %530, i64 0, i32 1
  %532 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %531) #19
  tail call fastcc void @replace_reg(ptr noundef %532, i32 noundef 8) #19
  br label %819

533:                                              ; preds = %420, %420, %420
  %534 = load ptr, ptr %421, align 8, !tbaa !6
  %535 = getelementptr inbounds %struct.rtvec_def, ptr %534, i64 0, i32 1
  %536 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %535) #19
  %537 = load ptr, ptr %421, align 8, !tbaa !6
  %538 = getelementptr inbounds %struct.rtvec_def, ptr %537, i64 1
  %539 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %538) #19
  %540 = load ptr, ptr %536, align 8, !tbaa !12
  %541 = tail call fastcc i32 @rhs_regno(ptr noundef %540) #19
  %542 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %541) #20
  %543 = load ptr, ptr %539, align 8, !tbaa !12
  %544 = tail call fastcc i32 @rhs_regno(ptr noundef %543) #19
  %545 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %544) #20
  %546 = load ptr, ptr %536, align 8, !tbaa !12
  %547 = load ptr, ptr %539, align 8, !tbaa !12
  tail call fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr noundef %546, ptr noundef %547) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %536, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %539, i32 noundef 9) #19
  %548 = icmp eq ptr %542, null
  br i1 %548, label %551, label %549

549:                                              ; preds = %533
  %550 = getelementptr inbounds %struct.rtx_def, ptr %542, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %550, i32 noundef 8) #19
  br label %551

551:                                              ; preds = %549, %533
  %552 = icmp eq ptr %545, null
  br i1 %552, label %555, label %553

553:                                              ; preds = %551
  %554 = getelementptr inbounds %struct.rtx_def, ptr %545, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %554, i32 noundef 9) #19
  br label %555

555:                                              ; preds = %553, %551
  %556 = load i32, ptr %1, align 8, !tbaa !68
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !6
  %560 = zext nneg i8 %559 to i64
  %561 = shl nuw i64 1, %560
  %562 = xor i64 %561, -1
  %563 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %564 = load i64, ptr %563, align 8, !tbaa !69
  %565 = and i64 %564, %562
  store i64 %565, ptr %563, align 8, !tbaa !69
  %566 = add nsw i32 %556, -1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !6
  %570 = zext nneg i8 %569 to i64
  %571 = shl nuw i64 1, %570
  %572 = xor i64 %571, -1
  %573 = and i64 %565, %572
  store i64 %573, ptr %563, align 8, !tbaa !69
  %574 = add nsw i32 %556, -2
  store i32 %574, ptr %1, align 8, !tbaa !68
  %575 = load ptr, ptr %92, align 8, !tbaa !12
  %576 = tail call fastcc i32 @rhs_regno(ptr noundef %575) #19
  %577 = trunc i32 %576 to i8
  store i32 %566, ptr %1, align 8, !tbaa !68
  store i8 %577, ptr %568, align 1, !tbaa !6
  %578 = load ptr, ptr %92, align 8, !tbaa !12
  %579 = tail call fastcc i32 @rhs_regno(ptr noundef %578) #19
  %580 = zext nneg i32 %579 to i64
  %581 = shl nuw i64 1, %580
  %582 = load i64, ptr %563, align 8, !tbaa !69
  %583 = or i64 %581, %582
  store i64 %583, ptr %563, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %819

584:                                              ; preds = %420, %420, %420
  %585 = load ptr, ptr %421, align 8, !tbaa !6
  %586 = getelementptr inbounds %struct.rtvec_def, ptr %585, i64 0, i32 1
  %587 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %586) #19
  %588 = load ptr, ptr %421, align 8, !tbaa !6
  %589 = getelementptr inbounds %struct.rtvec_def, ptr %588, i64 1
  %590 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %589) #19
  %591 = load ptr, ptr %587, align 8, !tbaa !12
  %592 = tail call fastcc i32 @rhs_regno(ptr noundef %591) #19
  %593 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %592) #20
  %594 = load ptr, ptr %590, align 8, !tbaa !12
  %595 = tail call fastcc i32 @rhs_regno(ptr noundef %594) #19
  %596 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %595) #20
  %597 = icmp eq ptr %593, null
  br i1 %597, label %599, label %598

598:                                              ; preds = %584
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1815, ptr noundef nonnull @.str.4) #20
  br label %599

599:                                              ; preds = %584, %598
  %600 = icmp eq ptr %596, null
  br i1 %600, label %602, label %601

601:                                              ; preds = %599
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1816, ptr noundef nonnull @.str.4) #20
  br label %602

602:                                              ; preds = %599, %601
  %603 = load ptr, ptr %587, align 8, !tbaa !12
  %604 = load ptr, ptr %590, align 8, !tbaa !12
  tail call fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr noundef %603, ptr noundef %604) #19
  %605 = load ptr, ptr %92, align 8, !tbaa !12
  %606 = load i32, ptr %605, align 8
  %607 = and i32 %606, 65535
  %608 = icmp eq i32 %607, 37
  br i1 %608, label %609, label %625

609:                                              ; preds = %602
  %610 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %605) #19
  %611 = and i32 %610, -8
  %612 = icmp eq i32 %611, 8
  br i1 %612, label %613, label %625

613:                                              ; preds = %609
  %614 = trunc i32 %610 to i8
  %615 = load i32, ptr %1, align 8, !tbaa !68
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %616
  store i8 %614, ptr %617, align 1, !tbaa !6
  %618 = load ptr, ptr %92, align 8, !tbaa !12
  %619 = tail call fastcc i32 @rhs_regno(ptr noundef %618) #19
  %620 = zext nneg i32 %619 to i64
  %621 = shl nuw i64 1, %620
  %622 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %623 = load i64, ptr %622, align 8, !tbaa !69
  %624 = or i64 %621, %623
  store i64 %624, ptr %622, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %625

625:                                              ; preds = %613, %609, %602
  tail call fastcc void @replace_reg(ptr noundef nonnull %587, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %590, i32 noundef 9) #19
  br label %819

626:                                              ; preds = %420, %420, %420
  %627 = load ptr, ptr %421, align 8, !tbaa !6
  %628 = getelementptr inbounds %struct.rtvec_def, ptr %627, i64 0, i32 1
  %629 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %628) #19
  %630 = load ptr, ptr %421, align 8, !tbaa !6
  %631 = getelementptr inbounds %struct.rtvec_def, ptr %630, i64 1
  %632 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %631) #19
  %633 = load ptr, ptr %92, align 8, !tbaa !12
  %634 = load i32, ptr %633, align 8
  %635 = and i32 %634, 65535
  %636 = icmp eq i32 %635, 37
  br i1 %636, label %637, label %654

637:                                              ; preds = %626
  %638 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %633) #19
  %639 = and i32 %638, -8
  %640 = icmp eq i32 %639, 8
  br i1 %640, label %641, label %654

641:                                              ; preds = %637
  %642 = trunc i32 %638 to i8
  %643 = load i32, ptr %1, align 8, !tbaa !68
  %644 = add nsw i32 %643, -1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %645
  store i8 %642, ptr %646, align 1, !tbaa !6
  %647 = load ptr, ptr %92, align 8, !tbaa !12
  %648 = tail call fastcc i32 @rhs_regno(ptr noundef %647) #19
  %649 = zext nneg i32 %648 to i64
  %650 = shl nuw i64 1, %649
  %651 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %652 = load i64, ptr %651, align 8, !tbaa !69
  %653 = or i64 %650, %652
  store i64 %653, ptr %651, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 9) #19
  br label %654

654:                                              ; preds = %641, %637, %626
  tail call fastcc void @replace_reg(ptr noundef %629, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef %632, i32 noundef 9) #19
  br label %819

655:                                              ; preds = %420
  %656 = load ptr, ptr %421, align 8, !tbaa !6
  %657 = getelementptr inbounds %struct.rtvec_def, ptr %656, i64 0, i32 1
  %658 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %657) #19
  %659 = load ptr, ptr %421, align 8, !tbaa !6
  %660 = getelementptr inbounds %struct.rtvec_def, ptr %659, i64 1
  %661 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %660) #19
  tail call fastcc void @replace_reg(ptr noundef %658, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef %661, i32 noundef 9) #19
  br label %819

662:                                              ; preds = %420
  %663 = load ptr, ptr %421, align 8, !tbaa !6
  %664 = getelementptr inbounds %struct.rtvec_def, ptr %663, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !12
  %666 = load i32, ptr %665, align 8
  %667 = and i32 %666, 65535
  %668 = icmp eq i32 %667, 18
  br i1 %668, label %670, label %669

669:                                              ; preds = %662
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1871, ptr noundef nonnull @.str.4) #20
  br label %670

670:                                              ; preds = %662, %669
  %671 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1, i32 0, i32 0, i64 1
  %672 = load i32, ptr %671, align 8, !tbaa !6
  %673 = icmp eq i32 %672, 31
  br i1 %673, label %675, label %674

674:                                              ; preds = %670
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1872, ptr noundef nonnull @.str.4) #20
  br label %675

675:                                              ; preds = %674, %670, %420
  %676 = phi ptr [ %95, %420 ], [ %665, %670 ], [ %665, %674 ]
  %677 = getelementptr inbounds %struct.rtx_def, ptr %676, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !6
  %679 = getelementptr inbounds %struct.rtvec_def, ptr %678, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !12
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, 65535
  %683 = icmp eq i32 %682, 48
  br i1 %683, label %685, label %684

684:                                              ; preds = %675
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1881, ptr noundef nonnull @.str.4) #20
  br label %685

685:                                              ; preds = %675, %684
  tail call fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %680) #19
  br label %819

686:                                              ; preds = %420
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1887, ptr noundef nonnull @.str.4) #20
  br label %819

687:                                              ; preds = %117
  %688 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %689 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %690 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %689) #19
  %691 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %692 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %691) #19
  %693 = load ptr, ptr %690, align 8, !tbaa !12
  %694 = tail call fastcc i32 @rhs_regno(ptr noundef %693) #19
  %695 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %694) #20
  %696 = load ptr, ptr %692, align 8, !tbaa !12
  %697 = tail call fastcc i32 @rhs_regno(ptr noundef %696) #19
  %698 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %697) #20
  %699 = load ptr, ptr %92, align 8, !tbaa !12
  %700 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %699) #19
  %701 = icmp sgt i32 %700, 7
  br i1 %701, label %702, label %751

702:                                              ; preds = %687
  %703 = load ptr, ptr %92, align 8, !tbaa !12
  %704 = tail call fastcc i32 @rhs_regno(ptr noundef %703) #19
  %705 = load i32, ptr %1, align 8, !tbaa !68
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !6
  %709 = zext i8 %708 to i32
  %710 = icmp eq i32 %704, %709
  br i1 %710, label %751, label %711

711:                                              ; preds = %702
  %712 = load ptr, ptr %690, align 8, !tbaa !12
  %713 = tail call fastcc i32 @rhs_regno(ptr noundef %712) #19
  %714 = icmp eq i32 %713, %709
  %715 = icmp ne ptr %695, null
  %716 = select i1 %714, i1 %715, i1 false
  br i1 %716, label %723, label %717

717:                                              ; preds = %711
  %718 = load ptr, ptr %692, align 8, !tbaa !12
  %719 = tail call fastcc i32 @rhs_regno(ptr noundef %718) #19
  %720 = icmp eq i32 %719, %709
  %721 = icmp ne ptr %698, null
  %722 = select i1 %720, i1 %721, i1 false
  br i1 %722, label %723, label %750

723:                                              ; preds = %717, %711
  %724 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %712) #19
  %725 = load ptr, ptr %692, align 8, !tbaa !12
  %726 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %725) #19
  %727 = load ptr, ptr %692, align 8, !tbaa !12
  %728 = tail call fastcc i32 @rhs_regno(ptr noundef %727) #19
  %729 = trunc i32 %728 to i8
  %730 = load i32, ptr %1, align 8, !tbaa !68
  %731 = sub i32 %730, %724
  %732 = add i32 %731, 8
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %733
  store i8 %729, ptr %734, align 1, !tbaa !6
  %735 = load ptr, ptr %690, align 8, !tbaa !12
  %736 = tail call fastcc i32 @rhs_regno(ptr noundef %735) #19
  %737 = trunc i32 %736 to i8
  %738 = load i32, ptr %1, align 8, !tbaa !68
  %739 = sub i32 %738, %726
  %740 = add i32 %739, 8
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %741
  store i8 %737, ptr %742, align 1, !tbaa !6
  %743 = load ptr, ptr %688, align 8, !tbaa !6
  %744 = tail call i32 @reversed_comparison_code(ptr noundef %743, ptr noundef %0) #20
  %745 = load ptr, ptr %688, align 8, !tbaa !6
  %746 = load i32, ptr %745, align 8
  %747 = and i32 %744, 65535
  %748 = and i32 %746, -65536
  %749 = or disjoint i32 %748, %747
  store i32 %749, ptr %745, align 8
  br label %751

750:                                              ; preds = %717
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %703) #19
  br label %751

751:                                              ; preds = %723, %750, %702, %687
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %752 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %695, ptr %752, align 8, !tbaa !12
  %753 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %698, ptr %753, align 16, !tbaa !12
  %754 = load ptr, ptr %690, align 8, !tbaa !12
  %755 = load i32, ptr %754, align 8
  %756 = and i32 %755, 65535
  %757 = icmp eq i32 %756, 37
  br i1 %757, label %758, label %764

758:                                              ; preds = %751
  %759 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %754) #19
  %760 = and i32 %759, -8
  %761 = icmp eq i32 %760, 8
  br i1 %761, label %762, label %764

762:                                              ; preds = %758
  %763 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %754) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %690, i32 noundef %763) #19
  br label %764

764:                                              ; preds = %762, %758, %751
  %765 = load ptr, ptr %692, align 8, !tbaa !12
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, 65535
  %768 = icmp eq i32 %767, 37
  br i1 %768, label %769, label %775

769:                                              ; preds = %764
  %770 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %765) #19
  %771 = and i32 %770, -8
  %772 = icmp eq i32 %771, 8
  br i1 %772, label %773, label %775

773:                                              ; preds = %769
  %774 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %765) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %692, i32 noundef %774) #19
  br label %775

775:                                              ; preds = %773, %769, %764
  br label %776

776:                                              ; preds = %775, %795
  %777 = phi i64 [ %796, %795 ], [ 1, %775 ]
  %778 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !12
  %780 = icmp eq ptr %779, null
  br i1 %780, label %795, label %781

781:                                              ; preds = %776
  %782 = getelementptr inbounds %struct.rtx_def, ptr %779, i64 0, i32 1
  %783 = load ptr, ptr %782, align 8, !tbaa !6
  %784 = tail call fastcc i32 @rhs_regno(ptr noundef %783) #19
  %785 = load i32, ptr %1, align 8, !tbaa !68
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %786
  %788 = load i8, ptr %787, align 1, !tbaa !6
  %789 = zext i8 %788 to i32
  %790 = icmp eq i32 %784, %789
  br i1 %790, label %791, label %792

791:                                              ; preds = %781
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1957, ptr noundef nonnull @.str.4) #20
  br label %792

792:                                              ; preds = %781, %791
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %784) #19
  %793 = load ptr, ptr %782, align 8, !tbaa !6
  %794 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %793, i32 noundef 0) #19
  br label %795

795:                                              ; preds = %776, %792
  %796 = add nuw nsw i64 %777, 1
  %797 = icmp eq i64 %796, 3
  br i1 %797, label %798, label %776, !llvm.loop !136

798:                                              ; preds = %795
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %799 = load ptr, ptr %92, align 8, !tbaa !12
  %800 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %799) #19
  %801 = icmp slt i32 %800, 8
  br i1 %801, label %802, label %810

802:                                              ; preds = %798
  %803 = load ptr, ptr %92, align 8, !tbaa !12
  %804 = tail call fastcc i32 @rhs_regno(ptr noundef %803) #19
  %805 = trunc i32 %804 to i8
  %806 = load i32, ptr %1, align 8, !tbaa !68
  %807 = add nsw i32 %806, 1
  store i32 %807, ptr %1, align 8, !tbaa !68
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %808
  store i8 %805, ptr %809, align 1, !tbaa !6
  br label %810

810:                                              ; preds = %802, %798
  %811 = load ptr, ptr %92, align 8, !tbaa !12
  %812 = tail call fastcc i32 @rhs_regno(ptr noundef %811) #19
  %813 = zext nneg i32 %812 to i64
  %814 = shl nuw i64 1, %813
  %815 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %816 = load i64, ptr %815, align 8, !tbaa !69
  %817 = or i64 %814, %816
  store i64 %817, ptr %815, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %819

818:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1973, ptr noundef nonnull @.str.4) #20
  br label %819

819:                                              ; preds = %18, %14, %7, %3, %83, %87, %59, %60, %40, %33, %120, %152, %189, %810, %818, %417, %412, %407, %402, %395, %458, %467, %686, %685, %655, %654, %625, %555, %515, %493, %457, %115, %21, %30
  %820 = phi i8 [ 0, %30 ], [ 0, %21 ], [ 0, %3 ], [ 0, %18 ], [ 0, %14 ], [ 0, %7 ], [ 0, %59 ], [ 0, %60 ], [ 0, %40 ], [ 0, %33 ], [ %89, %87 ], [ %84, %83 ], [ %116, %115 ], [ 0, %818 ], [ 0, %810 ], [ 0, %686 ], [ 0, %685 ], [ 0, %655 ], [ 0, %654 ], [ 0, %625 ], [ 0, %555 ], [ 0, %515 ], [ 0, %493 ], [ 0, %467 ], [ 0, %458 ], [ 0, %457 ], [ %266, %417 ], [ %266, %412 ], [ %266, %407 ], [ %266, %402 ], [ %266, %395 ], [ 0, %189 ], [ 0, %152 ], [ 0, %120 ]
  ret i8 %820
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !6
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %15 = add i32 %14, -8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %16, i64 39
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = add i32 %14, -7
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %20, i64 39
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %18) #19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %18, i32 noundef %3) #19
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ null, %13 ]
  %29 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %22) #19
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %22, i32 noundef %3) #19
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %28, %27 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 765, ptr noundef nonnull @.str.4) #20
  br label %72

37:                                               ; preds = %4
  %38 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %2) #19
  %39 = icmp sgt i32 %38, 7
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 771, ptr noundef nonnull @.str.4) #20
  br label %41

41:                                               ; preds = %37, %40
  %42 = add nsw i32 %38, -8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %43, i64 39
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !12
  %47 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %45, ptr noundef %46) #20
  %48 = icmp eq i32 %3, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = tail call ptr @emit_insn_after(ptr noundef %47, ptr noundef %0) #20
  br label %53

51:                                               ; preds = %41
  %52 = tail call ptr @emit_insn_before(ptr noundef %47, ptr noundef %0) #20
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !12
  tail call void @add_reg_note(ptr noundef %54, i32 noundef 1, ptr noundef %55) #20
  %56 = load i32, ptr %1, align 8, !tbaa !68
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !6
  %60 = sub nsw i32 %56, %42
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %61
  store i8 %59, ptr %62, align 1, !tbaa !6
  %63 = load i32, ptr %1, align 8, !tbaa !68
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %1, align 8, !tbaa !68
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = xor i64 %67, -1
  %69 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !69
  %71 = and i64 %70, %68
  store i64 %71, ptr %69, align 8, !tbaa !69
  br label %72

72:                                               ; preds = %36, %33, %53
  %73 = phi ptr [ %54, %53 ], [ %34, %33 ], [ null, %36 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i32], align 16
  %7 = load ptr, ptr @current_block, align 8, !tbaa !12
  %8 = icmp ne ptr %7, null
  %9 = load i1, ptr @starting_stack_p, align 1
  %10 = select i1 %8, i1 %9, i1 false
  %11 = icmp eq i32 %3, 1
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  store i1 false, ptr @starting_stack_p, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !92
  br label %355

16:                                               ; preds = %4
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  br i1 %8, label %19, label %26

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = icmp eq ptr %23, %0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %18
  %27 = phi i32 [ 0, %18 ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %26, %16
  %31 = phi ptr [ %29, %26 ], [ %0, %16 ]
  %32 = phi i32 [ %27, %26 ], [ 0, %16 ]
  %33 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  br label %35

35:                                               ; preds = %30, %59
  %36 = phi i64 [ 8, %30 ], [ %60, %59 ]
  %37 = load i64, ptr %33, align 8, !tbaa !69
  %38 = shl nuw nsw i64 1, %36
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load i64, ptr %34, align 8, !tbaa !69
  %43 = and i64 %42, %38
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = trunc i64 %36 to i8
  %47 = load i32, ptr %1, align 8, !tbaa !68
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 8, !tbaa !68
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %49
  store i8 %46, ptr %50, align 1, !tbaa !6
  %51 = load i64, ptr %34, align 8, !tbaa !69
  %52 = or i64 %51, %38
  store i64 %52, ptr %34, align 8, !tbaa !69
  %53 = add nsw i64 %36, -8
  %54 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %53, i64 38
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = load ptr, ptr @not_a_num, align 8, !tbaa !12
  %57 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %55, ptr noundef %56) #20
  %58 = tail call ptr @emit_insn_before(ptr noundef %57, ptr noundef %31) #20
  br label %59

59:                                               ; preds = %35, %41, %45
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %62, label %35, !llvm.loop !137

62:                                               ; preds = %59
  %63 = load i32, ptr %2, align 8, !tbaa !68
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %1, align 8, !tbaa !68
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %239, label %68

68:                                               ; preds = %65
  %69 = load i64, ptr %33, align 8, !tbaa !69
  %70 = add nuw i32 %66, 1
  %71 = zext i32 %70 to i64
  br label %191

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %73 = load i64, ptr %33, align 8, !tbaa !69
  %74 = add nuw i32 %63, 1
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ 0, %72 ], [ %86, %76 ]
  %78 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !6
  %80 = zext nneg i8 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %81, %73
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %77
  store i8 %84, ptr %85, align 1, !tbaa !6
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, %75
  br i1 %87, label %88, label %76, !llvm.loop !138

88:                                               ; preds = %76
  %89 = load i32, ptr %1, align 8, !tbaa !68
  %90 = icmp sgt i32 %89, %63
  br i1 %90, label %91, label %187

91:                                               ; preds = %88
  %92 = sext i32 %89 to i64
  %93 = zext nneg i32 %63 to i64
  br label %94

94:                                               ; preds = %91, %128
  %95 = phi i64 [ %92, %91 ], [ %130, %128 ]
  %96 = phi i32 [ -1, %91 ], [ %129, %128 ]
  %97 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !6
  %99 = zext nneg i8 %98 to i64
  %100 = shl nuw i64 1, %99
  %101 = and i64 %100, %73
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %94, %118
  %104 = phi i64 [ %119, %118 ], [ 0, %94 ]
  %105 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !6
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %104
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = icmp eq i8 %110, %98
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %104
  %114 = trunc i64 %104 to i32
  %115 = icmp eq i32 %63, %114
  %116 = trunc i64 %95 to i32
  %117 = select i1 %115, i32 %116, i32 %96
  store i8 1, ptr %113, align 1, !tbaa !6
  br label %121

118:                                              ; preds = %103, %108
  %119 = add nuw nsw i64 %104, 1
  %120 = icmp eq i64 %119, %75
  br i1 %120, label %121, label %103, !llvm.loop !139

121:                                              ; preds = %118, %112
  %122 = phi i32 [ %114, %112 ], [ -1, %118 ]
  %123 = phi i32 [ %117, %112 ], [ %96, %118 ]
  %124 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %95
  store i32 %122, ptr %124, align 4, !tbaa !22
  br label %128

125:                                              ; preds = %94
  %126 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %95
  %127 = trunc i64 %95 to i32
  store i32 %127, ptr %126, align 4, !tbaa !22
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi i32 [ %123, %121 ], [ %96, %125 ]
  %130 = add nsw i64 %95, -1
  %131 = icmp sgt i64 %130, %93
  br i1 %131, label %94, label %132, !llvm.loop !140

132:                                              ; preds = %128
  %133 = icmp eq i32 %129, -1
  br i1 %133, label %152, label %134

134:                                              ; preds = %132
  %135 = tail call i32 @llvm.smax.i32(i32 %63, i32 1)
  %136 = zext nneg i32 %135 to i64
  br label %137

137:                                              ; preds = %134, %149
  %138 = phi i64 [ 0, %134 ], [ %150, %149 ]
  %139 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !6
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %138
  %144 = trunc i64 %138 to i32
  %145 = sext i32 %129 to i64
  %146 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %145
  store i32 %144, ptr %146, align 4, !tbaa !22
  %147 = zext nneg i32 %63 to i64
  %148 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %147
  store i8 0, ptr %148, align 1, !tbaa !6
  store i8 1, ptr %143, align 1, !tbaa !6
  br label %152

149:                                              ; preds = %137
  %150 = add nuw nsw i64 %138, 1
  %151 = icmp eq i64 %150, %136
  br i1 %151, label %152, label %137, !llvm.loop !141

152:                                              ; preds = %149, %142, %132
  br i1 %90, label %153, label %187

153:                                              ; preds = %152
  %154 = sext i32 %89 to i64
  br label %155

155:                                              ; preds = %153, %172
  %156 = phi i64 [ %154, %153 ], [ %183, %172 ]
  %157 = phi i32 [ %63, %153 ], [ %173, %172 ]
  %158 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %156
  %159 = load i32, ptr %158, align 4, !tbaa !22
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = sext i32 %157 to i64
  br label %163

163:                                              ; preds = %161, %163
  %164 = phi i64 [ %162, %161 ], [ %168, %163 ]
  %165 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !6
  %167 = icmp eq i8 %166, 0
  %168 = add i64 %164, -1
  br i1 %167, label %169, label %163, !llvm.loop !142

169:                                              ; preds = %163
  %170 = trunc i64 %164 to i32
  %171 = add nsw i32 %170, -1
  br label %172

172:                                              ; preds = %169, %155
  %173 = phi i32 [ %171, %169 ], [ %157, %155 ]
  %174 = phi i32 [ %170, %169 ], [ %159, %155 ]
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !6
  %178 = zext i8 %177 to i64
  %179 = add nsw i64 %178, -8
  %180 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %179, i64 39
  %181 = load ptr, ptr %180, align 8, !tbaa !12
  %182 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %181, i32 noundef 1) #19
  %183 = add nsw i64 %156, -1
  %184 = load i32, ptr %2, align 8, !tbaa !68
  %185 = sext i32 %184 to i64
  %186 = icmp sgt i64 %183, %185
  br i1 %186, label %155, label %187, !llvm.loop !143

187:                                              ; preds = %172, %88, %152
  %188 = phi i32 [ %63, %152 ], [ %63, %88 ], [ %184, %172 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %239

189:                                              ; preds = %191
  %190 = icmp slt i32 %66, %201
  br i1 %190, label %239, label %204

191:                                              ; preds = %68, %191
  %192 = phi i64 [ 0, %68 ], [ %202, %191 ]
  %193 = phi i32 [ 0, %68 ], [ %201, %191 ]
  %194 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %192
  %195 = load i8, ptr %194, align 1, !tbaa !6
  %196 = zext nneg i8 %195 to i64
  %197 = shl nuw i64 1, %196
  %198 = and i64 %197, %69
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = add nuw nsw i32 %193, %200
  %202 = add nuw nsw i64 %192, 1
  %203 = icmp eq i64 %202, %71
  br i1 %203, label %189, label %191, !llvm.loop !144

204:                                              ; preds = %189, %228
  %205 = phi i32 [ %235, %228 ], [ %66, %189 ]
  %206 = phi i32 [ %230, %228 ], [ %201, %189 ]
  %207 = load i64, ptr %33, align 8, !tbaa !69
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !6
  %211 = zext nneg i8 %210 to i64
  %212 = shl nuw i64 1, %211
  %213 = and i64 %212, %207
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %228, label %215

215:                                              ; preds = %204
  %216 = sext i32 %206 to i64
  br label %217

217:                                              ; preds = %215, %217
  %218 = phi i64 [ %216, %215 ], [ %225, %217 ]
  %219 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !6
  %221 = zext nneg i8 %220 to i64
  %222 = shl nuw i64 1, %221
  %223 = and i64 %222, %207
  %224 = icmp eq i64 %223, 0
  %225 = add i64 %218, -1
  br i1 %224, label %226, label %217, !llvm.loop !145

226:                                              ; preds = %217
  %227 = trunc i64 %218 to i32
  br label %228

228:                                              ; preds = %204, %226
  %229 = phi i64 [ %221, %226 ], [ %211, %204 ]
  %230 = phi i32 [ %227, %226 ], [ %206, %204 ]
  %231 = add nsw i64 %229, -8
  %232 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %231, i64 39
  %233 = load ptr, ptr %232, align 8, !tbaa !12
  %234 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %233, i32 noundef 1) #19
  %235 = load i32, ptr %1, align 8, !tbaa !68
  %236 = icmp slt i32 %235, %201
  br i1 %236, label %237, label %204, !llvm.loop !146

237:                                              ; preds = %228
  %238 = load i32, ptr %2, align 8, !tbaa !68
  br label %239

239:                                              ; preds = %65, %189, %237, %187
  %240 = phi i32 [ %188, %187 ], [ %238, %237 ], [ %63, %189 ], [ %63, %65 ]
  %241 = icmp eq i32 %240, -2
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load i32, ptr %1, align 8, !tbaa !68
  store i32 %243, ptr %2, align 8, !tbaa !68
  %244 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2
  %245 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2
  %246 = load i64, ptr %245, align 8
  store i64 %246, ptr %244, align 8
  br label %346

247:                                              ; preds = %239
  %248 = load i64, ptr %34, align 8, !tbaa !69
  %249 = load i64, ptr %33, align 8, !tbaa !69
  %250 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %248, i64 noundef %249) #19, !range !35
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2541, ptr noundef nonnull @.str.4) #20
  %253 = load i32, ptr %2, align 8, !tbaa !68
  br label %254

254:                                              ; preds = %247, %252
  %255 = phi i32 [ %240, %247 ], [ %253, %252 ]
  %256 = load i32, ptr %1, align 8, !tbaa !68
  %257 = icmp eq i32 %256, %255
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2542, ptr noundef nonnull @.str.4) #20
  %259 = load i32, ptr %2, align 8, !tbaa !68
  br label %260

260:                                              ; preds = %254, %258
  %261 = phi i32 [ %255, %254 ], [ %259, %258 ]
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i32, ptr %1, align 8, !tbaa !68
  br label %330

265:                                              ; preds = %260, %324
  %266 = phi i32 [ %329, %324 ], [ %261, %260 ]
  %267 = load i32, ptr %1, align 8, !tbaa !68
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !6
  %271 = sext i32 %266 to i64
  %272 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !6
  %274 = icmp eq i8 %270, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %295, %265
  %276 = phi i32 [ %267, %265 ], [ %304, %295 ]
  %277 = phi i32 [ %266, %265 ], [ %308, %295 ]
  %278 = icmp sgt i32 %277, -1
  br i1 %278, label %316, label %330

279:                                              ; preds = %265, %295
  %280 = phi i32 [ %308, %295 ], [ %266, %265 ]
  %281 = phi i8 [ %307, %295 ], [ %270, %265 ]
  %282 = icmp sgt i32 %280, -1
  br i1 %282, label %283, label %292

283:                                              ; preds = %279, %289
  %284 = phi i32 [ %290, %289 ], [ %280, %279 ]
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !6
  %288 = icmp eq i8 %287, %281
  br i1 %288, label %295, label %289

289:                                              ; preds = %283
  %290 = add nsw i32 %284, -1
  %291 = icmp sgt i32 %284, 0
  br i1 %291, label %283, label %294, !llvm.loop !147

292:                                              ; preds = %279
  %293 = icmp eq i32 %280, -1
  br i1 %293, label %294, label %295

294:                                              ; preds = %289, %292
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2565, ptr noundef nonnull @.str.4) #20
  br label %295

295:                                              ; preds = %283, %292, %294
  %296 = phi i32 [ %280, %292 ], [ -1, %294 ], [ %284, %283 ]
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !6
  %300 = zext i8 %299 to i64
  %301 = add nsw i64 %300, -8
  %302 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %301, i64 39
  %303 = load ptr, ptr %302, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %303) #19
  %304 = load i32, ptr %1, align 8, !tbaa !68
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !6
  %308 = load i32, ptr %2, align 8, !tbaa !68
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !6
  %312 = icmp eq i8 %307, %311
  br i1 %312, label %275, label %279, !llvm.loop !148

313:                                              ; preds = %316
  %314 = add nsw i32 %317, -1
  %315 = icmp sgt i32 %317, 0
  br i1 %315, label %316, label %330, !llvm.loop !149

316:                                              ; preds = %275, %313
  %317 = phi i32 [ %314, %313 ], [ %277, %275 ]
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !6
  %321 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %318
  %322 = load i8, ptr %321, align 1, !tbaa !6
  %323 = icmp eq i8 %320, %322
  br i1 %323, label %313, label %324

324:                                              ; preds = %316
  %325 = zext i8 %322 to i64
  %326 = add nsw i64 %325, -8
  %327 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %326, i64 39
  %328 = load ptr, ptr %327, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %328) #19
  %329 = load i32, ptr %2, align 8, !tbaa !68
  br label %265, !llvm.loop !150

330:                                              ; preds = %275, %313, %263
  %331 = phi i32 [ %264, %263 ], [ %276, %313 ], [ %276, %275 ]
  %332 = icmp sgt i32 %331, -1
  br i1 %332, label %333, label %346

333:                                              ; preds = %330
  %334 = zext nneg i32 %331 to i64
  br label %335

335:                                              ; preds = %333, %343
  %336 = phi i64 [ %334, %333 ], [ %344, %343 ]
  %337 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !6
  %339 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %336
  %340 = load i8, ptr %339, align 1, !tbaa !6
  %341 = icmp eq i8 %338, %340
  br i1 %341, label %343, label %342

342:                                              ; preds = %335
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2587, ptr noundef nonnull @.str.4) #20
  br label %343

343:                                              ; preds = %335, %342
  %344 = add nsw i64 %336, -1
  %345 = icmp sgt i64 %336, 0
  br i1 %345, label %335, label %346, !llvm.loop !151

346:                                              ; preds = %343, %330, %242
  %347 = icmp eq i32 %32, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !6
  %351 = load ptr, ptr @current_block, align 8, !tbaa !12
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %351, i64 0, i32 7
  %353 = load ptr, ptr %352, align 8, !tbaa !6
  %354 = getelementptr inbounds %struct.rtl_bb_info, ptr %353, i64 0, i32 1
  store ptr %350, ptr %354, align 8, !tbaa !94
  br label %355

355:                                              ; preds = %346, %348, %13
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_swap_insn(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %2) #19
  switch i32 %4, label %15 [
    i32 8, label %147
    i32 -1, label %5
  ]

5:                                                ; preds = %3
  %6 = load i1, ptr @any_malformed_asm, align 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 817, ptr noundef nonnull @.str.4) #20
  br label %8

8:                                                ; preds = %5, %7
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #19
  %10 = trunc i32 %9 to i8
  %11 = load i32, ptr %1, align 8, !tbaa !68
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 8, !tbaa !68
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !6
  br label %147

15:                                               ; preds = %3
  %16 = icmp sgt i32 %4, 7
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 821, ptr noundef nonnull @.str.4) #20
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i32, ptr %1, align 8, !tbaa !68
  %20 = add nsw i32 %4, -8
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !6
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !6
  store i8 %27, ptr %23, align 1, !tbaa !6
  %28 = load i32, ptr %1, align 8, !tbaa !68
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %29
  store i8 %24, ptr %30, align 1, !tbaa !6
  %31 = load ptr, ptr @current_block, align 8, !tbaa !12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %119, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %119, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %42, %40
  br i1 %43, label %119, label %44

44:                                               ; preds = %38, %57
  %45 = phi ptr [ %59, %57 ], [ %42, %38 ]
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %57 [
    i16 12, label %61
    i16 10, label %61
    i16 13, label %48
    i16 8, label %52
  ]

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !6
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %61, label %57

52:                                               ; preds = %44
  %53 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %45) #19, !range !20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %45, align 8
  br label %61

57:                                               ; preds = %44, %48, %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = icmp eq ptr %59, %40
  br i1 %60, label %119, label %44, !llvm.loop !152

61:                                               ; preds = %44, %44, %48, %55
  %62 = phi i32 [ %56, %55 ], [ %46, %48 ], [ %46, %44 ], [ %46, %44 ]
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %119

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = tail call ptr @single_set_2(ptr noundef nonnull %45, ptr noundef nonnull %68) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %119, label %75

75:                                               ; preds = %66, %72
  %76 = phi ptr [ %73, %72 ], [ %68, %66 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %78) #19
  %80 = load ptr, ptr %79, align 8, !tbaa !12
  %81 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %77) #19
  %82 = load ptr, ptr %81, align 8, !tbaa !12
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 37
  br i1 %85, label %86, label %102

86:                                               ; preds = %75
  %87 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %82) #19
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, ptr %80, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %80) #19
  %95 = add i32 %4, -1
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = tail call ptr @find_regno_note(ptr noundef nonnull %45, i32 noundef 1, i32 noundef 8) #20
  %99 = icmp eq ptr %98, null
  br i1 %99, label %147, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %82, align 8
  br label %102

102:                                              ; preds = %100, %93, %89, %86, %75
  %103 = phi i32 [ %101, %100 ], [ %83, %93 ], [ %83, %89 ], [ %83, %86 ], [ %83, %75 ]
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 37
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %82) #19
  %108 = icmp eq i32 %107, %4
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, ptr %80, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 37
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %80) #19
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = tail call ptr @find_regno_note(ptr noundef nonnull %45, i32 noundef 1, i32 noundef 8) #20
  %118 = icmp eq ptr %117, null
  br i1 %118, label %147, label %119

119:                                              ; preds = %57, %38, %61, %18, %33, %102, %106, %109, %113, %116, %72
  %120 = phi i1 [ false, %102 ], [ false, %106 ], [ false, %109 ], [ false, %113 ], [ false, %116 ], [ false, %72 ], [ true, %33 ], [ true, %18 ], [ false, %61 ], [ true, %38 ], [ true, %57 ]
  %121 = phi ptr [ %45, %102 ], [ %45, %106 ], [ %45, %109 ], [ %45, %113 ], [ %45, %116 ], [ %45, %72 ], [ null, %33 ], [ null, %18 ], [ %45, %61 ], [ null, %38 ], [ null, %57 ]
  %122 = load ptr, ptr @current_block, align 8, !tbaa !12
  %123 = icmp ne ptr %122, null
  %124 = load i1, ptr @starting_stack_p, align 1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  store i1 false, ptr @starting_stack_p, align 1
  br label %147

129:                                              ; preds = %119
  %130 = sext i32 %20 to i64
  %131 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %130, i64 40
  %132 = load ptr, ptr %131, align 8, !tbaa !12
  %133 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !12
  %134 = tail call ptr @gen_swapxf(ptr noundef %132, ptr noundef %133) #20
  br i1 %120, label %137, label %135

135:                                              ; preds = %129
  %136 = tail call ptr @emit_insn_after(ptr noundef %134, ptr noundef nonnull %121) #20
  br label %147

137:                                              ; preds = %129
  %138 = load ptr, ptr @current_block, align 8, !tbaa !12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = load ptr, ptr %142, align 8, !tbaa !90
  %144 = tail call ptr @emit_insn_before(ptr noundef %134, ptr noundef %143) #20
  br label %147

145:                                              ; preds = %137
  %146 = tail call ptr @emit_insn_before(ptr noundef %134, ptr noundef %0) #20
  br label %147

147:                                              ; preds = %135, %145, %140, %97, %116, %3, %126, %8
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gen_swapxf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_asm_stack_operands(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [53 x i8], align 16
  %3 = alloca [53 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  tail call void @extract_insn(ptr noundef %0) #20
  %8 = tail call i32 @constrain_operands(i32 noundef 1) #20
  %9 = load i32, ptr @which_alternative, align 4, !tbaa !22
  tail call void @preprocess_constraints() #20
  call fastcc void @get_asm_operands_in_out(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !114
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = zext nneg i8 %12 to i64
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %18 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %17) #20
  store ptr %18, ptr %6, align 8, !tbaa !6
  br label %297

19:                                               ; preds = %14, %33
  %20 = phi i64 [ 0, %14 ], [ %34, %33 ]
  %21 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store ptr %28, ptr %21, align 8, !tbaa !12
  br label %33

33:                                               ; preds = %19, %26, %32
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %19, !llvm.loop !153

36:                                               ; preds = %33, %11
  %37 = load i32, ptr %7, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 15
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = load i32, ptr %42, align 8, !tbaa !14
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 3
  %46 = alloca i8, i64 %45, align 16
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %40
  %49 = zext nneg i32 %43 to i64
  br label %50

50:                                               ; preds = %48, %85
  %51 = phi i64 [ 0, %48 ], [ %87, %85 ]
  %52 = phi i32 [ 0, %48 ], [ %86, %85 ]
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 25
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 39
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 37
  %70 = select i1 %69, i32 %67, i32 %61
  %71 = select i1 %69, ptr %66, ptr %60
  br label %72

72:                                               ; preds = %64, %58
  %73 = phi i32 [ %61, %58 ], [ %70, %64 ]
  %74 = phi ptr [ %60, %58 ], [ %71, %64 ]
  %75 = and i32 %73, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %74) #19
  %79 = and i32 %78, -8
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = sext i32 %52 to i64
  %83 = getelementptr inbounds ptr, ptr %46, i64 %82
  store ptr %74, ptr %83, align 8, !tbaa !12
  %84 = add nsw i32 %52, 1
  br label %85

85:                                               ; preds = %72, %77, %81, %50
  %86 = phi i32 [ %52, %50 ], [ %84, %81 ], [ %52, %77 ], [ %52, %72 ]
  %87 = add nuw nsw i64 %51, 1
  %88 = icmp eq i64 %87, %49
  br i1 %88, label %89, label %50, !llvm.loop !154

89:                                               ; preds = %85, %40, %36
  %90 = phi i32 [ 0, %36 ], [ 0, %40 ], [ %86, %85 ]
  %91 = phi ptr [ null, %36 ], [ %46, %40 ], [ %46, %85 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %2, i8 0, i64 53, i1 false)
  %92 = load i32, ptr %5, align 4, !tbaa !22
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = zext nneg i32 %9 to i64
  %96 = icmp sgt i32 %90, 0
  %97 = zext nneg i32 %92 to i64
  %98 = zext nneg i32 %90 to i64
  br label %101

99:                                               ; preds = %150, %89
  %100 = phi i32 [ 0, %89 ], [ %151, %150 ]
  br label %154

101:                                              ; preds = %94, %150
  %102 = phi i64 [ 0, %94 ], [ %152, %150 ]
  %103 = phi i32 [ 0, %94 ], [ %151, %150 ]
  %104 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !12
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %150

109:                                              ; preds = %101
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #19
  %111 = and i32 %110, -8
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %150

113:                                              ; preds = %109
  %114 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %102, i64 %95, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !120
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !22
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  br i1 %96, label %121, label %140

121:                                              ; preds = %120
  %122 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #19
  br label %125

123:                                              ; preds = %113
  %124 = trunc i64 %102 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %124) #20
  br label %150

125:                                              ; preds = %121, %137
  %126 = phi i64 [ 0, %121 ], [ %138, %137 ]
  %127 = getelementptr inbounds ptr, ptr %91, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !12
  %129 = tail call fastcc i32 @rhs_regno(ptr noundef %128) #19
  %130 = icmp eq i32 %122, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = trunc i64 %126 to i32
  %133 = zext i32 %122 to i64
  %134 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !12
  %136 = trunc i64 %102 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %136, ptr noundef %135) #20
  br label %140

137:                                              ; preds = %125
  %138 = add nuw nsw i64 %126, 1
  %139 = icmp eq i64 %138, %98
  br i1 %139, label %144, label %125, !llvm.loop !155

140:                                              ; preds = %120, %131
  %141 = phi i32 [ %132, %131 ], [ 0, %120 ]
  %142 = phi i32 [ 1, %131 ], [ %103, %120 ]
  %143 = icmp eq i32 %141, %90
  br i1 %143, label %144, label %150

144:                                              ; preds = %137, %140
  %145 = phi i32 [ %142, %140 ], [ %103, %137 ]
  %146 = load ptr, ptr %104, align 8, !tbaa !12
  %147 = tail call fastcc i32 @rhs_regno(ptr noundef %146) #19
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %148
  store i8 1, ptr %149, align 1, !tbaa !6
  br label %150

150:                                              ; preds = %140, %144, %101, %109, %123
  %151 = phi i32 [ 1, %123 ], [ %103, %109 ], [ %103, %101 ], [ %145, %144 ], [ %142, %140 ]
  %152 = add nuw nsw i64 %102, 1
  %153 = icmp eq i64 %152, %97
  br i1 %153, label %99, label %101, !llvm.loop !156

154:                                              ; preds = %99, %159
  %155 = phi i64 [ 8, %99 ], [ %160, %159 ]
  %156 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !6
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = add nuw nsw i64 %155, 1
  %161 = icmp eq i64 %160, 16
  br i1 %161, label %182, label %154, !llvm.loop !157

162:                                              ; preds = %154
  %163 = trunc i64 %155 to i32
  %164 = icmp ult i32 %163, 16
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = and i64 %155, 4294967295
  %167 = xor i32 %163, 15
  %168 = add nuw nsw i32 %167, %163
  %169 = add nuw nsw i32 %168, 1
  br label %170

170:                                              ; preds = %165, %175
  %171 = phi i64 [ %166, %165 ], [ %176, %175 ]
  %172 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !6
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = add nuw nsw i64 %171, 1
  %177 = icmp eq i64 %176, 16
  br i1 %177, label %178, label %170, !llvm.loop !158

178:                                              ; preds = %175, %162
  %179 = phi i32 [ %163, %162 ], [ %169, %175 ]
  %180 = icmp eq i32 %179, 16
  br i1 %180, label %182, label %181

181:                                              ; preds = %170, %178
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.19) #20
  br label %182

182:                                              ; preds = %159, %181, %178
  %183 = phi i32 [ 1, %181 ], [ %100, %178 ], [ %100, %159 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %3, i8 0, i64 53, i1 false)
  %184 = load i32, ptr %4, align 4, !tbaa !22
  %185 = add nsw i32 %184, %92
  %186 = icmp sgt i32 %184, 0
  br i1 %186, label %187, label %227

187:                                              ; preds = %182
  %188 = icmp sgt i32 %90, 0
  %189 = zext nneg i32 %9 to i64
  %190 = sext i32 %92 to i64
  %191 = sext i32 %185 to i64
  %192 = zext nneg i32 %90 to i64
  br label %193

193:                                              ; preds = %187, %224
  %194 = phi i64 [ %190, %187 ], [ %225, %224 ]
  %195 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !12
  %197 = load i32, ptr %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 37
  br i1 %199, label %200, label %224

200:                                              ; preds = %193
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %196) #19
  %202 = and i32 %201, -8
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %204, label %224

204:                                              ; preds = %200
  br i1 %188, label %208, label %215

205:                                              ; preds = %208
  %206 = add nuw nsw i64 %209, 1
  %207 = icmp eq i64 %206, %192
  br i1 %207, label %215, label %208, !llvm.loop !159

208:                                              ; preds = %204, %205
  %209 = phi i64 [ %206, %205 ], [ 0, %204 ]
  %210 = getelementptr inbounds ptr, ptr %91, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !12
  %212 = load ptr, ptr %195, align 8, !tbaa !12
  %213 = tail call i32 @operands_match_p(ptr noundef %211, ptr noundef %212) #20
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %205, label %219

215:                                              ; preds = %205, %204
  %216 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %194, i64 %189, i32 3
  %217 = load i32, ptr %216, align 16, !tbaa !127
  %218 = icmp sgt i32 %217, -1
  br i1 %218, label %219, label %224

219:                                              ; preds = %208, %215
  %220 = load ptr, ptr %195, align 8, !tbaa !12
  %221 = tail call fastcc i32 @rhs_regno(ptr noundef %220) #19
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %222
  store i8 1, ptr %223, align 1, !tbaa !6
  br label %224

224:                                              ; preds = %215, %219, %193, %200
  %225 = add nsw i64 %194, 1
  %226 = icmp slt i64 %225, %191
  br i1 %226, label %193, label %227, !llvm.loop !160

227:                                              ; preds = %224, %182
  br label %228

228:                                              ; preds = %227, %233
  %229 = phi i64 [ %234, %233 ], [ 8, %227 ]
  %230 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !6
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = add nuw nsw i64 %229, 1
  %235 = icmp eq i64 %234, 16
  br i1 %235, label %256, label %228, !llvm.loop !161

236:                                              ; preds = %228
  %237 = trunc i64 %229 to i32
  %238 = icmp ult i32 %237, 16
  br i1 %238, label %239, label %252

239:                                              ; preds = %236
  %240 = and i64 %229, 4294967295
  %241 = xor i32 %237, 15
  %242 = add nuw nsw i32 %241, %237
  %243 = add nuw nsw i32 %242, 1
  br label %244

244:                                              ; preds = %239, %249
  %245 = phi i64 [ %240, %239 ], [ %250, %249 ]
  %246 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !6
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = add nuw nsw i64 %245, 1
  %251 = icmp eq i64 %250, 16
  br i1 %251, label %252, label %244, !llvm.loop !162

252:                                              ; preds = %249, %236
  %253 = phi i32 [ %237, %236 ], [ %243, %249 ]
  %254 = icmp eq i32 %253, 16
  br i1 %254, label %256, label %255

255:                                              ; preds = %244, %252
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.20) #20
  br label %256

256:                                              ; preds = %233, %255, %252
  %257 = phi i32 [ 1, %255 ], [ %183, %252 ], [ %183, %233 ]
  br i1 %186, label %258, label %291

258:                                              ; preds = %256
  %259 = zext nneg i32 %9 to i64
  %260 = icmp slt i32 %92, 1
  %261 = sext i32 %92 to i64
  %262 = sext i32 %185 to i64
  %263 = zext nneg i32 %92 to i64
  br label %264

264:                                              ; preds = %258, %287
  %265 = phi i64 [ %261, %258 ], [ %289, %287 ]
  %266 = phi i32 [ %257, %258 ], [ %288, %287 ]
  %267 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %265, i64 %259, i32 3
  %268 = load i32, ptr %267, align 16, !tbaa !127
  %269 = icmp ne i32 %268, -1
  %270 = or i1 %269, %260
  br i1 %270, label %287, label %271

271:                                              ; preds = %264
  %272 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %265
  br label %273

273:                                              ; preds = %271, %283
  %274 = phi i64 [ 0, %271 ], [ %285, %283 ]
  %275 = phi i32 [ %266, %271 ], [ %284, %283 ]
  %276 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %274
  %277 = load ptr, ptr %276, align 8, !tbaa !12
  %278 = load ptr, ptr %272, align 8, !tbaa !12
  %279 = tail call i32 @operands_match_p(ptr noundef %277, ptr noundef %278) #20
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %273
  %282 = trunc i64 %274 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %282) #20
  br label %283

283:                                              ; preds = %273, %281
  %284 = phi i32 [ 1, %281 ], [ %275, %273 ]
  %285 = add nuw nsw i64 %274, 1
  %286 = icmp eq i64 %285, %263
  br i1 %286, label %287, label %273, !llvm.loop !163

287:                                              ; preds = %283, %264
  %288 = phi i32 [ %266, %264 ], [ %284, %283 ]
  %289 = add nsw i64 %265, 1
  %290 = icmp slt i64 %289, %262
  br i1 %290, label %264, label %291, !llvm.loop !164

291:                                              ; preds = %287, %256
  %292 = phi i32 [ %257, %256 ], [ %288, %287 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %296 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %295) #20
  store ptr %296, ptr %6, align 8, !tbaa !6
  store i1 true, ptr @any_malformed_asm, align 1
  br label %297

297:                                              ; preds = %291, %294, %16
  %298 = phi i32 [ 0, %16 ], [ 0, %294 ], [ 1, %291 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 53, ptr nonnull %2) #21
  ret i32 %298
}

; Function Attrs: optsize
declare void @extract_insn(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @constrain_operands(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @preprocess_constraints() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_asm_operands_in_out(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @extract_asm_operands(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 8, !tbaa !14
  store i32 %7, ptr %2, align 4, !tbaa !22
  %8 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !114
  %9 = sext i8 %8 to i32
  %10 = load ptr, ptr %5, align 8, !tbaa !6
  %11 = load i32, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = add i32 %11, %14
  %16 = sub i32 %9, %15
  store i32 %16, ptr %1, align 4, !tbaa !22
  ret void
}

; Function Attrs: optsize
declare i32 @reg_class_subset_p(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @extract_asm_operands(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #19
  %5 = add i32 %4, -8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %6, i64 38
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load ptr, ptr @not_a_num, align 8, !tbaa !12
  %10 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %8, ptr noundef %9) #20
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %12, align 8, !tbaa !6
  %13 = tail call fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %10) #19
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %5) #19
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %8 = load ptr, ptr %6, align 8, !tbaa !12
  %9 = load ptr, ptr %7, align 8, !tbaa !12
  %10 = load i32, ptr %8, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %140

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %109

17:                                               ; preds = %13
  %18 = load i32, ptr %9, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %109

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %23 = and i32 %22, -8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %109

25:                                               ; preds = %21
  %26 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %14) #20
  %27 = icmp eq ptr %26, null
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %30 = icmp eq i32 %28, %29
  br i1 %27, label %82, label %31

31:                                               ; preds = %25
  br i1 %30, label %32, label %33

32:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 968, ptr noundef nonnull @.str.4) #20
  br label %33

33:                                               ; preds = %31, %32
  %34 = load i32, ptr %1, align 8, !tbaa !68
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  br label %38

38:                                               ; preds = %36, %45
  %39 = phi i32 [ %34, %36 ], [ %46, %45 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !6
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = add nsw i32 %39, -1
  %47 = icmp sgt i32 %39, 0
  br i1 %47, label %38, label %48, !llvm.loop !165

48:                                               ; preds = %45, %38, %33
  %49 = phi i32 [ %34, %33 ], [ %39, %38 ], [ -1, %45 ]
  %50 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 975, ptr noundef nonnull @.str.4) #20
  br label %53

53:                                               ; preds = %48, %52
  %54 = icmp slt i32 %49, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  br label %199

57:                                               ; preds = %53
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %59 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %58) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 0) #19
  br label %79

63:                                               ; preds = %57
  %64 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %65 = trunc i32 %64 to i8
  %66 = zext nneg i32 %49 to i64
  %67 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %66
  store i8 %65, ptr %67, align 1, !tbaa !6
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !69
  %73 = or i64 %70, %72
  store i64 %73, ptr %71, align 8, !tbaa !69
  %74 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %75 = zext nneg i32 %74 to i64
  %76 = shl nuw i64 1, %75
  %77 = xor i64 %76, -1
  %78 = and i64 %73, %77
  store i64 %78, ptr %71, align 8, !tbaa !69
  br label %79

79:                                               ; preds = %63, %61
  %80 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #20
  %81 = tail call ptr @delete_insn(ptr noundef %0) #20
  br label %199

82:                                               ; preds = %25
  br i1 %30, label %83, label %91

83:                                               ; preds = %82
  %84 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %28) #20
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef 0) #19
  br label %88

88:                                               ; preds = %86, %83
  %89 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #20
  %90 = tail call ptr @delete_insn(ptr noundef %0) #20
  br label %199

91:                                               ; preds = %82
  %92 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %9) #19
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1017, ptr noundef nonnull @.str.4) #20
  br label %95

95:                                               ; preds = %91, %94
  %96 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %8) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef %96) #19
  %97 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %98 = trunc i32 %97 to i8
  %99 = load i32, ptr %1, align 8, !tbaa !68
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %1, align 8, !tbaa !68
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %101
  store i8 %98, ptr %102, align 1, !tbaa !6
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %104 = zext nneg i32 %103 to i64
  %105 = shl nuw i64 1, %104
  %106 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !69
  %108 = or i64 %105, %107
  store i64 %108, ptr %106, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8) #19
  br label %199

109:                                              ; preds = %21, %17, %13
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %111 = and i32 %110, -8
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #19
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %115 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %114) #20
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %118, i32 noundef 8) #19
  %119 = load i32, ptr %1, align 8, !tbaa !68
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %1, align 8, !tbaa !68
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = xor i64 %123, -1
  %125 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !69
  %127 = and i64 %126, %124
  store i64 %127, ptr %125, align 8, !tbaa !69
  br label %139

128:                                              ; preds = %113
  %129 = load i32, ptr %8, align 8
  %130 = and i32 %129, 16711680
  %131 = icmp eq i32 %130, 2621440
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, ptr %1, align 8, !tbaa !68
  %134 = icmp slt i32 %133, 7
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !12
  %137 = tail call ptr @gen_movxf(ptr noundef %136, ptr noundef %136) #20
  %138 = tail call ptr @emit_insn_before(ptr noundef %137, ptr noundef %0) #20
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef %136) #20
  br label %139

139:                                              ; preds = %128, %132, %135, %117
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef 8) #19
  br label %199

140:                                              ; preds = %3, %109
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !6
  %143 = load i32, ptr %9, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 37
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %148 = and i32 %147, -8
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %151, label %150

150:                                              ; preds = %146, %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1064, ptr noundef nonnull @.str.4) #20
  br label %151

151:                                              ; preds = %146, %150
  %152 = load i32, ptr %142, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 15
  br i1 %154, label %155, label %177

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = load i32, ptr %157, align 8, !tbaa !14
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %157, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !12
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 23
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 18
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %174 = load i32, ptr %173, align 8, !tbaa !6
  %175 = icmp eq i32 %174, 68
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  tail call fastcc void @emit_swap_insn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %9) #19
  br label %181

177:                                              ; preds = %172, %166, %160, %155, %151
  %178 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %9) #19
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1082, ptr noundef nonnull @.str.4) #20
  br label %181

181:                                              ; preds = %180, %177, %176
  %182 = load i32, ptr %1, align 8, !tbaa !68
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1084, ptr noundef nonnull @.str.4) #20
  %185 = load i32, ptr %1, align 8, !tbaa !68
  br label %186

186:                                              ; preds = %181, %184
  %187 = phi i32 [ %182, %181 ], [ %185, %184 ]
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %189 = trunc i32 %188 to i8
  %190 = add nsw i32 %187, 1
  store i32 %190, ptr %1, align 8, !tbaa !68
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %191
  store i8 %189, ptr %192, align 1, !tbaa !6
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %194 = zext nneg i32 %193 to i64
  %195 = shl nuw i64 1, %194
  %196 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !69
  %198 = or i64 %195, %197
  store i64 %198, ptr %196, align 8, !tbaa !69
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8) #19
  br label %199

199:                                              ; preds = %95, %186, %139, %55, %79, %88
  %200 = phi i8 [ %89, %88 ], [ %56, %55 ], [ %80, %79 ], [ 0, %139 ], [ 0, %186 ], [ 0, %95 ]
  ret i8 %200
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %5, align 8, !tbaa !12
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %14 = and i32 %13, -8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !12
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #19
  %23 = and i32 %22, -8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %17) #19
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %37

28:                                               ; preds = %25, %12, %3
  %29 = tail call fastcc i32 @swap_rtx_condition(ptr noundef %0) #19, !range !20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load <2 x ptr>, ptr %4, align 8, !tbaa !6
  %33 = shufflevector <2 x ptr> %32, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %33, ptr %4, align 8, !tbaa !6
  %34 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %35 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6) #19
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %36, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %31, %28, %25, %21, %16
  %38 = phi ptr [ %35, %31 ], [ %7, %28 ], [ %7, %25 ], [ %7, %21 ], [ %7, %16 ]
  %39 = phi ptr [ %34, %31 ], [ %5, %28 ], [ %5, %25 ], [ %5, %21 ], [ %5, %16 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !12
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef %40) #19
  %42 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %41) #20
  %43 = load ptr, ptr %38, align 8, !tbaa !12
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #19
  %49 = and i32 %48, -8
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %48) #20
  br label %53

53:                                               ; preds = %37, %47, %51
  %54 = phi ptr [ %52, %51 ], [ null, %47 ], [ null, %37 ]
  %55 = load ptr, ptr %39, align 8, !tbaa !12
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %55) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %39, i32 noundef 8) #19
  %56 = load ptr, ptr %38, align 8, !tbaa !12
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #19
  %62 = and i32 %61, -8
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %56) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %38, i32 noundef %65) #19
  br label %66

66:                                               ; preds = %64, %60, %53
  %67 = icmp ne ptr %42, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef %70) #19
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %71) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %69, i32 noundef 8) #19
  br label %72

72:                                               ; preds = %68, %66
  %73 = icmp eq ptr %54, null
  br i1 %73, label %107, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr %39, align 8, !tbaa !12
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #19
  %81 = and i32 %80, -8
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load ptr, ptr %38, align 8, !tbaa !12
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #19
  %90 = and i32 %89, -8
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #19
  %94 = icmp eq i32 %93, %89
  br i1 %94, label %107, label %95

95:                                               ; preds = %92, %88, %83, %79, %74
  %96 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %97) #19
  %99 = icmp eq i32 %98, 8
  %100 = and i1 %67, %99
  %101 = load ptr, ptr %96, align 8, !tbaa !6
  %102 = tail call fastcc i32 @rhs_regno(ptr noundef %101) #19
  br i1 %100, label %103, label %104

103:                                              ; preds = %95
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %102) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %96, i32 noundef 9) #19
  br label %107

104:                                              ; preds = %95
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %102) #19
  %105 = load ptr, ptr %96, align 8, !tbaa !6
  %106 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %105, i32 noundef 0) #19
  br label %107

107:                                              ; preds = %103, %104, %92, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_regno_note(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %26, %24 ], [ %4, %2 ]
  %8 = phi ptr [ %25, %24 ], [ %3, %2 ]
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #19
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  store ptr %23, ptr %8, align 8, !tbaa !12
  br label %29

24:                                               ; preds = %18, %12, %6
  %25 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %6, !llvm.loop !166

28:                                               ; preds = %24, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 719, ptr noundef nonnull @.str.4) #20
  br label %29

29:                                               ; preds = %28, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.stack_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  %6 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %5, ptr noundef %2) #19
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 915, ptr noundef nonnull @.str.4) #20
  br label %11

9:                                                ; preds = %4
  %10 = icmp eq i32 %6, 8
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %9
  %12 = load i32, ptr %5, align 8, !tbaa !68
  %13 = sub i32 %12, %6
  %14 = add i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !6
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !6
  store i8 %20, ptr %16, align 1, !tbaa !6
  store i8 %17, ptr %19, align 1, !tbaa !6
  br label %21

21:                                               ; preds = %11, %9
  %22 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %5, ptr noundef %3) #19
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 928, ptr noundef nonnull @.str.4) #20
  br label %27

25:                                               ; preds = %21
  %26 = icmp eq i32 %22, 9
  br i1 %26, label %38, label %27

27:                                               ; preds = %24, %25
  %28 = load i32, ptr %5, align 8, !tbaa !68
  %29 = sub i32 %28, %22
  %30 = add i32 %29, 8
  %31 = add nsw i32 %28, -1
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !6
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !6
  store i8 %37, ptr %33, align 1, !tbaa !6
  store i8 %34, ptr %36, align 1, !tbaa !6
  br label %38

38:                                               ; preds = %27, %25
  call fastcc void @change_stack(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  ret void
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gen_movxf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @swap_rtx_condition(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %15 = icmp eq i32 %14, 17
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %0) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %121, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %19, %13, %7, %1
  %24 = phi i32 [ %22, %19 ], [ %4, %13 ], [ %4, %7 ], [ %4, %1 ]
  %25 = phi ptr [ %17, %19 ], [ %0, %13 ], [ %0, %7 ], [ %0, %1 ]
  %26 = phi ptr [ %21, %19 ], [ %3, %13 ], [ %3, %7 ], [ %3, %1 ]
  %27 = and i32 %24, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %29, label %100

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 18
  br i1 %35, label %36, label %100

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !6
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %100

40:                                               ; preds = %36
  %41 = load ptr, ptr %30, align 8, !tbaa !6
  %42 = load ptr, ptr @current_block, align 8, !tbaa !12
  br label %43

43:                                               ; preds = %64, %40
  %44 = phi ptr [ %42, %40 ], [ %66, %64 ]
  %45 = phi ptr [ %25, %40 ], [ %53, %64 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !94
  %50 = icmp eq ptr %45, %49
  br i1 %50, label %121, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = tail call i32 @reg_mentioned_p(ptr noundef %41, ptr noundef nonnull %53) #20
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr @current_block, align 8, !tbaa !12
  br i1 %60, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, ptr %53, align 8
  br label %64

64:                                               ; preds = %62, %51
  %65 = phi i32 [ %54, %51 ], [ %63, %62 ]
  %66 = phi ptr [ %44, %51 ], [ %61, %62 ]
  %67 = and i32 %65, 65535
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %121, label %43, !llvm.loop !167

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !94
  %74 = icmp eq ptr %53, %73
  br i1 %74, label %121, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 23
  br i1 %80, label %81, label %121

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 18
  br i1 %86, label %87, label %121

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !6
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = tail call i32 @dead_or_set_p(ptr noundef nonnull %53, ptr noundef %41) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %91
  %95 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %53) #19
  %96 = icmp eq ptr %95, null
  br i1 %96, label %121, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  br label %100

100:                                              ; preds = %97, %36, %29, %23
  %101 = phi ptr [ %95, %97 ], [ %25, %36 ], [ %25, %29 ], [ %25, %23 ]
  %102 = phi ptr [ %99, %97 ], [ %26, %36 ], [ %26, %29 ], [ %26, %23 ]
  %103 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %102) #19, !range !20
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 1, i32 1
  store i32 -1, ptr %106, align 8, !tbaa !6
  %107 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %101) #19
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !12
  %111 = tail call i32 @dead_or_set_p(ptr noundef nonnull %101, ptr noundef %110) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %101) #19
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @swap_rtx_condition(ptr noundef nonnull %114) #19, !range !20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %116, %105
  %120 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %102) #19, !range !20
  br label %121

121:                                              ; preds = %43, %64, %94, %75, %81, %87, %91, %69, %100, %119, %109, %116, %16
  %122 = phi i32 [ 0, %16 ], [ 0, %119 ], [ 1, %109 ], [ 1, %116 ], [ 0, %100 ], [ 0, %69 ], [ 0, %91 ], [ 0, %87 ], [ 0, %81 ], [ 0, %75 ], [ 0, %94 ], [ 0, %64 ], [ 0, %43 ]
  ret i32 %122
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @pop_stack(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #16 {
  %3 = load i32, ptr %0, align 8, !tbaa !68
  %4 = zext nneg i32 %1 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !69
  %9 = and i64 %8, %6
  store i64 %9, ptr %7, align 8, !tbaa !69
  %10 = add nsw i32 %3, -1
  store i32 %10, ptr %0, align 8, !tbaa !68
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !6
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, %1
  %16 = icmp sgt i32 %3, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %2, %35
  %19 = phi i32 [ %36, %35 ], [ %10, %2 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = icmp slt i32 %19, %3
  br i1 %26, label %27, label %38

27:                                               ; preds = %25, %27
  %28 = phi i64 [ %29, %27 ], [ %20, %25 ]
  %29 = add nuw nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %28
  store i8 %31, ptr %32, align 1, !tbaa !6
  %33 = trunc i64 %29 to i32
  %34 = icmp sgt i32 %3, %33
  br i1 %34, label %27, label %38, !llvm.loop !168

35:                                               ; preds = %18
  %36 = add nsw i32 %19, -1
  %37 = icmp sgt i32 %19, 0
  br i1 %37, label %18, label %38, !llvm.loop !169

38:                                               ; preds = %35, %27, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @next_flags_user(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @current_block, align 8, !tbaa !12
  br label %3

3:                                                ; preds = %28, %1
  %4 = phi ptr [ %2, %1 ], [ %30, %28 ]
  %5 = phi ptr [ %0, %1 ], [ %13, %28 ]
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -7
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call i32 @reg_mentioned_p(ptr noundef %19, ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load ptr, ptr @current_block, align 8, !tbaa !12
  %26 = load i32, ptr %13, align 8
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %24, %11
  %29 = phi i32 [ %27, %24 ], [ %15, %11 ]
  %30 = phi ptr [ %25, %24 ], [ %4, %11 ]
  %31 = icmp eq i32 %29, 10
  br i1 %31, label %32, label %3, !llvm.loop !170

32:                                               ; preds = %3, %28, %18
  %33 = phi ptr [ %13, %18 ], [ null, %28 ], [ null, %3 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @swap_rtx_condition_1(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = tail call i32 @swap_condition(i32 noundef %3) #20
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %9, 65535
  %12 = and i32 %10, -65536
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %0, align 8
  br label %54

14:                                               ; preds = %1
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %4
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %51
  %24 = phi i64 [ %22, %20 ], [ %26, %51 ]
  %25 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds i8, ptr %16, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !6
  switch i8 %28, label %51 [
    i8 69, label %29
    i8 101, label %46
  ]

29:                                               ; preds = %23
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = load i32, ptr %31, align 8, !tbaa !14
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = zext nneg i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = phi i32 [ %25, %34 ], [ %44, %36 ]
  %39 = add nsw i64 %37, -1
  %40 = load ptr, ptr %30, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !12
  %43 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %42) #19, !range !20
  %44 = or i32 %43, %38
  %45 = icmp ugt i64 %37, 1
  br i1 %45, label %36, label %51, !llvm.loop !171

46:                                               ; preds = %23
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %26
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %48) #19, !range !20
  %50 = or i32 %49, %25
  br label %51

51:                                               ; preds = %36, %29, %23, %46
  %52 = phi i32 [ %50, %46 ], [ %25, %23 ], [ %25, %29 ], [ %44, %36 ]
  %53 = icmp sgt i64 %24, 1
  br i1 %53, label %23, label %54, !llvm.loop !172

54:                                               ; preds = %51, %14, %8
  %55 = phi i32 [ 1, %8 ], [ 0, %14 ], [ %52, %51 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #20
  store i32 %8, ptr %2, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @compensate_edge(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.stack_def, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.block_info_def, ptr %9, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.22, i32 noundef %15, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, ptr %7, align 8, !tbaa !68
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2741, ptr noundef nonnull @.str.4) #20
  %23 = load i32, ptr %7, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %20, %19 ], [ %23, %22 ]
  %26 = load i32, ptr %10, align 8, !tbaa !68
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = icmp sgt i32 %25, -1
  br i1 %29, label %30, label %41

30:                                               ; preds = %28, %38
  %31 = phi i32 [ %39, %38 ], [ %25, %28 ]
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.stack_def, ptr %7, i64 0, i32 2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !6
  %35 = getelementptr inbounds %struct.block_info_def, ptr %9, i64 0, i32 1, i32 2, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = add nsw i32 %31, -1
  %40 = icmp sgt i32 %31, 0
  br i1 %40, label %30, label %43, !llvm.loop !173

41:                                               ; preds = %28
  %42 = icmp eq i32 %25, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %41
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %95, label %46

46:                                               ; preds = %43
  %47 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr nonnull %44)
  br label %95

48:                                               ; preds = %30, %41, %24
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 20, i64 1, ptr nonnull %49)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call fastcc void @print_stack(ptr noundef %53, ptr noundef nonnull %7) #19
  br label %54

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !36
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %10, align 8, !tbaa !68
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2772, ptr noundef nonnull @.str.4) #20
  br label %63

63:                                               ; preds = %59, %62
  %64 = load i32, ptr %7, align 8, !tbaa !68
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %95, label %66

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2773, ptr noundef nonnull @.str.4) #20
  br label %95

67:                                               ; preds = %54
  %68 = and i32 %56, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %7, align 8, !tbaa !68
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2782, ptr noundef nonnull @.str.4) #20
  br label %95

74:                                               ; preds = %67
  %75 = and i32 %56, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2789, ptr noundef nonnull @.str.4) #20
  br label %78

78:                                               ; preds = %74, %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !92
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  %81 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %80) #19
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  store ptr %3, ptr @current_block, align 8, !tbaa !12
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !94
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 9
  %91 = zext i1 %90 to i32
  call fastcc void @change_stack(ptr noundef nonnull %87, ptr noundef nonnull %2, ptr noundef nonnull %7, i32 noundef %91) #19
  br label %95

92:                                               ; preds = %78
  store ptr null, ptr @current_block, align 8, !tbaa !12
  tail call void @start_sequence() #20
  %93 = tail call ptr @emit_note(i32 noundef 0) #20
  call fastcc void @change_stack(ptr noundef %93, ptr noundef nonnull %2, ptr noundef nonnull %7, i32 noundef 1) #19
  %94 = call ptr @get_insns() #20
  call void @end_sequence() #20
  call void @insert_insn_on_edge(ptr noundef %94, ptr noundef nonnull %0) #20
  br label %95

95:                                               ; preds = %73, %70, %66, %63, %43, %46, %83, %92
  %96 = phi i8 [ 0, %83 ], [ 1, %92 ], [ 0, %46 ], [ 0, %43 ], [ 0, %63 ], [ 0, %66 ], [ 0, %70 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret i8 %96
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #7

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.and.v2i64(<2 x i64>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"VEC_char_base", !11, i64 0, !11, i64 4, !7, i64 8}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"rtvec_def", !11, i64 0, !7, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{}
!20 = !{i32 0, i32 2}
!21 = !{!10, !11, i64 4}
!22 = !{!11, !11, i64 0}
!23 = distinct !{!23, !17}
!24 = !{!25, !13, i64 8}
!25 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !13, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!26 = !{!27, !13, i64 0}
!27 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !13, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!28 = !{!29, !13, i64 56}
!29 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !13, i64 48, !13, i64 56, !7, i64 64, !30, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!30 = !{!"long", !7, i64 0}
!31 = !{!27, !13, i64 8}
!32 = !{!29, !13, i64 16}
!33 = !{i64 0, i64 4, !22, i64 8, i64 8, !12}
!34 = !{i64 0, i64 8, !12}
!35 = !{i8 0, i8 2}
!36 = !{!37, !11, i64 48}
!37 = !{!"edge_def", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !30, i64 56}
!38 = !{!37, !13, i64 0}
!39 = !{!40, !11, i64 60}
!40 = !{!"block_info_def", !41, i64 0, !41, i64 24, !30, i64 48, !11, i64 56, !11, i64 60}
!41 = !{!"stack_def", !11, i64 0, !30, i64 8, !7, i64 16}
!42 = distinct !{!42, !17}
!43 = !{!40, !11, i64 0}
!44 = !{!29, !11, i64 80}
!45 = !{!46, !13, i64 24}
!46 = !{!"df_lr_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!47 = !{!40, !30, i64 48}
!48 = !{!46, !13, i64 16}
!49 = !{!40, !30, i64 8}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = !{!56, !11, i64 0}
!56 = !{!"", !11, i64 0, !13, i64 8}
!57 = !{!58, !11, i64 16}
!58 = !{!"dataflow", !13, i64 0, !13, i64 8, !11, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !11, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!59 = !{!58, !13, i64 8}
!60 = !{!40, !11, i64 56}
!61 = !{!37, !13, i64 8}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = !{!65, !11, i64 0}
!65 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = !{!41, !11, i64 0}
!69 = !{!41, !30, i64 8}
!70 = distinct !{!70, !17}
!71 = !{!27, !11, i64 24}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = !{!77, !13, i64 1592}
!77 = !{!"gcc_target", !78, i64 0, !80, i64 368, !81, i64 664, !11, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !30, i64 1064, !30, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !82, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !30, i64 1464, !83, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !84, i64 1784, !85, i64 1792, !86, i64 1896, !87, i64 1968, !13, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!78 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !79, i64 24, !79, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!79 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!80 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!81 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!82 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!83 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!84 = !{!"c", !13, i64 0}
!85 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!86 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !7, i64 64, !7, i64 65}
!87 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = !{!91, !13, i64 0}
!91 = !{!"rtl_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32}
!92 = !{i64 0, i64 4, !22, i64 8, i64 8, !93, i64 16, i64 8, !6}
!93 = !{!30, !30, i64 0}
!94 = !{!91, !13, i64 8}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = !{!29, !11, i64 88}
!100 = !{!37, !11, i64 52}
!101 = !{!37, !30, i64 56}
!102 = !{!29, !13, i64 8}
!103 = !{!29, !13, i64 0}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17, !108, !109}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17, !108, !109}
!114 = !{!115, !7, i64 1086}
!115 = !{!"recog_data", !7, i64 0, !7, i64 240, !7, i64 480, !7, i64 720, !7, i64 840, !7, i64 960, !7, i64 1072, !7, i64 1086, !7, i64 1087, !7, i64 1088, !7, i64 1089, !13, i64 1120}
!116 = distinct !{!116, !17}
!117 = distinct !{!117, !17}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = !{!121, !11, i64 8}
!121 = !{!"operand_alternative", !13, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 24, !11, i64 24, !11, i64 24, !11, i64 24, !11, i64 24, !11, i64 24, !11, i64 24}
!122 = distinct !{!122, !17}
!123 = distinct !{!123, !17}
!124 = distinct !{!124, !17}
!125 = distinct !{!125, !17}
!126 = distinct !{!126, !17}
!127 = !{!121, !11, i64 16}
!128 = distinct !{!128, !17}
!129 = distinct !{!129, !17}
!130 = distinct !{!130, !17}
!131 = distinct !{!131, !17}
!132 = distinct !{!132, !17}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17}
!162 = distinct !{!162, !17}
!163 = distinct !{!163, !17}
!164 = distinct !{!164, !17}
!165 = distinct !{!165, !17}
!166 = distinct !{!166, !17}
!167 = distinct !{!167, !17}
!168 = distinct !{!168, !17}
!169 = distinct !{!169, !17}
!170 = distinct !{!170, !17}
!171 = distinct !{!171, !17}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17}

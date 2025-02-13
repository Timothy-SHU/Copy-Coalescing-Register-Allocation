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
define dso_local i32 @stack_regs_mentioned(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !230 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %11, label %6, !prof !231

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 10
  %8 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %9 = icmp ne ptr %8, null
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %14, label %41, !prof !232

11:                                               ; preds = %1
  %12 = load ptr, ptr @stack_regs_mentioned_data, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14, !prof !233

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %8, %6 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !234
  %18 = tail call fastcc i32 @VEC_char_base_length(ptr noundef nonnull %15) #19
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %25, label %20, !prof !237

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
  br i1 %29, label %30, label %37, !prof !238

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !234
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
define internal fastcc i32 @VEC_char_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !239 !PGOFuncName !240 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !241

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !242
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 !prof !245 !PGOFuncName !246 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %3 = tail call fastcc i32 @VEC_char_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_char_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %5 = tail call fastcc ptr @VEC_char_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i8 @VEC_char_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !249 !PGOFuncName !250 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !234
  ret i8 %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @stack_regs_mentioned_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !251 !PGOFuncName !252 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %9, !prof !253

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %7 = and i32 %6, -8
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %47, label %9, !prof !254

9:                                                ; preds = %5, %1
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !247
  %13 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %14 = load i8, ptr %13, align 1, !tbaa !234
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %47, label %16, !prof !255

16:                                               ; preds = %9
  %17 = zext i8 %14 to i64
  br label %18

18:                                               ; preds = %16, %45
  %19 = phi i64 [ %17, %16 ], [ %20, %45 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds i8, ptr %12, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !234
  switch i8 %22, label %45 [
    i8 69, label %23
    i8 101, label %39
  ], !prof !256

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %24, i64 0, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = load i32, ptr %26, align 8, !tbaa !257
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %33, %23
  %30 = phi i64 [ %34, %33 ], [ %28, %23 ]
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %45, label %33, !prof !259

33:                                               ; preds = %29
  %34 = add nsw i64 %30, -1
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %26, i64 0, i32 1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !247
  %37 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %29, label %47, !prof !260, !llvm.loop !261

39:                                               ; preds = %18
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %20
  %42 = load ptr, ptr %41, align 8, !tbaa !234
  %43 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %42) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47, !prof !263

45:                                               ; preds = %29, %18, %39
  %46 = icmp sgt i64 %19, 1
  br i1 %46, label %18, label %47, !prof !264, !llvm.loop !265

47:                                               ; preds = %39, %45, %33, %9, %5
  %48 = phi i32 [ 1, %5 ], [ 0, %9 ], [ 1, %33 ], [ 1, %39 ], [ 0, %45 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_char_base_replace(ptr nocapture noundef %0, i32 noundef %1, i8 noundef signext %2) unnamed_addr #4 !prof !266 !PGOFuncName !267 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2, i64 %4
  store i8 %2, ptr %5, align 1, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !245 !PGOFuncName !268 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !269

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !242
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_char_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247, !nonnull !270, !noundef !270
  store i32 %0, ptr %9, align 4, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_char_base_address(ptr noundef readnone %0) unnamed_addr #5 !prof !271 !PGOFuncName !272 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !273
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !245 !PGOFuncName !274 {
  %2 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %3 = tail call fastcc i32 @VEC_char_base_space(ptr noundef %2, i32 noundef %0) #19, !range !275
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !276

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 1) #20
  store ptr %6, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_char_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !245 !PGOFuncName !277 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !269

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_char_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !278
  %7 = load i32, ptr %0, align 4, !tbaa !242
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !279 !PGOFuncName !280 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !234
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_handle_stack_regs() #5 !prof !281 !PGOFuncName !282 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_stack_regs() #0 !prof !281 !PGOFuncName !283 {
  tail call fastcc void @reg_to_stack() #19
  store i32 1, ptr @regstack_completed, align 4, !tbaa !284
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reg_to_stack() unnamed_addr #0 !prof !281 !PGOFuncName !285 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.real_value, align 8
  %4 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !286

6:                                                ; preds = %0
  tail call fastcc void @VEC_char_heap_free() #19
  br label %7

7:                                                ; preds = %6, %0
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %152, label %11, !prof !287, !llvm.loop !288

11:                                               ; preds = %7, %8
  %12 = phi i32 [ %9, %8 ], [ 8, %7 ]
  %13 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %12) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %8, label %15, !prof !289

15:                                               ; preds = %11
  tail call void @df_note_add_problem() #20
  tail call void @df_analyze() #20
  %16 = tail call zeroext i8 @mark_dfs_back_edges() #20
  tail call void @alloc_aux_for_blocks(i32 noundef 64) #20
  %17 = load ptr, ptr @cfun, align 8, !tbaa !247
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !290
  %20 = load ptr, ptr %19, align 8, !tbaa !292
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !294
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !297
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %28, label %26, !prof !298

26:                                               ; preds = %15
  %27 = getelementptr inbounds i8, ptr %1, i64 8
  br label %33

28:                                               ; preds = %94, %15
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !234
  %30 = icmp eq i8 %29, 0
  %31 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1
  %32 = icmp eq i8 %31, 0
  br label %103

33:                                               ; preds = %26, %94
  %34 = phi ptr [ %22, %26 ], [ %96, %94 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef %34) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !300
  store ptr %37, ptr %27, align 8, !tbaa.struct !301
  %38 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %2) #19, !range !302
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %63, label %40, !prof !303

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.block_info_def, ptr %36, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %58
  %43 = load ptr, ptr %2, align 8, !tbaa !247
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !304
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58, !prof !306

48:                                               ; preds = %42
  %49 = load ptr, ptr %43, align 8, !tbaa !307
  %50 = load ptr, ptr @cfun, align 8, !tbaa !247
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !290
  %53 = load ptr, ptr %52, align 8, !tbaa !292
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %58, label %55, !prof !308

55:                                               ; preds = %48
  %56 = load i32, ptr %41, align 4, !tbaa !309
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %41, align 4, !tbaa !309
  br label %58

58:                                               ; preds = %42, %48, %55
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %59 = load i32, ptr %1, align 8
  %60 = load ptr, ptr %27, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %2) #19, !range !302
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %42, !prof !312, !llvm.loop !313

63:                                               ; preds = %58, %33
  store i32 -2, ptr %36, align 8, !tbaa !314
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  br label %65

65:                                               ; preds = %63, %91
  %66 = phi i64 [ 8, %63 ], [ %92, %91 ]
  %67 = load i32, ptr %64, align 8, !tbaa !315
  %68 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %67) #19
  %69 = getelementptr inbounds %struct.df_lr_bb_info, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !316
  %71 = trunc i64 %66 to i32
  %72 = tail call i32 @bitmap_bit_p(ptr noundef %70, i32 noundef %71) #20
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74, !prof !318

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.block_info_def, ptr %36, i64 0, i32 2
  %76 = shl nuw nsw i64 1, %66
  %77 = load i64, ptr %75, align 8, !tbaa !319
  %78 = or i64 %77, %76
  store i64 %78, ptr %75, align 8, !tbaa !319
  br label %79

79:                                               ; preds = %74, %65
  %80 = load i32, ptr %64, align 8, !tbaa !315
  %81 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %80) #19
  %82 = getelementptr inbounds %struct.df_lr_bb_info, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !320
  %84 = tail call i32 @bitmap_bit_p(ptr noundef %83, i32 noundef %71) #20
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86, !prof !321

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.stack_def, ptr %36, i64 0, i32 1
  %88 = shl nuw nsw i64 1, %66
  %89 = load i64, ptr %87, align 8, !tbaa !322
  %90 = or i64 %89, %88
  store i64 %90, ptr %87, align 8, !tbaa !322
  br label %91

91:                                               ; preds = %79, %86
  %92 = add nuw nsw i64 %66, 1
  %93 = icmp eq i64 %92, 16
  br i1 %93, label %94, label %65, !prof !323, !llvm.loop !324

94:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !294
  %97 = load ptr, ptr @cfun, align 8, !tbaa !247
  %98 = getelementptr inbounds %struct.function, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !290
  %100 = getelementptr inbounds %struct.control_flow_graph, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !297
  %102 = icmp eq ptr %96, %101
  br i1 %102, label %28, label %33, !prof !325, !llvm.loop !326

103:                                              ; preds = %28, %130
  %104 = phi i64 [ 8, %28 ], [ %131, %130 ]
  br i1 %30, label %108, label %105, !prof !327

105:                                              ; preds = %103
  %106 = add nsw i64 %104, -8
  %107 = trunc i64 %104 to i32
  br label %112

108:                                              ; preds = %112, %103
  br i1 %32, label %130, label %109, !prof !327

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
  store ptr %115, ptr %117, align 8, !tbaa !247
  %118 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %116
  %119 = load i8, ptr %118, align 1, !tbaa !234
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %108, label %112, !prof !328, !llvm.loop !329

121:                                              ; preds = %109, %121
  %122 = phi i8 [ %31, %109 ], [ %128, %121 ]
  %123 = zext i8 %122 to i32
  %124 = tail call ptr @gen_rtx_REG(i32 noundef %123, i32 noundef %111) #20
  %125 = zext i8 %122 to i64
  %126 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %110, i64 %125
  store ptr %124, ptr %126, align 8, !tbaa !247
  %127 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %125
  %128 = load i8, ptr %127, align 1, !tbaa !234
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %121, !prof !328, !llvm.loop !330

130:                                              ; preds = %121, %108
  %131 = add nuw nsw i64 %104, 1
  %132 = icmp eq i64 %131, 16
  br i1 %132, label %133, label %103, !prof !331, !llvm.loop !332

133:                                              ; preds = %130
  %134 = tail call ptr @gen_rtx_REG(i32 noundef 2, i32 noundef 17) #20
  store ptr %134, ptr @ix86_flags_rtx, align 8, !tbaa !247
  %135 = load i32, ptr @flag_pic, align 4, !tbaa !284
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
  %141 = load ptr, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 38), align 16, !tbaa !247
  store ptr %141, ptr @not_a_num, align 8, !tbaa !247
  br label %146

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %143 = call zeroext i8 @real_nan(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 38) #20
  %144 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %3, i32 noundef 38) #20
  store ptr %144, ptr @not_a_num, align 8, !tbaa !247
  %145 = call ptr @force_const_mem(i32 noundef 38, ptr noundef %144) #20
  store ptr %145, ptr @not_a_num, align 8, !tbaa !247
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %146

146:                                              ; preds = %142, %140
  %147 = call i32 @get_max_uid() #20
  %148 = add nsw i32 %147, 1
  %149 = call fastcc ptr @VEC_char_heap_alloc(i32 noundef %148) #19
  store ptr %149, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
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
define internal fastcc void @VEC_char_heap_free() unnamed_addr #8 !prof !333 !PGOFuncName !334 {
  %1 = load ptr, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !335

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stack_regs_mentioned_data, align 8, !tbaa !247
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !336 !PGOFuncName !337 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !338 !PGOFuncName !339 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !302
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !340

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !247
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !341 !PGOFuncName !342 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !343

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !344

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !345
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !345
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #10 !prof !347 !PGOFuncName !348 {
  %2 = load ptr, ptr @df, align 8, !tbaa !247
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !349
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !351

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !352
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !247
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
define internal fastcc ptr @VEC_char_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !333 !PGOFuncName !353 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs() unnamed_addr #0 !prof !333 !PGOFuncName !354 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = tail call fastcc i32 @convert_regs_entry() #19, !range !275
  tail call fastcc void @convert_regs_exit() #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !247
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !290
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !299
  %11 = getelementptr inbounds %struct.block_info_def, ptr %10, i64 0, i32 3
  store i32 1, ptr %11, align 8, !tbaa !355
  %12 = load ptr, ptr %6, align 8, !tbaa !292
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !300
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !301
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %1) #19, !range !302
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18, !prof !298

18:                                               ; preds = %0, %18
  %19 = load ptr, ptr %1, align 8, !tbaa !247
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !356
  tail call fastcc void @convert_regs_2(ptr noundef %21) #19
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %22 = load i32, ptr %2, align 8
  %23 = load ptr, ptr %15, align 8
  %24 = call fastcc zeroext i8 @ei_cond(i32 %22, ptr %23, ptr noundef nonnull %1) #19, !range !302
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %18, !prof !357, !llvm.loop !358

26:                                               ; preds = %18, %0
  %27 = load ptr, ptr @cfun, align 8, !tbaa !247
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !290
  %30 = load ptr, ptr %29, align 8, !tbaa !292
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !294
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !297
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %55, label %36, !prof !298

36:                                               ; preds = %26, %46
  %37 = phi ptr [ %47, %46 ], [ %27, %26 ]
  %38 = phi ptr [ %49, %46 ], [ %32, %26 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !299
  %41 = getelementptr inbounds %struct.block_info_def, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !355
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46, !prof !359

44:                                               ; preds = %36
  tail call fastcc void @convert_regs_2(ptr noundef nonnull %38) #19
  %45 = load ptr, ptr @cfun, align 8, !tbaa !247
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %45, %44 ], [ %37, %36 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !294
  %50 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !290
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !297
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %55, label %36, !prof !325, !llvm.loop !360

55:                                               ; preds = %46, %26
  %56 = tail call fastcc zeroext i8 @compensate_edges() #19, !range !302
  %57 = zext nneg i8 %56 to i32
  %58 = or i32 %3, %57
  tail call void @clear_aux_for_blocks() #20
  tail call void @fixup_abnormal_edges() #20
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !361

60:                                               ; preds = %55
  tail call void @commit_edge_insertions() #20
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64, !prof !362

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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !338 !PGOFuncName !363 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !364

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !341 !PGOFuncName !365 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !343

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #2 !prof !366 !PGOFuncName !367 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !368

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !369
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !371 !PGOFuncName !372 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !373

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.4) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !247
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 !prof !341 !PGOFuncName !374 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !247
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @convert_regs_entry() unnamed_addr #0 !prof !333 !PGOFuncName !375 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  %6 = load ptr, ptr %5, align 8, !tbaa !292
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 1
  %8 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !300
  %9 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !301
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %1) #19, !range !302
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12, !prof !298

12:                                               ; preds = %0, %41
  %13 = phi i32 [ %38, %41 ], [ 0, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !247
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !356
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !299
  %19 = getelementptr inbounds %struct.stack_def, ptr %18, i64 0, i32 1
  br label %20

20:                                               ; preds = %12, %36
  %21 = phi i64 [ 15, %12 ], [ %39, %36 ]
  %22 = phi i32 [ %13, %12 ], [ %38, %36 ]
  %23 = phi i32 [ -1, %12 ], [ %37, %36 ]
  %24 = load i64, ptr %19, align 8, !tbaa !322
  %25 = shl nuw i64 1, %21
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %28, !prof !376

28:                                               ; preds = %20
  %29 = trunc i64 %21 to i8
  %30 = add nsw i32 %23, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.stack_def, ptr %18, i64 0, i32 2, i64 %31
  store i8 %29, ptr %32, align 1, !tbaa !234
  %33 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 38), align 16, !tbaa !247
  %34 = load ptr, ptr @not_a_num, align 8, !tbaa !247
  %35 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %33, ptr noundef %34) #20
  tail call void @insert_insn_on_edge(ptr noundef %35, ptr noundef %14) #20
  br label %36

36:                                               ; preds = %20, %28
  %37 = phi i32 [ %30, %28 ], [ %23, %20 ]
  %38 = phi i32 [ 1, %28 ], [ %22, %20 ]
  %39 = add nsw i64 %21, -1
  %40 = icmp ugt i64 %21, 8
  br i1 %40, label %20, label %41, !prof !377, !llvm.loop !378

41:                                               ; preds = %36
  store i32 %37, ptr %18, align 8, !tbaa !314
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %42 = load i32, ptr %2, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %1) #19, !range !302
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %12, !prof !357, !llvm.loop !379

46:                                               ; preds = %41, %0
  %47 = phi i32 [ 0, %0 ], [ %38, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_exit() unnamed_addr #0 !prof !333 !PGOFuncName !380 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !247
  %2 = tail call fastcc ptr @stack_result(ptr noundef %1) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12, !prof !381

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !247
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !297
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !299
  br label %27

12:                                               ; preds = %0
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %14 = load i32, ptr %2, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call fastcc i32 @end_hard_regno(i32 noundef %16, i32 noundef %13) #19
  %18 = add i32 %17, -1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !247
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !290
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !297
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !299
  %26 = icmp eq i32 %13, -1
  br i1 %26, label %27, label %29, !prof !382

27:                                               ; preds = %4, %12
  %28 = phi ptr [ %11, %4 ], [ %25, %12 ]
  store i32 -1, ptr %28, align 8, !tbaa !383
  br label %47

29:                                               ; preds = %12
  %30 = sub nsw i32 %18, %13
  store i32 %30, ptr %25, align 8, !tbaa !383
  %31 = icmp sgt i32 %13, %18
  br i1 %31, label %47, label %32, !prof !384

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
  store i8 %38, ptr %40, align 1, !tbaa !234
  %41 = shl nuw i64 1, %37
  %42 = load i64, ptr %33, align 8, !tbaa !385
  %43 = or i64 %42, %41
  store i64 %43, ptr %33, align 8, !tbaa !385
  %44 = add nsw i64 %37, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %17, %45
  br i1 %46, label %47, label %36, !prof !386, !llvm.loop !387

47:                                               ; preds = %36, %29, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_2(ptr noundef %0) unnamed_addr #0 !prof !333 !PGOFuncName !388 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !247
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !290
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !389
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #20
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %0, ptr %11, align 8, !tbaa !247
  %13 = getelementptr inbounds i8, ptr %3, i64 8
  br label %14

14:                                               ; preds = %46, %1
  %15 = phi ptr [ %12, %1 ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %16 = getelementptr inbounds ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !247
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %19 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %18) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !300
  store ptr %19, ptr %13, align 8, !tbaa.struct !301
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %2) #19, !range !302
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %46, label %22, !prof !303

22:                                               ; preds = %14, %40
  %23 = phi ptr [ %41, %40 ], [ %16, %14 ]
  %24 = load ptr, ptr %2, align 8, !tbaa !247
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !304
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40, !prof !390

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !356
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !299
  %34 = getelementptr inbounds %struct.block_info_def, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !309
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %34, align 4, !tbaa !309
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40, !prof !391

38:                                               ; preds = %29
  %39 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %31, ptr %23, align 8, !tbaa !247
  br label %40

40:                                               ; preds = %22, %38, %29
  %41 = phi ptr [ %23, %22 ], [ %23, %29 ], [ %39, %38 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %42 = load i32, ptr %3, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %2) #19, !range !302
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %22, !prof !392, !llvm.loop !393

46:                                               ; preds = %40, %14
  %47 = phi ptr [ %16, %14 ], [ %41, %40 ]
  tail call fastcc void @convert_regs_1(ptr noundef %17) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %48 = icmp eq ptr %47, %11
  br i1 %48, label %49, label %14, !prof !394, !llvm.loop !395

49:                                               ; preds = %46
  tail call void @free(ptr noundef %11) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compensate_edges() unnamed_addr #0 !prof !333 !PGOFuncName !396 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  store i1 false, ptr @starting_stack_p, align 1
  %3 = load ptr, ptr @cfun, align 8, !tbaa !247
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  %6 = load ptr, ptr %5, align 8, !tbaa !292
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !294
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !297
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %48, label %12, !prof !298

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %2, i64 8
  br label %14

14:                                               ; preds = %12, %38
  %15 = phi ptr [ %3, %12 ], [ %39, %38 ]
  %16 = phi ptr [ %5, %12 ], [ %44, %38 ]
  %17 = phi ptr [ %8, %12 ], [ %42, %38 ]
  %18 = phi i8 [ 0, %12 ], [ %40, %38 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !292
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %38, label %21, !prof !359

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !300
  store ptr %23, ptr %13, align 8, !tbaa.struct !301
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %1) #19, !range !302
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26, !prof !303

26:                                               ; preds = %21, %26
  %27 = phi i8 [ %30, %26 ], [ %18, %21 ]
  %28 = load ptr, ptr %1, align 8, !tbaa !247
  %29 = tail call fastcc zeroext i8 @compensate_edge(ptr noundef %28) #19, !range !302
  %30 = or i8 %29, %27
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %13, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %1) #19, !range !302
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %26, !prof !392, !llvm.loop !397

35:                                               ; preds = %26, %21
  %36 = phi i8 [ %18, %21 ], [ %30, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  %37 = load ptr, ptr @cfun, align 8, !tbaa !247
  br label %38

38:                                               ; preds = %14, %35
  %39 = phi ptr [ %37, %35 ], [ %15, %14 ]
  %40 = phi i8 [ %36, %35 ], [ %18, %14 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !294
  %43 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !290
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !297
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %14, !prof !325, !llvm.loop !398

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
define internal fastcc ptr @stack_result(ptr noundef %0) unnamed_addr #0 !prof !333 !PGOFuncName !399 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !234
  %4 = tail call i32 @aggregate_value_p(ptr noundef %3, ptr noundef %0) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32, !prof !362

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !234
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !234
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13, !prof !335

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !234
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17, !prof !361

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 15), align 8, !tbaa !400
  %19 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !234
  %21 = tail call ptr %18(ptr noundef %20, ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23, !prof !382

23:                                               ; preds = %17
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %32, !prof !412

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %21) #19
  %29 = and i32 %28, -8
  %30 = icmp eq i32 %29, 8
  %31 = select i1 %30, ptr %21, ptr null, !prof !413
  br label %32

32:                                               ; preds = %13, %6, %23, %17, %27, %1
  %33 = phi ptr [ null, %1 ], [ null, %23 ], [ null, %17 ], [ %31, %27 ], [ null, %6 ], [ null, %13 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !prof !414 !PGOFuncName !415 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !234
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_regs_1(ptr noundef %0) unnamed_addr #0 !prof !416 !PGOFuncName !417 {
  %2 = alloca %struct.stack_def, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  store i1 false, ptr @any_malformed_asm, align 1
  %7 = load i32, ptr %6, align 8, !tbaa !314
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %9, label %52, !prof !418

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !300
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !301
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %3) #19, !range !302
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14, !prof !419

14:                                               ; preds = %9, %25
  %15 = phi ptr [ %26, %25 ], [ null, %9 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !247
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !299
  %20 = getelementptr inbounds %struct.block_info_def, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !355
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !420

23:                                               ; preds = %14
  %24 = tail call fastcc ptr @better_edge(ptr noundef %15, ptr noundef nonnull %16) #19
  br label %25

25:                                               ; preds = %14, %23
  %26 = phi ptr [ %24, %23 ], [ %15, %14 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %27 = load i32, ptr %4, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %3) #19, !range !302
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %14, !prof !421, !llvm.loop !422

31:                                               ; preds = %25
  %32 = icmp eq ptr %26, null
  br i1 %32, label %34, label %33, !prof !382

33:                                               ; preds = %31
  tail call fastcc void @propagate_stack(ptr noundef nonnull %26) #19
  br label %51

34:                                               ; preds = %9, %31
  store i32 -1, ptr %6, align 8, !tbaa !314
  %35 = getelementptr inbounds %struct.stack_def, ptr %6, i64 0, i32 1
  br label %36

36:                                               ; preds = %34, %48
  %37 = phi i64 [ 15, %34 ], [ %49, %48 ]
  %38 = load i64, ptr %35, align 8, !tbaa !322
  %39 = shl nuw i64 1, %37
  %40 = and i64 %38, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = trunc i64 %37 to i8
  %44 = load i32, ptr %6, align 8, !tbaa !314
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 8, !tbaa !314
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stack_def, ptr %6, i64 0, i32 2, i64 %46
  store i8 %43, ptr %47, align 1, !tbaa !234
  br label %48

48:                                               ; preds = %36, %42
  %49 = add nsw i64 %37, -1
  %50 = icmp ugt i64 %37, 8
  br i1 %50, label %36, label %51, !llvm.loop !423

51:                                               ; preds = %48, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %52

52:                                               ; preds = %51, %1
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !prof !424

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !315
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %53, ptr noundef nonnull @.str.5, i32 noundef %57) #19
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !247
  tail call fastcc void @print_stack(ptr noundef %59, ptr noundef nonnull %6) #19
  br label %60

60:                                               ; preds = %55, %52
  store ptr %0, ptr @current_block, align 8, !tbaa !247
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !234
  %63 = load ptr, ptr %62, align 8, !tbaa !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !427
  store i1 true, ptr @starting_stack_p, align 1
  br label %64

64:                                               ; preds = %108, %60
  %65 = phi i32 [ 0, %60 ], [ %109, %108 ]
  %66 = phi i8 [ 0, %60 ], [ %110, %108 ]
  %67 = phi ptr [ %63, %60 ], [ %70, %108 ]
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 2
  %70 = load ptr, ptr %69, align 8, !tbaa !234
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73, !prof !429

72:                                               ; preds = %64
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2937, ptr noundef nonnull @.str.4) #20
  br label %73

73:                                               ; preds = %64, %72
  %74 = load ptr, ptr %61, align 8, !tbaa !234
  %75 = getelementptr inbounds %struct.rtl_bb_info, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !430
  %77 = icmp eq ptr %67, %76
  %78 = load i32, ptr %67, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 7
  br i1 %80, label %81, label %91, !prof !429

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
  %92 = call i32 @stack_regs_mentioned(ptr noundef nonnull %67) #19, !range !275
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98, !prof !431

94:                                               ; preds = %91
  %95 = load i32, ptr %67, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %108, !prof !432

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101, !prof !433

101:                                              ; preds = %98
  %102 = load i32, ptr %68, align 8, !tbaa !234
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %99, ptr noundef nonnull @.str.7, i32 noundef %102) #19
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !247
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
  br i1 %111, label %112, label %64, !prof !434, !llvm.loop !435

112:                                              ; preds = %108
  %113 = icmp eq i32 %109, 0
  br i1 %113, label %131, label %114, !prof !424

114:                                              ; preds = %112
  %115 = load ptr, ptr %61, align 8, !tbaa !234
  br label %116

116:                                              ; preds = %114, %127
  %117 = phi ptr [ %115, %114 ], [ %129, %127 ]
  %118 = phi i32 [ %109, %114 ], [ %128, %127 ]
  %119 = load ptr, ptr %117, align 8, !tbaa !234
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
  br i1 %130, label %131, label %116, !llvm.loop !436

131:                                              ; preds = %127, %112
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %133 = icmp eq ptr %132, null
  br i1 %133, label %154, label %134, !prof !424

134:                                              ; preds = %131
  %135 = call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr nonnull %132)
  %136 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 2
  br label %137

137:                                              ; preds = %134, %147
  %138 = phi i64 [ 8, %134 ], [ %148, %147 ]
  %139 = load i64, ptr %136, align 8, !tbaa !319
  %140 = shl nuw nsw i64 1, %138
  %141 = and i64 %139, %140
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %145 = trunc i64 %138 to i32
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.9, i32 noundef %145) #19
  br label %147

147:                                              ; preds = %137, %143
  %148 = add nuw nsw i64 %138, 1
  %149 = icmp eq i64 %148, 16
  br i1 %149, label %150, label %137, !llvm.loop !437

150:                                              ; preds = %147
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %152 = call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %151)
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !247
  call fastcc void @print_stack(ptr noundef %153, ptr noundef nonnull %2) #19
  br label %154

154:                                              ; preds = %150, %131
  %155 = load ptr, ptr %61, align 8, !tbaa !234
  %156 = getelementptr inbounds %struct.rtl_bb_info, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !430
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 9
  br i1 %160, label %161, label %164, !prof !438

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !234
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
  %172 = load i64, ptr %166, align 8, !tbaa !319
  %173 = shl nuw nsw i64 1, %169
  %174 = and i64 %172, %173
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %195, label %176, !prof !318

176:                                              ; preds = %168
  %177 = load i64, ptr %167, align 8, !tbaa !385
  %178 = and i64 %177, %173
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195, !prof !439

180:                                              ; preds = %176
  %181 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = trunc i64 %169 to i32
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.11, i32 noundef %184) #19
  br label %186

186:                                              ; preds = %183, %180
  %187 = add nsw i64 %169, -8
  %188 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %187, i64 38
  %189 = load ptr, ptr %188, align 8, !tbaa !247
  %190 = load ptr, ptr @not_a_num, align 8, !tbaa !247
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
  br i1 %199, label %200, label %168, !prof !323, !llvm.loop !440

200:                                              ; preds = %195
  %201 = icmp eq i8 %196, 0
  br i1 %201, label %204, label %202, !prof !424

202:                                              ; preds = %200
  %203 = call zeroext i8 @purge_dead_edges(ptr noundef %0) #20
  br label %204

204:                                              ; preds = %202, %200
  %205 = load i64, ptr %167, align 8, !tbaa !385
  %206 = load i64, ptr %166, align 8, !tbaa !319
  %207 = call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %205, i64 noundef %206) #19, !range !302
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %212, !prof !359

209:                                              ; preds = %204
  %210 = load i1, ptr @any_malformed_asm, align 1
  br i1 %210, label %212, label %211

211:                                              ; preds = %209
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3052, ptr noundef nonnull @.str.4) #20
  br label %212

212:                                              ; preds = %204, %209, %211
  %213 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %213, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !427
  %214 = getelementptr inbounds %struct.block_info_def, ptr %6, i64 0, i32 3
  store i32 1, ptr %214, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @better_edge(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #10 !prof !441 !PGOFuncName !442 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4, !prof !443

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !307
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !444
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !445
  %10 = mul nsw i32 %9, %7
  %11 = add nsw i32 %10, 5000
  %12 = sdiv i32 %11, 10000
  %13 = load ptr, ptr %1, align 8, !tbaa !307
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !444
  %16 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %17 = load i32, ptr %16, align 4, !tbaa !445
  %18 = mul nsw i32 %17, %15
  %19 = add nsw i32 %18, 5000
  %20 = sdiv i32 %19, 10000
  %21 = icmp sgt i32 %12, %20
  br i1 %21, label %75, label %22, !prof !446

22:                                               ; preds = %4
  %23 = icmp slt i32 %12, %20
  br i1 %23, label %75, label %24, !prof !447

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %26 = load i64, ptr %25, align 8, !tbaa !448
  %27 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !448
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %75, label %30, !prof !449

30:                                               ; preds = %24
  %31 = icmp slt i64 %26, %28
  br i1 %31, label %75, label %32, !prof !449

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !450
  %35 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %34) #19
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %44, !prof !451

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !356
  %40 = load ptr, ptr %39, align 8, !tbaa !452
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #19
  %42 = icmp ugt i32 %41, 1
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %37, %32
  %45 = phi i32 [ 0, %32 ], [ %43, %37 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !450
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #19
  %49 = icmp ugt i32 %48, 1
  br i1 %49, label %50, label %57, !prof !453

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !356
  %53 = load ptr, ptr %52, align 8, !tbaa !452
  %54 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %53) #19
  %55 = icmp ugt i32 %54, 1
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i32 [ 0, %44 ], [ %56, %50 ]
  %59 = icmp eq i32 %45, %58
  br i1 %59, label %68, label %60, !prof !454

60:                                               ; preds = %57
  br i1 %36, label %61, label %67, !prof !455

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !356
  %64 = load ptr, ptr %63, align 8, !tbaa !452
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #19
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %75, label %67, !prof !456

67:                                               ; preds = %61, %60
  br label %75

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !315
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !315
  %73 = icmp slt i32 %70, %72
  %74 = select i1 %73, ptr %0, ptr %1, !prof !457
  br label %75

75:                                               ; preds = %67, %61, %30, %24, %22, %4, %2, %68
  %76 = phi ptr [ %74, %68 ], [ %1, %2 ], [ %0, %4 ], [ %1, %22 ], [ %0, %24 ], [ %1, %30 ], [ %1, %67 ], [ %0, %61 ]
  ret ptr %76
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @propagate_stack(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !458 !PGOFuncName !459 {
  %2 = load ptr, ptr %0, align 8, !tbaa !307
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !299
  %5 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !356
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !299
  store i32 -1, ptr %9, align 8, !tbaa !383
  %10 = load i32, ptr %5, align 8, !tbaa !383
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %14, label %12, !prof !460

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 1
  br label %16

14:                                               ; preds = %32, %1
  %15 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 1
  br label %37

16:                                               ; preds = %12, %32
  %17 = phi i32 [ %10, %12 ], [ %33, %32 ]
  %18 = phi i64 [ 0, %12 ], [ %34, %32 ]
  %19 = load i64, ptr %13, align 8, !tbaa !385
  %20 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1, i32 2, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !234
  %22 = zext nneg i8 %21 to i64
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %19
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26, !prof !461

26:                                               ; preds = %16
  %27 = load i32, ptr %9, align 8, !tbaa !383
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %9, align 8, !tbaa !383
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 2, i64 %29
  store i8 %21, ptr %30, align 1, !tbaa !234
  %31 = load i32, ptr %5, align 8, !tbaa !383
  br label %32

32:                                               ; preds = %16, %26
  %33 = phi i32 [ %17, %16 ], [ %31, %26 ]
  %34 = add nuw nsw i64 %18, 1
  %35 = sext i32 %33 to i64
  %36 = icmp slt i64 %18, %35
  br i1 %36, label %16, label %14, !prof !462, !llvm.loop !463

37:                                               ; preds = %14, %54
  %38 = phi i64 [ 8, %14 ], [ %55, %54 ]
  %39 = load i64, ptr %15, align 8, !tbaa !385
  %40 = shl nuw nsw i64 1, %38
  %41 = and i64 %39, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %54, label %43, !prof !464

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.block_info_def, ptr %4, i64 0, i32 1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !385
  %46 = and i64 %45, %40
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54, !prof !465

48:                                               ; preds = %43
  %49 = trunc i64 %38 to i8
  %50 = load i32, ptr %9, align 8, !tbaa !383
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %9, align 8, !tbaa !383
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.stack_def, ptr %9, i64 0, i32 2, i64 %52
  store i8 %49, ptr %53, align 1, !tbaa !234
  br label %54

54:                                               ; preds = %37, %43, %48
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %57, label %37, !prof !466, !llvm.loop !467

57:                                               ; preds = %54
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_stack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !468 !PGOFuncName !469 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !383
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
  %12 = load i32, ptr %1, align 8, !tbaa !383
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %20, %14 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !234
  %18 = zext i8 %17 to i32
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %18) #19
  %20 = add nuw nsw i64 %15, 1
  %21 = load i32, ptr %1, align 8, !tbaa !383
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %14, label %24, !llvm.loop !470

24:                                               ; preds = %14, %10
  %25 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #19
  br label %26

26:                                               ; preds = %8, %24, %2, %6
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @subst_stack_regs_in_debug_insn(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !468 !PGOFuncName !471 {
  %3 = tail call fastcc ptr @get_true_reg(ptr noundef %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !247
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
  %15 = load ptr, ptr %0, align 8, !tbaa !247
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
define internal fastcc zeroext i8 @subst_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !472 !PGOFuncName !473 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %41, !prof !474

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !383
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %41, !prof !475

9:                                                ; preds = %6
  tail call fastcc void @straighten_stack(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %10 = load i32, ptr %1, align 8, !tbaa !383
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %14 = zext nneg i32 %10 to i64
  %15 = load i64, ptr %13, align 8, !tbaa !385
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
  br i1 %33, label %34, label %24, !llvm.loop !476

34:                                               ; preds = %24
  %35 = insertelement <2 x i64> poison, i64 %25, i64 0
  %36 = shufflevector <2 x i64> %35, <2 x i64> poison, <2 x i32> zeroinitializer
  %37 = or disjoint <2 x i64> %36, <i64 0, i64 1>
  %38 = icmp ugt <2 x i64> %37, %19
  %39 = select <2 x i1> %38, <2 x i64> %27, <2 x i64> %30
  %40 = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %39)
  store i64 %40, ptr %13, align 8, !tbaa !385
  store i32 -1, ptr %1, align 8, !tbaa !383
  br label %41

41:                                               ; preds = %9, %34, %6, %2
  %42 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %0) #19, !range !275
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %100, label %44, !prof !479

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !234
  %47 = tail call i32 @asm_noperands(ptr noundef %46) #20
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %50, label %49, !prof !480

49:                                               ; preds = %44
  tail call fastcc void @subst_asm_stack_regs(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %149

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 8, !tbaa !234
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %98, !prof !481

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !234
  %58 = load i32, ptr %57, align 8, !tbaa !257
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %100, !prof !482

60:                                               ; preds = %55, %89
  %61 = phi ptr [ %90, %89 ], [ %51, %55 ]
  %62 = phi i64 [ %92, %89 ], [ 0, %55 ]
  %63 = phi ptr [ %94, %89 ], [ %57, %55 ]
  %64 = phi i8 [ %91, %89 ], [ 0, %55 ]
  %65 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !247
  %67 = tail call fastcc i32 @stack_regs_mentioned_p(ptr noundef %66) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %89, label %69, !prof !483

69:                                               ; preds = %60
  %70 = load i32, ptr %66, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 25
  br i1 %72, label %73, label %80, !prof !484

73:                                               ; preds = %69
  %74 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %66) #20
  %75 = load ptr, ptr %45, align 8, !tbaa !234
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !234
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %77, i64 0, i32 1, i64 %62
  store ptr %74, ptr %78, align 8, !tbaa !247
  %79 = load ptr, ptr %45, align 8, !tbaa !234
  br label %80

80:                                               ; preds = %73, %69
  %81 = phi ptr [ %79, %73 ], [ %61, %69 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !234
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1, i64 %62
  %85 = load ptr, ptr %84, align 8, !tbaa !247
  %86 = tail call fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %85) #19
  %87 = or i8 %86, %64
  %88 = load ptr, ptr %45, align 8, !tbaa !234
  br label %89

89:                                               ; preds = %60, %80
  %90 = phi ptr [ %88, %80 ], [ %61, %60 ]
  %91 = phi i8 [ %87, %80 ], [ %64, %60 ]
  %92 = add nuw nsw i64 %62, 1
  %93 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !234
  %95 = load i32, ptr %94, align 8, !tbaa !257
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %60, label %100, !prof !485, !llvm.loop !486

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
  br i1 %107, label %108, label %149, !prof !487

108:                                              ; preds = %100
  %109 = icmp eq i32 %103, 10
  br i1 %109, label %110, label %115, !prof !488

110:                                              ; preds = %108
  %111 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 27, ptr noundef null) #20
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113, !prof !489

113:                                              ; preds = %110
  store i32 -1, ptr %1, align 8, !tbaa !383
  %114 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  store i64 0, ptr %114, align 8, !tbaa !385
  br label %149

115:                                              ; preds = %110, %108
  %116 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !234
  %118 = icmp eq ptr %117, null
  br i1 %118, label %149, label %119, !prof !490

119:                                              ; preds = %115, %143
  %120 = phi ptr [ %147, %143 ], [ %117, %115 ]
  %121 = phi ptr [ %145, %143 ], [ %0, %115 ]
  %122 = phi ptr [ %144, %143 ], [ %116, %115 ]
  %123 = load i32, ptr %120, align 8
  %124 = and i32 %123, 16711680
  %125 = icmp eq i32 %124, 393216
  br i1 %125, label %126, label %141, !prof !491

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !234
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 37
  br i1 %131, label %132, label %141, !prof !492

132:                                              ; preds = %126
  %133 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %128) #19
  %134 = and i32 %133, -8
  %135 = icmp eq i32 %134, 8
  br i1 %135, label %136, label %141, !prof !493

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !234
  store ptr %138, ptr %122, align 8, !tbaa !247
  %139 = load ptr, ptr %127, align 8, !tbaa !234
  %140 = tail call fastcc ptr @emit_pop_insn(ptr noundef %121, ptr noundef %1, ptr noundef %139, i32 noundef 0) #19
  br label %143

141:                                              ; preds = %132, %126, %119
  %142 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %143

143:                                              ; preds = %136, %141
  %144 = phi ptr [ %122, %136 ], [ %142, %141 ]
  %145 = phi ptr [ %140, %136 ], [ %121, %141 ]
  %146 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !234
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %119, !prof !494, !llvm.loop !495

149:                                              ; preds = %143, %115, %49, %100, %113
  %150 = phi i8 [ %101, %113 ], [ %101, %100 ], [ 0, %49 ], [ %101, %115 ], [ %101, %143 ]
  ret i8 %150
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @hard_reg_set_equal_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 !prof !496 !PGOFuncName !497 {
  %3 = icmp eq i64 %0, %1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_true_reg(ptr noundef %0) unnamed_addr #0 !prof !498 !PGOFuncName !499 {
  br label %2

2:                                                ; preds = %46, %1
  %3 = phi ptr [ %0, %1 ], [ %47, %46 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %48 [
    i16 39, label %7
    i16 103, label %46
    i16 104, label %46
    i16 101, label %46
    i16 18, label %35
    i16 102, label %43
  ], !prof !500

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !234
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = lshr i32 %10, 16
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !234
  %22 = lshr i32 %5, 16
  %23 = and i32 %22, 255
  %24 = tail call i32 @subreg_regno_offset(i32 noundef %14, i32 noundef %19, i32 noundef %21, i32 noundef %23) #20
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %26 = add i32 %24, -8
  %27 = add i32 %26, %25
  %28 = zext i32 %27 to i64
  %29 = load i32, ptr %9, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %28, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !247
  store ptr %34, ptr %3, align 8, !tbaa !247
  br label %48

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load i32, ptr %36, align 8, !tbaa !234
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %48, !prof !501

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !234
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %41, i64 0, i32 1
  br label %48

43:                                               ; preds = %2
  %44 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !502

46:                                               ; preds = %2, %2, %2, %13, %7, %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %2

48:                                               ; preds = %2, %43, %17, %35, %39
  %49 = phi ptr [ %3, %17 ], [ %42, %39 ], [ %3, %35 ], [ %3, %43 ], [ %3, %2 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_hard_regnum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !503 !PGOFuncName !504 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %10, !prof !505

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  %8 = and i32 %7, -8
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10, !prof !505

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 731, ptr noundef nonnull @.str.4) #20
  br label %11

11:                                               ; preds = %6, %10
  %12 = load i32, ptr %0, align 8, !tbaa !383
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %29, !prof !506

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  br label %16

16:                                               ; preds = %14, %23
  %17 = phi i32 [ %12, %14 ], [ %24, %23 ]
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !234
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %15, %21
  br i1 %22, label %26, label %23, !prof !507

23:                                               ; preds = %16
  %24 = add nsw i32 %17, -1
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %16, label %29, !prof !508, !llvm.loop !509

26:                                               ; preds = %16
  %27 = add nuw nsw i32 %12, 8
  %28 = sub i32 %27, %17
  br label %29

29:                                               ; preds = %23, %11, %26
  %30 = phi i32 [ %28, %26 ], [ -1, %11 ], [ -1, %23 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_reg(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !510 !PGOFuncName !511 {
  %3 = and i32 %1, -8
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %6, label %5, !prof !512

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 691, ptr noundef nonnull @.str.4) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !247
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %15, !prof !512

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #19
  %13 = and i32 %12, -8
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %18, label %15, !prof !512

15:                                               ; preds = %11, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 692, ptr noundef nonnull @.str.4) #20
  %16 = load ptr, ptr %0, align 8, !tbaa !247
  %17 = load i32, ptr %16, align 8
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi i32 [ %8, %11 ], [ %17, %15 ]
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !234
  switch i8 %24, label %25 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
  ], !prof !513

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 695, ptr noundef nonnull @.str.4) #20
  %26 = load ptr, ptr %0, align 8, !tbaa !247
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
  %36 = load ptr, ptr %35, align 8, !tbaa !247
  store ptr %36, ptr %0, align 8, !tbaa !247
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @straighten_stack(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !468 !PGOFuncName !514 {
  %3 = alloca %struct.stack_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %4 = load i32, ptr %1, align 8, !tbaa !383
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %154, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !385
  %9 = getelementptr inbounds %struct.stack_def, ptr %3, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !385
  store i32 %4, ptr %3, align 8, !tbaa !383
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
  store i8 %29, ptr %28, align 1, !tbaa !234
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
  store i8 %37, ptr %36, align 1, !tbaa !234
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
  store i8 %45, ptr %44, align 1, !tbaa !234
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
  store i8 %53, ptr %52, align 1, !tbaa !234
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
  store i8 %61, ptr %60, align 1, !tbaa !234
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
  store i8 %69, ptr %68, align 1, !tbaa !234
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
  store i8 %77, ptr %76, align 1, !tbaa !234
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
  store i8 %85, ptr %84, align 1, !tbaa !234
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
  store i8 %93, ptr %92, align 1, !tbaa !234
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
  store i8 %101, ptr %100, align 1, !tbaa !234
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
  store i8 %109, ptr %108, align 1, !tbaa !234
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
  store i8 %117, ptr %116, align 1, !tbaa !234
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
  store i8 %125, ptr %124, align 1, !tbaa !234
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
  store i8 %133, ptr %132, align 1, !tbaa !234
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
  store i8 %141, ptr %140, align 1, !tbaa !234
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
  store i8 %149, ptr %148, align 1, !tbaa !234
  br label %150

150:                                              ; preds = %144, %142
  %151 = add i64 %17, 16
  %152 = icmp eq i64 %151, %13
  br i1 %152, label %153, label %16, !llvm.loop !515

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
define internal fastcc void @subst_asm_stack_regs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !468 !PGOFuncName !516 {
  %3 = alloca [0 x i8], align 16
  %4 = alloca %struct.stack_def, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %9 = tail call fastcc i32 @check_asm_stack_operands(ptr noundef %0) #19, !range !275
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %453, label %11

11:                                               ; preds = %2
  tail call void @extract_insn(ptr noundef nonnull %0) #20
  %12 = tail call i32 @constrain_operands(i32 noundef 1) #20
  %13 = load i32, ptr @which_alternative, align 4, !tbaa !284
  tail call void @preprocess_constraints() #20
  call fastcc void @get_asm_operands_in_out(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2029, ptr noundef nonnull @.str.4) #20
  br label %16

16:                                               ; preds = %11, %15
  %17 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !517
  %18 = icmp sgt i8 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = zext nneg i8 %17 to i64
  br label %21

21:                                               ; preds = %19, %37
  %22 = phi i64 [ 0, %19 ], [ %38, %37 ]
  %23 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !247
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !234
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %22
  store ptr %29, ptr %35, align 8, !tbaa !247
  %36 = load ptr, ptr %29, align 8, !tbaa !234
  store ptr %36, ptr %23, align 8, !tbaa !247
  br label %37

37:                                               ; preds = %21, %28, %34
  %38 = add nuw nsw i64 %22, 1
  %39 = icmp eq i64 %38, %20
  br i1 %39, label %40, label %21, !llvm.loop !519

40:                                               ; preds = %37, %16
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !234
  %43 = icmp eq ptr %42, null
  br i1 %43, label %101, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %49, %44 ], [ %42, %40 ]
  %46 = phi i32 [ %47, %44 ], [ 0, %40 ]
  %47 = add nuw nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !234
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %44, !llvm.loop !520

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
  %62 = load ptr, ptr %61, align 8, !tbaa !234
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 39
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !234
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
  store ptr %77, ptr %92, align 8, !tbaa !247
  %93 = getelementptr inbounds ptr, ptr %55, i64 %91
  store ptr %78, ptr %93, align 8, !tbaa !247
  %94 = getelementptr inbounds i32, ptr %57, i64 %91
  store i32 %90, ptr %94, align 4, !tbaa !284
  %95 = add nsw i32 %60, 1
  br label %96

96:                                               ; preds = %85, %89, %81, %75
  %97 = phi i32 [ %95, %89 ], [ %60, %81 ], [ %60, %75 ], [ %60, %85 ]
  %98 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !234
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %58, !llvm.loop !521

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
  %111 = load ptr, ptr %110, align 8, !tbaa !234
  %112 = load i32, ptr %111, align 8, !tbaa !257
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
  %124 = load ptr, ptr %123, align 8, !tbaa !247
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 25
  br i1 %127, label %128, label %158

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !234
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 39
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !234
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
  store ptr %145, ptr %155, align 8, !tbaa !247
  %156 = getelementptr inbounds ptr, ptr %116, i64 %154
  store ptr %146, ptr %156, align 8, !tbaa !247
  %157 = add nsw i32 %122, 1
  br label %158

158:                                              ; preds = %143, %149, %153, %120
  %159 = phi i32 [ %122, %120 ], [ %157, %153 ], [ %122, %149 ], [ %122, %143 ]
  %160 = add nuw nsw i64 %121, 1
  %161 = icmp eq i64 %160, %119
  br i1 %161, label %162, label %120, !llvm.loop !522

162:                                              ; preds = %158, %109, %101
  %163 = phi i32 [ 0, %101 ], [ 0, %109 ], [ %159, %158 ]
  %164 = phi ptr [ null, %101 ], [ %116, %109 ], [ %116, %158 ]
  %165 = phi ptr [ null, %101 ], [ %115, %109 ], [ %115, %158 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !427
  %166 = load i32, ptr %6, align 4, !tbaa !284
  %167 = load i32, ptr %5, align 4, !tbaa !284
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
  %178 = load ptr, ptr %177, align 8, !tbaa !247
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
  %188 = load i32, ptr %187, align 8, !tbaa !523
  %189 = tail call i32 @reg_class_subset_p(i32 noundef %188, i32 noundef 16) #20
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %215, label %191

191:                                              ; preds = %186
  %192 = load i32, ptr %187, align 8, !tbaa !523
  %193 = icmp eq i32 %192, 16
  br i1 %193, label %215, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %177, align 8, !tbaa !247
  %196 = call fastcc i32 @get_hard_regnum(ptr noundef nonnull %4, ptr noundef %195) #19
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2122, ptr noundef nonnull @.str.4) #20
  br label %199

199:                                              ; preds = %194, %198
  %200 = load ptr, ptr %177, align 8, !tbaa !247
  %201 = tail call fastcc i32 @rhs_regno(ptr noundef %200) #19
  %202 = icmp eq i32 %196, %201
  br i1 %202, label %215, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %4, align 8, !tbaa !383
  %205 = sub i32 %204, %196
  %206 = add i32 %205, 8
  %207 = sub i32 %204, %201
  %208 = add i32 %207, 8
  %209 = sext i32 %206 to i64
  %210 = getelementptr inbounds %struct.stack_def, ptr %4, i64 0, i32 2, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !234
  %212 = sext i32 %208 to i64
  %213 = getelementptr inbounds %struct.stack_def, ptr %4, i64 0, i32 2, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !234
  store i8 %214, ptr %210, align 1, !tbaa !234
  store i8 %211, ptr %213, align 1, !tbaa !234
  br label %215

215:                                              ; preds = %199, %203, %175, %182, %186, %191
  %216 = add nsw i64 %176, 1
  %217 = icmp slt i64 %216, %174
  br i1 %217, label %175, label %218, !llvm.loop !525

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
  %229 = load ptr, ptr %228, align 8, !tbaa !247
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
  %243 = load ptr, ptr %242, align 8, !tbaa !247
  tail call fastcc void @replace_reg(ptr noundef %243, i32 noundef %238) #19
  br label %244

244:                                              ; preds = %226, %233, %241
  %245 = add nsw i64 %227, 1
  %246 = icmp slt i64 %245, %221
  br i1 %246, label %226, label %222, !llvm.loop !526

247:                                              ; preds = %265, %222
  %248 = icmp sgt i32 %163, 0
  br i1 %248, label %249, label %268

249:                                              ; preds = %247
  %250 = zext nneg i32 %163 to i64
  br label %275

251:                                              ; preds = %224, %265
  %252 = phi i64 [ 0, %224 ], [ %266, %265 ]
  %253 = getelementptr inbounds i32, ptr %102, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !284
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = getelementptr inbounds ptr, ptr %104, i64 %252
  %258 = load ptr, ptr %257, align 8, !tbaa !247
  %259 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %258) #19
  %260 = icmp sgt i32 %259, -1
  br i1 %260, label %262, label %261

261:                                              ; preds = %256
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2165, ptr noundef nonnull @.str.4) #20
  br label %262

262:                                              ; preds = %256, %261
  %263 = getelementptr inbounds ptr, ptr %103, i64 %252
  %264 = load ptr, ptr %263, align 8, !tbaa !247
  tail call fastcc void @replace_reg(ptr noundef %264, i32 noundef %259) #19
  br label %265

265:                                              ; preds = %251, %262
  %266 = add nuw nsw i64 %252, 1
  %267 = icmp eq i64 %266, %225
  br i1 %267, label %247, label %251, !llvm.loop !527

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
  %278 = load ptr, ptr %277, align 8, !tbaa !247
  %279 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %278) #19
  %280 = icmp sgt i32 %279, -1
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = add nsw i32 %279, -8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %283, i64 39
  %285 = load ptr, ptr %284, align 8, !tbaa !247
  %286 = getelementptr inbounds ptr, ptr %164, i64 %276
  %287 = load ptr, ptr %286, align 8, !tbaa !247
  store ptr %285, ptr %287, align 8, !tbaa !247
  br label %288

288:                                              ; preds = %281, %275
  %289 = add nuw nsw i64 %276, 1
  %290 = icmp eq i64 %289, %250
  br i1 %290, label %268, label %275, !llvm.loop !528

291:                                              ; preds = %332, %268
  %292 = icmp sgt i32 %166, 0
  %293 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %294 = zext nneg i32 %166 to i64
  br label %335

295:                                              ; preds = %269, %332
  %296 = phi i64 [ %272, %269 ], [ %333, %332 ]
  %297 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !247
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
  br i1 %309, label %317, label %310, !llvm.loop !529

310:                                              ; preds = %306, %307
  %311 = phi i64 [ %308, %307 ], [ 0, %306 ]
  %312 = getelementptr inbounds ptr, ptr %165, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !247
  %314 = load ptr, ptr %297, align 8, !tbaa !247
  %315 = tail call i32 @operands_match_p(ptr noundef %313, ptr noundef %314) #20
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %307, label %321

317:                                              ; preds = %307, %306
  %318 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %296, i64 %270, i32 3
  %319 = load i32, ptr %318, align 16, !tbaa !530
  %320 = icmp sgt i32 %319, -1
  br i1 %320, label %321, label %332

321:                                              ; preds = %310, %317
  %322 = load i32, ptr %1, align 8, !tbaa !383
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !234
  %326 = zext nneg i8 %325 to i64
  %327 = shl nuw i64 1, %326
  %328 = xor i64 %327, -1
  %329 = load i64, ptr %271, align 8, !tbaa !385
  %330 = and i64 %329, %328
  store i64 %330, ptr %271, align 8, !tbaa !385
  %331 = add nsw i32 %322, -1
  store i32 %331, ptr %1, align 8, !tbaa !383
  br label %332

332:                                              ; preds = %317, %321, %295, %302
  %333 = add nsw i64 %296, 1
  %334 = icmp slt i64 %333, %273
  br i1 %334, label %295, label %291, !llvm.loop !531

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
  %345 = load ptr, ptr %344, align 8, !tbaa !247
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
  %358 = load i32, ptr %1, align 8, !tbaa !383
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %1, align 8, !tbaa !383
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %360
  store i8 %357, ptr %361, align 1, !tbaa !234
  %362 = shl nuw nsw i64 1, %336
  %363 = load i64, ptr %293, align 8, !tbaa !385
  %364 = or i64 %363, %362
  store i64 %364, ptr %293, align 8, !tbaa !385
  br label %368

365:                                              ; preds = %342, %349
  %366 = add nuw nsw i64 %343, 1
  %367 = icmp eq i64 %366, %294
  br i1 %367, label %368, label %342, !llvm.loop !532

368:                                              ; preds = %365, %356
  %369 = icmp ugt i64 %336, 8
  br i1 %369, label %370, label %337

370:                                              ; preds = %368, %372
  %371 = add nsw i64 %336, -1
  br label %335, !llvm.loop !533

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
  %385 = load ptr, ptr %384, align 8, !tbaa !247
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
  %397 = load ptr, ptr %396, align 8, !tbaa !247
  %398 = tail call fastcc i32 @rhs_regno(ptr noundef %397) #19
  %399 = icmp eq i32 %390, %398
  br i1 %399, label %400, label %406

400:                                              ; preds = %394
  %401 = getelementptr inbounds i32, ptr %102, i64 %395
  %402 = load i32, ptr %401, align 4, !tbaa !284
  %403 = icmp eq i32 %402, 6
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = tail call fastcc ptr @emit_pop_insn(ptr noundef %383, ptr noundef %1, ptr noundef nonnull %385, i32 noundef 0) #19
  br label %409

406:                                              ; preds = %394, %400
  %407 = add nuw nsw i64 %395, 1
  %408 = icmp eq i64 %407, %341
  br i1 %408, label %409, label %394, !llvm.loop !534

409:                                              ; preds = %406, %389, %404, %381
  %410 = phi ptr [ %383, %389 ], [ %383, %381 ], [ %405, %404 ], [ %383, %406 ]
  %411 = add nuw nsw i64 %382, 1
  %412 = icmp eq i64 %411, %340
  br i1 %412, label %374, label %381, !llvm.loop !535

413:                                              ; preds = %377, %448
  %414 = phi i64 [ %379, %377 ], [ %450, %448 ]
  %415 = phi ptr [ %375, %377 ], [ %449, %448 ]
  %416 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %414
  %417 = load ptr, ptr %416, align 8, !tbaa !247
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
  %432 = load ptr, ptr %431, align 8, !tbaa !247
  %433 = tail call fastcc i32 @rhs_regno(ptr noundef %432) #19
  %434 = icmp eq i32 %422, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %429
  %436 = getelementptr inbounds i32, ptr %102, i64 %430
  %437 = load i32, ptr %436, align 4, !tbaa !284
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %445

439:                                              ; preds = %435
  %440 = load i64, ptr %293, align 8, !tbaa !385
  %441 = and i64 %440, %428
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %439
  %444 = tail call fastcc ptr @emit_pop_insn(ptr noundef %415, ptr noundef nonnull %1, ptr noundef nonnull %417, i32 noundef 0) #19
  br label %448

445:                                              ; preds = %429, %435, %439
  %446 = add nuw nsw i64 %430, 1
  %447 = icmp eq i64 %446, %380
  br i1 %447, label %448, label %429, !llvm.loop !536

448:                                              ; preds = %445, %421, %443, %413
  %449 = phi ptr [ %415, %421 ], [ %415, %413 ], [ %444, %443 ], [ %415, %445 ]
  %450 = add nsw i64 %414, 1
  %451 = trunc i64 %450 to i32
  %452 = icmp eq i32 %168, %451
  br i1 %452, label %453, label %413, !llvm.loop !537

453:                                              ; preds = %448, %374, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @subst_stack_regs_pat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !538 !PGOFuncName !539 {
  %4 = alloca [3 x ptr], align 16
  %5 = load i32, ptr %2, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %819 [
    i16 24, label %7
    i16 138, label %32
    i16 25, label %33
    i16 23, label %90
  ], !prof !540

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %9 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %8) #19
  %10 = load ptr, ptr %9, align 8, !tbaa !247
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %819, !prof !541

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %10) #19
  %16 = and i32 %15, -8
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %819, !prof !541

18:                                               ; preds = %14
  %19 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %15) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %819, label %21, !prof !541

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !385
  %24 = load ptr, ptr %9, align 8, !tbaa !247
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
  %36 = load ptr, ptr %35, align 8, !tbaa !247
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %819, !prof !502

40:                                               ; preds = %33
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %36) #19
  %42 = and i32 %41, -8
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %819, !prof !502

44:                                               ; preds = %40
  %45 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %36) #20
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !234
  %48 = icmp eq ptr %47, %2
  %49 = icmp eq ptr %45, null
  br i1 %48, label %60, label %50, !prof !542

50:                                               ; preds = %44
  %51 = load ptr, ptr %35, align 8, !tbaa !247
  br i1 %49, label %54, label %52, !prof !502

52:                                               ; preds = %50
  %53 = tail call fastcc ptr @emit_pop_insn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %51, i32 noundef 1) #19
  br label %57

54:                                               ; preds = %50
  %55 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 6, ptr noundef %51) #20
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !543

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
  %62 = load ptr, ptr %35, align 8, !tbaa !247
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !234
  %69 = and i8 %68, -2
  %70 = icmp eq i8 %69, 10
  br i1 %70, label %71, label %83

71:                                               ; preds = %61
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %62) #19
  %73 = add i32 %72, -7
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %74, i64 38
  %76 = load ptr, ptr %75, align 8, !tbaa !247
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
  %95 = load ptr, ptr %93, align 8, !tbaa !234
  %96 = load ptr, ptr %94, align 8, !tbaa !247
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 37
  br i1 %99, label %100, label %104, !prof !544

100:                                              ; preds = %90
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %96) #19
  %102 = and i32 %101, -8
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %115, label %104, !prof !545

104:                                              ; preds = %100, %90
  %105 = load ptr, ptr %92, align 8, !tbaa !247
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %117, !prof !546

109:                                              ; preds = %104
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #19
  %111 = and i32 %110, -8
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %117, !prof !547

113:                                              ; preds = %109
  %114 = trunc i32 %97 to i16
  switch i16 %114, label %117 [
    i16 37, label %115
    i16 43, label %115
    i16 32, label %115
  ], !prof !548

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
  ], !prof !549

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
  %128 = load i8, ptr %127, align 1, !tbaa !234
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %152, label %130, !prof !550

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
  %140 = load i32, ptr %1, align 8, !tbaa !383
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %1, align 8, !tbaa !383
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %142
  store i8 %139, ptr %143, align 1, !tbaa !234
  %144 = load ptr, ptr %92, align 8, !tbaa !247
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef %144) #19
  %146 = add i32 %145, %136
  %147 = zext nneg i32 %146 to i64
  %148 = shl nuw i64 1, %147
  %149 = load i64, ptr %132, align 8, !tbaa !385
  %150 = or i64 %148, %149
  store i64 %150, ptr %132, align 8, !tbaa !385
  %151 = icmp ugt i32 %135, 1
  br i1 %151, label %133, label %152, !prof !550, !llvm.loop !551

152:                                              ; preds = %133, %121
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %819

153:                                              ; preds = %117
  %154 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !247
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
  %162 = load ptr, ptr %161, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %162) #19
  %163 = load ptr, ptr %161, align 8, !tbaa !247
  %164 = tail call fastcc i32 @rhs_regno(ptr noundef %163) #19
  %165 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %164) #20
  %166 = load ptr, ptr %92, align 8, !tbaa !247
  %167 = load i32, ptr %166, align 8
  %168 = and i32 %167, 65535
  %169 = icmp eq i32 %168, 37
  br i1 %169, label %170, label %175, !prof !552

170:                                              ; preds = %160
  %171 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %166) #19
  %172 = and i32 %171, -8
  %173 = icmp eq i32 %172, 8
  br i1 %173, label %174, label %175, !prof !553

174:                                              ; preds = %170
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %175

175:                                              ; preds = %174, %170, %160
  %176 = icmp eq ptr %165, null
  br i1 %176, label %189, label %177, !prof !552

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.rtx_def, ptr %165, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %178, i32 noundef 8) #19
  %179 = load i32, ptr %1, align 8, !tbaa !383
  %180 = add nsw i32 %179, -1
  store i32 %180, ptr %1, align 8, !tbaa !383
  %181 = load ptr, ptr %161, align 8, !tbaa !247
  %182 = tail call fastcc i32 @rhs_regno(ptr noundef %181) #19
  %183 = zext nneg i32 %182 to i64
  %184 = shl nuw i64 1, %183
  %185 = xor i64 %184, -1
  %186 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !385
  %188 = and i64 %187, %185
  store i64 %188, ptr %186, align 8, !tbaa !385
  br label %189

189:                                              ; preds = %177, %175
  tail call fastcc void @replace_reg(ptr noundef nonnull %161, i32 noundef 8) #19
  br label %819

190:                                              ; preds = %117, %117, %117, %117
  %191 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %192 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %191) #19
  %193 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %193) #19
  %195 = load ptr, ptr %192, align 8, !tbaa !247
  %196 = load i32, ptr %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 37
  br i1 %198, label %199, label %205, !prof !554

199:                                              ; preds = %190
  %200 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %195) #19
  %201 = and i32 %200, -8
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %203, label %205, !prof !555

203:                                              ; preds = %199
  %204 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %200) #20
  br label %205

205:                                              ; preds = %190, %199, %203
  %206 = phi ptr [ %204, %203 ], [ null, %199 ], [ null, %190 ]
  %207 = load ptr, ptr %194, align 8, !tbaa !247
  %208 = load i32, ptr %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 37
  br i1 %210, label %211, label %217, !prof !556

211:                                              ; preds = %205
  %212 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %207) #19
  %213 = and i32 %212, -8
  %214 = icmp eq i32 %213, 8
  br i1 %214, label %215, label %217, !prof !557

215:                                              ; preds = %211
  %216 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %212) #20
  br label %217

217:                                              ; preds = %205, %211, %215
  %218 = phi ptr [ %216, %215 ], [ null, %211 ], [ null, %205 ]
  %219 = load ptr, ptr %192, align 8, !tbaa !247
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 37
  br i1 %222, label %223, label %262, !prof !554

223:                                              ; preds = %217
  %224 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %219) #19
  %225 = and i32 %224, -8
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %227, label %262, !prof !555

227:                                              ; preds = %223
  %228 = load ptr, ptr %194, align 8, !tbaa !247
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 37
  br i1 %231, label %232, label %262, !prof !558

232:                                              ; preds = %227
  %233 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %228) #19
  %234 = and i32 %233, -8
  %235 = icmp eq i32 %234, 8
  br i1 %235, label %236, label %262, !prof !559

236:                                              ; preds = %232
  %237 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %219) #19
  %238 = load ptr, ptr %194, align 8, !tbaa !247
  %239 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %238) #19
  %240 = icmp eq i32 %237, -1
  br i1 %240, label %241, label %247, !prof !560

241:                                              ; preds = %236
  %242 = load ptr, ptr %192, align 8, !tbaa !247
  %243 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %242) #20
  %244 = tail call ptr @emit_insn_before(ptr noundef %243, ptr noundef %0) #20
  %245 = load ptr, ptr %192, align 8, !tbaa !247
  %246 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %244, ptr noundef %1, ptr noundef %245) #19
  br label %247

247:                                              ; preds = %241, %236
  %248 = phi i8 [ %246, %241 ], [ 0, %236 ]
  %249 = icmp eq i32 %239, -1
  br i1 %249, label %250, label %257, !prof !560

250:                                              ; preds = %247
  %251 = load ptr, ptr %194, align 8, !tbaa !247
  %252 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %251) #20
  %253 = tail call ptr @emit_insn_before(ptr noundef %252, ptr noundef %0) #20
  %254 = load ptr, ptr %194, align 8, !tbaa !247
  %255 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %253, ptr noundef %1, ptr noundef %254) #19
  %256 = or i8 %255, %248
  br label %257

257:                                              ; preds = %250, %247
  %258 = phi i8 [ %256, %250 ], [ %248, %247 ]
  %259 = icmp ne i32 %237, 8
  %260 = icmp ne i32 %239, 8
  %261 = select i1 %259, i1 %260, i1 false
  br i1 %261, label %262, label %265, !prof !561

262:                                              ; preds = %257, %217, %223, %227, %232
  %263 = phi i8 [ 0, %232 ], [ 0, %227 ], [ 0, %223 ], [ 0, %217 ], [ %258, %257 ]
  %264 = load ptr, ptr %92, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %264) #19
  br label %265

265:                                              ; preds = %262, %257
  %266 = phi i8 [ %258, %257 ], [ %263, %262 ]
  %267 = load ptr, ptr %192, align 8, !tbaa !247
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 37
  br i1 %270, label %271, label %277, !prof !554

271:                                              ; preds = %265
  %272 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %267) #19
  %273 = and i32 %272, -8
  %274 = icmp eq i32 %273, 8
  br i1 %274, label %275, label %277, !prof !555

275:                                              ; preds = %271
  %276 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %267) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %192, i32 noundef %276) #19
  br label %277

277:                                              ; preds = %275, %271, %265
  %278 = load ptr, ptr %194, align 8, !tbaa !247
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 37
  br i1 %281, label %282, label %288, !prof !556

282:                                              ; preds = %277
  %283 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %278) #19
  %284 = and i32 %283, -8
  %285 = icmp eq i32 %284, 8
  br i1 %285, label %286, label %288, !prof !557

286:                                              ; preds = %282
  %287 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %278) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %194, i32 noundef %287) #19
  br label %288

288:                                              ; preds = %286, %282, %277
  %289 = icmp eq ptr %206, null
  br i1 %289, label %337, label %290, !prof !562

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !234
  %293 = tail call fastcc i32 @rhs_regno(ptr noundef %292) #19
  %294 = load i32, ptr %1, align 8, !tbaa !383
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !234
  %298 = zext i8 %297 to i32
  %299 = icmp eq i32 %293, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %290
  %301 = load ptr, ptr %92, align 8, !tbaa !247
  %302 = tail call fastcc i32 @rhs_regno(ptr noundef %301) #19
  %303 = zext nneg i32 %302 to i64
  %304 = shl nuw i64 1, %303
  %305 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !385
  %307 = or i64 %304, %306
  store i64 %307, ptr %305, align 8, !tbaa !385
  %308 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %301) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %308) #19
  br label %326

309:                                              ; preds = %290
  %310 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %292) #19
  %311 = load ptr, ptr %92, align 8, !tbaa !247
  %312 = tail call fastcc i32 @rhs_regno(ptr noundef %311) #19
  %313 = zext nneg i32 %312 to i64
  %314 = shl nuw i64 1, %313
  %315 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %316 = load i64, ptr %315, align 8, !tbaa !385
  %317 = or i64 %314, %316
  store i64 %317, ptr %315, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %310) #19
  %318 = load i32, ptr %1, align 8, !tbaa !383
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !234
  %322 = sub i32 %318, %310
  %323 = add i32 %322, 8
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %324
  store i8 %321, ptr %325, align 1, !tbaa !234
  br label %326

326:                                              ; preds = %309, %300
  %327 = load ptr, ptr %291, align 8, !tbaa !234
  %328 = tail call fastcc i32 @rhs_regno(ptr noundef %327) #19
  %329 = zext nneg i32 %328 to i64
  %330 = shl nuw i64 1, %329
  %331 = xor i64 %330, -1
  %332 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %333 = load i64, ptr %332, align 8, !tbaa !385
  %334 = and i64 %333, %331
  store i64 %334, ptr %332, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %291, i32 noundef 8) #19
  %335 = load i32, ptr %1, align 8, !tbaa !383
  %336 = add nsw i32 %335, -1
  store i32 %336, ptr %1, align 8, !tbaa !383
  br label %395

337:                                              ; preds = %288
  %338 = icmp eq ptr %218, null
  br i1 %338, label %386, label %339, !prof !563

339:                                              ; preds = %337
  %340 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  %341 = load ptr, ptr %340, align 8, !tbaa !234
  %342 = tail call fastcc i32 @rhs_regno(ptr noundef %341) #19
  %343 = load i32, ptr %1, align 8, !tbaa !383
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !234
  %347 = zext i8 %346 to i32
  %348 = icmp eq i32 %342, %347
  br i1 %348, label %349, label %358, !prof !564

349:                                              ; preds = %339
  %350 = load ptr, ptr %92, align 8, !tbaa !247
  %351 = tail call fastcc i32 @rhs_regno(ptr noundef %350) #19
  %352 = zext nneg i32 %351 to i64
  %353 = shl nuw i64 1, %352
  %354 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !385
  %356 = or i64 %353, %355
  store i64 %356, ptr %354, align 8, !tbaa !385
  %357 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %350) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %357) #19
  br label %375

358:                                              ; preds = %339
  %359 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %341) #19
  %360 = load ptr, ptr %92, align 8, !tbaa !247
  %361 = tail call fastcc i32 @rhs_regno(ptr noundef %360) #19
  %362 = zext nneg i32 %361 to i64
  %363 = shl nuw i64 1, %362
  %364 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %365 = load i64, ptr %364, align 8, !tbaa !385
  %366 = or i64 %363, %365
  store i64 %366, ptr %364, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %359) #19
  %367 = load i32, ptr %1, align 8, !tbaa !383
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !234
  %371 = sub i32 %367, %359
  %372 = add i32 %371, 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %373
  store i8 %370, ptr %374, align 1, !tbaa !234
  br label %375

375:                                              ; preds = %358, %349
  %376 = load ptr, ptr %340, align 8, !tbaa !234
  %377 = tail call fastcc i32 @rhs_regno(ptr noundef %376) #19
  %378 = zext nneg i32 %377 to i64
  %379 = shl nuw i64 1, %378
  %380 = xor i64 %379, -1
  %381 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %382 = load i64, ptr %381, align 8, !tbaa !385
  %383 = and i64 %382, %380
  store i64 %383, ptr %381, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %340, i32 noundef 8) #19
  %384 = load i32, ptr %1, align 8, !tbaa !383
  %385 = add nsw i32 %384, -1
  store i32 %385, ptr %1, align 8, !tbaa !383
  br label %395

386:                                              ; preds = %337
  %387 = load ptr, ptr %92, align 8, !tbaa !247
  %388 = tail call fastcc i32 @rhs_regno(ptr noundef %387) #19
  %389 = zext nneg i32 %388 to i64
  %390 = shl nuw i64 1, %389
  %391 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %392 = load i64, ptr %391, align 8, !tbaa !385
  %393 = or i64 %390, %392
  store i64 %393, ptr %391, align 8, !tbaa !385
  %394 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %387) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef %394) #19
  br label %395

395:                                              ; preds = %375, %386, %326
  %396 = load i32, ptr %95, align 8
  %397 = and i32 %396, 65535
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !284
  %401 = icmp eq i32 %400, 3
  br i1 %401, label %402, label %819, !prof !565

402:                                              ; preds = %395
  %403 = load ptr, ptr %192, align 8, !tbaa !247
  %404 = load i32, ptr %403, align 8
  %405 = and i32 %404, 65535
  %406 = icmp eq i32 %405, 37
  br i1 %406, label %407, label %819, !prof !566

407:                                              ; preds = %402
  %408 = load ptr, ptr %194, align 8, !tbaa !247
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 37
  br i1 %411, label %412, label %819, !prof !567

412:                                              ; preds = %407
  %413 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %403) #19
  %414 = load ptr, ptr %92, align 8, !tbaa !247
  %415 = tail call fastcc i32 @rhs_regno(ptr noundef %414) #19
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %819, label %417, !prof !568

417:                                              ; preds = %412
  %418 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %403) #19
  %419 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %408) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %192, i32 noundef %419) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %194, i32 noundef %418) #19
  br label %819

420:                                              ; preds = %117
  %421 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %422 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load i32, ptr %422, align 8, !tbaa !234
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
  ], !prof !569

424:                                              ; preds = %420
  %425 = load i32, ptr %1, align 8, !tbaa !383
  br label %497

426:                                              ; preds = %420, %420, %420
  %427 = load ptr, ptr %421, align 8, !tbaa !234
  %428 = getelementptr inbounds %struct.rtvec_def, ptr %427, i64 0, i32 1
  %429 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %428) #19
  %430 = load ptr, ptr %429, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %430) #19
  %431 = load ptr, ptr %429, align 8, !tbaa !247
  %432 = tail call fastcc i32 @rhs_regno(ptr noundef %431) #19
  %433 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %432) #20
  %434 = load ptr, ptr %92, align 8, !tbaa !247
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
  %447 = load i32, ptr %1, align 8, !tbaa !383
  %448 = add nsw i32 %447, -1
  store i32 %448, ptr %1, align 8, !tbaa !383
  %449 = load ptr, ptr %429, align 8, !tbaa !247
  %450 = tail call fastcc i32 @rhs_regno(ptr noundef %449) #19
  %451 = zext nneg i32 %450 to i64
  %452 = shl nuw i64 1, %451
  %453 = xor i64 %452, -1
  %454 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %455 = load i64, ptr %454, align 8, !tbaa !385
  %456 = and i64 %455, %453
  store i64 %456, ptr %454, align 8, !tbaa !385
  br label %457

457:                                              ; preds = %445, %443
  tail call fastcc void @replace_reg(ptr noundef nonnull %429, i32 noundef 8) #19
  br label %819

458:                                              ; preds = %420
  %459 = load ptr, ptr %421, align 8, !tbaa !234
  %460 = getelementptr inbounds %struct.rtvec_def, ptr %459, i64 0, i32 1
  %461 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %460) #19
  %462 = load ptr, ptr %461, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %462) #19
  %463 = load ptr, ptr %461, align 8, !tbaa !247
  %464 = tail call fastcc i32 @rhs_regno(ptr noundef %463) #19
  %465 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %464) #20
  tail call fastcc void @replace_reg(ptr noundef nonnull %461, i32 noundef 8) #19
  %466 = icmp eq ptr %465, null
  br i1 %466, label %819, label %467

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.rtx_def, ptr %465, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !234
  %470 = tail call fastcc i32 @rhs_regno(ptr noundef %469) #19
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %470) #19
  %471 = load ptr, ptr %468, align 8, !tbaa !234
  %472 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %471, i32 noundef 0) #19
  br label %819

473:                                              ; preds = %420, %420, %420, %420, %420, %420, %420, %420, %420, %420
  %474 = load ptr, ptr %421, align 8, !tbaa !234
  %475 = getelementptr inbounds %struct.rtvec_def, ptr %474, i64 0, i32 1
  %476 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %475) #19
  %477 = load ptr, ptr %476, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %477) #19
  %478 = load ptr, ptr %476, align 8, !tbaa !247
  %479 = tail call fastcc i32 @rhs_regno(ptr noundef %478) #19
  %480 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %479) #20
  %481 = icmp eq ptr %480, null
  br i1 %481, label %483, label %482

482:                                              ; preds = %473
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1729, ptr noundef nonnull @.str.4) #20
  br label %483

483:                                              ; preds = %473, %482
  %484 = load ptr, ptr %92, align 8, !tbaa !247
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
  %495 = load i32, ptr %1, align 8, !tbaa !383
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %1, align 8, !tbaa !383
  br label %497

497:                                              ; preds = %424, %494
  %498 = phi i32 [ %425, %424 ], [ %496, %494 ]
  %499 = add nsw i32 %498, -1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !234
  %503 = sext i32 %498 to i64
  %504 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %503
  store i8 %502, ptr %504, align 1, !tbaa !234
  %505 = load ptr, ptr %92, align 8, !tbaa !247
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
  %514 = load ptr, ptr %92, align 8, !tbaa !247
  br label %515

515:                                              ; preds = %509, %513
  %516 = phi ptr [ %505, %509 ], [ %514, %513 ]
  %517 = tail call fastcc i32 @rhs_regno(ptr noundef %516) #19
  %518 = trunc i32 %517 to i8
  %519 = load i32, ptr %1, align 8, !tbaa !383
  %520 = add nsw i32 %519, -1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %521
  store i8 %518, ptr %522, align 1, !tbaa !234
  %523 = load ptr, ptr %92, align 8, !tbaa !247
  %524 = tail call fastcc i32 @rhs_regno(ptr noundef %523) #19
  %525 = zext nneg i32 %524 to i64
  %526 = shl nuw i64 1, %525
  %527 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %528 = load i64, ptr %527, align 8, !tbaa !385
  %529 = or i64 %526, %528
  store i64 %529, ptr %527, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 9) #19
  %530 = load ptr, ptr %421, align 8, !tbaa !234
  %531 = getelementptr inbounds %struct.rtvec_def, ptr %530, i64 0, i32 1
  %532 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %531) #19
  tail call fastcc void @replace_reg(ptr noundef %532, i32 noundef 8) #19
  br label %819

533:                                              ; preds = %420, %420, %420
  %534 = load ptr, ptr %421, align 8, !tbaa !234
  %535 = getelementptr inbounds %struct.rtvec_def, ptr %534, i64 0, i32 1
  %536 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %535) #19
  %537 = load ptr, ptr %421, align 8, !tbaa !234
  %538 = getelementptr inbounds %struct.rtvec_def, ptr %537, i64 1
  %539 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %538) #19
  %540 = load ptr, ptr %536, align 8, !tbaa !247
  %541 = tail call fastcc i32 @rhs_regno(ptr noundef %540) #19
  %542 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %541) #20
  %543 = load ptr, ptr %539, align 8, !tbaa !247
  %544 = tail call fastcc i32 @rhs_regno(ptr noundef %543) #19
  %545 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %544) #20
  %546 = load ptr, ptr %536, align 8, !tbaa !247
  %547 = load ptr, ptr %539, align 8, !tbaa !247
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
  %556 = load i32, ptr %1, align 8, !tbaa !383
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !234
  %560 = zext nneg i8 %559 to i64
  %561 = shl nuw i64 1, %560
  %562 = xor i64 %561, -1
  %563 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %564 = load i64, ptr %563, align 8, !tbaa !385
  %565 = and i64 %564, %562
  store i64 %565, ptr %563, align 8, !tbaa !385
  %566 = add nsw i32 %556, -1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !234
  %570 = zext nneg i8 %569 to i64
  %571 = shl nuw i64 1, %570
  %572 = xor i64 %571, -1
  %573 = and i64 %565, %572
  store i64 %573, ptr %563, align 8, !tbaa !385
  %574 = add nsw i32 %556, -2
  store i32 %574, ptr %1, align 8, !tbaa !383
  %575 = load ptr, ptr %92, align 8, !tbaa !247
  %576 = tail call fastcc i32 @rhs_regno(ptr noundef %575) #19
  %577 = trunc i32 %576 to i8
  store i32 %566, ptr %1, align 8, !tbaa !383
  store i8 %577, ptr %568, align 1, !tbaa !234
  %578 = load ptr, ptr %92, align 8, !tbaa !247
  %579 = tail call fastcc i32 @rhs_regno(ptr noundef %578) #19
  %580 = zext nneg i32 %579 to i64
  %581 = shl nuw i64 1, %580
  %582 = load i64, ptr %563, align 8, !tbaa !385
  %583 = or i64 %581, %582
  store i64 %583, ptr %563, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %819

584:                                              ; preds = %420, %420, %420
  %585 = load ptr, ptr %421, align 8, !tbaa !234
  %586 = getelementptr inbounds %struct.rtvec_def, ptr %585, i64 0, i32 1
  %587 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %586) #19
  %588 = load ptr, ptr %421, align 8, !tbaa !234
  %589 = getelementptr inbounds %struct.rtvec_def, ptr %588, i64 1
  %590 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %589) #19
  %591 = load ptr, ptr %587, align 8, !tbaa !247
  %592 = tail call fastcc i32 @rhs_regno(ptr noundef %591) #19
  %593 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %592) #20
  %594 = load ptr, ptr %590, align 8, !tbaa !247
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
  %603 = load ptr, ptr %587, align 8, !tbaa !247
  %604 = load ptr, ptr %590, align 8, !tbaa !247
  tail call fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr noundef %603, ptr noundef %604) #19
  %605 = load ptr, ptr %92, align 8, !tbaa !247
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
  %615 = load i32, ptr %1, align 8, !tbaa !383
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %616
  store i8 %614, ptr %617, align 1, !tbaa !234
  %618 = load ptr, ptr %92, align 8, !tbaa !247
  %619 = tail call fastcc i32 @rhs_regno(ptr noundef %618) #19
  %620 = zext nneg i32 %619 to i64
  %621 = shl nuw i64 1, %620
  %622 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %623 = load i64, ptr %622, align 8, !tbaa !385
  %624 = or i64 %621, %623
  store i64 %624, ptr %622, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 8) #19
  br label %625

625:                                              ; preds = %613, %609, %602
  tail call fastcc void @replace_reg(ptr noundef nonnull %587, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %590, i32 noundef 9) #19
  br label %819

626:                                              ; preds = %420, %420, %420
  %627 = load ptr, ptr %421, align 8, !tbaa !234
  %628 = getelementptr inbounds %struct.rtvec_def, ptr %627, i64 0, i32 1
  %629 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %628) #19
  %630 = load ptr, ptr %421, align 8, !tbaa !234
  %631 = getelementptr inbounds %struct.rtvec_def, ptr %630, i64 1
  %632 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %631) #19
  %633 = load ptr, ptr %92, align 8, !tbaa !247
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
  %643 = load i32, ptr %1, align 8, !tbaa !383
  %644 = add nsw i32 %643, -1
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %645
  store i8 %642, ptr %646, align 1, !tbaa !234
  %647 = load ptr, ptr %92, align 8, !tbaa !247
  %648 = tail call fastcc i32 @rhs_regno(ptr noundef %647) #19
  %649 = zext nneg i32 %648 to i64
  %650 = shl nuw i64 1, %649
  %651 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %652 = load i64, ptr %651, align 8, !tbaa !385
  %653 = or i64 %650, %652
  store i64 %653, ptr %651, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %92, i32 noundef 9) #19
  br label %654

654:                                              ; preds = %641, %637, %626
  tail call fastcc void @replace_reg(ptr noundef %629, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef %632, i32 noundef 9) #19
  br label %819

655:                                              ; preds = %420
  %656 = load ptr, ptr %421, align 8, !tbaa !234
  %657 = getelementptr inbounds %struct.rtvec_def, ptr %656, i64 0, i32 1
  %658 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %657) #19
  %659 = load ptr, ptr %421, align 8, !tbaa !234
  %660 = getelementptr inbounds %struct.rtvec_def, ptr %659, i64 1
  %661 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %660) #19
  tail call fastcc void @replace_reg(ptr noundef %658, i32 noundef 8) #19
  tail call fastcc void @replace_reg(ptr noundef %661, i32 noundef 9) #19
  br label %819

662:                                              ; preds = %420
  %663 = load ptr, ptr %421, align 8, !tbaa !234
  %664 = getelementptr inbounds %struct.rtvec_def, ptr %663, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !247
  %666 = load i32, ptr %665, align 8
  %667 = and i32 %666, 65535
  %668 = icmp eq i32 %667, 18
  br i1 %668, label %670, label %669

669:                                              ; preds = %662
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1871, ptr noundef nonnull @.str.4) #20
  br label %670

670:                                              ; preds = %662, %669
  %671 = getelementptr inbounds %struct.rtx_def, ptr %665, i64 0, i32 1, i32 0, i32 0, i64 1
  %672 = load i32, ptr %671, align 8, !tbaa !234
  %673 = icmp eq i32 %672, 31
  br i1 %673, label %675, label %674

674:                                              ; preds = %670
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1872, ptr noundef nonnull @.str.4) #20
  br label %675

675:                                              ; preds = %674, %670, %420
  %676 = phi ptr [ %95, %420 ], [ %665, %670 ], [ %665, %674 ]
  %677 = getelementptr inbounds %struct.rtx_def, ptr %676, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !234
  %679 = getelementptr inbounds %struct.rtvec_def, ptr %678, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !247
  %681 = load i32, ptr %680, align 8
  %682 = and i32 %681, 65535
  %683 = icmp eq i32 %682, 48
  br i1 %683, label %685, label %684, !prof !570

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
  %693 = load ptr, ptr %690, align 8, !tbaa !247
  %694 = tail call fastcc i32 @rhs_regno(ptr noundef %693) #19
  %695 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %694) #20
  %696 = load ptr, ptr %692, align 8, !tbaa !247
  %697 = tail call fastcc i32 @rhs_regno(ptr noundef %696) #19
  %698 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %697) #20
  %699 = load ptr, ptr %92, align 8, !tbaa !247
  %700 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %699) #19
  %701 = icmp sgt i32 %700, 7
  br i1 %701, label %702, label %751

702:                                              ; preds = %687
  %703 = load ptr, ptr %92, align 8, !tbaa !247
  %704 = tail call fastcc i32 @rhs_regno(ptr noundef %703) #19
  %705 = load i32, ptr %1, align 8, !tbaa !383
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !234
  %709 = zext i8 %708 to i32
  %710 = icmp eq i32 %704, %709
  br i1 %710, label %751, label %711

711:                                              ; preds = %702
  %712 = load ptr, ptr %690, align 8, !tbaa !247
  %713 = tail call fastcc i32 @rhs_regno(ptr noundef %712) #19
  %714 = icmp eq i32 %713, %709
  %715 = icmp ne ptr %695, null
  %716 = select i1 %714, i1 %715, i1 false
  br i1 %716, label %723, label %717

717:                                              ; preds = %711
  %718 = load ptr, ptr %692, align 8, !tbaa !247
  %719 = tail call fastcc i32 @rhs_regno(ptr noundef %718) #19
  %720 = icmp eq i32 %719, %709
  %721 = icmp ne ptr %698, null
  %722 = select i1 %720, i1 %721, i1 false
  br i1 %722, label %723, label %750

723:                                              ; preds = %717, %711
  %724 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %712) #19
  %725 = load ptr, ptr %692, align 8, !tbaa !247
  %726 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef %725) #19
  %727 = load ptr, ptr %692, align 8, !tbaa !247
  %728 = tail call fastcc i32 @rhs_regno(ptr noundef %727) #19
  %729 = trunc i32 %728 to i8
  %730 = load i32, ptr %1, align 8, !tbaa !383
  %731 = sub i32 %730, %724
  %732 = add i32 %731, 8
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %733
  store i8 %729, ptr %734, align 1, !tbaa !234
  %735 = load ptr, ptr %690, align 8, !tbaa !247
  %736 = tail call fastcc i32 @rhs_regno(ptr noundef %735) #19
  %737 = trunc i32 %736 to i8
  %738 = load i32, ptr %1, align 8, !tbaa !383
  %739 = sub i32 %738, %726
  %740 = add i32 %739, 8
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %741
  store i8 %737, ptr %742, align 1, !tbaa !234
  %743 = load ptr, ptr %688, align 8, !tbaa !234
  %744 = tail call i32 @reversed_comparison_code(ptr noundef %743, ptr noundef %0) #20
  %745 = load ptr, ptr %688, align 8, !tbaa !234
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
  store ptr %695, ptr %752, align 8, !tbaa !247
  %753 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %698, ptr %753, align 16, !tbaa !247
  %754 = load ptr, ptr %690, align 8, !tbaa !247
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
  %765 = load ptr, ptr %692, align 8, !tbaa !247
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
  %779 = load ptr, ptr %778, align 8, !tbaa !247
  %780 = icmp eq ptr %779, null
  br i1 %780, label %795, label %781

781:                                              ; preds = %776
  %782 = getelementptr inbounds %struct.rtx_def, ptr %779, i64 0, i32 1
  %783 = load ptr, ptr %782, align 8, !tbaa !234
  %784 = tail call fastcc i32 @rhs_regno(ptr noundef %783) #19
  %785 = load i32, ptr %1, align 8, !tbaa !383
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %786
  %788 = load i8, ptr %787, align 1, !tbaa !234
  %789 = zext i8 %788 to i32
  %790 = icmp eq i32 %784, %789
  br i1 %790, label %791, label %792

791:                                              ; preds = %781
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1957, ptr noundef nonnull @.str.4) #20
  br label %792

792:                                              ; preds = %781, %791
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %784) #19
  %793 = load ptr, ptr %782, align 8, !tbaa !234
  %794 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %793, i32 noundef 0) #19
  br label %795

795:                                              ; preds = %776, %792
  %796 = add nuw nsw i64 %777, 1
  %797 = icmp eq i64 %796, 3
  br i1 %797, label %798, label %776, !llvm.loop !571

798:                                              ; preds = %795
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %799 = load ptr, ptr %92, align 8, !tbaa !247
  %800 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %799) #19
  %801 = icmp slt i32 %800, 8
  br i1 %801, label %802, label %810

802:                                              ; preds = %798
  %803 = load ptr, ptr %92, align 8, !tbaa !247
  %804 = tail call fastcc i32 @rhs_regno(ptr noundef %803) #19
  %805 = trunc i32 %804 to i8
  %806 = load i32, ptr %1, align 8, !tbaa !383
  %807 = add nsw i32 %806, 1
  store i32 %807, ptr %1, align 8, !tbaa !383
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %808
  store i8 %805, ptr %809, align 1, !tbaa !234
  br label %810

810:                                              ; preds = %802, %798
  %811 = load ptr, ptr %92, align 8, !tbaa !247
  %812 = tail call fastcc i32 @rhs_regno(ptr noundef %811) #19
  %813 = zext nneg i32 %812 to i64
  %814 = shl nuw i64 1, %813
  %815 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %816 = load i64, ptr %815, align 8, !tbaa !385
  %817 = or i64 %814, %816
  store i64 %817, ptr %815, align 8, !tbaa !385
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
define internal fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !prof !572 !PGOFuncName !573 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !234
  %11 = and i8 %10, -2
  %12 = icmp eq i8 %11, 10
  br i1 %12, label %13, label %37, !prof !574

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %15 = add i32 %14, -8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %16, i64 39
  %18 = load ptr, ptr %17, align 8, !tbaa !247
  %19 = add i32 %14, -7
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %20, i64 39
  %22 = load ptr, ptr %21, align 8, !tbaa !247
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
  br i1 %39, label %41, label %40, !prof !575

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 771, ptr noundef nonnull @.str.4) #20
  br label %41

41:                                               ; preds = %37, %40
  %42 = add nsw i32 %38, -8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %43, i64 39
  %45 = load ptr, ptr %44, align 8, !tbaa !247
  %46 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !247
  %47 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %45, ptr noundef %46) #20
  %48 = icmp eq i32 %3, 0
  br i1 %48, label %49, label %51, !prof !576

49:                                               ; preds = %41
  %50 = tail call ptr @emit_insn_after(ptr noundef %47, ptr noundef %0) #20
  br label %53

51:                                               ; preds = %41
  %52 = tail call ptr @emit_insn_before(ptr noundef %47, ptr noundef %0) #20
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 39), align 8, !tbaa !247
  tail call void @add_reg_note(ptr noundef %54, i32 noundef 1, ptr noundef %55) #20
  %56 = load i32, ptr %1, align 8, !tbaa !383
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !234
  %60 = sub nsw i32 %56, %42
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %61
  store i8 %59, ptr %62, align 1, !tbaa !234
  %63 = load i32, ptr %1, align 8, !tbaa !383
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %1, align 8, !tbaa !383
  %65 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = xor i64 %67, -1
  %69 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !385
  %71 = and i64 %70, %68
  store i64 %71, ptr %69, align 8, !tbaa !385
  br label %72

72:                                               ; preds = %36, %33, %53
  %73 = phi ptr [ %54, %53 ], [ %34, %33 ], [ null, %36 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_stack(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 !prof !577 !PGOFuncName !578 {
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i32], align 16
  %7 = load ptr, ptr @current_block, align 8, !tbaa !247
  %8 = icmp ne ptr %7, null
  %9 = load i1, ptr @starting_stack_p, align 1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %15, !prof !579

11:                                               ; preds = %4
  switch i32 %3, label %30 [
    i32 1, label %12
    i32 0, label %19
  ], !prof !580

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !299
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !427
  store i1 false, ptr @starting_stack_p, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !427
  br label %355

15:                                               ; preds = %4
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %17, label %30, !prof !581

17:                                               ; preds = %15
  %18 = icmp eq ptr %7, null
  br i1 %18, label %26, label %19, !prof !582

19:                                               ; preds = %11, %17
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = getelementptr inbounds %struct.rtl_bb_info, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !430
  %24 = icmp eq ptr %23, %0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %19 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !234
  br label %30

30:                                               ; preds = %11, %26, %15
  %31 = phi ptr [ %29, %26 ], [ %0, %15 ], [ %0, %11 ]
  %32 = phi i32 [ %27, %26 ], [ 0, %15 ], [ 0, %11 ]
  %33 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 1
  %34 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  br label %35

35:                                               ; preds = %30, %59
  %36 = phi i64 [ 8, %30 ], [ %60, %59 ]
  %37 = load i64, ptr %33, align 8, !tbaa !385
  %38 = shl nuw nsw i64 1, %36
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %59, label %41, !prof !583

41:                                               ; preds = %35
  %42 = load i64, ptr %34, align 8, !tbaa !385
  %43 = and i64 %42, %38
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %59, !prof !584

45:                                               ; preds = %41
  %46 = trunc i64 %36 to i8
  %47 = load i32, ptr %1, align 8, !tbaa !383
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %1, align 8, !tbaa !383
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %49
  store i8 %46, ptr %50, align 1, !tbaa !234
  %51 = load i64, ptr %34, align 8, !tbaa !385
  %52 = or i64 %51, %38
  store i64 %52, ptr %34, align 8, !tbaa !385
  %53 = add nsw i64 %36, -8
  %54 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %53, i64 38
  %55 = load ptr, ptr %54, align 8, !tbaa !247
  %56 = load ptr, ptr @not_a_num, align 8, !tbaa !247
  %57 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %55, ptr noundef %56) #20
  %58 = tail call ptr @emit_insn_before(ptr noundef %57, ptr noundef %31) #20
  br label %59

59:                                               ; preds = %35, %41, %45
  %60 = add nuw nsw i64 %36, 1
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %62, label %35, !prof !585, !llvm.loop !586

62:                                               ; preds = %59
  %63 = load i32, ptr %2, align 8, !tbaa !383
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %72, label %65, !prof !587

65:                                               ; preds = %62
  %66 = load i32, ptr %1, align 8, !tbaa !383
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %239, label %68, !prof !588

68:                                               ; preds = %65
  %69 = load i64, ptr %33, align 8, !tbaa !385
  %70 = add nuw i32 %66, 1
  %71 = zext i32 %70 to i64
  br label %191

72:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %73 = load i64, ptr %33, align 8, !tbaa !385
  %74 = add nuw i32 %63, 1
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %72, %76
  %77 = phi i64 [ 0, %72 ], [ %86, %76 ]
  %78 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !234
  %80 = zext nneg i8 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %81, %73
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %77
  store i8 %84, ptr %85, align 1, !tbaa !234
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, %75
  br i1 %87, label %88, label %76, !prof !589, !llvm.loop !590

88:                                               ; preds = %76
  %89 = load i32, ptr %1, align 8, !tbaa !383
  %90 = icmp sgt i32 %89, %63
  br i1 %90, label %91, label %187, !prof !591

91:                                               ; preds = %88
  %92 = sext i32 %89 to i64
  %93 = zext nneg i32 %63 to i64
  br label %94

94:                                               ; preds = %91, %128
  %95 = phi i64 [ %92, %91 ], [ %130, %128 ]
  %96 = phi i32 [ -1, %91 ], [ %129, %128 ]
  %97 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !234
  %99 = zext nneg i8 %98 to i64
  %100 = shl nuw i64 1, %99
  %101 = and i64 %100, %73
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %125, label %103, !prof !592

103:                                              ; preds = %94, %118
  %104 = phi i64 [ %119, %118 ], [ 0, %94 ]
  %105 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !234
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %118, !prof !593

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %104
  %110 = load i8, ptr %109, align 1, !tbaa !234
  %111 = icmp eq i8 %110, %98
  br i1 %111, label %112, label %118, !prof !594

112:                                              ; preds = %108
  %113 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %104
  %114 = trunc i64 %104 to i32
  %115 = icmp eq i32 %63, %114
  %116 = trunc i64 %95 to i32
  %117 = select i1 %115, i32 %116, i32 %96
  store i8 1, ptr %113, align 1, !tbaa !234
  br label %121

118:                                              ; preds = %103, %108
  %119 = add nuw nsw i64 %104, 1
  %120 = icmp eq i64 %119, %75
  br i1 %120, label %121, label %103, !prof !595, !llvm.loop !596

121:                                              ; preds = %118, %112
  %122 = phi i32 [ %114, %112 ], [ -1, %118 ]
  %123 = phi i32 [ %117, %112 ], [ %96, %118 ]
  %124 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %95
  store i32 %122, ptr %124, align 4, !tbaa !284
  br label %128

125:                                              ; preds = %94
  %126 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %95
  %127 = trunc i64 %95 to i32
  store i32 %127, ptr %126, align 4, !tbaa !284
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi i32 [ %123, %121 ], [ %96, %125 ]
  %130 = add nsw i64 %95, -1
  %131 = icmp sgt i64 %130, %93
  br i1 %131, label %94, label %132, !prof !597, !llvm.loop !598

132:                                              ; preds = %128
  %133 = icmp eq i32 %129, -1
  br i1 %133, label %152, label %134, !prof !599

134:                                              ; preds = %132
  %135 = tail call i32 @llvm.smax.i32(i32 %63, i32 1)
  %136 = zext nneg i32 %135 to i64
  br label %137

137:                                              ; preds = %134, %149
  %138 = phi i64 [ 0, %134 ], [ %150, %149 ]
  %139 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !234
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %138
  %144 = trunc i64 %138 to i32
  %145 = sext i32 %129 to i64
  %146 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %145
  store i32 %144, ptr %146, align 4, !tbaa !284
  %147 = zext nneg i32 %63 to i64
  %148 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %147
  store i8 0, ptr %148, align 1, !tbaa !234
  store i8 1, ptr %143, align 1, !tbaa !234
  br label %152

149:                                              ; preds = %137
  %150 = add nuw nsw i64 %138, 1
  %151 = icmp eq i64 %150, %136
  br i1 %151, label %152, label %137, !llvm.loop !600

152:                                              ; preds = %149, %142, %132
  br i1 %90, label %153, label %187, !prof !601

153:                                              ; preds = %152
  %154 = sext i32 %89 to i64
  br label %155

155:                                              ; preds = %153, %172
  %156 = phi i64 [ %154, %153 ], [ %183, %172 ]
  %157 = phi i32 [ %63, %153 ], [ %173, %172 ]
  %158 = getelementptr inbounds [8 x i32], ptr %6, i64 0, i64 %156
  %159 = load i32, ptr %158, align 4, !tbaa !284
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %172, !prof !602

161:                                              ; preds = %155
  %162 = sext i32 %157 to i64
  br label %163

163:                                              ; preds = %161, %163
  %164 = phi i64 [ %162, %161 ], [ %168, %163 ]
  %165 = getelementptr inbounds [8 x i8], ptr %5, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !234
  %167 = icmp eq i8 %166, 0
  %168 = add i64 %164, -1
  br i1 %167, label %169, label %163, !prof !593, !llvm.loop !603

169:                                              ; preds = %163
  %170 = trunc i64 %164 to i32
  %171 = add nsw i32 %170, -1
  br label %172

172:                                              ; preds = %169, %155
  %173 = phi i32 [ %171, %169 ], [ %157, %155 ]
  %174 = phi i32 [ %170, %169 ], [ %159, %155 ]
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !234
  %178 = zext i8 %177 to i64
  %179 = add nsw i64 %178, -8
  %180 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %179, i64 39
  %181 = load ptr, ptr %180, align 8, !tbaa !247
  %182 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %181, i32 noundef 1) #19
  %183 = add nsw i64 %156, -1
  %184 = load i32, ptr %2, align 8, !tbaa !383
  %185 = sext i32 %184 to i64
  %186 = icmp sgt i64 %183, %185
  br i1 %186, label %155, label %187, !prof !597, !llvm.loop !604

187:                                              ; preds = %172, %88, %152
  %188 = phi i32 [ %63, %152 ], [ %63, %88 ], [ %184, %172 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %239

189:                                              ; preds = %191
  %190 = icmp slt i32 %66, %201
  br i1 %190, label %239, label %204, !prof !382

191:                                              ; preds = %68, %191
  %192 = phi i64 [ 0, %68 ], [ %202, %191 ]
  %193 = phi i32 [ 0, %68 ], [ %201, %191 ]
  %194 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %192
  %195 = load i8, ptr %194, align 1, !tbaa !234
  %196 = zext nneg i8 %195 to i64
  %197 = shl nuw i64 1, %196
  %198 = and i64 %197, %69
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i32
  %201 = add nuw nsw i32 %193, %200
  %202 = add nuw nsw i64 %192, 1
  %203 = icmp eq i64 %202, %71
  br i1 %203, label %189, label %191, !prof !605, !llvm.loop !606

204:                                              ; preds = %189, %228
  %205 = phi i32 [ %235, %228 ], [ %66, %189 ]
  %206 = phi i32 [ %230, %228 ], [ %201, %189 ]
  %207 = load i64, ptr %33, align 8, !tbaa !385
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !234
  %211 = zext nneg i8 %210 to i64
  %212 = shl nuw i64 1, %211
  %213 = and i64 %212, %207
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %228, label %215, !prof !607

215:                                              ; preds = %204
  %216 = sext i32 %206 to i64
  br label %217

217:                                              ; preds = %215, %217
  %218 = phi i64 [ %216, %215 ], [ %225, %217 ]
  %219 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !234
  %221 = zext nneg i8 %220 to i64
  %222 = shl nuw i64 1, %221
  %223 = and i64 %222, %207
  %224 = icmp eq i64 %223, 0
  %225 = add i64 %218, -1
  br i1 %224, label %226, label %217, !prof !608, !llvm.loop !609

226:                                              ; preds = %217
  %227 = trunc i64 %218 to i32
  br label %228

228:                                              ; preds = %204, %226
  %229 = phi i64 [ %221, %226 ], [ %211, %204 ]
  %230 = phi i32 [ %227, %226 ], [ %206, %204 ]
  %231 = add nsw i64 %229, -8
  %232 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %231, i64 39
  %233 = load ptr, ptr %232, align 8, !tbaa !247
  %234 = tail call fastcc ptr @emit_pop_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %233, i32 noundef 1) #19
  %235 = load i32, ptr %1, align 8, !tbaa !383
  %236 = icmp slt i32 %235, %201
  br i1 %236, label %237, label %204, !prof !610, !llvm.loop !611

237:                                              ; preds = %228
  %238 = load i32, ptr %2, align 8, !tbaa !383
  br label %239

239:                                              ; preds = %65, %189, %237, %187
  %240 = phi i32 [ %188, %187 ], [ %238, %237 ], [ %63, %189 ], [ %63, %65 ]
  %241 = icmp eq i32 %240, -2
  br i1 %241, label %242, label %247, !prof !612

242:                                              ; preds = %239
  %243 = load i32, ptr %1, align 8, !tbaa !383
  store i32 %243, ptr %2, align 8, !tbaa !383
  %244 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2
  %245 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2
  %246 = load i64, ptr %245, align 8
  store i64 %246, ptr %244, align 8
  br label %346

247:                                              ; preds = %239
  %248 = load i64, ptr %34, align 8, !tbaa !385
  %249 = load i64, ptr %33, align 8, !tbaa !385
  %250 = tail call fastcc zeroext i8 @hard_reg_set_equal_p(i64 noundef %248, i64 noundef %249) #19, !range !302
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %254, !prof !612

252:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2541, ptr noundef nonnull @.str.4) #20
  %253 = load i32, ptr %2, align 8, !tbaa !383
  br label %254

254:                                              ; preds = %247, %252
  %255 = phi i32 [ %240, %247 ], [ %253, %252 ]
  %256 = load i32, ptr %1, align 8, !tbaa !383
  %257 = icmp eq i32 %256, %255
  br i1 %257, label %260, label %258, !prof !613

258:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2542, ptr noundef nonnull @.str.4) #20
  %259 = load i32, ptr %2, align 8, !tbaa !383
  br label %260

260:                                              ; preds = %254, %258
  %261 = phi i32 [ %255, %254 ], [ %259, %258 ]
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265, !prof !614

263:                                              ; preds = %260
  %264 = load i32, ptr %1, align 8, !tbaa !383
  br label %330

265:                                              ; preds = %260, %324
  %266 = phi i32 [ %329, %324 ], [ %261, %260 ]
  %267 = load i32, ptr %1, align 8, !tbaa !383
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !234
  %271 = sext i32 %266 to i64
  %272 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !234
  %274 = icmp eq i8 %270, %273
  br i1 %274, label %275, label %279, !prof !615

275:                                              ; preds = %295, %265
  %276 = phi i32 [ %267, %265 ], [ %304, %295 ]
  %277 = phi i32 [ %266, %265 ], [ %308, %295 ]
  %278 = icmp sgt i32 %277, -1
  br i1 %278, label %316, label %330, !prof !616

279:                                              ; preds = %265, %295
  %280 = phi i32 [ %308, %295 ], [ %266, %265 ]
  %281 = phi i8 [ %307, %295 ], [ %270, %265 ]
  %282 = icmp sgt i32 %280, -1
  br i1 %282, label %283, label %292, !prof !386

283:                                              ; preds = %279, %289
  %284 = phi i32 [ %290, %289 ], [ %280, %279 ]
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !234
  %288 = icmp eq i8 %287, %281
  br i1 %288, label %295, label %289, !prof !617

289:                                              ; preds = %283
  %290 = add nsw i32 %284, -1
  %291 = icmp sgt i32 %284, 0
  br i1 %291, label %283, label %294, !prof !618, !llvm.loop !619

292:                                              ; preds = %279
  %293 = icmp eq i32 %280, -1
  br i1 %293, label %294, label %295, !prof !620

294:                                              ; preds = %289, %292
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2565, ptr noundef nonnull @.str.4) #20
  br label %295

295:                                              ; preds = %283, %292, %294
  %296 = phi i32 [ %280, %292 ], [ -1, %294 ], [ %284, %283 ]
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !234
  %300 = zext i8 %299 to i64
  %301 = add nsw i64 %300, -8
  %302 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %301, i64 39
  %303 = load ptr, ptr %302, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %303) #19
  %304 = load i32, ptr %1, align 8, !tbaa !383
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !234
  %308 = load i32, ptr %2, align 8, !tbaa !383
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %309
  %311 = load i8, ptr %310, align 1, !tbaa !234
  %312 = icmp eq i8 %307, %311
  br i1 %312, label %275, label %279, !prof !621, !llvm.loop !622

313:                                              ; preds = %316
  %314 = add nsw i32 %317, -1
  %315 = icmp sgt i32 %317, 0
  br i1 %315, label %316, label %330, !prof !623, !llvm.loop !624

316:                                              ; preds = %275, %313
  %317 = phi i32 [ %314, %313 ], [ %277, %275 ]
  %318 = zext nneg i32 %317 to i64
  %319 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !234
  %321 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %318
  %322 = load i8, ptr %321, align 1, !tbaa !234
  %323 = icmp eq i8 %320, %322
  br i1 %323, label %313, label %324, !prof !625

324:                                              ; preds = %316
  %325 = zext i8 %322 to i64
  %326 = add nsw i64 %325, -8
  %327 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %326, i64 39
  %328 = load ptr, ptr %327, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %328) #19
  %329 = load i32, ptr %2, align 8, !tbaa !383
  br label %265, !llvm.loop !626

330:                                              ; preds = %275, %313, %263
  %331 = phi i32 [ %264, %263 ], [ %276, %313 ], [ %276, %275 ]
  %332 = icmp sgt i32 %331, -1
  br i1 %332, label %333, label %346, !prof !627

333:                                              ; preds = %330
  %334 = zext nneg i32 %331 to i64
  br label %335

335:                                              ; preds = %333, %343
  %336 = phi i64 [ %334, %333 ], [ %344, %343 ]
  %337 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !234
  %339 = getelementptr inbounds %struct.stack_def, ptr %2, i64 0, i32 2, i64 %336
  %340 = load i8, ptr %339, align 1, !tbaa !234
  %341 = icmp eq i8 %338, %340
  br i1 %341, label %343, label %342, !prof !625

342:                                              ; preds = %335
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2587, ptr noundef nonnull @.str.4) #20
  br label %343

343:                                              ; preds = %335, %342
  %344 = add nsw i64 %336, -1
  %345 = icmp sgt i64 %336, 0
  br i1 %345, label %335, label %346, !prof !628, !llvm.loop !629

346:                                              ; preds = %343, %330, %242
  %347 = icmp eq i32 %32, 0
  br i1 %347, label %355, label %348, !prof !630

348:                                              ; preds = %346
  %349 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !234
  %351 = load ptr, ptr @current_block, align 8, !tbaa !247
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %351, i64 0, i32 7
  %353 = load ptr, ptr %352, align 8, !tbaa !234
  %354 = getelementptr inbounds %struct.rtl_bb_info, ptr %353, i64 0, i32 1
  store ptr %350, ptr %354, align 8, !tbaa !430
  br label %355

355:                                              ; preds = %346, %348, %12
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_swap_insn(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !631 !PGOFuncName !632 {
  %4 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %2) #19
  switch i32 %4, label %15 [
    i32 8, label %147
    i32 -1, label %5
  ], !prof !633

5:                                                ; preds = %3
  %6 = load i1, ptr @any_malformed_asm, align 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 817, ptr noundef nonnull @.str.4) #20
  br label %8

8:                                                ; preds = %5, %7
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #19
  %10 = trunc i32 %9 to i8
  %11 = load i32, ptr %1, align 8, !tbaa !383
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %1, align 8, !tbaa !383
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !234
  br label %147

15:                                               ; preds = %3
  %16 = icmp sgt i32 %4, 7
  br i1 %16, label %18, label %17, !prof !634

17:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 821, ptr noundef nonnull @.str.4) #20
  br label %18

18:                                               ; preds = %15, %17
  %19 = load i32, ptr %1, align 8, !tbaa !383
  %20 = add nsw i32 %4, -8
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !234
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !234
  store i8 %27, ptr %23, align 1, !tbaa !234
  %28 = load i32, ptr %1, align 8, !tbaa !383
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %29
  store i8 %24, ptr %30, align 1, !tbaa !234
  %31 = load ptr, ptr @current_block, align 8, !tbaa !247
  %32 = icmp eq ptr %31, null
  br i1 %32, label %119, label %33, !prof !635

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !234
  %36 = load ptr, ptr %35, align 8, !tbaa !425
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %119, label %38, !prof !636

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !234
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !234
  %43 = icmp eq ptr %42, %40
  br i1 %43, label %119, label %44, !prof !384

44:                                               ; preds = %38, %57
  %45 = phi ptr [ %59, %57 ], [ %42, %38 ]
  %46 = load i32, ptr %45, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %57 [
    i16 12, label %61
    i16 10, label %61
    i16 13, label %48
    i16 8, label %52
  ], !prof !637

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %50 = load i32, ptr %49, align 8, !tbaa !234
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %61, label %57, !prof !638

52:                                               ; preds = %44
  %53 = tail call i32 @stack_regs_mentioned(ptr noundef nonnull %45) #19, !range !275
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !639

55:                                               ; preds = %52
  %56 = load i32, ptr %45, align 8
  br label %61

57:                                               ; preds = %44, %48, %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !234
  %60 = icmp eq ptr %59, %40
  br i1 %60, label %119, label %44, !prof !640, !llvm.loop !641

61:                                               ; preds = %44, %44, %48, %55
  %62 = phi i32 [ %56, %55 ], [ %46, %48 ], [ %46, %44 ], [ %46, %44 ]
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -7
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %119, !prof !642

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !234
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 23
  br i1 %71, label %75, label %72, !prof !643

72:                                               ; preds = %66
  %73 = tail call ptr @single_set_2(ptr noundef nonnull %45, ptr noundef nonnull %68) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %119, label %75, !prof !382

75:                                               ; preds = %66, %72
  %76 = phi ptr [ %73, %72 ], [ %68, %66 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %78) #19
  %80 = load ptr, ptr %79, align 8, !tbaa !247
  %81 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %77) #19
  %82 = load ptr, ptr %81, align 8, !tbaa !247
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 37
  br i1 %85, label %86, label %102, !prof !644

86:                                               ; preds = %75
  %87 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %82) #19
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %102, !prof !645

89:                                               ; preds = %86
  %90 = load i32, ptr %80, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 37
  br i1 %92, label %93, label %102, !prof !646

93:                                               ; preds = %89
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %80) #19
  %95 = add i32 %4, -1
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102, !prof !647

97:                                               ; preds = %93
  %98 = tail call ptr @find_regno_note(ptr noundef nonnull %45, i32 noundef 1, i32 noundef 8) #20
  %99 = icmp eq ptr %98, null
  br i1 %99, label %147, label %100, !prof !553

100:                                              ; preds = %97
  %101 = load i32, ptr %82, align 8
  br label %102

102:                                              ; preds = %100, %93, %89, %86, %75
  %103 = phi i32 [ %101, %100 ], [ %83, %93 ], [ %83, %89 ], [ %83, %86 ], [ %83, %75 ]
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 37
  br i1 %105, label %106, label %119, !prof !648

106:                                              ; preds = %102
  %107 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %82) #19
  %108 = icmp eq i32 %107, %4
  br i1 %108, label %109, label %119, !prof !649

109:                                              ; preds = %106
  %110 = load i32, ptr %80, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 37
  br i1 %112, label %113, label %119, !prof !650

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
  %122 = load ptr, ptr @current_block, align 8, !tbaa !247
  %123 = icmp ne ptr %122, null
  %124 = load i1, ptr @starting_stack_p, align 1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %129, !prof !651

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !299
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !427
  store i1 false, ptr @starting_stack_p, align 1
  br label %147

129:                                              ; preds = %119
  %130 = sext i32 %20 to i64
  %131 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %130, i64 40
  %132 = load ptr, ptr %131, align 8, !tbaa !247
  %133 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !247
  %134 = tail call ptr @gen_swapxf(ptr noundef %132, ptr noundef %133) #20
  br i1 %120, label %137, label %135, !prof !652

135:                                              ; preds = %129
  %136 = tail call ptr @emit_insn_after(ptr noundef %134, ptr noundef nonnull %121) #20
  br label %147

137:                                              ; preds = %129
  %138 = load ptr, ptr @current_block, align 8, !tbaa !247
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140, !prof !653

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !234
  %143 = load ptr, ptr %142, align 8, !tbaa !425
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
define internal fastcc noundef i32 @check_asm_stack_operands(ptr noundef %0) unnamed_addr #0 !prof !468 !PGOFuncName !654 {
  %2 = alloca [53 x i8], align 16
  %3 = alloca [53 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 53, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  tail call void @extract_insn(ptr noundef %0) #20
  %8 = tail call i32 @constrain_operands(i32 noundef 1) #20
  %9 = load i32, ptr @which_alternative, align 4, !tbaa !284
  tail call void @preprocess_constraints() #20
  call fastcc void @get_asm_operands_in_out(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !517
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = zext nneg i8 %12 to i64
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !247
  %18 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %17) #20
  store ptr %18, ptr %6, align 8, !tbaa !234
  br label %297

19:                                               ; preds = %14, %33
  %20 = phi i64 [ 0, %14 ], [ %34, %33 ]
  %21 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !247
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !234
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store ptr %28, ptr %21, align 8, !tbaa !247
  br label %33

33:                                               ; preds = %19, %26, %32
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %19, !llvm.loop !655

36:                                               ; preds = %33, %11
  %37 = load i32, ptr %7, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 15
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !234
  %43 = load i32, ptr %42, align 8, !tbaa !257
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
  %54 = load ptr, ptr %53, align 8, !tbaa !247
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 25
  br i1 %57, label %58, label %85

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !234
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 39
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !234
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
  store ptr %74, ptr %83, align 8, !tbaa !247
  %84 = add nsw i32 %52, 1
  br label %85

85:                                               ; preds = %72, %77, %81, %50
  %86 = phi i32 [ %52, %50 ], [ %84, %81 ], [ %52, %77 ], [ %52, %72 ]
  %87 = add nuw nsw i64 %51, 1
  %88 = icmp eq i64 %87, %49
  br i1 %88, label %89, label %50, !llvm.loop !656

89:                                               ; preds = %85, %40, %36
  %90 = phi i32 [ 0, %36 ], [ 0, %40 ], [ %86, %85 ]
  %91 = phi ptr [ null, %36 ], [ %46, %40 ], [ %46, %85 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) %2, i8 0, i64 53, i1 false)
  %92 = load i32, ptr %5, align 4, !tbaa !284
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
  %105 = load ptr, ptr %104, align 8, !tbaa !247
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
  %115 = load i32, ptr %114, align 8, !tbaa !523
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [27 x i32], ptr @reg_class_size, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !284
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
  %128 = load ptr, ptr %127, align 8, !tbaa !247
  %129 = tail call fastcc i32 @rhs_regno(ptr noundef %128) #19
  %130 = icmp eq i32 %122, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = trunc i64 %126 to i32
  %133 = zext i32 %122 to i64
  %134 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !247
  %136 = trunc i64 %102 to i32
  tail call void (ptr, ptr, ...) @error_for_asm(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %136, ptr noundef %135) #20
  br label %140

137:                                              ; preds = %125
  %138 = add nuw nsw i64 %126, 1
  %139 = icmp eq i64 %138, %98
  br i1 %139, label %144, label %125, !llvm.loop !657

140:                                              ; preds = %120, %131
  %141 = phi i32 [ %132, %131 ], [ 0, %120 ]
  %142 = phi i32 [ 1, %131 ], [ %103, %120 ]
  %143 = icmp eq i32 %141, %90
  br i1 %143, label %144, label %150

144:                                              ; preds = %137, %140
  %145 = phi i32 [ %142, %140 ], [ %103, %137 ]
  %146 = load ptr, ptr %104, align 8, !tbaa !247
  %147 = tail call fastcc i32 @rhs_regno(ptr noundef %146) #19
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %148
  store i8 1, ptr %149, align 1, !tbaa !234
  br label %150

150:                                              ; preds = %140, %144, %101, %109, %123
  %151 = phi i32 [ 1, %123 ], [ %103, %109 ], [ %103, %101 ], [ %145, %144 ], [ %142, %140 ]
  %152 = add nuw nsw i64 %102, 1
  %153 = icmp eq i64 %152, %97
  br i1 %153, label %99, label %101, !llvm.loop !658

154:                                              ; preds = %99, %159
  %155 = phi i64 [ 8, %99 ], [ %160, %159 ]
  %156 = getelementptr inbounds [53 x i8], ptr %2, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !234
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = add nuw nsw i64 %155, 1
  %161 = icmp eq i64 %160, 16
  br i1 %161, label %182, label %154, !llvm.loop !659

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
  %173 = load i8, ptr %172, align 1, !tbaa !234
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = add nuw nsw i64 %171, 1
  %177 = icmp eq i64 %176, 16
  br i1 %177, label %178, label %170, !llvm.loop !660

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
  %184 = load i32, ptr %4, align 4, !tbaa !284
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
  %196 = load ptr, ptr %195, align 8, !tbaa !247
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
  br i1 %207, label %215, label %208, !llvm.loop !661

208:                                              ; preds = %204, %205
  %209 = phi i64 [ %206, %205 ], [ 0, %204 ]
  %210 = getelementptr inbounds ptr, ptr %91, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !247
  %212 = load ptr, ptr %195, align 8, !tbaa !247
  %213 = tail call i32 @operands_match_p(ptr noundef %211, ptr noundef %212) #20
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %205, label %219

215:                                              ; preds = %205, %204
  %216 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %194, i64 %189, i32 3
  %217 = load i32, ptr %216, align 16, !tbaa !530
  %218 = icmp sgt i32 %217, -1
  br i1 %218, label %219, label %224

219:                                              ; preds = %208, %215
  %220 = load ptr, ptr %195, align 8, !tbaa !247
  %221 = tail call fastcc i32 @rhs_regno(ptr noundef %220) #19
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %222
  store i8 1, ptr %223, align 1, !tbaa !234
  br label %224

224:                                              ; preds = %215, %219, %193, %200
  %225 = add nsw i64 %194, 1
  %226 = icmp slt i64 %225, %191
  br i1 %226, label %193, label %227, !llvm.loop !662

227:                                              ; preds = %224, %182
  br label %228

228:                                              ; preds = %227, %233
  %229 = phi i64 [ %234, %233 ], [ 8, %227 ]
  %230 = getelementptr inbounds [53 x i8], ptr %3, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !234
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = add nuw nsw i64 %229, 1
  %235 = icmp eq i64 %234, 16
  br i1 %235, label %256, label %228, !llvm.loop !663

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
  %247 = load i8, ptr %246, align 1, !tbaa !234
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = add nuw nsw i64 %245, 1
  %251 = icmp eq i64 %250, 16
  br i1 %251, label %252, label %244, !llvm.loop !664

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
  %268 = load i32, ptr %267, align 16, !tbaa !530
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
  %277 = load ptr, ptr %276, align 8, !tbaa !247
  %278 = load ptr, ptr %272, align 8, !tbaa !247
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
  br i1 %286, label %287, label %273, !llvm.loop !665

287:                                              ; preds = %283, %264
  %288 = phi i32 [ %266, %264 ], [ %284, %283 ]
  %289 = add nsw i64 %265, 1
  %290 = icmp slt i64 %289, %262
  br i1 %290, label %264, label %291, !llvm.loop !666

291:                                              ; preds = %287, %256
  %292 = phi i32 [ %257, %256 ], [ %288, %287 ]
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !247
  %296 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %295) #20
  store ptr %296, ptr %6, align 8, !tbaa !234
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
define internal fastcc void @get_asm_operands_in_out(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !468 !PGOFuncName !667 {
  %4 = tail call ptr @extract_asm_operands(ptr noundef %0) #20
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !234
  %7 = load i32, ptr %6, align 8, !tbaa !257
  store i32 %7, ptr %2, align 4, !tbaa !284
  %8 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !517
  %9 = sext i8 %8 to i32
  %10 = load ptr, ptr %5, align 8, !tbaa !234
  %11 = load i32, ptr %10, align 8, !tbaa !257
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !234
  %14 = load i32, ptr %13, align 8, !tbaa !257
  %15 = add i32 %11, %14
  %16 = sub i32 %9, %15
  store i32 %16, ptr %1, align 4, !tbaa !284
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
define internal fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !468 !PGOFuncName !668 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %2) #19
  %5 = add i32 %4, -8
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 %6, i64 38
  %8 = load ptr, ptr %7, align 8, !tbaa !247
  %9 = load ptr, ptr @not_a_num, align 8, !tbaa !247
  %10 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %8, ptr noundef %9) #20
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !234
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %12, align 8, !tbaa !234
  %13 = tail call fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %10) #19
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @move_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !669 !PGOFuncName !670 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %5) #19
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %8 = load ptr, ptr %6, align 8, !tbaa !247
  %9 = load ptr, ptr %7, align 8, !tbaa !247
  %10 = load i32, ptr %8, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %140, !prof !671

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %15 = and i32 %14, -8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %109, !prof !545

17:                                               ; preds = %13
  %18 = load i32, ptr %9, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %109, !prof !672

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %23 = and i32 %22, -8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %109, !prof !673

25:                                               ; preds = %21
  %26 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %14) #20
  %27 = icmp eq ptr %26, null
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %29 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %30 = icmp eq i32 %28, %29
  br i1 %27, label %82, label %31, !prof !674

31:                                               ; preds = %25
  br i1 %30, label %32, label %33, !prof !675

32:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 968, ptr noundef nonnull @.str.4) #20
  br label %33

33:                                               ; preds = %31, %32
  %34 = load i32, ptr %1, align 8, !tbaa !383
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %48, !prof !386

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  br label %38

38:                                               ; preds = %36, %45
  %39 = phi i32 [ %34, %36 ], [ %46, %45 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !234
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %37, %43
  br i1 %44, label %48, label %45, !prof !676

45:                                               ; preds = %38
  %46 = add nsw i32 %39, -1
  %47 = icmp sgt i32 %39, 0
  br i1 %47, label %38, label %48, !prof !677, !llvm.loop !678

48:                                               ; preds = %45, %38, %33
  %49 = phi i32 [ %34, %33 ], [ %39, %38 ], [ -1, %45 ]
  %50 = tail call fastcc i32 @get_hard_regnum(ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %53, label %52, !prof !679

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 975, ptr noundef nonnull @.str.4) #20
  br label %53

53:                                               ; preds = %48, %52
  %54 = icmp slt i32 %49, 0
  br i1 %54, label %55, label %57, !prof !675

55:                                               ; preds = %53
  %56 = tail call fastcc zeroext i8 @move_nan_for_stack_reg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #19
  br label %199

57:                                               ; preds = %53
  %58 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %59 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %58) #20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61, !prof !679

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 0) #19
  br label %79

63:                                               ; preds = %57
  %64 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %65 = trunc i32 %64 to i8
  %66 = zext nneg i32 %49 to i64
  %67 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %66
  store i8 %65, ptr %67, align 1, !tbaa !234
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !385
  %73 = or i64 %70, %72
  store i64 %73, ptr %71, align 8, !tbaa !385
  %74 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %75 = zext nneg i32 %74 to i64
  %76 = shl nuw i64 1, %75
  %77 = xor i64 %76, -1
  %78 = and i64 %73, %77
  store i64 %78, ptr %71, align 8, !tbaa !385
  br label %79

79:                                               ; preds = %63, %61
  %80 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %0) #20
  %81 = tail call ptr @delete_insn(ptr noundef %0) #20
  br label %199

82:                                               ; preds = %25
  br i1 %30, label %83, label %91, !prof !680

83:                                               ; preds = %82
  %84 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 6, i32 noundef %28) #20
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !681

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
  br i1 %93, label %95, label %94, !prof !682

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1017, ptr noundef nonnull @.str.4) #20
  br label %95

95:                                               ; preds = %91, %94
  %96 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %8) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef %96) #19
  %97 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %98 = trunc i32 %97 to i8
  %99 = load i32, ptr %1, align 8, !tbaa !383
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %1, align 8, !tbaa !383
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %101
  store i8 %98, ptr %102, align 1, !tbaa !234
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %104 = zext nneg i32 %103 to i64
  %105 = shl nuw i64 1, %104
  %106 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !385
  %108 = or i64 %105, %107
  store i64 %108, ptr %106, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8) #19
  br label %199

109:                                              ; preds = %21, %17, %13
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %111 = and i32 %110, -8
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %140, !prof !683

113:                                              ; preds = %109
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #19
  %114 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %115 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %114) #20
  %116 = icmp eq ptr %115, null
  br i1 %116, label %128, label %117, !prof !684

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  tail call fastcc void @replace_reg(ptr noundef nonnull %118, i32 noundef 8) #19
  %119 = load i32, ptr %1, align 8, !tbaa !383
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %1, align 8, !tbaa !383
  %121 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = xor i64 %123, -1
  %125 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !385
  %127 = and i64 %126, %124
  store i64 %127, ptr %125, align 8, !tbaa !385
  br label %139

128:                                              ; preds = %113
  %129 = load i32, ptr %8, align 8
  %130 = and i32 %129, 16711680
  %131 = icmp eq i32 %130, 2621440
  br i1 %131, label %132, label %139, !prof !685

132:                                              ; preds = %128
  %133 = load i32, ptr %1, align 8, !tbaa !383
  %134 = icmp slt i32 %133, 7
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load ptr, ptr getelementptr inbounds ([8 x [87 x ptr]], ptr @FP_mode_reg, i64 0, i64 0, i64 40), align 16, !tbaa !247
  %137 = tail call ptr @gen_movxf(ptr noundef %136, ptr noundef %136) #20
  %138 = tail call ptr @emit_insn_before(ptr noundef %137, ptr noundef %0) #20
  tail call void @add_reg_note(ptr noundef %0, i32 noundef 1, ptr noundef %136) #20
  br label %139

139:                                              ; preds = %128, %132, %135, %117
  tail call fastcc void @replace_reg(ptr noundef nonnull %6, i32 noundef 8) #19
  br label %199

140:                                              ; preds = %3, %109
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !234
  %143 = load i32, ptr %9, align 8
  %144 = and i32 %143, 65535
  %145 = icmp eq i32 %144, 37
  br i1 %145, label %146, label %150, !prof !686

146:                                              ; preds = %140
  %147 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %148 = and i32 %147, -8
  %149 = icmp eq i32 %148, 8
  br i1 %149, label %151, label %150, !prof !686

150:                                              ; preds = %146, %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1064, ptr noundef nonnull @.str.4) #20
  br label %151

151:                                              ; preds = %146, %150
  %152 = load i32, ptr %142, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 15
  br i1 %154, label %155, label %177, !prof !687

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !234
  %158 = load i32, ptr %157, align 8, !tbaa !257
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %157, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !247
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 23
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 1
  %168 = load ptr, ptr %167, align 8, !tbaa !234
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 65535
  %171 = icmp eq i32 %170, 18
  br i1 %171, label %172, label %177

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %174 = load i32, ptr %173, align 8, !tbaa !234
  %175 = icmp eq i32 %174, 68
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  tail call fastcc void @emit_swap_insn(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %9) #19
  br label %181

177:                                              ; preds = %172, %166, %160, %155, %151
  %178 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %9) #19
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %181, label %180, !prof !686

180:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1082, ptr noundef nonnull @.str.4) #20
  br label %181

181:                                              ; preds = %180, %177, %176
  %182 = load i32, ptr %1, align 8, !tbaa !383
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %186, label %184, !prof !686

184:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1084, ptr noundef nonnull @.str.4) #20
  %185 = load i32, ptr %1, align 8, !tbaa !383
  br label %186

186:                                              ; preds = %181, %184
  %187 = phi i32 [ %182, %181 ], [ %185, %184 ]
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %189 = trunc i32 %188 to i8
  %190 = add nsw i32 %187, 1
  store i32 %190, ptr %1, align 8, !tbaa !383
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 2, i64 %191
  store i8 %189, ptr %192, align 1, !tbaa !234
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %194 = zext nneg i32 %193 to i64
  %195 = shl nuw i64 1, %194
  %196 = getelementptr inbounds %struct.stack_def, ptr %1, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !385
  %198 = or i64 %195, %197
  store i64 %198, ptr %196, align 8, !tbaa !385
  tail call fastcc void @replace_reg(ptr noundef nonnull %7, i32 noundef 8) #19
  br label %199

199:                                              ; preds = %95, %186, %139, %55, %79, %88
  %200 = phi i8 [ %89, %88 ], [ %56, %55 ], [ %80, %79 ], [ 0, %139 ], [ 0, %186 ], [ 0, %95 ]
  ret i8 %200
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compare_for_stack_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !688 !PGOFuncName !689 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %5 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %5, align 8, !tbaa !247
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %28, !prof !570

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #19
  %14 = and i32 %13, -8
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %16, label %28, !prof !570

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 8, !tbaa !247
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 37
  br i1 %20, label %21, label %37, !prof !570

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #19
  %23 = and i32 %22, -8
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %37, !prof !570

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %17) #19
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %37, !prof !690

28:                                               ; preds = %25, %12, %3
  %29 = tail call fastcc i32 @swap_rtx_condition(ptr noundef %0) #19, !range !275
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31, !prof !676

31:                                               ; preds = %28
  %32 = load <2 x ptr>, ptr %4, align 8, !tbaa !234
  %33 = shufflevector <2 x ptr> %32, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %33, ptr %4, align 8, !tbaa !234
  %34 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %4) #19
  %35 = tail call fastcc ptr @get_true_reg(ptr noundef nonnull %6) #19
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 -1, ptr %36, align 8, !tbaa !234
  br label %37

37:                                               ; preds = %31, %28, %25, %21, %16
  %38 = phi ptr [ %35, %31 ], [ %7, %28 ], [ %7, %25 ], [ %7, %21 ], [ %7, %16 ]
  %39 = phi ptr [ %34, %31 ], [ %5, %28 ], [ %5, %25 ], [ %5, %21 ], [ %5, %16 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !247
  %41 = tail call fastcc i32 @rhs_regno(ptr noundef %40) #19
  %42 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %41) #20
  %43 = load ptr, ptr %38, align 8, !tbaa !247
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %53, !prof !570

47:                                               ; preds = %37
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %43) #19
  %49 = and i32 %48, -8
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %53, !prof !570

51:                                               ; preds = %47
  %52 = tail call ptr @find_regno_note(ptr noundef %0, i32 noundef 1, i32 noundef %48) #20
  br label %53

53:                                               ; preds = %37, %47, %51
  %54 = phi ptr [ %52, %51 ], [ null, %47 ], [ null, %37 ]
  %55 = load ptr, ptr %39, align 8, !tbaa !247
  tail call fastcc void @emit_swap_insn(ptr noundef %0, ptr noundef %1, ptr noundef %55) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %39, i32 noundef 8) #19
  %56 = load ptr, ptr %38, align 8, !tbaa !247
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %66, !prof !570

60:                                               ; preds = %53
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %56) #19
  %62 = and i32 %61, -8
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %64, label %66, !prof !570

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef nonnull %56) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %38, i32 noundef %65) #19
  br label %66

66:                                               ; preds = %64, %60, %53
  %67 = icmp ne ptr %42, null
  br i1 %67, label %68, label %72, !prof !691

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !234
  %71 = tail call fastcc i32 @rhs_regno(ptr noundef %70) #19
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %71) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %69, i32 noundef 8) #19
  br label %72

72:                                               ; preds = %68, %66
  %73 = icmp eq ptr %54, null
  br i1 %73, label %107, label %74, !prof !692

74:                                               ; preds = %72
  %75 = load ptr, ptr %39, align 8, !tbaa !247
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %95, !prof !693

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #19
  %81 = and i32 %80, -8
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %95, !prof !693

83:                                               ; preds = %79
  %84 = load ptr, ptr %38, align 8, !tbaa !247
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %95, !prof !693

88:                                               ; preds = %83
  %89 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %84) #19
  %90 = and i32 %89, -8
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %95, !prof !693

92:                                               ; preds = %88
  %93 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #19
  %94 = icmp eq i32 %93, %89
  br i1 %94, label %107, label %95, !prof !694

95:                                               ; preds = %92, %88, %83, %79, %74
  %96 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !234
  %98 = tail call fastcc i32 @get_hard_regnum(ptr noundef %1, ptr noundef %97) #19
  %99 = icmp eq i32 %98, 8
  %100 = and i1 %67, %99
  %101 = load ptr, ptr %96, align 8, !tbaa !234
  %102 = tail call fastcc i32 @rhs_regno(ptr noundef %101) #19
  br i1 %100, label %103, label %104, !prof !695

103:                                              ; preds = %95
  tail call fastcc void @pop_stack(ptr noundef %1, i32 noundef %102) #19
  tail call fastcc void @replace_reg(ptr noundef nonnull %96, i32 noundef 9) #19
  br label %107

104:                                              ; preds = %95
  tail call fastcc void @remove_regno_note(ptr noundef %0, i32 noundef %102) #19
  %105 = load ptr, ptr %96, align 8, !tbaa !234
  %106 = tail call fastcc ptr @emit_pop_insn(ptr noundef %0, ptr noundef %1, ptr noundef %105, i32 noundef 0) #19
  br label %107

107:                                              ; preds = %103, %104, %92, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_regno_note(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !696 !PGOFuncName !697 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !234
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6, !prof !384

6:                                                ; preds = %2, %24
  %7 = phi ptr [ %26, %24 ], [ %4, %2 ]
  %8 = phi ptr [ %25, %24 ], [ %3, %2 ]
  %9 = load i32, ptr %7, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 65536
  br i1 %11, label %12, label %24, !prof !679

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !234
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %24, !prof !679

18:                                               ; preds = %12
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #19
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %24, !prof !679

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !234
  store ptr %23, ptr %8, align 8, !tbaa !247
  br label %29

24:                                               ; preds = %18, %12, %6
  %25 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %6, !prof !698, !llvm.loop !699

28:                                               ; preds = %24, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 719, ptr noundef nonnull @.str.4) #20
  br label %29

29:                                               ; preds = %28, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @swap_to_top(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !468 !PGOFuncName !700 {
  %5 = alloca %struct.stack_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !427
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
  %12 = load i32, ptr %5, align 8, !tbaa !383
  %13 = sub i32 %12, %6
  %14 = add i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !234
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !234
  store i8 %20, ptr %16, align 1, !tbaa !234
  store i8 %17, ptr %19, align 1, !tbaa !234
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
  %28 = load i32, ptr %5, align 8, !tbaa !383
  %29 = sub i32 %28, %22
  %30 = add i32 %29, 8
  %31 = add nsw i32 %28, -1
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !234
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds %struct.stack_def, ptr %5, i64 0, i32 2, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !234
  store i8 %37, ptr %33, align 1, !tbaa !234
  store i8 %34, ptr %36, align 1, !tbaa !234
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
define internal fastcc noundef i32 @swap_rtx_condition(ptr noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !234
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %23, !prof !703

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !234
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %23, !prof !703

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #19
  %15 = icmp eq i32 %14, 17
  br i1 %15, label %16, label %23, !prof !704

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %0) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %121, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %19, %13, %7, %1
  %24 = phi i32 [ %22, %19 ], [ %4, %13 ], [ %4, %7 ], [ %4, %1 ]
  %25 = phi ptr [ %17, %19 ], [ %0, %13 ], [ %0, %7 ], [ %0, %1 ]
  %26 = phi ptr [ %21, %19 ], [ %3, %13 ], [ %3, %7 ], [ %3, %1 ]
  %27 = and i32 %24, 65535
  %28 = icmp eq i32 %27, 23
  br i1 %28, label %29, label %100, !prof !703

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !234
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 18
  br i1 %35, label %36, label %100, !prof !703

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i32, ptr %37, align 8, !tbaa !234
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %100, !prof !703

40:                                               ; preds = %36
  %41 = load ptr, ptr %30, align 8, !tbaa !234
  %42 = load ptr, ptr @current_block, align 8, !tbaa !247
  br label %43

43:                                               ; preds = %64, %40
  %44 = phi ptr [ %42, %40 ], [ %66, %64 ]
  %45 = phi ptr [ %25, %40 ], [ %53, %64 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !234
  %48 = getelementptr inbounds %struct.rtl_bb_info, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !430
  %50 = icmp eq ptr %45, %49
  br i1 %50, label %121, label %51, !prof !704

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !234
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %64, !prof !705

58:                                               ; preds = %51
  %59 = tail call i32 @reg_mentioned_p(ptr noundef %41, ptr noundef nonnull %53) #20
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr @current_block, align 8, !tbaa !247
  br i1 %60, label %62, label %69, !prof !704

62:                                               ; preds = %58
  %63 = load i32, ptr %53, align 8
  br label %64

64:                                               ; preds = %62, %51
  %65 = phi i32 [ %54, %51 ], [ %63, %62 ]
  %66 = phi ptr [ %44, %51 ], [ %61, %62 ]
  %67 = and i32 %65, 65535
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %121, label %43, !llvm.loop !706

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !234
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !430
  %74 = icmp eq ptr %53, %73
  br i1 %74, label %121, label %75, !prof !382

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !234
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 23
  br i1 %80, label %81, label %121, !prof !703

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !234
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 18
  br i1 %86, label %87, label %121, !prof !703

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !234
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %121, !prof !703

91:                                               ; preds = %87
  %92 = tail call i32 @dead_or_set_p(ptr noundef nonnull %53, ptr noundef %41) #20
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %121, label %94, !prof !704

94:                                               ; preds = %91
  %95 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %53) #19
  %96 = icmp eq ptr %95, null
  br i1 %96, label %121, label %97, !prof !704

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !234
  br label %100

100:                                              ; preds = %97, %36, %29, %23
  %101 = phi ptr [ %95, %97 ], [ %25, %36 ], [ %25, %29 ], [ %25, %23 ]
  %102 = phi ptr [ %99, %97 ], [ %26, %36 ], [ %26, %29 ], [ %26, %23 ]
  %103 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %102) #19, !range !275
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105, !prof !704

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 1, i32 1
  store i32 -1, ptr %106, align 8, !tbaa !234
  %107 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %101) #19
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %119, label %109, !prof !707

109:                                              ; preds = %105
  %110 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !247
  %111 = tail call i32 @dead_or_set_p(ptr noundef nonnull %101, ptr noundef %110) #20
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121, !prof !708

113:                                              ; preds = %109
  %114 = tail call fastcc ptr @next_flags_user(ptr noundef nonnull %101) #19
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116, !prof !709

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @swap_rtx_condition(ptr noundef nonnull %114) #19, !range !275
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %116, %105
  %120 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %102) #19, !range !275
  br label %121

121:                                              ; preds = %43, %64, %94, %75, %81, %87, %91, %69, %100, %119, %109, %116, %16
  %122 = phi i32 [ 0, %16 ], [ 0, %119 ], [ 1, %109 ], [ 1, %116 ], [ 0, %100 ], [ 0, %69 ], [ 0, %91 ], [ 0, %87 ], [ 0, %81 ], [ 0, %75 ], [ 0, %94 ], [ 0, %64 ], [ 0, %43 ]
  ret i32 %122
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @pop_stack(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #16 !prof !710 !PGOFuncName !711 {
  %3 = load i32, ptr %0, align 8, !tbaa !383
  %4 = zext nneg i32 %1 to i64
  %5 = shl nuw i64 1, %4
  %6 = xor i64 %5, -1
  %7 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !385
  %9 = and i64 %8, %6
  store i64 %9, ptr %7, align 8, !tbaa !385
  %10 = add nsw i32 %3, -1
  store i32 %10, ptr %0, align 8, !tbaa !383
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !234
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, %1
  %16 = icmp sgt i32 %3, 0
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %38, !prof !501

18:                                               ; preds = %2, %35
  %19 = phi i32 [ %36, %35 ], [ %10, %2 ]
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !234
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
  %31 = load i8, ptr %30, align 1, !tbaa !234
  %32 = getelementptr inbounds %struct.stack_def, ptr %0, i64 0, i32 2, i64 %28
  store i8 %31, ptr %32, align 1, !tbaa !234
  %33 = trunc i64 %29 to i32
  %34 = icmp sgt i32 %3, %33
  br i1 %34, label %27, label %38, !llvm.loop !712

35:                                               ; preds = %18
  %36 = add nsw i32 %19, -1
  %37 = icmp sgt i32 %19, 0
  br i1 %37, label %18, label %38, !llvm.loop !713

38:                                               ; preds = %35, %27, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @next_flags_user(ptr noundef readonly %0) unnamed_addr #0 !prof !714 !PGOFuncName !715 {
  %2 = load ptr, ptr @current_block, align 8, !tbaa !247
  br label %3

3:                                                ; preds = %28, %1
  %4 = phi ptr [ %2, %1 ], [ %30, %28 ]
  %5 = phi ptr [ %0, %1 ], [ %13, %28 ]
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !430
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %32, label %11, !prof !649

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !234
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -7
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %28, !prof !716

18:                                               ; preds = %11
  %19 = load ptr, ptr @ix86_flags_rtx, align 8, !tbaa !247
  %20 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !234
  %22 = tail call i32 @reg_mentioned_p(ptr noundef %19, ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32, !prof !704

24:                                               ; preds = %18
  %25 = load ptr, ptr @current_block, align 8, !tbaa !247
  %26 = load i32, ptr %13, align 8
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %24, %11
  %29 = phi i32 [ %27, %24 ], [ %15, %11 ]
  %30 = phi ptr [ %25, %24 ], [ %4, %11 ]
  %31 = icmp eq i32 %29, 10
  br i1 %31, label %32, label %3, !llvm.loop !717

32:                                               ; preds = %3, %28, %18
  %33 = phi ptr [ %13, %18 ], [ null, %28 ], [ null, %3 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @dead_or_set_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @swap_rtx_condition_1(ptr nocapture noundef %0) unnamed_addr #0 !prof !718 !PGOFuncName !719 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !284
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %14, !prof !720

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
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %4
  %18 = load i8, ptr %17, align 1, !tbaa !234
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %54, label %20, !prof !721

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = zext i8 %18 to i64
  br label %23

23:                                               ; preds = %20, %51
  %24 = phi i64 [ %22, %20 ], [ %26, %51 ]
  %25 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds i8, ptr %16, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !234
  switch i8 %28, label %51 [
    i8 69, label %29
    i8 101, label %46
  ], !prof !722

29:                                               ; preds = %23
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !234
  %32 = load i32, ptr %31, align 8, !tbaa !257
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = zext nneg i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ %35, %34 ], [ %39, %36 ]
  %38 = phi i32 [ %25, %34 ], [ %44, %36 ]
  %39 = add nsw i64 %37, -1
  %40 = load ptr, ptr %30, align 8, !tbaa !234
  %41 = getelementptr inbounds %struct.rtvec_def, ptr %40, i64 0, i32 1, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !247
  %43 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %42) #19, !range !275
  %44 = or i32 %43, %38
  %45 = icmp ugt i64 %37, 1
  br i1 %45, label %36, label %51, !llvm.loop !723

46:                                               ; preds = %23
  %47 = getelementptr inbounds [1 x %union.rtunion_def], ptr %21, i64 0, i64 %26
  %48 = load ptr, ptr %47, align 8, !tbaa !234
  %49 = tail call fastcc i32 @swap_rtx_condition_1(ptr noundef %48) #19, !range !275
  %50 = or i32 %49, %25
  br label %51

51:                                               ; preds = %36, %29, %23, %46
  %52 = phi i32 [ %50, %46 ], [ %25, %23 ], [ %25, %29 ], [ %44, %36 ]
  %53 = icmp sgt i64 %24, 1
  br i1 %53, label %23, label %54, !prof !724, !llvm.loop !725

54:                                               ; preds = %51, %14, %8
  %55 = phi i32 [ 1, %8 ], [ 0, %14 ], [ %52, %51 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !726 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !234
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !703

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !234
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #20
  store i32 %8, ptr %2, align 8, !tbaa !234
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
define internal fastcc noundef zeroext i8 @compensate_edge(ptr noundef %0) unnamed_addr #0 !prof !727 !PGOFuncName !728 {
  %2 = alloca %struct.stack_def, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !307
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !356
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !299
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !299
  %10 = getelementptr inbounds %struct.block_info_def, ptr %9, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !729

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !315
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !315
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.22, i32 noundef %15, i32 noundef %17) #19
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, ptr %7, align 8, !tbaa !383
  %21 = icmp eq i32 %20, -2
  br i1 %21, label %22, label %24, !prof !730

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2741, ptr noundef nonnull @.str.4) #20
  %23 = load i32, ptr %7, align 8, !tbaa !383
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %20, %19 ], [ %23, %22 ]
  %26 = load i32, ptr %10, align 8, !tbaa !383
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48, !prof !731

28:                                               ; preds = %24
  %29 = icmp sgt i32 %25, -1
  br i1 %29, label %30, label %41, !prof !732

30:                                               ; preds = %28, %38
  %31 = phi i32 [ %39, %38 ], [ %25, %28 ]
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds %struct.stack_def, ptr %7, i64 0, i32 2, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !234
  %35 = getelementptr inbounds %struct.block_info_def, ptr %9, i64 0, i32 1, i32 2, i64 %32
  %36 = load i8, ptr %35, align 1, !tbaa !234
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %38, label %48, !prof !733

38:                                               ; preds = %30
  %39 = add nsw i32 %31, -1
  %40 = icmp sgt i32 %31, 0
  br i1 %40, label %30, label %43, !prof !734, !llvm.loop !735

41:                                               ; preds = %28
  %42 = icmp eq i32 %25, -1
  br i1 %42, label %43, label %48, !prof !736

43:                                               ; preds = %38, %41
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %45 = icmp eq ptr %44, null
  br i1 %45, label %95, label %46, !prof !737

46:                                               ; preds = %43
  %47 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr nonnull %44)
  br label %95

48:                                               ; preds = %30, %41, %24
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !247
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !613

51:                                               ; preds = %48
  %52 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 20, i64 1, ptr nonnull %49)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !247
  tail call fastcc void @print_stack(ptr noundef %53, ptr noundef nonnull %7) #19
  br label %54

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !304
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59, !prof !613

59:                                               ; preds = %54
  %60 = load i32, ptr %10, align 8, !tbaa !383
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2772, ptr noundef nonnull @.str.4) #20
  br label %63

63:                                               ; preds = %59, %62
  %64 = load i32, ptr %7, align 8, !tbaa !383
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %95, label %66

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2773, ptr noundef nonnull @.str.4) #20
  br label %95

67:                                               ; preds = %54
  %68 = and i32 %56, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70, !prof !613

70:                                               ; preds = %67
  %71 = load i32, ptr %7, align 8, !tbaa !383
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2782, ptr noundef nonnull @.str.4) #20
  br label %95

74:                                               ; preds = %67
  %75 = and i32 %56, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !613

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2789, ptr noundef nonnull @.str.4) #20
  br label %78

78:                                               ; preds = %74, %77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !427
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !450
  %81 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %80) #19
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %92, !prof !581

83:                                               ; preds = %78
  store ptr %3, ptr @current_block, align 8, !tbaa !247
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 7
  %85 = load ptr, ptr %84, align 8, !tbaa !234
  %86 = getelementptr inbounds %struct.rtl_bb_info, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !430
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 9
  %91 = zext i1 %90 to i32
  call fastcc void @change_stack(ptr noundef nonnull %87, ptr noundef nonnull %2, ptr noundef nonnull %7, i32 noundef %91) #19
  br label %95

92:                                               ; preds = %78
  store ptr null, ptr @current_block, align 8, !tbaa !247
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!229}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!36 = !{ptr @stack_regs_mentioned, ptr @VEC_char_base_length, i64 23545}
!37 = !{ptr @stack_regs_mentioned, ptr @VEC_char_heap_safe_grow_cleared, i64 93}
!38 = !{ptr @stack_regs_mentioned, ptr @VEC_char_base_index, i64 23545}
!39 = !{ptr @stack_regs_mentioned, ptr @stack_regs_mentioned_p, i64 21479}
!40 = !{ptr @stack_regs_mentioned, ptr @VEC_char_base_replace, i64 21479}
!41 = !{ptr @VEC_char_heap_safe_grow_cleared, ptr @VEC_char_base_length, i64 92}
!42 = !{ptr @VEC_char_heap_safe_grow_cleared, ptr @VEC_char_heap_safe_grow, i64 92}
!43 = !{ptr @VEC_char_heap_safe_grow_cleared, ptr @VEC_char_base_address, i64 92}
!44 = !{ptr @stack_regs_mentioned_p, ptr @rhs_regno, i64 37044}
!45 = !{ptr @stack_regs_mentioned_p, ptr @stack_regs_mentioned_p, i64 109215}
!46 = !{ptr @VEC_char_heap_safe_grow, ptr @VEC_char_heap_reserve_exact, i64 92}
!47 = !{ptr @VEC_char_heap_reserve_exact, ptr @VEC_char_base_space, i64 92}
!48 = !{ptr @VEC_char_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 31}
!49 = !{ptr @rest_of_handle_stack_regs, ptr @reg_to_stack, i64 6652}
!50 = !{ptr @reg_to_stack, ptr @VEC_char_heap_free, i64 44}
!51 = !{ptr @reg_to_stack, ptr @df_regs_ever_live_p, i64 52944}
!52 = !{ptr @reg_to_stack, ptr @df_note_add_problem, i64 44}
!53 = !{ptr @reg_to_stack, ptr @df_analyze, i64 44}
!54 = !{ptr @reg_to_stack, ptr @mark_dfs_back_edges, i64 44}
!55 = !{ptr @reg_to_stack, ptr @alloc_aux_for_blocks, i64 44}
!56 = !{ptr @reg_to_stack, ptr @ei_start_1, i64 4388}
!57 = !{ptr @reg_to_stack, ptr @ei_cond, i64 11421}
!58 = !{ptr @reg_to_stack, ptr @ei_next, i64 7033}
!59 = !{ptr @reg_to_stack, ptr @df_lr_get_bb_info, i64 70198}
!60 = !{ptr @reg_to_stack, ptr @bitmap_bit_p, i64 70198}
!61 = !{ptr @reg_to_stack, ptr @gen_rtx_REG, i64 2800}
!62 = !{ptr @reg_to_stack, ptr @real_nan, i64 6}
!63 = !{ptr @reg_to_stack, ptr @const_double_from_real_value, i64 6}
!64 = !{ptr @reg_to_stack, ptr @force_const_mem, i64 6}
!65 = !{ptr @reg_to_stack, ptr @get_max_uid, i64 44}
!66 = !{ptr @reg_to_stack, ptr @VEC_char_heap_alloc, i64 44}
!67 = !{ptr @reg_to_stack, ptr @VEC_char_base_address, i64 44}
!68 = !{ptr @reg_to_stack, ptr @convert_regs, i64 44}
!69 = !{ptr @reg_to_stack, ptr @free_aux_for_blocks, i64 44}
!70 = !{ptr @VEC_char_heap_free, ptr @free, i64 42}
!71 = !{ptr @ei_cond, ptr @ei_end_p, i64 45766}
!72 = !{ptr @ei_cond, ptr @ei_edge, i64 28183}
!73 = !{ptr @ei_next, ptr @ei_container, i64 56365}
!74 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 28183}
!75 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!76 = !{ptr @VEC_char_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 43}
!77 = !{ptr @convert_regs, ptr @convert_regs_entry, i64 43}
!78 = !{ptr @convert_regs, ptr @convert_regs_exit, i64 43}
!79 = !{ptr @convert_regs, ptr @ei_start_1, i64 43}
!80 = !{ptr @convert_regs, ptr @ei_cond, i64 86}
!81 = !{ptr @convert_regs, ptr @convert_regs_2, i64 44}
!82 = !{ptr @convert_regs, ptr @ei_next, i64 43}
!83 = !{ptr @convert_regs, ptr @compensate_edges, i64 43}
!84 = !{ptr @convert_regs, ptr @clear_aux_for_blocks, i64 43}
!85 = !{ptr @convert_regs, ptr @fixup_abnormal_edges, i64 43}
!86 = !{ptr @convert_regs, ptr @commit_edge_insertions, i64 12}
!87 = !{ptr @convert_regs, ptr @fputc, i64 1}
!88 = !{ptr @ei_end_p, ptr @ei_container, i64 91531}
!89 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 45766}
!90 = !{ptr @ei_edge, ptr @ei_container, i64 56365}
!91 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 28183}
!92 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!93 = !{ptr @convert_regs_entry, ptr @ei_start_1, i64 43}
!94 = !{ptr @convert_regs_entry, ptr @ei_cond, i64 86}
!95 = !{ptr @convert_regs_entry, ptr @gen_rtx_fmt_ee_stat, i64 1}
!96 = !{ptr @convert_regs_entry, ptr @insert_insn_on_edge, i64 1}
!97 = !{ptr @convert_regs_entry, ptr @ei_next, i64 43}
!98 = !{ptr @convert_regs_exit, ptr @stack_result, i64 43}
!99 = !{ptr @convert_regs_exit, ptr @rhs_regno, i64 4}
!100 = !{ptr @convert_regs_exit, ptr @end_hard_regno, i64 4}
!101 = !{ptr @convert_regs_2, ptr @xmalloc, i64 43}
!102 = !{ptr @convert_regs_2, ptr @ei_start_1, i64 4287}
!103 = !{ptr @convert_regs_2, ptr @ei_cond, i64 11172}
!104 = !{ptr @convert_regs_2, ptr @ei_next, i64 6885}
!105 = !{ptr @convert_regs_2, ptr @convert_regs_1, i64 4287}
!106 = !{ptr @convert_regs_2, ptr @free, i64 43}
!107 = !{ptr @compensate_edges, ptr @ei_start_1, i64 4285}
!108 = !{ptr @compensate_edges, ptr @ei_cond, i64 11166}
!109 = !{ptr @compensate_edges, ptr @compensate_edge, i64 6881}
!110 = !{ptr @compensate_edges, ptr @ei_next, i64 6881}
!111 = !{ptr @stack_result, ptr @aggregate_value_p, i64 43}
!112 = !{ptr @stack_result, ptr @rhs_regno, i64 11}
!113 = !{ptr @convert_regs_1, ptr @ei_start_1, i64 4341}
!114 = !{ptr @convert_regs_1, ptr @ei_cond, i64 11324}
!115 = !{ptr @convert_regs_1, ptr @better_edge, i64 6572}
!116 = !{ptr @convert_regs_1, ptr @ei_next, i64 6983}
!117 = !{ptr @convert_regs_1, ptr @propagate_stack, i64 4340}
!118 = !{ptr @convert_regs_1, ptr @fprintf, i64 23}
!119 = !{ptr @convert_regs_1, ptr @print_stack, i64 3}
!120 = !{ptr @convert_regs_1, ptr @fancy_abort, i64 1}
!121 = !{ptr @convert_regs_1, ptr @stack_regs_mentioned, i64 29919}
!122 = !{ptr @convert_regs_1, ptr @subst_stack_regs, i64 2030}
!123 = !{ptr @convert_regs_1, ptr @for_each_rtx, i64 16}
!124 = !{ptr @convert_regs_1, ptr @fwrite, i64 2}
!125 = !{ptr @convert_regs_1, ptr @gen_rtx_fmt_ee_stat, i64 1}
!126 = !{ptr @convert_regs_1, ptr @emit_insn_after, i64 1}
!127 = !{ptr @convert_regs_1, ptr @purge_dead_edges, i64 1}
!128 = !{ptr @convert_regs_1, ptr @hard_reg_set_equal_p, i64 4385}
!129 = !{ptr @better_edge, ptr @VEC_edge_base_length, i64 2907}
!130 = !{ptr @subst_stack_regs, ptr @straighten_stack, i64 1}
!131 = !{ptr @subst_stack_regs, ptr @stack_regs_mentioned, i64 2028}
!132 = !{ptr @subst_stack_regs, ptr @asm_noperands, i64 818}
!133 = !{ptr @subst_stack_regs, ptr @subst_asm_stack_regs, i64 1}
!134 = !{ptr @subst_stack_regs, ptr @stack_regs_mentioned_p, i64 133}
!135 = !{ptr @subst_stack_regs, ptr @shallow_copy_rtx_stat, i64 2}
!136 = !{ptr @subst_stack_regs, ptr @subst_stack_regs_pat, i64 818}
!137 = !{ptr @subst_stack_regs, ptr @find_reg_note, i64 1213}
!138 = !{ptr @subst_stack_regs, ptr @rhs_regno, i64 315}
!139 = !{ptr @subst_stack_regs, ptr @emit_pop_insn, i64 1}
!140 = !{ptr @get_hard_regnum, ptr @rhs_regno, i64 3568}
!141 = !{ptr @get_hard_regnum, ptr @fancy_abort, i64 2}
!142 = !{ptr @replace_reg, ptr @fancy_abort, i64 3}
!143 = !{ptr @replace_reg, ptr @rhs_regno, i64 1517}
!144 = !{ptr @subst_stack_regs_pat, ptr @get_true_reg, i64 2092}
!145 = !{ptr @subst_stack_regs_pat, ptr @rhs_regno, i64 2347}
!146 = !{ptr @subst_stack_regs_pat, ptr @find_regno_note, i64 353}
!147 = !{ptr @subst_stack_regs_pat, ptr @fancy_abort, i64 21}
!148 = !{ptr @subst_stack_regs_pat, ptr @find_reg_note, i64 2}
!149 = !{ptr @subst_stack_regs_pat, ptr @remove_note, i64 1}
!150 = !{ptr @subst_stack_regs_pat, ptr @replace_reg, i64 695}
!151 = !{ptr @subst_stack_regs_pat, ptr @move_for_stack_reg, i64 515}
!152 = !{ptr @subst_stack_regs_pat, ptr @compare_for_stack_reg, i64 43}
!153 = !{ptr @subst_stack_regs_pat, ptr @emit_swap_insn, i64 130}
!154 = !{ptr @subst_stack_regs_pat, ptr @get_hard_regnum, i64 744}
!155 = !{ptr @subst_stack_regs_pat, ptr @gen_rtx_fmt_e_stat, i64 2}
!156 = !{ptr @subst_stack_regs_pat, ptr @emit_insn_before, i64 2}
!157 = !{ptr @subst_stack_regs_pat, ptr @move_nan_for_stack_reg, i64 2}
!158 = !{ptr @subst_stack_regs_pat, ptr @swap_to_top, i64 4}
!159 = !{ptr @subst_stack_regs_pat, ptr @remove_regno_note, i64 19}
!160 = !{ptr @subst_stack_regs_pat, ptr @emit_pop_insn, i64 19}
!161 = !{ptr @emit_pop_insn, ptr @rhs_regno, i64 131}
!162 = !{ptr @emit_pop_insn, ptr @get_hard_regnum, i64 133}
!163 = !{ptr @emit_pop_insn, ptr @emit_pop_insn, i64 2}
!164 = !{ptr @emit_pop_insn, ptr @fancy_abort, i64 2}
!165 = !{ptr @emit_pop_insn, ptr @gen_rtx_fmt_ee_stat, i64 129}
!166 = !{ptr @emit_pop_insn, ptr @emit_insn_after, i64 18}
!167 = !{ptr @emit_pop_insn, ptr @emit_insn_before, i64 111}
!168 = !{ptr @emit_pop_insn, ptr @add_reg_note, i64 129}
!169 = !{ptr @change_stack, ptr @gen_rtx_fmt_ee_stat, i64 1}
!170 = !{ptr @change_stack, ptr @emit_insn_before, i64 1}
!171 = !{ptr @change_stack, ptr @emit_pop_insn, i64 112}
!172 = !{ptr @change_stack, ptr @hard_reg_set_equal_p, i64 94}
!173 = !{ptr @change_stack, ptr @fancy_abort, i64 4}
!174 = !{ptr @change_stack, ptr @emit_swap_insn, i64 17}
!175 = !{ptr @emit_swap_insn, ptr @get_hard_regnum, i64 364}
!176 = !{ptr @emit_swap_insn, ptr @rhs_regno, i64 60}
!177 = !{ptr @emit_swap_insn, ptr @fancy_abort, i64 1}
!178 = !{ptr @emit_swap_insn, ptr @stack_regs_mentioned, i64 34}
!179 = !{ptr @emit_swap_insn, ptr @single_set_2, i64 1}
!180 = !{ptr @emit_swap_insn, ptr @get_true_reg, i64 62}
!181 = !{ptr @emit_swap_insn, ptr @find_regno_note, i64 2}
!182 = !{ptr @emit_swap_insn, ptr @gen_swapxf, i64 39}
!183 = !{ptr @emit_swap_insn, ptr @emit_insn_after, i64 29}
!184 = !{ptr @emit_swap_insn, ptr @emit_insn_before, i64 10}
!185 = !{ptr @move_for_stack_reg, ptr @get_true_reg, i64 1036}
!186 = !{ptr @move_for_stack_reg, ptr @rhs_regno, i64 1908}
!187 = !{ptr @move_for_stack_reg, ptr @find_regno_note, i64 244}
!188 = !{ptr @move_for_stack_reg, ptr @fancy_abort, i64 7}
!189 = !{ptr @move_for_stack_reg, ptr @get_hard_regnum, i64 369}
!190 = !{ptr @move_for_stack_reg, ptr @move_nan_for_stack_reg, i64 1}
!191 = !{ptr @move_for_stack_reg, ptr @emit_pop_insn, i64 2}
!192 = !{ptr @move_for_stack_reg, ptr @control_flow_insn_p, i64 23}
!193 = !{ptr @move_for_stack_reg, ptr @delete_insn, i64 23}
!194 = !{ptr @move_for_stack_reg, ptr @replace_reg, i64 687}
!195 = !{ptr @move_for_stack_reg, ptr @emit_swap_insn, i64 171}
!196 = !{ptr @compare_for_stack_reg, ptr @get_true_reg, i64 132}
!197 = !{ptr @compare_for_stack_reg, ptr @rhs_regno, i64 411}
!198 = !{ptr @compare_for_stack_reg, ptr @get_hard_regnum, i64 139}
!199 = !{ptr @compare_for_stack_reg, ptr @swap_rtx_condition, i64 22}
!200 = !{ptr @compare_for_stack_reg, ptr @find_regno_note, i64 122}
!201 = !{ptr @compare_for_stack_reg, ptr @emit_swap_insn, i64 62}
!202 = !{ptr @compare_for_stack_reg, ptr @replace_reg, i64 152}
!203 = !{ptr @compare_for_stack_reg, ptr @pop_stack, i64 30}
!204 = !{ptr @compare_for_stack_reg, ptr @remove_regno_note, i64 18}
!205 = !{ptr @compare_for_stack_reg, ptr @emit_pop_insn, i64 18}
!206 = !{ptr @remove_regno_note, ptr @rhs_regno, i64 19}
!207 = !{ptr @swap_rtx_condition, ptr @rhs_regno, i64 19}
!208 = !{ptr @swap_rtx_condition, ptr @next_flags_user, i64 18}
!209 = !{ptr @swap_rtx_condition, ptr @reg_mentioned_p, i64 18}
!210 = !{ptr @swap_rtx_condition, ptr @dead_or_set_p, i64 20}
!211 = !{ptr @swap_rtx_condition, ptr @swap_rtx_condition_1, i64 29}
!212 = !{ptr @swap_rtx_condition, ptr @recog_memoized, i64 16}
!213 = !{ptr @swap_rtx_condition, ptr @swap_rtx_condition, i64 1}
!214 = !{ptr @next_flags_user, ptr @reg_mentioned_p, i64 21}
!215 = !{ptr @swap_rtx_condition_1, ptr @swap_condition, i64 40}
!216 = !{ptr @swap_rtx_condition_1, ptr @swap_rtx_condition_1, i64 213}
!217 = !{ptr @recog_memoized, ptr @recog, i64 20}
!218 = !{ptr @compensate_edge, ptr @fprintf, i64 1}
!219 = !{ptr @compensate_edge, ptr @fancy_abort, i64 4}
!220 = !{ptr @compensate_edge, ptr @fwrite, i64 2}
!221 = !{ptr @compensate_edge, ptr @print_stack, i64 1}
!222 = !{ptr @compensate_edge, ptr @VEC_edge_base_length, i64 95}
!223 = !{ptr @compensate_edge, ptr @change_stack, i64 95}
!224 = !{ptr @compensate_edge, ptr @start_sequence, i64 89}
!225 = !{ptr @compensate_edge, ptr @emit_note, i64 89}
!226 = !{ptr @compensate_edge, ptr @get_insns, i64 89}
!227 = !{ptr @compensate_edge, ptr @end_sequence, i64 89}
!228 = !{ptr @compensate_edge, ptr @insert_insn_on_edge, i64 89}
!229 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!230 = !{!"function_entry_count", i64 31991}
!231 = !{!"branch_weights", i32 -29948215, i32 -2098488860}
!232 = !{!"branch_weights", i32 57240326, i32 198903940}
!233 = !{!"branch_weights", i32 1, i32 23546}
!234 = !{!235, !235, i64 0}
!235 = !{!"omnipotent char", !236, i64 0}
!236 = !{!"Simple C/C++ TBAA"}
!237 = !{!"branch_weights", i32 23454, i32 93}
!238 = !{!"branch_weights", i32 21480, i32 2067}
!239 = !{!"function_entry_count", i64 23729}
!240 = !{!"reg-stack.c:VEC_char_base_length"}
!241 = !{!"branch_weights", i32 1, i32 23730}
!242 = !{!243, !244, i64 0}
!243 = !{!"VEC_char_base", !244, i64 0, !244, i64 4, !235, i64 8}
!244 = !{!"int", !235, i64 0}
!245 = !{!"function_entry_count", i64 92}
!246 = !{!"reg-stack.c:VEC_char_heap_safe_grow_cleared"}
!247 = !{!248, !248, i64 0}
!248 = !{!"any pointer", !235, i64 0}
!249 = !{!"function_entry_count", i64 23545}
!250 = !{!"reg-stack.c:VEC_char_base_index"}
!251 = !{!"function_entry_count", i64 130252}
!252 = !{!"reg-stack.c:stack_regs_mentioned_p"}
!253 = !{!"branch_weights", i32 37045, i32 93209}
!254 = !{!"branch_weights", i32 864, i32 36182}
!255 = !{!"branch_weights", i32 1, i32 127994}
!256 = !{!"branch_weights", i32 -1796092467, i32 36441122, i32 1683220899}
!257 = !{!258, !244, i64 0}
!258 = !{!"rtvec_def", !244, i64 0, !235, i64 8}
!259 = !{!"branch_weights", i32 2148, i32 4530}
!260 = !{!"branch_weights", i32 4424, i32 107}
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.mustprogress"}
!263 = !{!"branch_weights", i32 102824, i32 1290}
!264 = !{!"branch_weights", i32 132935, i32 127994}
!265 = distinct !{!265, !262}
!266 = !{!"function_entry_count", i64 21479}
!267 = !{!"reg-stack.c:VEC_char_base_replace"}
!268 = !{!"reg-stack.c:VEC_char_heap_safe_grow"}
!269 = !{!"branch_weights", i32 1, i32 93}
!270 = !{}
!271 = !{!"function_entry_count", i64 135}
!272 = !{!"reg-stack.c:VEC_char_base_address"}
!273 = !{!"branch_weights", i32 1, i32 136}
!274 = !{!"reg-stack.c:VEC_char_heap_reserve_exact"}
!275 = !{i32 0, i32 2}
!276 = !{!"branch_weights", i32 32, i32 62}
!277 = !{!"reg-stack.c:VEC_char_base_space"}
!278 = !{!243, !244, i64 4}
!279 = !{!"function_entry_count", i64 48503}
!280 = !{!"reg-stack.c:rhs_regno"}
!281 = !{!"function_entry_count", i64 6652}
!282 = !{!"reg-stack.c:gate_handle_stack_regs"}
!283 = !{!"reg-stack.c:rest_of_handle_stack_regs"}
!284 = !{!244, !244, i64 0}
!285 = !{!"reg-stack.c:reg_to_stack"}
!286 = !{!"branch_weights", i32 6610, i32 44}
!287 = !{!"branch_weights", i32 6610, i32 46306}
!288 = distinct !{!288, !262}
!289 = !{!"branch_weights", i32 52873, i32 44}
!290 = !{!291, !248, i64 8}
!291 = !{!"function", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !244, i64 104, !244, i64 108, !244, i64 112, !244, i64 116, !244, i64 120, !244, i64 124, !248, i64 128, !244, i64 136, !244, i64 137, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 138, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139, !244, i64 139}
!292 = !{!293, !248, i64 0}
!293 = !{!"control_flow_graph", !248, i64 0, !248, i64 8, !248, i64 16, !244, i64 24, !244, i64 28, !244, i64 32, !248, i64 40, !244, i64 48, !235, i64 52, !235, i64 60, !244, i64 68, !244, i64 72}
!294 = !{!295, !248, i64 56}
!295 = !{!"basic_block_def", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !235, i64 32, !248, i64 48, !248, i64 56, !235, i64 64, !296, i64 72, !244, i64 80, !244, i64 84, !244, i64 88, !244, i64 92, !244, i64 96}
!296 = !{!"long", !235, i64 0}
!297 = !{!293, !248, i64 8}
!298 = !{!"branch_weights", i32 1, i32 175}
!299 = !{!295, !248, i64 16}
!300 = !{i64 0, i64 4, !284, i64 8, i64 8, !247}
!301 = !{i64 0, i64 8, !247}
!302 = !{i8 0, i8 2}
!303 = !{!"branch_weights", i32 1, i32 4385}
!304 = !{!305, !244, i64 48}
!305 = !{!"edge_def", !248, i64 0, !248, i64 8, !235, i64 16, !248, i64 24, !248, i64 32, !244, i64 40, !244, i64 44, !244, i64 48, !244, i64 52, !296, i64 56}
!306 = !{!"branch_weights", i32 6619, i32 411}
!307 = !{!305, !248, i64 0}
!308 = !{!"branch_weights", i32 44, i32 6576}
!309 = !{!310, !244, i64 60}
!310 = !{!"block_info_def", !311, i64 0, !311, i64 24, !296, i64 48, !244, i64 56, !244, i64 60}
!311 = !{!"stack_def", !244, i64 0, !296, i64 8, !235, i64 16}
!312 = !{!"branch_weights", i32 4385, i32 2644}
!313 = distinct !{!313, !262}
!314 = !{!310, !244, i64 0}
!315 = !{!295, !244, i64 80}
!316 = !{!317, !248, i64 24}
!317 = !{!"df_lr_bb_info", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24}
!318 = !{!"branch_weights", i32 34803, i32 279}
!319 = !{!310, !296, i64 48}
!320 = !{!317, !248, i64 16}
!321 = !{!"branch_weights", i32 34850, i32 232}
!322 = !{!310, !296, i64 8}
!323 = !{!"branch_weights", i32 4386, i32 30695}
!324 = distinct !{!324, !262}
!325 = !{!"branch_weights", i32 175, i32 17369}
!326 = distinct !{!326, !262}
!327 = !{!"branch_weights", i32 1, i32 344}
!328 = !{!"branch_weights", i32 344, i32 1033}
!329 = distinct !{!329, !262}
!330 = distinct !{!330, !262}
!331 = !{!"branch_weights", i32 44, i32 301}
!332 = distinct !{!332, !262}
!333 = !{!"function_entry_count", i64 43}
!334 = !{!"reg-stack.c:VEC_char_heap_free"}
!335 = !{!"branch_weights", i32 1, i32 44}
!336 = !{!"function_entry_count", i64 17583}
!337 = !{!"reg-stack.c:ei_start_1"}
!338 = !{!"function_entry_count", i64 45766}
!339 = !{!"reg-stack.c:ei_cond"}
!340 = !{!"branch_weights", i32 28184, i32 17584}
!341 = !{!"function_entry_count", i64 28183}
!342 = !{!"reg-stack.c:ei_next"}
!343 = !{!"branch_weights", i32 1, i32 28184}
!344 = !{!"branch_weights", i32 28184, i32 1}
!345 = !{!346, !244, i64 0}
!346 = !{!"", !244, i64 0, !248, i64 8}
!347 = !{!"function_entry_count", i64 70160}
!348 = !{!"reg-stack.c:df_lr_get_bb_info"}
!349 = !{!350, !244, i64 16}
!350 = !{!"dataflow", !248, i64 0, !248, i64 8, !244, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !244, i64 48, !235, i64 52, !235, i64 53, !235, i64 54}
!351 = !{!"branch_weights", i32 70161, i32 1}
!352 = !{!350, !248, i64 8}
!353 = !{!"reg-stack.c:VEC_char_heap_alloc"}
!354 = !{!"reg-stack.c:convert_regs"}
!355 = !{!310, !244, i64 56}
!356 = !{!305, !248, i64 8}
!357 = !{!"branch_weights", i32 175, i32 1}
!358 = distinct !{!358, !262}
!359 = !{!"branch_weights", i32 1, i32 4386}
!360 = distinct !{!360, !262}
!361 = !{!"branch_weights", i32 32, i32 13}
!362 = !{!"branch_weights", i32 44, i32 1}
!363 = !{!"reg-stack.c:ei_end_p"}
!364 = !{!"branch_weights", i32 1, i32 45767}
!365 = !{!"reg-stack.c:ei_edge"}
!366 = !{!"function_entry_count", i64 76959}
!367 = !{!"reg-stack.c:VEC_edge_base_length"}
!368 = !{!"branch_weights", i32 1, i32 76960}
!369 = !{!370, !244, i64 0}
!370 = !{!"VEC_edge_base", !244, i64 0, !244, i64 4, !235, i64 8}
!371 = !{!"function_entry_count", i64 204264}
!372 = !{!"reg-stack.c:ei_container"}
!373 = !{!"branch_weights", i32 1, i32 204265}
!374 = !{!"reg-stack.c:VEC_edge_base_index"}
!375 = !{!"reg-stack.c:convert_regs_entry"}
!376 = !{!"branch_weights", i32 345, i32 1}
!377 = !{!"branch_weights", i32 301, i32 44}
!378 = distinct !{!378, !262}
!379 = distinct !{!379, !262}
!380 = !{!"reg-stack.c:convert_regs_exit"}
!381 = !{!"branch_weights", i32 41, i32 4}
!382 = !{!"branch_weights", i32 0, i32 -2147483648}
!383 = !{!311, !244, i64 0}
!384 = !{!"branch_weights", i32 1, i32 127}
!385 = !{!311, !296, i64 8}
!386 = !{!"branch_weights", i32 127, i32 1}
!387 = distinct !{!387, !262}
!388 = !{!"reg-stack.c:convert_regs_2"}
!389 = !{!293, !244, i64 24}
!390 = !{!"branch_weights", i32 6633, i32 411}
!391 = !{!"branch_weights", i32 4343, i32 2291}
!392 = !{!"branch_weights", i32 4385, i32 2658}
!393 = distinct !{!393, !262}
!394 = !{!"branch_weights", i32 44, i32 4343}
!395 = distinct !{!395, !262}
!396 = !{!"reg-stack.c:compensate_edges"}
!397 = distinct !{!397, !262}
!398 = distinct !{!398, !262}
!399 = !{!"reg-stack.c:stack_result"}
!400 = !{!401, !248, i64 1592}
!401 = !{!"gcc_target", !402, i64 0, !404, i64 368, !405, i64 664, !244, i64 744, !248, i64 752, !248, i64 760, !248, i64 768, !248, i64 776, !248, i64 784, !248, i64 792, !248, i64 800, !248, i64 808, !248, i64 816, !248, i64 824, !248, i64 832, !248, i64 840, !248, i64 848, !248, i64 856, !248, i64 864, !248, i64 872, !248, i64 880, !248, i64 888, !248, i64 896, !248, i64 904, !248, i64 912, !248, i64 920, !248, i64 928, !248, i64 936, !248, i64 944, !248, i64 952, !248, i64 960, !248, i64 968, !248, i64 976, !248, i64 984, !248, i64 992, !248, i64 1000, !248, i64 1008, !248, i64 1016, !248, i64 1024, !248, i64 1032, !248, i64 1040, !248, i64 1048, !248, i64 1056, !296, i64 1064, !296, i64 1072, !248, i64 1080, !248, i64 1088, !248, i64 1096, !248, i64 1104, !248, i64 1112, !248, i64 1120, !248, i64 1128, !248, i64 1136, !248, i64 1144, !248, i64 1152, !248, i64 1160, !248, i64 1168, !406, i64 1176, !248, i64 1232, !248, i64 1240, !248, i64 1248, !248, i64 1256, !248, i64 1264, !248, i64 1272, !248, i64 1280, !248, i64 1288, !248, i64 1296, !248, i64 1304, !248, i64 1312, !248, i64 1320, !248, i64 1328, !248, i64 1336, !248, i64 1344, !248, i64 1352, !248, i64 1360, !248, i64 1368, !248, i64 1376, !248, i64 1384, !248, i64 1392, !248, i64 1400, !248, i64 1408, !248, i64 1416, !248, i64 1424, !248, i64 1432, !248, i64 1440, !248, i64 1448, !248, i64 1456, !296, i64 1464, !407, i64 1472, !248, i64 1664, !248, i64 1672, !248, i64 1680, !248, i64 1688, !248, i64 1696, !248, i64 1704, !248, i64 1712, !248, i64 1720, !248, i64 1728, !248, i64 1736, !248, i64 1744, !248, i64 1752, !248, i64 1760, !248, i64 1768, !248, i64 1776, !408, i64 1784, !409, i64 1792, !410, i64 1896, !411, i64 1968, !248, i64 2016, !235, i64 2024, !235, i64 2025, !235, i64 2026, !235, i64 2027, !235, i64 2028, !235, i64 2029, !235, i64 2030, !235, i64 2031, !235, i64 2032, !235, i64 2033, !235, i64 2034, !235, i64 2035}
!402 = !{!"asm_out", !248, i64 0, !248, i64 8, !248, i64 16, !403, i64 24, !403, i64 56, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152, !248, i64 160, !248, i64 168, !248, i64 176, !248, i64 184, !248, i64 192, !248, i64 200, !248, i64 208, !248, i64 216, !248, i64 224, !248, i64 232, !248, i64 240, !248, i64 248, !248, i64 256, !248, i64 264, !248, i64 272, !248, i64 280, !248, i64 288, !248, i64 296, !248, i64 304, !248, i64 312, !248, i64 320, !248, i64 328, !248, i64 336, !248, i64 344, !248, i64 352, !248, i64 360}
!403 = !{!"asm_int_op", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24}
!404 = !{!"sched", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152, !248, i64 160, !248, i64 168, !248, i64 176, !248, i64 184, !248, i64 192, !248, i64 200, !248, i64 208, !248, i64 216, !248, i64 224, !248, i64 232, !248, i64 240, !248, i64 248, !248, i64 256, !248, i64 264, !248, i64 272, !248, i64 280, !248, i64 288}
!405 = !{!"vectorize", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72}
!406 = !{!"addr_space", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48}
!407 = !{!"calls", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152, !248, i64 160, !248, i64 168, !248, i64 176, !248, i64 184}
!408 = !{!"c", !248, i64 0}
!409 = !{!"cxx", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96}
!410 = !{!"emutls", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40, !248, i64 48, !248, i64 56, !235, i64 64, !235, i64 65}
!411 = !{!"target_option_hooks", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !248, i64 32, !248, i64 40}
!412 = !{!"branch_weights", i32 13, i32 1}
!413 = !{!"branch_weights", i32 4, i32 10}
!414 = !{!"function_entry_count", i64 3}
!415 = !{!"reg-stack.c:end_hard_regno"}
!416 = !{!"function_entry_count", i64 4385}
!417 = !{!"reg-stack.c:convert_regs_1"}
!418 = !{!"branch_weights", i32 4343, i32 44}
!419 = !{!"branch_weights", i32 1, i32 4342}
!420 = !{!"branch_weights", i32 411, i32 6576}
!421 = !{!"branch_weights", i32 4342, i32 2644}
!422 = distinct !{!422, !262}
!423 = distinct !{!423, !262}
!424 = !{!"branch_weights", i32 4386, i32 1}
!425 = !{!426, !248, i64 0}
!426 = !{!"rtl_bb_info", !248, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !244, i64 32}
!427 = !{i64 0, i64 4, !284, i64 8, i64 8, !428, i64 16, i64 8, !234}
!428 = !{!296, !296, i64 0}
!429 = !{!"branch_weights", i32 1, i32 29926}
!430 = !{!426, !248, i64 8}
!431 = !{!"branch_weights", i32 29108, i32 819}
!432 = !{!"branch_weights", i32 1211, i32 27898}
!433 = !{!"branch_weights", i32 2029, i32 1}
!434 = !{!"branch_weights", i32 4386, i32 25541}
!435 = distinct !{!435, !262}
!436 = distinct !{!436, !262}
!437 = distinct !{!437, !262}
!438 = !{!"branch_weights", i32 3504, i32 883}
!439 = !{!"branch_weights", i32 1, i32 279}
!440 = distinct !{!440, !262}
!441 = !{!"function_entry_count", i64 6575}
!442 = !{!"reg-stack.c:better_edge"}
!443 = !{!"branch_weights", i32 4343, i32 2234}
!444 = !{!295, !244, i64 88}
!445 = !{!305, !244, i64 52}
!446 = !{!"branch_weights", i32 1141, i32 1094}
!447 = !{!"branch_weights", i32 392, i32 703}
!448 = !{!305, !296, i64 56}
!449 = !{!"branch_weights", i32 1, i32 703}
!450 = !{!295, !248, i64 8}
!451 = !{!"branch_weights", i32 577, i32 127}
!452 = !{!295, !248, i64 0}
!453 = !{!"branch_weights", i32 371, i32 207}
!454 = !{!"branch_weights", i32 63, i32 309}
!455 = !{!"branch_weights", i32 258, i32 52}
!456 = !{!"branch_weights", i32 258, i32 1}
!457 = !{!"branch_weights", i32 276, i32 120}
!458 = !{!"function_entry_count", i64 4342}
!459 = !{!"reg-stack.c:propagate_stack"}
!460 = !{!"branch_weights", i32 4042, i32 301}
!461 = !{!"branch_weights", i32 70, i32 232}
!462 = !{!"branch_weights", i32 0, i32 301}
!463 = distinct !{!463, !262}
!464 = !{!"branch_weights", i32 34506, i32 232}
!465 = !{!"branch_weights", i32 1, i32 232}
!466 = !{!"branch_weights", i32 4343, i32 30394}
!467 = distinct !{!467, !262}
!468 = !{!"function_entry_count", i64 0}
!469 = !{!"reg-stack.c:print_stack"}
!470 = distinct !{!470, !262}
!471 = !{!"reg-stack.c:subst_stack_regs_in_debug_insn"}
!472 = !{!"function_entry_count", i64 2028}
!473 = !{!"reg-stack.c:subst_stack_regs"}
!474 = !{!"branch_weights", i32 1216, i32 814}
!475 = !{!"branch_weights", i32 1, i32 1216}
!476 = distinct !{!476, !262, !477, !478}
!477 = !{!"llvm.loop.isvectorized", i32 1}
!478 = !{!"llvm.loop.unroll.runtime.disable"}
!479 = !{!"branch_weights", i32 1211, i32 819}
!480 = !{!"branch_weights", i32 819, i32 1}
!481 = !{!"branch_weights", i32 45, i32 775}
!482 = !{!"branch_weights", i32 179, i32 1}
!483 = !{!"branch_weights", i32 88, i32 46}
!484 = !{!"branch_weights", i32 2, i32 45}
!485 = !{!"branch_weights", i32 353, i32 179}
!486 = distinct !{!486, !262}
!487 = !{!"branch_weights", i32 4070174, i32 50726}
!488 = !{!"branch_weights", i32 1216, i32 791}
!489 = !{!"branch_weights", i32 1171, i32 46}
!490 = !{!"branch_weights", i32 67, i32 1894}
!491 = !{!"branch_weights", i32 317, i32 1578}
!492 = !{!"branch_weights", i32 317, i32 1}
!493 = !{!"branch_weights", i32 1, i32 317}
!494 = !{!"branch_weights", i32 1894, i32 0}
!495 = distinct !{!495, !262}
!496 = !{!"function_entry_count", i64 4480}
!497 = !{!"reg-stack.c:hard_reg_set_equal_p"}
!498 = !{!"function_entry_count", i64 3309}
!499 = !{!"reg-stack.c:get_true_reg"}
!500 = !{!"branch_weights", i32 3247, i32 1, i32 354, i32 87, i32 190, i32 63, i32 2}
!501 = !{!"branch_weights", i32 1, i32 63}
!502 = !{!"branch_weights", i32 2, i32 1}
!503 = !{!"function_entry_count", i64 1787}
!504 = !{!"reg-stack.c:get_hard_regnum"}
!505 = !{!"branch_weights", i32 1788, i32 1}
!506 = !{!"branch_weights", i32 342, i32 1}
!507 = !{!"branch_weights", i32 1446, i32 989}
!508 = !{!"branch_weights", i32 2092, i32 342}
!509 = distinct !{!509, !262}
!510 = !{!"function_entry_count", i64 1518}
!511 = !{!"reg-stack.c:replace_reg"}
!512 = !{!"branch_weights", i32 1519, i32 1}
!513 = !{!"branch_weights", i32 1, i32 6076, i32 2, i32 1}
!514 = !{!"reg-stack.c:straighten_stack"}
!515 = distinct !{!515, !262, !477, !478}
!516 = !{!"reg-stack.c:subst_asm_stack_regs"}
!517 = !{!518, !235, i64 1086}
!518 = !{!"recog_data", !235, i64 0, !235, i64 240, !235, i64 480, !235, i64 720, !235, i64 840, !235, i64 960, !235, i64 1072, !235, i64 1086, !235, i64 1087, !235, i64 1088, !235, i64 1089, !248, i64 1120}
!519 = distinct !{!519, !262}
!520 = distinct !{!520, !262}
!521 = distinct !{!521, !262}
!522 = distinct !{!522, !262}
!523 = !{!524, !244, i64 8}
!524 = !{!"operand_alternative", !248, i64 0, !244, i64 8, !244, i64 12, !244, i64 16, !244, i64 20, !244, i64 24, !244, i64 24, !244, i64 24, !244, i64 24, !244, i64 24, !244, i64 24, !244, i64 24, !244, i64 24}
!525 = distinct !{!525, !262}
!526 = distinct !{!526, !262}
!527 = distinct !{!527, !262}
!528 = distinct !{!528, !262}
!529 = distinct !{!529, !262}
!530 = !{!524, !244, i64 16}
!531 = distinct !{!531, !262}
!532 = distinct !{!532, !262}
!533 = distinct !{!533, !262}
!534 = distinct !{!534, !262}
!535 = distinct !{!535, !262}
!536 = distinct !{!536, !262}
!537 = distinct !{!537, !262}
!538 = !{!"function_entry_count", i64 819}
!539 = !{!"reg-stack.c:subst_stack_regs_pat"}
!540 = !{!"branch_weights", i32 1, i32 8, i32 1, i32 2, i32 812}
!541 = !{!"branch_weights", i32 8, i32 1}
!542 = !{!"branch_weights", i32 1, i32 2}
!543 = !{!"branch_weights", i32 1073741825, i32 1073741823}
!544 = !{!"branch_weights", i32 223, i32 590}
!545 = !{!"branch_weights", i32 223, i32 1}
!546 = !{!"branch_weights", i32 589, i32 2}
!547 = !{!"branch_weights", i32 527, i32 63}
!548 = !{!"branch_weights", i32 31529883, i32 137280, i32 36858380, i32 3958297}
!549 = !{!"branch_weights", i32 1, i32 1, i32 6, i32 1, i32 2, i32 1, i32 1, i32 3, i32 26, i32 57, i32 105, i32 39, i32 63, i32 1}
!550 = !{!"branch_weights", i32 1, i32 191}
!551 = distinct !{!551, !262}
!552 = !{!"branch_weights", i32 3, i32 2}
!553 = !{!"branch_weights", i32 3, i32 1}
!554 = !{!"branch_weights", i32 218, i32 7}
!555 = !{!"branch_weights", i32 218, i32 1}
!556 = !{!"branch_weights", i32 117, i32 108}
!557 = !{!"branch_weights", i32 117, i32 1}
!558 = !{!"branch_weights", i32 111, i32 108}
!559 = !{!"branch_weights", i32 111, i32 1}
!560 = !{!"branch_weights", i32 1, i32 111}
!561 = !{!"branch_weights", i32 63, i32 7105}
!562 = !{!"branch_weights", i32 224, i32 1}
!563 = !{!"branch_weights", i32 157, i32 68}
!564 = !{!"branch_weights", i32 48, i32 21}
!565 = !{!"branch_weights", i32 143, i32 82}
!566 = !{!"branch_weights", i32 140, i32 4}
!567 = !{!"branch_weights", i32 53, i32 88}
!568 = !{!"branch_weights", i32 33, i32 21}
!569 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 63}
!570 = !{!"branch_weights", i32 63, i32 1}
!571 = distinct !{!571, !262}
!572 = !{!"function_entry_count", i64 131}
!573 = !{!"reg-stack.c:emit_pop_insn"}
!574 = !{!"branch_weights", i32 265, i32 17424}
!575 = !{!"branch_weights", i32 132, i32 1}
!576 = !{!"branch_weights", i32 19, i32 114}
!577 = !{!"function_entry_count", i64 95}
!578 = !{!"reg-stack.c:change_stack"}
!579 = !{!"branch_weights", i32 6, i32 673}
!580 = !{!"branch_weights", i32 91, i32 97, i32 6}
!581 = !{!"branch_weights", i32 6, i32 91}
!582 = !{!"branch_weights", i32 308150912, i32 1839332736}
!583 = !{!"branch_weights", i32 676, i32 86}
!584 = !{!"branch_weights", i32 1, i32 86}
!585 = !{!"branch_weights", i32 96, i32 665}
!586 = distinct !{!586, !262}
!587 = !{!"branch_weights", i32 18, i32 79}
!588 = !{!"branch_weights", i32 1, i32 157}
!589 = !{!"branch_weights", i32 18, i32 19}
!590 = distinct !{!590, !262}
!591 = !{!"branch_weights", i32 14, i32 4}
!592 = !{!"branch_weights", i32 4, i32 11}
!593 = !{!"branch_weights", i32 11, i32 11}
!594 = !{!"branch_weights", i32 1, i32 11}
!595 = !{!"branch_weights", i32 175, i32 161}
!596 = distinct !{!596, !262}
!597 = !{!"branch_weights", i32 0, i32 14}
!598 = distinct !{!598, !262}
!599 = !{!"branch_weights", i32 2074824426, i32 72659222}
!600 = distinct !{!600, !262}
!601 = !{!"branch_weights", i32 -2147483648, i32 0}
!602 = !{!"branch_weights", i32 11, i32 4}
!603 = distinct !{!603, !262}
!604 = distinct !{!604, !262}
!605 = !{!"branch_weights", i32 157, i32 143}
!606 = distinct !{!606, !262}
!607 = !{!"branch_weights", i32 86, i32 16}
!608 = !{!"branch_weights", i32 16, i32 16}
!609 = distinct !{!609, !262}
!610 = !{!"branch_weights", i32 157, i32 45}
!611 = distinct !{!611, !262}
!612 = !{!"branch_weights", i32 1, i32 96}
!613 = !{!"branch_weights", i32 96, i32 1}
!614 = !{!"branch_weights", i32 30, i32 67}
!615 = !{!"branch_weights", i32 51, i32 16}
!616 = !{!"branch_weights", i32 133, i32 1}
!617 = !{!"branch_weights", i32 16, i32 18}
!618 = !{!"branch_weights", i32 4097, i32 127}
!619 = distinct !{!619, !262}
!620 = !{!"branch_weights", i32 1841029626, i32 306454022}
!621 = !{!"branch_weights", i32 16, i32 0}
!622 = distinct !{!622, !262}
!623 = !{!"branch_weights", i32 39, i32 133}
!624 = distinct !{!624, !262}
!625 = !{!"branch_weights", i32 86, i32 1}
!626 = distinct !{!626, !262}
!627 = !{!"branch_weights", i32 86, i32 10}
!628 = !{!"branch_weights", i32 0, i32 86}
!629 = distinct !{!629, !262}
!630 = !{!"branch_weights", i32 91, i32 6}
!631 = !{!"function_entry_count", i64 364}
!632 = !{!"reg-stack.c:emit_swap_insn"}
!633 = !{!"branch_weights", i32 2304, i32 15582, i32 48}
!634 = !{!"branch_weights", i32 48, i32 1}
!635 = !{!"branch_weights", i32 11, i32 38}
!636 = !{!"branch_weights", i32 1, i32 38}
!637 = !{!"branch_weights", i32 45787846, i32 95551488, i32 93782016, i32 1380679680, i32 -750987975}
!638 = !{!"branch_weights", i32 6, i32 10}
!639 = !{!"branch_weights", i32 7, i32 33}
!640 = !{!"branch_weights", i32 127, i32 6657}
!641 = distinct !{!641, !262}
!642 = !{!"branch_weights", i32 12081, i32 1296}
!643 = !{!"branch_weights", i32 33, i32 1}
!644 = !{!"branch_weights", i32 28, i32 6}
!645 = !{!"branch_weights", i32 23, i32 6}
!646 = !{!"branch_weights", i32 9, i32 15}
!647 = !{!"branch_weights", i32 3, i32 7}
!648 = !{!"branch_weights", i32 26, i32 6}
!649 = !{!"branch_weights", i32 5, i32 22}
!650 = !{!"branch_weights", i32 1, i32 5}
!651 = !{!"branch_weights", i32 216, i32 1523}
!652 = !{!"branch_weights", i32 11, i32 31}
!653 = !{!"branch_weights", i32 11, i32 1}
!654 = !{!"reg-stack.c:check_asm_stack_operands"}
!655 = distinct !{!655, !262}
!656 = distinct !{!656, !262}
!657 = distinct !{!657, !262}
!658 = distinct !{!658, !262}
!659 = distinct !{!659, !262}
!660 = distinct !{!660, !262}
!661 = distinct !{!661, !262}
!662 = distinct !{!662, !262}
!663 = distinct !{!663, !262}
!664 = distinct !{!664, !262}
!665 = distinct !{!665, !262}
!666 = distinct !{!666, !262}
!667 = !{!"reg-stack.c:get_asm_operands_in_out"}
!668 = !{!"reg-stack.c:move_nan_for_stack_reg"}
!669 = !{!"function_entry_count", i64 518}
!670 = !{!"reg-stack.c:move_for_stack_reg"}
!671 = !{!"branch_weights", i32 223, i32 297}
!672 = !{!"branch_weights", i32 52, i32 172}
!673 = !{!"branch_weights", i32 52, i32 1}
!674 = !{!"branch_weights", i32 34, i32 19}
!675 = !{!"branch_weights", i32 1, i32 19}
!676 = !{!"branch_weights", i32 19, i32 4}
!677 = !{!"branch_weights", i32 2689, i32 127}
!678 = distinct !{!678, !262}
!679 = !{!"branch_weights", i32 19, i32 1}
!680 = !{!"branch_weights", i32 6, i32 29}
!681 = !{!"branch_weights", i32 6, i32 1}
!682 = !{!"branch_weights", i32 29, i32 1}
!683 = !{!"branch_weights", i32 172, i32 1}
!684 = !{!"branch_weights", i32 6, i32 167}
!685 = !{!"branch_weights", i32 1, i32 6}
!686 = !{!"branch_weights", i32 297, i32 1}
!687 = !{!"branch_weights", i32 1, i32 297}
!688 = !{!"function_entry_count", i64 62}
!689 = !{!"reg-stack.c:compare_for_stack_reg"}
!690 = !{!"branch_weights", i32 22, i32 42}
!691 = !{!"branch_weights", i32 27, i32 37}
!692 = !{!"branch_weights", i32 41, i32 23}
!693 = !{!"branch_weights", i32 23, i32 1}
!694 = !{!"branch_weights", i32 1, i32 23}
!695 = !{!"branch_weights", i32 25, i32 119}
!696 = !{!"function_entry_count", i64 18}
!697 = !{!"reg-stack.c:remove_regno_note"}
!698 = !{!"branch_weights", i32 127, i32 2305}
!699 = distinct !{!699, !262}
!700 = !{!"reg-stack.c:swap_to_top"}
!701 = !{!"function_entry_count", i64 21}
!702 = !{!"reg-stack.c:swap_rtx_condition"}
!703 = !{!"branch_weights", i32 22, i32 1}
!704 = !{!"branch_weights", i32 1, i32 22}
!705 = !{!"branch_weights", i32 183, i32 1}
!706 = distinct !{!706, !262}
!707 = !{!"branch_weights", i32 15, i32 8}
!708 = !{!"branch_weights", i32 5, i32 4}
!709 = !{!"branch_weights", i32 5, i32 1}
!710 = !{!"function_entry_count", i64 30}
!711 = !{!"reg-stack.c:pop_stack"}
!712 = distinct !{!712, !262}
!713 = distinct !{!713, !262}
!714 = !{!"function_entry_count", i64 25}
!715 = !{!"reg-stack.c:next_flags_user"}
!716 = !{!"branch_weights", i32 23850, i32 484}
!717 = distinct !{!717, !262}
!718 = !{!"function_entry_count", i64 234}
!719 = !{!"reg-stack.c:swap_rtx_condition_1"}
!720 = !{!"branch_weights", i32 40, i32 196}
!721 = !{!"branch_weights", i32 1, i32 195}
!722 = !{!"branch_weights", i32 9400, i32 236, i32 46060}
!723 = distinct !{!723, !262}
!724 = !{!"branch_weights", i32 40, i32 195}
!725 = distinct !{!725, !262}
!726 = !{!"reg-stack.c:recog_memoized"}
!727 = !{!"function_entry_count", i64 7042}
!728 = !{!"reg-stack.c:compensate_edge"}
!729 = !{!"branch_weights", i32 7043, i32 1}
!730 = !{!"branch_weights", i32 1, i32 7043}
!731 = !{!"branch_weights", i32 6953, i32 91}
!732 = !{!"branch_weights", i32 259, i32 6689}
!733 = !{!"branch_weights", i32 254, i32 6}
!734 = !{!"branch_weights", i32 0, i32 259}
!735 = distinct !{!735, !262}
!736 = !{!"branch_weights", i32 2147476253, i32 7395}
!737 = !{!"branch_weights", i32 6948, i32 1}

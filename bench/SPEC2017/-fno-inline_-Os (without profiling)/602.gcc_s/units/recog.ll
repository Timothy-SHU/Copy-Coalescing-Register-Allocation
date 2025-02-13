; ModuleID = 'recog.c'
source_filename = "recog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
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
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.peep2_insn_data = type { ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.funny_match = type { i32, i32 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.change_t = type { ptr, i32, ptr, ptr, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.validate_replace_src_data = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@volatile_ok = dso_local local_unnamed_addr global i32 0, align 4
@recog_data = dso_local global %struct.recog_data zeroinitializer, align 8
@recog_op_alt = dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]] zeroinitializer, align 16
@which_alternative = dso_local local_unnamed_addr global i32 0, align 4
@reload_completed = dso_local local_unnamed_addr global i32 0, align 4
@epilogue_completed = dso_local local_unnamed_addr global i32 0, align 4
@peep2_current_count = dso_local local_unnamed_addr global i32 0, align 4
@num_changes = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"recog.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@changes_allocated = internal unnamed_addr global i32 0, align 4
@changes = internal unnamed_addr global ptr null, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@peep2_current = internal unnamed_addr global i32 0, align 4
@peep2_insn_data = internal unnamed_addr global [5 x %struct.peep2_insn_data] zeroinitializer, align 16
@peep2_find_free_register.search_ofs = internal unnamed_addr global i32 0, align 4
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@pass_peephole2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_peephole2, ptr @rest_of_handle_peephole2, ptr null, ptr null, i32 0, i32 156, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"peephole2\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_peephole2 = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@df = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@pass_split_all_insns = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr null, ptr @rest_of_handle_split_all_insns, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"split1\00", align 1
@pass_split_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr null, ptr @rest_of_handle_split_after_reload, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"split2\00", align 1
@pass_split_before_regstack = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr @gate_handle_split_before_regstack, ptr @rest_of_handle_split_before_regstack, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"split3\00", align 1
@flag_schedule_insns_after_reload = external local_unnamed_addr global i32, align 4
@pass_split_before_sched2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_handle_split_before_sched2, ptr @rest_of_handle_split_before_sched2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9 } }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"split4\00", align 1
@pass_split_for_shorten_branches = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.9, ptr @gate_do_final_split, ptr @split_all_insns_noflow, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"split5\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog_no_volatile() local_unnamed_addr #0 {
  store i32 0, ptr @volatile_ok, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog() local_unnamed_addr #0 {
  store i32 1, ptr @volatile_ok, align 4, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @check_asm_operands(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @make_insn_raw(ptr noundef %0) #18
  tail call void @extract_insn(ptr noundef %5) #19
  %6 = tail call i32 @constrain_operands(i32 noundef 1) #19
  %7 = load i32, ptr @which_alternative, align 4, !tbaa !6
  %8 = icmp sgt i32 %7, -1
  %9 = zext i1 %8 to i32
  br label %36

10:                                               ; preds = %1
  %11 = tail call i32 @asm_noperands(ptr noundef %0) #19
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %13
  %16 = zext nneg i32 %11 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = alloca i8, i64 %17, align 16
  %19 = alloca i8, i64 %17, align 16
  %20 = call ptr @decode_asm_operands(ptr noundef %0, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #19
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %16
  br i1 %23, label %36, label %24, !llvm.loop !10

24:                                               ; preds = %15, %21
  %25 = phi i64 [ 0, %15 ], [ %22, %21 ]
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %29 = icmp eq i8 %28, 37
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = getelementptr inbounds ptr, ptr %18, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = call i32 @asm_operand_ok(ptr noundef %33, ptr noundef nonnull %31, ptr noundef nonnull %19) #19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21

36:                                               ; preds = %24, %21, %13, %10, %4
  %37 = phi i32 [ %9, %4 ], [ 0, %10 ], [ 1, %13 ], [ 0, %24 ], [ 1, %21 ]
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_insn(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !15
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !18
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %51 [
    i16 24, label %116
    i16 25, label %116
    i16 16, label %116
    i16 20, label %116
    i16 21, label %116
    i16 138, label %116
    i16 23, label %6
    i16 15, label %12
    i16 17, label %25
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %25, label %51

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %51 [
    i16 23, label %19
    i16 17, label %25
  ]

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 17
  br i1 %24, label %25, label %51

25:                                               ; preds = %12, %1, %19, %6
  %26 = tail call i32 @asm_noperands(ptr noundef nonnull %3) #19
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !15
  %28 = icmp sgt i32 %26, -1
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = icmp ult i32 %26, 31
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2078, ptr noundef nonnull @.str.1) #18
  %32 = tail call ptr @decode_asm_operands(ptr noundef nonnull %3, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null) #19
  br label %36

33:                                               ; preds = %29
  %34 = tail call ptr @decode_asm_operands(ptr noundef nonnull %3, ptr noundef nonnull @recog_data, ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 1), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), ptr noundef nonnull getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 3), ptr noundef null) #19
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %31, %33
  %37 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !12
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %38 = load i8, ptr %37, align 1, !tbaa !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %91, label %40

40:                                               ; preds = %36, %40
  %41 = phi i8 [ %48, %40 ], [ %38, %36 ]
  %42 = phi ptr [ %44, %40 ], [ %37, %36 ]
  %43 = phi i8 [ %47, %40 ], [ 1, %36 ]
  %44 = getelementptr inbounds i8, ptr %42, i64 1
  %45 = icmp eq i8 %41, 44
  %46 = zext i1 %45 to i8
  %47 = add i8 %43, %46
  store i8 %47, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %48 = load i8, ptr %44, align 1, !tbaa !14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %88, label %40, !llvm.loop !19

50:                                               ; preds = %25
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #18
  br label %51

51:                                               ; preds = %12, %19, %50, %1, %6
  %52 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #19
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %54, %51
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 4
  %58 = load i8, ptr %57, align 8, !tbaa !20
  %59 = sext i8 %58 to i32
  store i8 %58, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !15
  %60 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 6
  %61 = load i8, ptr %60, align 2, !tbaa !22
  store i8 %61, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %62 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 5
  %63 = load i8, ptr %62, align 1, !tbaa !23
  store i8 %63, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !18
  tail call void @insn_extract(ptr noundef nonnull %0) #18
  %64 = icmp sgt i8 %58, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %55
  %66 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !24
  %68 = zext nneg i32 %59 to i64
  br label %69

69:                                               ; preds = %65, %85
  %70 = phi i64 [ 0, %65 ], [ %86, %85 ]
  %71 = getelementptr inbounds %struct.insn_operand_data, ptr %67, i64 %70, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !25
  %73 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %70
  store ptr %72, ptr %73, align 8, !tbaa !12
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %67, i64 %70, i32 2
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %70
  store i32 %76, ptr %77, align 4, !tbaa !6
  %78 = icmp eq i16 %75, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %70
  %81 = load ptr, ptr %80, align 8, !tbaa !12
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  store i32 %84, ptr %77, align 4, !tbaa !6
  br label %85

85:                                               ; preds = %69, %79
  %86 = add nuw nsw i64 %70, 1
  %87 = icmp eq i64 %86, %68
  br i1 %87, label %88, label %69, !llvm.loop !27

88:                                               ; preds = %40, %85, %55
  %89 = phi i32 [ %59, %55 ], [ %59, %85 ], [ %26, %40 ]
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %36, %88
  %92 = phi i32 [ %89, %88 ], [ %26, %36 ]
  %93 = zext nneg i32 %92 to i64
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ 0, %91 ], [ %104, %94 ]
  %96 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !12
  %98 = load i8, ptr %97, align 1, !tbaa !14
  %99 = icmp eq i8 %98, 61
  %100 = icmp eq i8 %98, 43
  %101 = select i1 %100, i32 2, i32 0
  %102 = select i1 %99, i32 1, i32 %101
  %103 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %95
  store i32 %102, ptr %103, align 4, !tbaa !6
  %104 = add nuw nsw i64 %95, 1
  %105 = icmp eq i64 %104, %93
  br i1 %105, label %106, label %94, !llvm.loop !28

106:                                              ; preds = %94, %33, %88
  %107 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %108 = icmp slt i8 %107, 31
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #18
  br label %110

110:                                              ; preds = %106, %109
  %111 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %112 = icmp sgt i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = zext nneg i8 %111 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %114, i1 false), !tbaa !14
  br label %115

115:                                              ; preds = %110, %113
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !29
  store i32 -1, ptr @which_alternative, align 4, !tbaa !6
  br label %116

116:                                              ; preds = %1, %1, %1, %1, %1, %1, %115
  ret void
}

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @constrain_operands(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca [30 x ptr], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x %struct.funny_match], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #20
  store i32 0, ptr @which_alternative, align 4, !tbaa !6
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %537, label %12

12:                                               ; preds = %1
  %13 = icmp sgt i8 %7, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = zext nneg i8 %7 to i64
  %16 = shl nuw nsw i64 %15, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 -1, i64 %16, i1 false), !tbaa !6
  %17 = shl nuw nsw i64 %15, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %17, i1 false), !tbaa !12
  br label %18

18:                                               ; preds = %14, %12
  %19 = icmp sgt i32 %0, 0
  %20 = icmp eq i32 %0, 0
  %21 = icmp slt i32 %0, 0
  %22 = icmp slt i32 %0, 1
  %23 = icmp ne i32 %0, 0
  br label %24

24:                                               ; preds = %18, %526
  %25 = phi i8 [ %9, %18 ], [ %527, %526 ]
  %26 = phi i8 [ %7, %18 ], [ %528, %526 ]
  %27 = phi i8 [ %7, %18 ], [ %529, %526 ]
  %28 = phi i32 [ 0, %18 ], [ %531, %526 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = icmp sgt i8 %27, 0
  br i1 %34, label %46, label %537

35:                                               ; preds = %24
  %36 = icmp sgt i8 %26, 0
  br i1 %36, label %37, label %526

37:                                               ; preds = %35
  %38 = zext nneg i8 %26 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ 0, %37 ], [ %44, %39 ]
  %41 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !12
  %43 = tail call fastcc ptr @skip_alternative(ptr noundef %42) #19
  store ptr %43, ptr %41, align 8, !tbaa !12
  %44 = add nuw nsw i64 %40, 1
  %45 = icmp eq i64 %44, %38
  br i1 %45, label %526, label %39, !llvm.loop !30

46:                                               ; preds = %33, %414
  %47 = phi i64 [ %419, %414 ], [ 0, %33 ]
  %48 = phi i32 [ %115, %414 ], [ 0, %33 ]
  %49 = phi i32 [ %418, %414 ], [ 0, %33 ]
  %50 = phi i32 [ %114, %414 ], [ -1, %33 ]
  %51 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %47
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %47
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %47
  store i32 0, ptr %58, align 4, !tbaa !6
  %59 = and i32 %53, 65535
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !6
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %68

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = load i32, ptr %66, align 8
  br label %68

68:                                               ; preds = %64, %46
  %69 = phi i32 [ %67, %64 ], [ %53, %46 ]
  %70 = phi ptr [ %66, %64 ], [ %52, %46 ]
  %71 = and i32 %69, 65535
  %72 = icmp eq i32 %71, 39
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %75) #19
  %81 = icmp ult i32 %80, 53
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = lshr i32 %76, 16
  %84 = and i32 %83, 255
  %85 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load i32, ptr %85, align 8, !tbaa !14
  %87 = lshr i32 %69, 16
  %88 = and i32 %87, 255
  %89 = tail call i32 @subreg_regno_offset(i32 noundef %80, i32 noundef %84, i32 noundef %86, i32 noundef %88) #18
  %90 = load ptr, ptr %74, align 8, !tbaa !14
  br label %91

91:                                               ; preds = %73, %79, %82, %68
  %92 = phi ptr [ %70, %68 ], [ %90, %82 ], [ %75, %79 ], [ %75, %73 ]
  %93 = phi i32 [ 0, %68 ], [ %89, %82 ], [ 0, %79 ], [ 0, %73 ]
  %94 = load i8, ptr %57, align 1, !tbaa !14
  %95 = icmp eq i8 %94, 0
  %96 = icmp eq i8 %94, 44
  %97 = or i1 %95, %96
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 1
  %101 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %47
  %102 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %47
  %103 = trunc i64 %47 to i32
  %104 = trunc i64 %47 to i32
  %105 = trunc i64 %47 to i32
  br label %112

106:                                              ; preds = %397, %408
  %107 = phi ptr [ %403, %397 ], [ %412, %408 ]
  %108 = phi i32 [ %401, %397 ], [ %410, %408 ]
  %109 = phi i32 [ %399, %397 ], [ %115, %408 ]
  %110 = phi i32 [ %398, %397 ], [ %114, %408 ]
  %111 = load i8, ptr %107, align 1, !tbaa !14
  br label %112

112:                                              ; preds = %106, %91
  %113 = phi i8 [ %111, %106 ], [ %94, %91 ]
  %114 = phi i32 [ %110, %106 ], [ %50, %91 ]
  %115 = phi i32 [ %109, %106 ], [ %48, %91 ]
  %116 = phi ptr [ %107, %106 ], [ %57, %91 ]
  %117 = phi i32 [ %108, %106 ], [ %98, %91 ]
  %118 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %113) #19
  switch i8 %113, label %370 [
    i8 0, label %404
    i8 44, label %405
    i8 63, label %397
    i8 33, label %397
    i8 42, label %397
    i8 37, label %397
    i8 61, label %397
    i8 43, label %397
    i8 35, label %121
    i8 38, label %125
    i8 48, label %128
    i8 49, label %128
    i8 50, label %128
    i8 51, label %128
    i8 52, label %128
    i8 53, label %128
    i8 54, label %128
    i8 55, label %128
    i8 56, label %128
    i8 57, label %128
    i8 112, label %179
    i8 103, label %185
    i8 88, label %205
    i8 109, label %206
    i8 60, label %254
    i8 62, label %263
    i8 69, label %272
    i8 70, label %272
    i8 71, label %283
    i8 72, label %283
    i8 115, label %292
    i8 105, label %119
    i8 110, label %306
    i8 73, label %313
    i8 74, label %313
    i8 75, label %313
    i8 76, label %313
    i8 77, label %313
    i8 78, label %313
    i8 79, label %313
    i8 80, label %313
    i8 86, label %323
    i8 111, label %342
  ]

119:                                              ; preds = %112
  %120 = load i32, ptr %92, align 8
  br label %298

121:                                              ; preds = %112, %121
  %122 = phi ptr [ %123, %121 ], [ %116, %112 ]
  %123 = getelementptr inbounds i8, ptr %122, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !14
  switch i8 %124, label %121 [
    i8 0, label %408
    i8 44, label %408
  ]

125:                                              ; preds = %112
  store i32 1, ptr %58, align 4, !tbaa !6
  %126 = icmp slt i32 %114, 0
  %127 = select i1 %126, i32 %105, i32 %114
  br label %397

128:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112, %112, %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %129 = call i64 @strtoul(ptr noundef nonnull %116, ptr noundef nonnull %6, i32 noundef 10) #19
  %130 = trunc i64 %129 to i32
  %131 = load ptr, ptr %6, align 8, !tbaa !12
  br i1 %21, label %132, label %136

132:                                              ; preds = %128
  store i32 %130, ptr %102, align 4, !tbaa !6
  %133 = shl i64 %129, 32
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %134
  store i32 %104, ptr %135, align 4, !tbaa !6
  br label %176

136:                                              ; preds = %128
  %137 = shl i64 %129, 32
  %138 = ashr exact i64 %137, 32
  %139 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !12
  %141 = load ptr, ptr %51, align 8, !tbaa !12
  %142 = load i32, ptr %140, align 8
  %143 = and i32 %142, 65535
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !6
  %147 = icmp eq i32 %146, 4
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.rtx_def, ptr %140, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !14
  br label %151

151:                                              ; preds = %148, %136
  %152 = phi ptr [ %150, %148 ], [ %140, %136 ]
  %153 = load i32, ptr %141, align 8
  %154 = and i32 %153, 65535
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !6
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !14
  br label %162

162:                                              ; preds = %151, %159
  %163 = phi ptr [ %161, %159 ], [ %141, %151 ]
  %164 = tail call i32 @operands_match_p(ptr noundef %152, ptr noundef %163) #18
  %165 = freeze i32 %164
  store i32 %130, ptr %102, align 4, !tbaa !6
  %166 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %138
  store i32 %103, ptr %166, align 4, !tbaa !6
  %167 = icmp eq i32 %165, 0
  %168 = select i1 %167, i32 %117, i32 1
  %169 = icmp eq i32 %165, 2
  %170 = and i1 %23, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %162
  %172 = sext i32 %115 to i64
  %173 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %172
  store i32 %103, ptr %173, align 8, !tbaa !31
  %174 = add nsw i32 %115, 1
  %175 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %172, i32 1
  store i32 %130, ptr %175, align 4, !tbaa !33
  br label %176

176:                                              ; preds = %132, %171, %162
  %177 = phi i32 [ %168, %171 ], [ %168, %162 ], [ 1, %132 ]
  %178 = phi i32 [ %174, %171 ], [ %115, %162 ], [ %115, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %397

179:                                              ; preds = %112
  br i1 %22, label %184, label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %101, align 4, !tbaa !6
  %182 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %181, ptr noundef %92, i8 noundef zeroext 0) #18
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %397, label %184

184:                                              ; preds = %180, %179
  br label %397

185:                                              ; preds = %112
  %186 = load i32, ptr %92, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  br i1 %21, label %199, label %190

190:                                              ; preds = %189
  %191 = load i32, ptr @reload_in_progress, align 4, !tbaa !6
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %195 = icmp ugt i32 %194, 52
  br i1 %195, label %199, label %196

196:                                              ; preds = %193, %190
  %197 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %92, i32 noundef 13, i32 noundef %93, i32 noundef %55) #19, !range !34
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %397, label %199

199:                                              ; preds = %196, %193, %189
  br label %397

200:                                              ; preds = %185
  br i1 %21, label %204, label %201

201:                                              ; preds = %200
  %202 = tail call i32 @general_operand(ptr noundef nonnull %92, i32 noundef %55) #19, !range !34
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %397, label %204

204:                                              ; preds = %201, %200
  br label %397

205:                                              ; preds = %112
  br label %397

206:                                              ; preds = %112
  %207 = load i32, ptr %92, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 43
  br i1 %209, label %210, label %239

210:                                              ; preds = %206
  br i1 %19, label %211, label %224

211:                                              ; preds = %210
  %212 = lshr i32 %207, 16
  %213 = and i32 %212, 255
  %214 = load ptr, ptr %99, align 8, !tbaa !14
  %215 = load ptr, ptr %100, align 8, !tbaa !14
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.mem_attrs, ptr %215, i64 0, i32 5
  %219 = load i8, ptr %218, align 8, !tbaa !35
  br label %220

220:                                              ; preds = %211, %217
  %221 = phi i8 [ %219, %217 ], [ 0, %211 ]
  %222 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %213, ptr noundef %214, i8 noundef zeroext %221) #18
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %397, label %238

224:                                              ; preds = %210
  br i1 %20, label %225, label %238

225:                                              ; preds = %224
  %226 = lshr i32 %207, 16
  %227 = and i32 %226, 255
  %228 = load ptr, ptr %99, align 8, !tbaa !14
  %229 = load ptr, ptr %100, align 8, !tbaa !14
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.mem_attrs, ptr %229, i64 0, i32 5
  %233 = load i8, ptr %232, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %225, %231
  %235 = phi i8 [ %233, %231 ], [ 0, %225 ]
  %236 = tail call i32 @memory_address_addr_space_p(i32 noundef %227, ptr noundef %228, i8 noundef zeroext %235) #19, !range !37
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %397, label %238

238:                                              ; preds = %220, %234, %224
  br label %397

239:                                              ; preds = %206
  br i1 %21, label %240, label %245

240:                                              ; preds = %239
  %241 = zext nneg i32 %208 to i64
  %242 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !6
  %244 = icmp eq i32 %243, 9
  br i1 %244, label %397, label %245

245:                                              ; preds = %240, %239
  %246 = load i32, ptr @reload_in_progress, align 4, !tbaa !6
  %247 = icmp ne i32 %246, 0
  %248 = icmp eq i32 %208, 37
  %249 = and i1 %248, %247
  br i1 %249, label %250, label %397

250:                                              ; preds = %245
  %251 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %252 = icmp ugt i32 %251, 52
  %253 = select i1 %252, i32 1, i32 %117
  br label %397

254:                                              ; preds = %112
  %255 = load i32, ptr %92, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 43
  br i1 %257, label %258, label %397

258:                                              ; preds = %254
  %259 = load ptr, ptr %99, align 8, !tbaa !14
  %260 = load i32, ptr %259, align 8
  %261 = trunc i32 %260 to i16
  switch i16 %261, label %397 [
    i16 74, label %262
    i16 76, label %262
  ]

262:                                              ; preds = %258, %258
  br label %397

263:                                              ; preds = %112
  %264 = load i32, ptr %92, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 43
  br i1 %266, label %267, label %397

267:                                              ; preds = %263
  %268 = load ptr, ptr %99, align 8, !tbaa !14
  %269 = load i32, ptr %268, align 8
  %270 = trunc i32 %269 to i16
  switch i16 %270, label %397 [
    i16 75, label %271
    i16 77, label %271
  ]

271:                                              ; preds = %267, %267
  br label %397

272:                                              ; preds = %112, %112
  %273 = load i32, ptr %92, align 8
  %274 = trunc i32 %273 to i16
  switch i16 %274, label %397 [
    i16 32, label %282
    i16 33, label %275
  ]

275:                                              ; preds = %272
  %276 = lshr i32 %273, 16
  %277 = and i32 %276, 255
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !14
  %281 = icmp eq i8 %280, 17
  br i1 %281, label %282, label %397

282:                                              ; preds = %272, %275
  br label %397

283:                                              ; preds = %112, %112
  %284 = load i32, ptr %92, align 8
  %285 = and i32 %284, 65535
  %286 = icmp eq i32 %285, 32
  br i1 %286, label %287, label %397

287:                                              ; preds = %283
  %288 = tail call i32 @lookup_constraint(ptr noundef nonnull %116) #18
  %289 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %92, i32 noundef %288) #18
  %290 = icmp eq i8 %289, 0
  %291 = select i1 %290, i32 %117, i32 1
  br label %397

292:                                              ; preds = %112
  %293 = load i32, ptr %92, align 8
  %294 = trunc i32 %293 to i16
  switch i16 %294, label %298 [
    i16 30, label %397
    i16 32, label %295
  ]

295:                                              ; preds = %292
  %296 = and i32 %293, 16711680
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %397, label %298

298:                                              ; preds = %119, %292, %295
  %299 = phi i32 [ %120, %119 ], [ %293, %292 ], [ %293, %295 ]
  %300 = and i32 %299, 65535
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !6
  %304 = icmp eq i32 %303, 9
  %305 = select i1 %304, i32 1, i32 %117
  br label %397

306:                                              ; preds = %112
  %307 = load i32, ptr %92, align 8
  %308 = trunc i32 %307 to i16
  switch i16 %308, label %397 [
    i16 30, label %312
    i16 32, label %309
  ]

309:                                              ; preds = %306
  %310 = and i32 %307, 16711680
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %397

312:                                              ; preds = %306, %309
  br label %397

313:                                              ; preds = %112, %112, %112, %112, %112, %112, %112, %112
  %314 = load i32, ptr %92, align 8
  %315 = and i32 %314, 65535
  %316 = icmp eq i32 %315, 30
  br i1 %316, label %317, label %397

317:                                              ; preds = %313
  %318 = load i64, ptr %99, align 8, !tbaa !14
  %319 = tail call i32 @lookup_constraint(ptr noundef nonnull %116) #18
  %320 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %318, i32 noundef %319) #18
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, i32 %117, i32 1
  br label %397

323:                                              ; preds = %112
  %324 = load i32, ptr %92, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 43
  br i1 %326, label %327, label %397

327:                                              ; preds = %323
  br i1 %19, label %328, label %331

328:                                              ; preds = %327
  %329 = tail call i32 @offsettable_memref_p(ptr noundef nonnull %92) #19, !range !34
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %341, label %331

331:                                              ; preds = %327, %328
  %332 = load i32, ptr @reload_in_progress, align 4, !tbaa !6
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %397, label %334

334:                                              ; preds = %331
  %335 = load i32, ptr %92, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 37
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %340 = icmp ugt i32 %339, 52
  br i1 %340, label %397, label %341

341:                                              ; preds = %338, %334, %328
  br label %397

342:                                              ; preds = %112
  br i1 %19, label %343, label %346

343:                                              ; preds = %342
  %344 = tail call i32 @offsettable_memref_p(ptr noundef %92) #19, !range !34
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %359, label %369

346:                                              ; preds = %342
  br i1 %20, label %347, label %350

347:                                              ; preds = %346
  %348 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %92) #19, !range !34
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %359, label %369

350:                                              ; preds = %346
  %351 = load i32, ptr %92, align 8
  %352 = and i32 %351, 65535
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !6
  %356 = icmp eq i32 %355, 9
  %357 = icmp eq i32 %352, 43
  %358 = or i1 %356, %357
  br i1 %358, label %369, label %359

359:                                              ; preds = %343, %347, %350
  %360 = load i32, ptr @reload_in_progress, align 4, !tbaa !6
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %397, label %362

362:                                              ; preds = %359
  %363 = load i32, ptr %92, align 8
  %364 = and i32 %363, 65535
  %365 = icmp eq i32 %364, 37
  br i1 %365, label %366, label %397

366:                                              ; preds = %362
  %367 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %368 = icmp ugt i32 %367, 52
  br i1 %368, label %369, label %397

369:                                              ; preds = %366, %350, %347, %343
  br label %397

370:                                              ; preds = %112
  %371 = icmp eq i8 %113, 114
  br i1 %371, label %376, label %372

372:                                              ; preds = %370
  %373 = tail call i32 @lookup_constraint(ptr noundef nonnull %116) #18
  %374 = tail call i32 @regclass_for_constraint(i32 noundef %373) #18
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %392, label %376

376:                                              ; preds = %370, %372
  %377 = phi i32 [ %374, %372 ], [ 13, %370 ]
  br i1 %21, label %391, label %378

378:                                              ; preds = %376
  %379 = load i32, ptr %92, align 8
  br i1 %20, label %380, label %385

380:                                              ; preds = %378
  %381 = trunc i32 %379 to i16
  switch i16 %381, label %385 [
    i16 37, label %382
    i16 38, label %391
  ]

382:                                              ; preds = %380
  %383 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %92) #19
  %384 = icmp ugt i32 %383, 52
  br i1 %384, label %391, label %385

385:                                              ; preds = %380, %382, %378
  %386 = and i32 %379, 65535
  %387 = icmp eq i32 %386, 37
  br i1 %387, label %388, label %408

388:                                              ; preds = %385
  %389 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %92, i32 noundef %377, i32 noundef %93, i32 noundef %55) #19, !range !34
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %408, label %391

391:                                              ; preds = %380, %388, %382, %376
  br label %408

392:                                              ; preds = %372
  %393 = tail call i32 @lookup_constraint(ptr noundef nonnull %116) #18
  %394 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %92, i32 noundef %393) #18
  %395 = icmp eq i8 %394, 0
  %396 = select i1 %395, i32 %117, i32 1
  br label %408

397:                                              ; preds = %369, %366, %362, %359, %338, %341, %331, %323, %313, %312, %309, %292, %295, %283, %282, %275, %271, %263, %262, %254, %238, %234, %220, %245, %205, %199, %196, %204, %201, %184, %180, %176, %112, %112, %112, %112, %112, %112, %125, %240, %250, %258, %267, %272, %287, %298, %306, %317
  %398 = phi i32 [ %114, %317 ], [ %114, %306 ], [ %114, %298 ], [ %114, %287 ], [ %114, %272 ], [ %114, %267 ], [ %114, %258 ], [ %114, %250 ], [ %114, %240 ], [ %127, %125 ], [ %114, %112 ], [ %114, %112 ], [ %114, %112 ], [ %114, %112 ], [ %114, %112 ], [ %114, %112 ], [ %114, %176 ], [ %114, %180 ], [ %114, %184 ], [ %114, %201 ], [ %114, %204 ], [ %114, %196 ], [ %114, %199 ], [ %114, %205 ], [ %114, %245 ], [ %114, %220 ], [ %114, %234 ], [ %114, %238 ], [ %114, %254 ], [ %114, %262 ], [ %114, %263 ], [ %114, %271 ], [ %114, %275 ], [ %114, %282 ], [ %114, %283 ], [ %114, %295 ], [ %114, %292 ], [ %114, %309 ], [ %114, %312 ], [ %114, %313 ], [ %114, %323 ], [ %114, %331 ], [ %114, %341 ], [ %114, %338 ], [ %114, %359 ], [ %114, %362 ], [ %114, %366 ], [ %114, %369 ]
  %399 = phi i32 [ %115, %317 ], [ %115, %306 ], [ %115, %298 ], [ %115, %287 ], [ %115, %272 ], [ %115, %267 ], [ %115, %258 ], [ %115, %250 ], [ %115, %240 ], [ %115, %125 ], [ %115, %112 ], [ %115, %112 ], [ %115, %112 ], [ %115, %112 ], [ %115, %112 ], [ %115, %112 ], [ %178, %176 ], [ %115, %180 ], [ %115, %184 ], [ %115, %201 ], [ %115, %204 ], [ %115, %196 ], [ %115, %199 ], [ %115, %205 ], [ %115, %245 ], [ %115, %220 ], [ %115, %234 ], [ %115, %238 ], [ %115, %254 ], [ %115, %262 ], [ %115, %263 ], [ %115, %271 ], [ %115, %275 ], [ %115, %282 ], [ %115, %283 ], [ %115, %295 ], [ %115, %292 ], [ %115, %309 ], [ %115, %312 ], [ %115, %313 ], [ %115, %323 ], [ %115, %331 ], [ %115, %341 ], [ %115, %338 ], [ %115, %359 ], [ %115, %362 ], [ %115, %366 ], [ %115, %369 ]
  %400 = phi ptr [ %116, %317 ], [ %116, %306 ], [ %116, %298 ], [ %116, %287 ], [ %116, %272 ], [ %116, %267 ], [ %116, %258 ], [ %116, %250 ], [ %116, %240 ], [ %116, %125 ], [ %116, %112 ], [ %116, %112 ], [ %116, %112 ], [ %116, %112 ], [ %116, %112 ], [ %116, %112 ], [ %131, %176 ], [ %116, %180 ], [ %116, %184 ], [ %116, %201 ], [ %116, %204 ], [ %116, %196 ], [ %116, %199 ], [ %116, %205 ], [ %116, %245 ], [ %116, %220 ], [ %116, %234 ], [ %116, %238 ], [ %116, %254 ], [ %116, %262 ], [ %116, %263 ], [ %116, %271 ], [ %116, %275 ], [ %116, %282 ], [ %116, %283 ], [ %116, %295 ], [ %116, %292 ], [ %116, %309 ], [ %116, %312 ], [ %116, %313 ], [ %116, %323 ], [ %116, %331 ], [ %116, %341 ], [ %116, %338 ], [ %116, %359 ], [ %116, %362 ], [ %116, %366 ], [ %116, %369 ]
  %401 = phi i32 [ %322, %317 ], [ %117, %306 ], [ %305, %298 ], [ %291, %287 ], [ %117, %272 ], [ %117, %267 ], [ %117, %258 ], [ %253, %250 ], [ 1, %240 ], [ %117, %125 ], [ %117, %112 ], [ %117, %112 ], [ %117, %112 ], [ %117, %112 ], [ %117, %112 ], [ %117, %112 ], [ %177, %176 ], [ %117, %180 ], [ 1, %184 ], [ %117, %201 ], [ 1, %204 ], [ %117, %196 ], [ 1, %199 ], [ 1, %205 ], [ %117, %245 ], [ %117, %220 ], [ %117, %234 ], [ 1, %238 ], [ %117, %254 ], [ 1, %262 ], [ %117, %263 ], [ 1, %271 ], [ %117, %275 ], [ 1, %282 ], [ %117, %283 ], [ %117, %295 ], [ %117, %292 ], [ %117, %309 ], [ 1, %312 ], [ %117, %313 ], [ %117, %323 ], [ %117, %331 ], [ 1, %341 ], [ %117, %338 ], [ %117, %359 ], [ %117, %362 ], [ %117, %366 ], [ 1, %369 ]
  %402 = phi i64 [ %118, %317 ], [ %118, %306 ], [ %118, %298 ], [ %118, %287 ], [ %118, %272 ], [ %118, %267 ], [ %118, %258 ], [ %118, %250 ], [ %118, %240 ], [ %118, %125 ], [ %118, %112 ], [ %118, %112 ], [ %118, %112 ], [ %118, %112 ], [ %118, %112 ], [ %118, %112 ], [ 0, %176 ], [ %118, %180 ], [ %118, %184 ], [ %118, %201 ], [ %118, %204 ], [ %118, %196 ], [ %118, %199 ], [ %118, %205 ], [ %118, %245 ], [ %118, %220 ], [ %118, %234 ], [ %118, %238 ], [ %118, %254 ], [ %118, %262 ], [ %118, %263 ], [ %118, %271 ], [ %118, %275 ], [ %118, %282 ], [ %118, %283 ], [ %118, %295 ], [ %118, %292 ], [ %118, %309 ], [ %118, %312 ], [ %118, %313 ], [ %118, %323 ], [ %118, %331 ], [ %118, %341 ], [ %118, %338 ], [ %118, %359 ], [ %118, %362 ], [ %118, %366 ], [ %118, %369 ]
  %403 = getelementptr inbounds i8, ptr %400, i64 %402
  br label %106

404:                                              ; preds = %112
  br label %405

405:                                              ; preds = %112, %404
  %406 = phi i64 [ 0, %404 ], [ %118, %112 ]
  %407 = getelementptr inbounds i8, ptr %116, i64 %406
  br label %414

408:                                              ; preds = %121, %121, %392, %391, %388, %385
  %409 = phi ptr [ %116, %392 ], [ %116, %385 ], [ %116, %388 ], [ %116, %391 ], [ %123, %121 ], [ %123, %121 ]
  %410 = phi i32 [ %396, %392 ], [ %117, %385 ], [ %117, %388 ], [ 1, %391 ], [ %117, %121 ], [ %117, %121 ]
  %411 = phi i64 [ %118, %392 ], [ %118, %385 ], [ %118, %388 ], [ %118, %391 ], [ 0, %121 ], [ 0, %121 ]
  %412 = getelementptr inbounds i8, ptr %409, i64 %411
  %413 = icmp eq i8 %113, 0
  br i1 %413, label %414, label %106, !llvm.loop !38

414:                                              ; preds = %408, %405
  %415 = phi ptr [ %407, %405 ], [ %412, %408 ]
  %416 = phi i32 [ %117, %405 ], [ %410, %408 ]
  store ptr %415, ptr %56, align 8, !tbaa !12
  %417 = icmp eq i32 %416, 0
  %418 = select i1 %417, i32 1, i32 %49
  %419 = add nuw nsw i64 %47, 1
  %420 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %421 = sext i8 %420 to i64
  %422 = icmp slt i64 %419, %421
  br i1 %422, label %46, label %423, !llvm.loop !39

423:                                              ; preds = %414
  %424 = icmp eq i32 %418, 0
  br i1 %424, label %425, label %521

425:                                              ; preds = %423
  %426 = icmp sgt i32 %114, -1
  %427 = select i1 %19, i1 %426, i1 false
  %428 = sext i8 %420 to i32
  %429 = icmp slt i32 %114, %428
  %430 = select i1 %427, i1 %429, i1 false
  br i1 %430, label %431, label %504

431:                                              ; preds = %425
  %432 = zext nneg i32 %114 to i64
  br label %433

433:                                              ; preds = %431, %494
  %434 = phi i8 [ %420, %431 ], [ %495, %494 ]
  %435 = phi i8 [ %420, %431 ], [ %496, %494 ]
  %436 = phi i64 [ %432, %431 ], [ %498, %494 ]
  %437 = phi i32 [ 0, %431 ], [ %497, %494 ]
  %438 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %436
  %439 = load i32, ptr %438, align 4, !tbaa !6
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %494, label %441

441:                                              ; preds = %433
  %442 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %436
  %443 = load ptr, ptr %442, align 8, !tbaa !12
  %444 = load i32, ptr %443, align 8
  %445 = and i32 %444, 65535
  %446 = icmp eq i32 %445, 37
  %447 = icmp sgt i8 %435, 0
  %448 = and i1 %446, %447
  br i1 %448, label %449, label %494

449:                                              ; preds = %441, %488
  %450 = phi i64 [ %490, %488 ], [ 0, %441 ]
  %451 = phi i32 [ %489, %488 ], [ %437, %441 ]
  %452 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %450
  %453 = load ptr, ptr %452, align 8, !tbaa !12
  %454 = load i32, ptr %453, align 8
  %455 = and i32 %454, 65535
  %456 = icmp eq i32 %455, 43
  br i1 %456, label %463, label %457

457:                                              ; preds = %449
  %458 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %450
  %459 = load i32, ptr %458, align 4, !tbaa !6
  %460 = icmp eq i32 %459, 1
  %461 = icmp eq i64 %450, %436
  %462 = or i1 %461, %460
  br i1 %462, label %488, label %465

463:                                              ; preds = %449
  %464 = icmp eq i64 %450, %436
  br i1 %464, label %488, label %465

465:                                              ; preds = %457, %463
  %466 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %450
  %467 = load ptr, ptr %466, align 8, !tbaa !12
  %468 = load i8, ptr %467, align 1, !tbaa !14
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %488, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %450
  %472 = load i32, ptr %471, align 4, !tbaa !6
  %473 = zext i32 %472 to i64
  %474 = icmp eq i64 %436, %473
  %475 = load ptr, ptr %442, align 8, !tbaa !12
  br i1 %474, label %476, label %482

476:                                              ; preds = %470
  %477 = tail call i32 @operands_match_p(ptr noundef nonnull %453, ptr noundef %475) #18
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %488

479:                                              ; preds = %476
  %480 = load ptr, ptr %452, align 8, !tbaa !12
  %481 = load ptr, ptr %442, align 8, !tbaa !12
  br label %482

482:                                              ; preds = %479, %470
  %483 = phi ptr [ %481, %479 ], [ %475, %470 ]
  %484 = phi ptr [ %480, %479 ], [ %453, %470 ]
  %485 = tail call i32 @safe_from_earlyclobber(ptr noundef %484, ptr noundef %483) #18
  %486 = icmp eq i32 %485, 0
  %487 = select i1 %486, i32 1, i32 %451
  br label %488

488:                                              ; preds = %482, %457, %463, %465, %476
  %489 = phi i32 [ %451, %476 ], [ %451, %465 ], [ %451, %463 ], [ %451, %457 ], [ %487, %482 ]
  %490 = add nuw nsw i64 %450, 1
  %491 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %492 = sext i8 %491 to i64
  %493 = icmp slt i64 %490, %492
  br i1 %493, label %449, label %494, !llvm.loop !40

494:                                              ; preds = %488, %433, %441
  %495 = phi i8 [ %434, %441 ], [ %434, %433 ], [ %491, %488 ]
  %496 = phi i8 [ %435, %441 ], [ %435, %433 ], [ %491, %488 ]
  %497 = phi i32 [ %437, %441 ], [ %437, %433 ], [ %489, %488 ]
  %498 = add nuw nsw i64 %436, 1
  %499 = sext i8 %496 to i32
  %500 = trunc i64 %498 to i32
  %501 = icmp slt i32 %500, %499
  br i1 %501, label %433, label %502, !llvm.loop !41

502:                                              ; preds = %494
  %503 = icmp eq i32 %497, 0
  br i1 %503, label %504, label %521

504:                                              ; preds = %425, %502
  %505 = icmp sgt i32 %115, 0
  br i1 %505, label %506, label %537

506:                                              ; preds = %504
  %507 = zext nneg i32 %115 to i64
  br label %508

508:                                              ; preds = %506, %508
  %509 = phi i64 [ %507, %506 ], [ %510, %508 ]
  %510 = add nsw i64 %509, -1
  %511 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %510
  %512 = load i32, ptr %511, align 8, !tbaa !31
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !12
  %516 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %510, i32 1
  %517 = load i32, ptr %516, align 4, !tbaa !33
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %518
  store ptr %515, ptr %519, align 8, !tbaa !12
  %520 = icmp ugt i64 %509, 1
  br i1 %520, label %508, label %537, !llvm.loop !42

521:                                              ; preds = %502, %423
  %522 = phi i8 [ %495, %502 ], [ %420, %423 ]
  %523 = phi i8 [ %496, %502 ], [ %420, %423 ]
  %524 = load i32, ptr @which_alternative, align 4, !tbaa !6
  %525 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  br label %526

526:                                              ; preds = %39, %35, %521
  %527 = phi i8 [ %525, %521 ], [ %25, %35 ], [ %25, %39 ]
  %528 = phi i8 [ %522, %521 ], [ %26, %35 ], [ %26, %39 ]
  %529 = phi i8 [ %523, %521 ], [ %26, %35 ], [ %26, %39 ]
  %530 = phi i32 [ %524, %521 ], [ %28, %35 ], [ %28, %39 ]
  %531 = add nsw i32 %530, 1
  store i32 %531, ptr @which_alternative, align 4, !tbaa !6
  %532 = sext i8 %527 to i32
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %24, label %534, !llvm.loop !43

534:                                              ; preds = %526
  store i32 -1, ptr @which_alternative, align 4, !tbaa !6
  br i1 %20, label %535, label %537

535:                                              ; preds = %534
  %536 = tail call i32 @constrain_operands(i32 noundef -1) #19
  br label %537

537:                                              ; preds = %33, %508, %504, %534, %1, %535
  %538 = phi i32 [ %536, %535 ], [ 1, %1 ], [ 0, %534 ], [ 1, %504 ], [ 1, %508 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #20
  ret i32 %538
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @asm_noperands(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call ptr @extract_asm_operands(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %75, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %64 [
    i16 23, label %65
    i16 15, label %7
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  %15 = load i32, ptr %9, align 8, !tbaa !44
  %16 = zext i32 %15 to i64
  br i1 %14, label %17, label %53

17:                                               ; preds = %7
  %18 = tail call i32 @llvm.smin.i32(i32 %15, i32 0)
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi i64 [ %24, %23 ], [ %16, %17 ]
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = add nsw i64 %20, -1
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %75 [
    i16 23, label %29
    i16 25, label %19
  ], !llvm.loop !46

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %31 = and i64 %20, 4294967295
  br label %35

32:                                               ; preds = %48
  %33 = add nuw nsw i64 %36, 1
  %34 = icmp eq i64 %33, %31
  br i1 %34, label %65, label %35, !llvm.loop !47

35:                                               ; preds = %29, %32
  %36 = phi i64 [ 0, %29 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !12
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %42, label %75

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 17
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = load ptr, ptr %30, align 8, !tbaa !14
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %32, label %75

53:                                               ; preds = %7, %57
  %54 = phi i64 [ %58, %57 ], [ %16, %7 ]
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = add nsw i64 %54, -1
  %59 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 25
  br i1 %63, label %53, label %75, !llvm.loop !48

64:                                               ; preds = %4
  br label %65

65:                                               ; preds = %53, %19, %32, %4, %64
  %66 = phi i32 [ 1, %4 ], [ 0, %64 ], [ %21, %32 ], [ %18, %19 ], [ 0, %53 ]
  %67 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !14
  %69 = load i32, ptr %68, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  %72 = load i32, ptr %71, align 8, !tbaa !44
  %73 = add i32 %69, %66
  %74 = add i32 %73, %72
  br label %75

75:                                               ; preds = %57, %23, %35, %42, %48, %1, %65
  %76 = phi i32 [ %74, %65 ], [ -1, %1 ], [ -1, %48 ], [ -1, %42 ], [ -1, %35 ], [ -1, %23 ], [ -1, %57 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decode_asm_operands(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #1 {
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %94 [
    i16 17, label %97
    i16 23, label %9
    i16 15, label %31
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !14
  store ptr %15, ptr %1, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp eq ptr %2, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %10, ptr %2, align 8, !tbaa !12
  br label %19

19:                                               ; preds = %18, %16
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  store ptr %23, ptr %3, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %97, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %10, align 8, !tbaa !14
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, ptr %4, align 4, !tbaa !6
  br label %97

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 23
  br i1 %39, label %40, label %97

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !14
  %43 = icmp sgt i32 %34, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = icmp eq ptr %1, null
  %46 = icmp eq ptr %2, null
  %47 = icmp eq ptr %3, null
  %48 = icmp eq ptr %4, null
  %49 = zext nneg i32 %34 to i64
  br label %50

50:                                               ; preds = %44, %91
  %51 = phi i64 [ 0, %44 ], [ %92, %91 ]
  %52 = load ptr, ptr %32, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !12
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 25
  br i1 %57, label %95, label %58

58:                                               ; preds = %50
  br i1 %45, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = getelementptr inbounds ptr, ptr %1, i64 %51
  store ptr %61, ptr %62, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %59, %58
  br i1 %46, label %70, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %32, align 8, !tbaa !14
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %51
  %67 = load ptr, ptr %66, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds ptr, ptr %2, i64 %51
  store ptr %68, ptr %69, align 8, !tbaa !12
  br label %70

70:                                               ; preds = %64, %63
  br i1 %47, label %80, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %32, align 8, !tbaa !14
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %51
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  %79 = getelementptr inbounds ptr, ptr %3, i64 %51
  store ptr %78, ptr %79, align 8, !tbaa !12
  br label %80

80:                                               ; preds = %71, %70
  br i1 %48, label %91, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %32, align 8, !tbaa !14
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %51
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds i32, ptr %4, i64 %51
  store i32 %89, ptr %90, align 4, !tbaa !6
  br label %91

91:                                               ; preds = %80, %81
  %92 = add nuw nsw i64 %51, 1
  %93 = icmp eq i64 %92, %49
  br i1 %93, label %97, label %50, !llvm.loop !49

94:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1562, ptr noundef nonnull @.str.1) #18
  br label %97

95:                                               ; preds = %50
  %96 = trunc i64 %51 to i32
  br label %97

97:                                               ; preds = %91, %95, %40, %31, %24, %26, %6, %94
  %98 = phi ptr [ undef, %94 ], [ %0, %6 ], [ %12, %26 ], [ %12, %24 ], [ %36, %31 ], [ %42, %40 ], [ %42, %95 ], [ %42, %91 ]
  %99 = phi i32 [ 0, %94 ], [ 0, %6 ], [ 1, %26 ], [ 1, %24 ], [ 0, %31 ], [ 0, %40 ], [ %96, %95 ], [ %34, %91 ]
  %100 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !14
  %102 = load i32, ptr %101, align 8, !tbaa !44
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %97
  %105 = icmp eq ptr %2, null
  %106 = icmp eq ptr %1, null
  %107 = icmp eq ptr %3, null
  %108 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 2
  %109 = icmp eq ptr %4, null
  %110 = zext i32 %99 to i64
  %111 = zext nneg i32 %102 to i64
  %112 = getelementptr ptr, ptr %2, i64 %110
  %113 = getelementptr ptr, ptr %1, i64 %110
  %114 = getelementptr ptr, ptr %3, i64 %110
  %115 = getelementptr i32, ptr %4, i64 %110
  br label %116

116:                                              ; preds = %104, %145
  %117 = phi i64 [ 0, %104 ], [ %146, %145 ]
  br i1 %105, label %122, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %100, align 8, !tbaa !14
  %120 = getelementptr inbounds %struct.rtvec_def, ptr %119, i64 0, i32 1, i64 %117
  %121 = getelementptr ptr, ptr %112, i64 %117
  store ptr %120, ptr %121, align 8, !tbaa !12
  br label %122

122:                                              ; preds = %118, %116
  br i1 %106, label %128, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %100, align 8, !tbaa !14
  %125 = getelementptr inbounds %struct.rtvec_def, ptr %124, i64 0, i32 1, i64 %117
  %126 = load ptr, ptr %125, align 8, !tbaa !12
  %127 = getelementptr ptr, ptr %113, i64 %117
  store ptr %126, ptr %127, align 8, !tbaa !12
  br label %128

128:                                              ; preds = %123, %122
  br i1 %107, label %136, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %108, align 8, !tbaa !14
  %131 = getelementptr inbounds %struct.rtvec_def, ptr %130, i64 0, i32 1, i64 %117
  %132 = load ptr, ptr %131, align 8, !tbaa !12
  %133 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !14
  %135 = getelementptr ptr, ptr %114, i64 %117
  store ptr %134, ptr %135, align 8, !tbaa !12
  br label %136

136:                                              ; preds = %129, %128
  br i1 %109, label %145, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %108, align 8, !tbaa !14
  %139 = getelementptr inbounds %struct.rtvec_def, ptr %138, i64 0, i32 1, i64 %117
  %140 = load ptr, ptr %139, align 8, !tbaa !12
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = getelementptr i32, ptr %115, i64 %117
  store i32 %143, ptr %144, align 4, !tbaa !6
  br label %145

145:                                              ; preds = %136, %137
  %146 = add nuw nsw i64 %117, 1
  %147 = icmp eq i64 %146, %111
  br i1 %147, label %148, label %116, !llvm.loop !50

148:                                              ; preds = %145, %97
  %149 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !14
  %151 = load i32, ptr %150, align 8, !tbaa !44
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %186

153:                                              ; preds = %148
  %154 = add nsw i32 %102, %99
  %155 = icmp eq ptr %2, null
  %156 = icmp eq ptr %1, null
  %157 = icmp eq ptr %3, null
  %158 = icmp eq ptr %4, null
  %159 = sext i32 %154 to i64
  %160 = zext nneg i32 %151 to i64
  %161 = getelementptr ptr, ptr %2, i64 %159
  %162 = getelementptr ptr, ptr %1, i64 %159
  %163 = getelementptr ptr, ptr %3, i64 %159
  %164 = getelementptr i32, ptr %4, i64 %159
  br label %165

165:                                              ; preds = %153, %183
  %166 = phi i64 [ 0, %153 ], [ %184, %183 ]
  br i1 %155, label %171, label %167

167:                                              ; preds = %165
  %168 = load ptr, ptr %149, align 8, !tbaa !14
  %169 = getelementptr inbounds %struct.rtvec_def, ptr %168, i64 0, i32 1, i64 %166
  %170 = getelementptr ptr, ptr %161, i64 %166
  store ptr %169, ptr %170, align 8, !tbaa !12
  br label %171

171:                                              ; preds = %167, %165
  br i1 %156, label %177, label %172

172:                                              ; preds = %171
  %173 = load ptr, ptr %149, align 8, !tbaa !14
  %174 = getelementptr inbounds %struct.rtvec_def, ptr %173, i64 0, i32 1, i64 %166
  %175 = load ptr, ptr %174, align 8, !tbaa !12
  %176 = getelementptr ptr, ptr %162, i64 %166
  store ptr %175, ptr %176, align 8, !tbaa !12
  br label %177

177:                                              ; preds = %172, %171
  br i1 %157, label %180, label %178

178:                                              ; preds = %177
  %179 = getelementptr ptr, ptr %163, i64 %166
  store ptr @.str.2, ptr %179, align 8, !tbaa !12
  br label %180

180:                                              ; preds = %178, %177
  br i1 %158, label %183, label %181

181:                                              ; preds = %180
  %182 = getelementptr i32, ptr %164, i64 %166
  store i32 16, ptr %182, align 4, !tbaa !6
  br label %183

183:                                              ; preds = %180, %181
  %184 = add nuw nsw i64 %166, 1
  %185 = icmp eq i64 %184, %160
  br i1 %185, label %186, label %165, !llvm.loop !51

186:                                              ; preds = %183, %148
  %187 = icmp eq ptr %5, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !14
  store i32 %190, ptr %5, align 4, !tbaa !6
  br label %191

191:                                              ; preds = %188, %186
  %192 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !14
  ret ptr %193
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @asm_operand_ok(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1607, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i8, ptr %1, align 1, !tbaa !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %241, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = icmp eq ptr %2, null
  br label %18

14:                                               ; preds = %233, %24, %46, %34
  %15 = phi i32 [ %48, %46 ], [ %35, %34 ], [ %20, %24 ], [ %230, %233 ]
  %16 = phi ptr [ %39, %46 ], [ %36, %34 ], [ %25, %24 ], [ %236, %233 ]
  %17 = load i8, ptr %16, align 1, !tbaa !14
  br label %18

18:                                               ; preds = %11, %14
  %19 = phi i8 [ %17, %14 ], [ %9, %11 ]
  %20 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %21 = phi ptr [ %16, %14 ], [ %1, %11 ]
  switch i8 %19, label %212 [
    i8 0, label %241
    i8 44, label %24
    i8 61, label %229
    i8 43, label %229
    i8 42, label %229
    i8 37, label %229
    i8 33, label %229
    i8 35, label %229
    i8 38, label %229
    i8 63, label %229
    i8 48, label %26
    i8 49, label %26
    i8 50, label %26
    i8 51, label %26
    i8 52, label %26
    i8 53, label %26
    i8 54, label %26
    i8 55, label %26
    i8 56, label %26
    i8 57, label %26
    i8 112, label %49
    i8 109, label %53
    i8 86, label %53
    i8 111, label %57
    i8 60, label %61
    i8 62, label %66
    i8 69, label %71
    i8 70, label %71
    i8 71, label %82
    i8 72, label %91
    i8 115, label %100
    i8 105, label %22
    i8 110, label %120
    i8 73, label %127
    i8 74, label %137
    i8 75, label %147
    i8 76, label %157
    i8 77, label %167
    i8 78, label %177
    i8 79, label %187
    i8 80, label %197
    i8 88, label %207
    i8 103, label %208
    i8 114, label %216
  ]

22:                                               ; preds = %18
  %23 = load i32, ptr %0, align 8
  br label %106

24:                                               ; preds = %18
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  br label %14, !llvm.loop !52

26:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  br i1 %13, label %37, label %27

27:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %28 = call i64 @strtoul(ptr noundef nonnull %21, ptr noundef nonnull %4, i32 noundef 10) #19
  %29 = icmp eq i32 %20, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds ptr, ptr %2, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = tail call i32 @asm_operand_ok(ptr noundef %0, ptr noundef %32, ptr noundef null) #19
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %20, %27 ], [ %33, %30 ]
  %36 = load ptr, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %14, !llvm.loop !52

37:                                               ; preds = %26, %37
  %38 = phi ptr [ %39, %37 ], [ %21, %26 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !14
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !53
  %44 = and i16 %43, 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %37, !llvm.loop !55

46:                                               ; preds = %37
  %47 = icmp eq i32 %20, 0
  %48 = select i1 %47, i32 -1, i32 %20
  br label %14, !llvm.loop !52

49:                                               ; preds = %18
  %50 = tail call i32 @address_operand(ptr noundef %0, i32 noundef 0) #19, !range !37
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 %20, i32 1
  br label %229

53:                                               ; preds = %18, %18
  %54 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef 0) #19, !range !34
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 %20, i32 1
  br label %229

57:                                               ; preds = %18
  %58 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %0) #19, !range !34
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 %20, i32 1
  br label %229

61:                                               ; preds = %18
  %62 = load i32, ptr %0, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 43
  %65 = select i1 %64, i32 1, i32 %20
  br label %229

66:                                               ; preds = %18
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 43
  %70 = select i1 %69, i32 1, i32 %20
  br label %229

71:                                               ; preds = %18, %18
  %72 = load i32, ptr %0, align 8
  %73 = trunc i32 %72 to i16
  switch i16 %73, label %229 [
    i16 32, label %81
    i16 33, label %74
  ]

74:                                               ; preds = %71
  %75 = lshr i32 %72, 16
  %76 = and i32 %75, 255
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %80 = icmp eq i8 %79, 17
  br i1 %80, label %81, label %229

81:                                               ; preds = %71, %74
  br label %229

82:                                               ; preds = %18
  %83 = load i32, ptr %0, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %229

86:                                               ; preds = %82
  %87 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %88 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %87) #18
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i32 %20, i32 1
  br label %229

91:                                               ; preds = %18
  %92 = load i32, ptr %0, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 32
  br i1 %94, label %95, label %229

95:                                               ; preds = %91
  %96 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %97 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %96) #18
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, i32 %20, i32 1
  br label %229

100:                                              ; preds = %18
  %101 = load i32, ptr %0, align 8
  %102 = trunc i32 %101 to i16
  switch i16 %102, label %106 [
    i16 30, label %229
    i16 32, label %103
  ]

103:                                              ; preds = %100
  %104 = and i32 %101, 16711680
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %229, label %106

106:                                              ; preds = %22, %100, %103
  %107 = phi i32 [ %23, %22 ], [ %101, %100 ], [ %101, %103 ]
  %108 = and i32 %107, 65535
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !6
  %112 = icmp eq i32 %111, 9
  br i1 %112, label %113, label %229

113:                                              ; preds = %106
  %114 = load i32, ptr @flag_pic, align 4, !tbaa !6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #18
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %229, label %119

119:                                              ; preds = %116, %113
  br label %229

120:                                              ; preds = %18
  %121 = load i32, ptr %0, align 8
  %122 = trunc i32 %121 to i16
  switch i16 %122, label %229 [
    i16 30, label %126
    i16 32, label %123
  ]

123:                                              ; preds = %120
  %124 = and i32 %121, 16711680
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %229

126:                                              ; preds = %120, %123
  br label %229

127:                                              ; preds = %18
  %128 = load i32, ptr %0, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %229

131:                                              ; preds = %127
  %132 = load i64, ptr %12, align 8, !tbaa !14
  %133 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %134 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %132, i32 noundef %133) #18
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, i32 %20, i32 1
  br label %229

137:                                              ; preds = %18
  %138 = load i32, ptr %0, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %229

141:                                              ; preds = %137
  %142 = load i64, ptr %12, align 8, !tbaa !14
  %143 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %144 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %142, i32 noundef %143) #18
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, i32 %20, i32 1
  br label %229

147:                                              ; preds = %18
  %148 = load i32, ptr %0, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 30
  br i1 %150, label %151, label %229

151:                                              ; preds = %147
  %152 = load i64, ptr %12, align 8, !tbaa !14
  %153 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %154 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %152, i32 noundef %153) #18
  %155 = icmp eq i8 %154, 0
  %156 = select i1 %155, i32 %20, i32 1
  br label %229

157:                                              ; preds = %18
  %158 = load i32, ptr %0, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 30
  br i1 %160, label %161, label %229

161:                                              ; preds = %157
  %162 = load i64, ptr %12, align 8, !tbaa !14
  %163 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %164 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %162, i32 noundef %163) #18
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, i32 %20, i32 1
  br label %229

167:                                              ; preds = %18
  %168 = load i32, ptr %0, align 8
  %169 = and i32 %168, 65535
  %170 = icmp eq i32 %169, 30
  br i1 %170, label %171, label %229

171:                                              ; preds = %167
  %172 = load i64, ptr %12, align 8, !tbaa !14
  %173 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %174 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %172, i32 noundef %173) #18
  %175 = icmp eq i8 %174, 0
  %176 = select i1 %175, i32 %20, i32 1
  br label %229

177:                                              ; preds = %18
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 65535
  %180 = icmp eq i32 %179, 30
  br i1 %180, label %181, label %229

181:                                              ; preds = %177
  %182 = load i64, ptr %12, align 8, !tbaa !14
  %183 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %184 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %182, i32 noundef %183) #18
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, i32 %20, i32 1
  br label %229

187:                                              ; preds = %18
  %188 = load i32, ptr %0, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 30
  br i1 %190, label %191, label %229

191:                                              ; preds = %187
  %192 = load i64, ptr %12, align 8, !tbaa !14
  %193 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %194 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %192, i32 noundef %193) #18
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, i32 %20, i32 1
  br label %229

197:                                              ; preds = %18
  %198 = load i32, ptr %0, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 30
  br i1 %200, label %201, label %229

201:                                              ; preds = %197
  %202 = load i64, ptr %12, align 8, !tbaa !14
  %203 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %204 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %202, i32 noundef %203) #18
  %205 = icmp eq i8 %204, 0
  %206 = select i1 %205, i32 %20, i32 1
  br label %229

207:                                              ; preds = %18
  br label %229

208:                                              ; preds = %18
  %209 = tail call i32 @general_operand(ptr noundef %0, i32 noundef 0) #19, !range !34
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i32 %20, i32 1
  br label %229

212:                                              ; preds = %18
  %213 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %214 = tail call i32 @regclass_for_constraint(i32 noundef %213) #18
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %18, %212
  %217 = load i32, ptr %0, align 8
  %218 = and i32 %217, 16711680
  %219 = icmp eq i32 %218, 65536
  br i1 %219, label %229, label %220

220:                                              ; preds = %216
  %221 = tail call i32 @register_operand(ptr noundef nonnull %0, i32 noundef 0) #19
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 %20, i32 1
  br label %229

224:                                              ; preds = %212
  %225 = tail call i32 @lookup_constraint(ptr noundef nonnull %21) #18
  %226 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %0, i32 noundef %225) #18
  %227 = icmp eq i8 %226, 0
  %228 = select i1 %227, i32 %20, i32 1
  br label %229

229:                                              ; preds = %224, %220, %208, %201, %191, %181, %171, %161, %151, %141, %131, %95, %86, %66, %61, %57, %53, %49, %120, %100, %71, %18, %18, %18, %18, %18, %18, %18, %18, %216, %197, %187, %177, %167, %157, %147, %137, %127, %123, %126, %106, %116, %119, %103, %91, %82, %74, %81, %207
  %230 = phi i32 [ %20, %216 ], [ 1, %207 ], [ %20, %197 ], [ %20, %187 ], [ %20, %177 ], [ %20, %167 ], [ %20, %157 ], [ %20, %147 ], [ %20, %137 ], [ %20, %127 ], [ 1, %126 ], [ %20, %123 ], [ 1, %119 ], [ %20, %116 ], [ %20, %106 ], [ %20, %100 ], [ %20, %103 ], [ %20, %91 ], [ %20, %82 ], [ 1, %81 ], [ %20, %74 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %52, %49 ], [ %56, %53 ], [ %60, %57 ], [ %65, %61 ], [ %70, %66 ], [ %20, %71 ], [ %90, %86 ], [ %99, %95 ], [ %20, %120 ], [ %136, %131 ], [ %146, %141 ], [ %156, %151 ], [ %166, %161 ], [ %176, %171 ], [ %186, %181 ], [ %196, %191 ], [ %206, %201 ], [ %211, %208 ], [ %223, %220 ], [ %228, %224 ]
  %231 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %19) #19
  %232 = trunc i64 %231 to i32
  br label %233

233:                                              ; preds = %238, %229
  %234 = phi ptr [ %21, %229 ], [ %236, %238 ]
  %235 = phi i32 [ %232, %229 ], [ 1, %238 ]
  %236 = getelementptr inbounds i8, ptr %234, i64 1
  %237 = icmp eq i32 %235, 1
  br i1 %237, label %14, label %238

238:                                              ; preds = %233
  %239 = load i8, ptr %236, align 1, !tbaa !14
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %233, !llvm.loop !56

241:                                              ; preds = %18, %238, %8
  %242 = phi i32 [ 1, %8 ], [ 0, %238 ], [ %20, %18 ]
  ret i32 %242
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @validate_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = tail call fastcc zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0) #19, !range !57
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = load ptr, ptr %1, align 8, !tbaa !12
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @rtx_equal_p(ptr noundef %6, ptr noundef %2) #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = icmp ne i8 %3, 0
  %13 = load i32, ptr @num_changes, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #18
  %17 = load i32, ptr @num_changes, align 4, !tbaa !6
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi i32 [ %13, %11 ], [ %17, %16 ]
  store ptr %2, ptr %1, align 8, !tbaa !12
  %20 = load i32, ptr @changes_allocated, align 4, !tbaa !6
  %21 = icmp slt i32 %19, %20
  %22 = load ptr, ptr @changes, align 8, !tbaa !12
  br i1 %21, label %31, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 0
  %25 = shl nsw i32 %20, 1
  %26 = select i1 %24, i32 150, i32 %25
  store i32 %26, ptr @changes_allocated, align 4, !tbaa !6
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 40
  %29 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %28) #18
  store ptr %29, ptr @changes, align 8, !tbaa !12
  %30 = load i32, ptr @num_changes, align 4, !tbaa !6
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi i32 [ %30, %23 ], [ %19, %18 ]
  %33 = phi ptr [ %29, %23 ], [ %22, %18 ]
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34
  store ptr %0, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 3
  store ptr %6, ptr %37, align 8, !tbaa !61
  %38 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 4
  store i8 %4, ptr %38, align 8, !tbaa !62
  %39 = icmp eq ptr %0, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 1
  store i32 %46, ptr %47, align 8, !tbaa !63
  store i32 -1, ptr %45, align 8, !tbaa !14
  br label %48

48:                                               ; preds = %44, %40, %31
  %49 = add nsw i32 %32, 1
  store i32 %49, ptr @num_changes, align 4, !tbaa !6
  %50 = icmp eq i8 %3, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = tail call i32 @apply_change_group() #19, !range !34
  %53 = trunc i32 %52 to i8
  br label %54

54:                                               ; preds = %48, %5, %8, %51
  %55 = phi i8 [ %53, %51 ], [ 1, %8 ], [ 1, %5 ], [ 1, %48 ]
  ret i8 %55
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @apply_change_group() local_unnamed_addr #1 {
  %1 = tail call i32 @verify_changes(i32 noundef 0) #19, !range !34
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @confirm_change_group() #19
  br label %5

4:                                                ; preds = %0
  tail call void @cancel_changes(i32 noundef 0) #19
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @validate_unshare_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = tail call fastcc zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 1) #19, !range !57
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @canonicalize_change_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %12, ptr noundef %14) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !14
  %19 = load ptr, ptr %13, align 8, !tbaa !14
  %20 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %19, i8 noundef zeroext 1) #19, !range !57
  %21 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %18, i8 noundef zeroext 1) #19, !range !57
  br label %22

22:                                               ; preds = %2, %10, %17
  %23 = phi i8 [ 1, %17 ], [ 0, %10 ], [ 0, %2 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @insn_invalid_p(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !tbaa !6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp ne i32 %6, 23
  %8 = load i32, ptr @reload_completed, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = load i32, ptr @reload_in_progress, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  %14 = select i1 %13, ptr null, ptr %2
  %15 = call i32 @recog(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %14) #18
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %3, align 8, !tbaa !14
  %19 = call i32 @asm_noperands(ptr noundef %18) #19
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = call i32 @check_asm_operands(ptr noundef %18) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %1, %21
  %25 = load i32, ptr %2, align 4, !tbaa !6
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = call i32 @added_clobbers_hard_reg_p(i32 noundef %15) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 4, !tbaa !6
  %32 = add nsw i32 %31, 1
  %33 = call ptr @rtvec_alloc(i32 noundef %32) #18
  %34 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %33) #18
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %36, i64 0, i32 1
  store ptr %4, ptr %37, align 8, !tbaa !12
  call void @add_clobbers(ptr noundef %34, i32 noundef %15) #18
  store ptr %34, ptr %3, align 8, !tbaa !14
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  call void @extract_insn(ptr noundef nonnull %0) #19
  %42 = call i32 @constrain_operands(i32 noundef 1) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %15, ptr %45, align 8, !tbaa !14
  br label %46

46:                                               ; preds = %17, %27, %41, %21, %44
  %47 = phi i32 [ 0, %44 ], [ 1, %21 ], [ 1, %41 ], [ 1, %27 ], [ 1, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @added_clobbers_hard_reg_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_clobbers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @num_changes_pending() local_unnamed_addr #5 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @verify_changes(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !6
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %128

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %118
  %7 = phi i64 [ %5, %4 ], [ %120, %118 ]
  %8 = phi ptr [ null, %4 ], [ %119, %118 ]
  %9 = load ptr, ptr @changes, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %8
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %118, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = lshr i32 %16, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.mem_attrs, ptr %25, i64 0, i32 5
  %29 = load i8, ptr %28, align 8, !tbaa !35
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi i8 [ %29, %27 ], [ 0, %19 ]
  %32 = tail call i32 @memory_address_addr_space_p(i32 noundef %21, ptr noundef %23, i8 noundef zeroext %31) #19, !range !37
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %124, label %118

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !14
  %43 = tail call i32 @asm_noperands(ptr noundef %42) #19
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %54, i64 13
  %56 = load i8, ptr %55, align 1, !tbaa !14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %50, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 16777216
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %124

67:                                               ; preds = %45, %62, %58, %52, %49, %40, %34
  %68 = icmp eq i32 %17, 7
  br i1 %68, label %118, label %69

69:                                               ; preds = %67
  %70 = tail call i32 @insn_invalid_p(ptr noundef nonnull %11) #19, !range !34
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %118, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  %75 = load i32, ptr %74, align 8
  %76 = trunc i32 %75 to i16
  switch i16 %76, label %124 [
    i16 15, label %77
    i16 24, label %118
    i16 25, label %118
    i16 138, label %118
  ]

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = load i32, ptr %79, align 8, !tbaa !44
  %81 = add nsw i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 25
  br i1 %87, label %88, label %124

88:                                               ; preds = %77
  %89 = tail call i32 @asm_noperands(ptr noundef nonnull %74) #19
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %88
  %92 = icmp eq i32 %80, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !12
  br label %115

96:                                               ; preds = %91
  %97 = tail call ptr @rtvec_alloc(i32 noundef %81) #18
  %98 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %97) #18
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !14
  %101 = load i32, ptr %100, align 8, !tbaa !44
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96, %103
  %104 = phi i64 [ %110, %103 ], [ 0, %96 ]
  %105 = phi ptr [ %111, %103 ], [ %100, %96 ]
  %106 = load ptr, ptr %78, align 8, !tbaa !14
  %107 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1, i64 %104
  %108 = load ptr, ptr %107, align 8, !tbaa !12
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %104
  store ptr %108, ptr %109, align 8, !tbaa !12
  %110 = add nuw nsw i64 %104, 1
  %111 = load ptr, ptr %99, align 8, !tbaa !14
  %112 = load i32, ptr %111, align 8, !tbaa !44
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %103, label %115, !llvm.loop !67

115:                                              ; preds = %103, %96, %93
  %116 = phi ptr [ %95, %93 ], [ %98, %96 ], [ %98, %103 ]
  %117 = tail call zeroext i8 @validate_change(ptr noundef nonnull %11, ptr noundef nonnull %73, ptr noundef %116, i8 noundef zeroext 1) #19, !range !57
  br label %118

118:                                              ; preds = %72, %72, %72, %30, %69, %6, %67, %115
  %119 = phi ptr [ %8, %115 ], [ %8, %67 ], [ %8, %6 ], [ %11, %69 ], [ %11, %30 ], [ %8, %72 ], [ %8, %72 ], [ %8, %72 ]
  %120 = add nsw i64 %7, 1
  %121 = load i32, ptr @num_changes, align 4, !tbaa !6
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %6, label %124, !llvm.loop !68

124:                                              ; preds = %30, %62, %77, %88, %72, %118
  %125 = phi i64 [ %120, %118 ], [ %7, %72 ], [ %7, %88 ], [ %7, %77 ], [ %7, %62 ], [ %7, %30 ]
  %126 = trunc i64 %125 to i32
  %127 = load i32, ptr @num_changes, align 4, !tbaa !6
  br label %128

128:                                              ; preds = %124, %1
  %129 = phi i32 [ %2, %1 ], [ %127, %124 ]
  %130 = phi i32 [ %0, %1 ], [ %126, %124 ]
  %131 = icmp eq i32 %130, %129
  %132 = zext i1 %131 to i32
  ret i32 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !69
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2) #18
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @confirm_change_group() local_unnamed_addr #1 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %53

3:                                                ; preds = %0
  %4 = load ptr, ptr @changes, align 8, !tbaa !12
  br label %5

5:                                                ; preds = %3, %37
  %6 = phi ptr [ %4, %3 ], [ %38, %37 ]
  %7 = phi i64 [ 0, %3 ], [ %40, %37 ]
  %8 = phi ptr [ null, %3 ], [ %39, %37 ]
  %9 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = tail call ptr @copy_rtx(ptr noundef %17) #18
  %19 = load ptr, ptr @changes, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.change_t, ptr %19, i64 %7, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  store ptr %18, ptr %21, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %14, %5
  %23 = phi ptr [ %19, %14 ], [ %6, %5 ]
  %24 = icmp eq ptr %10, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = icmp ne ptr %10, %8
  %27 = icmp ne ptr %8, null
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, ptr %8, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %8) #18
  %36 = load ptr, ptr @changes, align 8, !tbaa !12
  br label %37

37:                                               ; preds = %29, %25, %34, %22
  %38 = phi ptr [ %23, %22 ], [ %23, %29 ], [ %36, %34 ], [ %23, %25 ]
  %39 = phi ptr [ %8, %22 ], [ %10, %29 ], [ %10, %34 ], [ %10, %25 ]
  %40 = add nuw nsw i64 %7, 1
  %41 = load i32, ptr @num_changes, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %5, label %44, !llvm.loop !81

44:                                               ; preds = %37
  %45 = icmp eq ptr %39, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %39, align 8
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -7
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %39) #18
  br label %53

53:                                               ; preds = %0, %46, %51, %44
  store i32 0, ptr @num_changes, align 4, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cancel_changes(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !6
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = load ptr, ptr @changes, align 8, !tbaa !12
  %6 = sext i32 %2 to i64
  %7 = sext i32 %0 to i64
  br label %8

8:                                                ; preds = %4, %26
  %9 = phi i64 [ %6, %4 ], [ %10, %26 ]
  %10 = add nsw i64 %9, -1
  %11 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  store ptr %12, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %8, %18, %22
  %27 = icmp sgt i64 %10, %7
  br i1 %27, label %8, label %28, !llvm.loop !82

28:                                               ; preds = %26, %1
  store i32 %0, ptr @num_changes, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @num_validated_changes() local_unnamed_addr #5 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_subexp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !34
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 {
  %6 = load ptr, ptr %0, align 8, !tbaa !12
  %7 = load i32, ptr @num_changes, align 4, !tbaa !6
  %8 = icmp eq ptr %6, null
  br i1 %8, label %148, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %16 = icmp eq i8 %15, 101
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ]
  %25 = icmp eq ptr %6, %1
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %11, 37
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = xor i32 %28, %10
  %34 = and i32 %33, 16711680
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #19
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %36, %32, %26
  %41 = xor i32 %28, %10
  %42 = and i32 %41, 16777215
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = tail call i32 @rtx_equal_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 8
  br label %51

49:                                               ; preds = %44, %36, %23
  %50 = tail call zeroext i8 @validate_unshare_change(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %2, i8 noundef zeroext 1) #19, !range !57
  br label %148

51:                                               ; preds = %47, %40
  %52 = phi i32 [ %48, %47 ], [ %10, %40 ]
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %101

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = load i32, ptr %57, align 8, !tbaa !44
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %130

60:                                               ; preds = %55
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %98
  %63 = phi i64 [ %61, %60 ], [ %64, %98 ]
  %64 = add nsw i64 %63, -1
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %56, align 8, !tbaa !14
  br i1 %65, label %96, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  %70 = load ptr, ptr %69, align 8, !tbaa !12
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 23
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 17
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load ptr, ptr %68, align 8, !tbaa !12
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !14
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.1) #18
  %90 = load ptr, ptr %56, align 8, !tbaa !14
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %90, i64 0, i32 1, i64 %64
  %92 = load ptr, ptr %91, align 8, !tbaa !12
  br label %93

93:                                               ; preds = %80, %89
  %94 = phi ptr [ %70, %80 ], [ %92, %89 ]
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  br label %98

96:                                               ; preds = %74, %67, %62
  %97 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  br label %98

98:                                               ; preds = %93, %96
  %99 = phi ptr [ %95, %93 ], [ %97, %96 ]
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %99, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  %100 = icmp ugt i64 %63, 1
  br i1 %100, label %62, label %130, !llvm.loop !83

101:                                              ; preds = %51
  %102 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %12
  %103 = load i8, ptr %102, align 1, !tbaa !14
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %107 = zext i8 %103 to i64
  br label %108

108:                                              ; preds = %105, %128
  %109 = phi i64 [ %107, %105 ], [ %110, %128 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %14, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !14
  switch i8 %112, label %128 [
    i8 101, label %113
    i8 69, label %115
  ]

113:                                              ; preds = %108
  %114 = getelementptr inbounds [1 x %union.rtunion_def], ptr %106, i64 0, i64 %110
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %114, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  br label %128

115:                                              ; preds = %108
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %106, i64 0, i64 %110
  %117 = load ptr, ptr %116, align 8, !tbaa !14
  %118 = load i32, ptr %117, align 8, !tbaa !44
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = zext nneg i32 %118 to i64
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %121, %120 ], [ %124, %122 ]
  %124 = add nsw i64 %123, -1
  %125 = load ptr, ptr %116, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 0, i32 1, i64 %124
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %126, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  %127 = icmp ugt i64 %123, 1
  br i1 %127, label %122, label %128, !llvm.loop !84

128:                                              ; preds = %122, %115, %108, %113
  %129 = icmp sgt i64 %109, 1
  br i1 %129, label %108, label %130, !llvm.loop !85

130:                                              ; preds = %128, %98, %101, %55
  %131 = load i32, ptr @num_changes, align 4, !tbaa !6
  %132 = icmp eq i32 %131, %7
  br i1 %132, label %148, label %133

133:                                              ; preds = %130
  %134 = load i8, ptr %14, align 1, !tbaa !14
  %135 = icmp eq i8 %134, 101
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !14
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 %24, i32 %141
  br label %144

144:                                              ; preds = %136, %133
  %145 = phi i32 [ %24, %133 ], [ %143, %136 ]
  %146 = icmp eq i8 %4, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  tail call fastcc void @simplify_while_replacing(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %145) #19
  br label %148

148:                                              ; preds = %144, %147, %130, %5, %49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !14
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_while_replacing(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, 11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %16, ptr noundef %18) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @swap_condition(i32 noundef %7) #18
  %30 = load i32, ptr %5, align 8
  br label %31

31:                                               ; preds = %21, %28
  %32 = phi i32 [ %30, %28 ], [ %22, %21 ]
  %33 = phi i32 [ %29, %28 ], [ %7, %21 ]
  %34 = lshr i32 %32, 16
  %35 = and i32 %34, 255
  %36 = load ptr, ptr %17, align 8, !tbaa !14
  %37 = load ptr, ptr %15, align 8, !tbaa !14
  %38 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %33, i32 noundef %35, ptr noundef %36, ptr noundef %37) #18
  %39 = tail call zeroext i8 @validate_unshare_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %38, i8 noundef zeroext 1) #19, !range !57
  %40 = load ptr, ptr %0, align 8, !tbaa !12
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  br label %43

43:                                               ; preds = %31, %14, %4
  %44 = phi i32 [ %42, %31 ], [ %7, %14 ], [ %7, %4 ]
  %45 = phi ptr [ %40, %31 ], [ %5, %14 ], [ %5, %4 ]
  %46 = trunc i32 %44 to i16
  switch i16 %46, label %185 [
    i16 49, label %47
    i16 50, label %63
    i16 99, label %77
    i16 98, label %77
    i16 39, label %98
    i16 120, label %123
    i16 119, label %123
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 30
  %53 = icmp eq ptr %49, %1
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %185

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %57 = load i32, ptr %45, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = load ptr, ptr %56, align 8, !tbaa !14
  %61 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %59, ptr noundef %60, ptr noundef nonnull %1) #18
  %62 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %61, i8 noundef zeroext 1) #19, !range !57
  br label %185

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !14
  %66 = load i32, ptr %65, align 8
  %67 = trunc i32 %66 to i16
  switch i16 %67, label %185 [
    i16 30, label %68
    i16 32, label %68
  ]

68:                                               ; preds = %63, %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %70 = load i32, ptr %45, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = load ptr, ptr %69, align 8, !tbaa !14
  %74 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %72, ptr noundef nonnull %65, i32 noundef %72) #18
  %75 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %72, ptr noundef %73, ptr noundef %74) #18
  %76 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %75, i8 noundef zeroext 1) #19, !range !57
  br label %185

77:                                               ; preds = %43, %43
  %78 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 16711680
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %185

83:                                               ; preds = %77
  %84 = load i32, ptr %45, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = tail call ptr @simplify_gen_unary(i32 noundef %44, i32 noundef %86, ptr noundef nonnull %79, i32 noundef %3) #18
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, ptr %45, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %94 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %92, ptr noundef %93) #18
  br label %95

95:                                               ; preds = %89, %83
  %96 = phi ptr [ %87, %83 ], [ %94, %89 ]
  %97 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %96, i8 noundef zeroext 1) #19, !range !57
  br label %185

98:                                               ; preds = %43
  %99 = load i32, ptr %45, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !14
  %104 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load i32, ptr %104, align 8, !tbaa !14
  %106 = tail call ptr @simplify_subreg(i32 noundef %101, ptr noundef %103, i32 noundef %3, i32 noundef %105) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %98
  %109 = load ptr, ptr %102, align 8, !tbaa !14
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 16711680
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %185

113:                                              ; preds = %108
  %114 = load i32, ptr %45, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !12
  %118 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %116, ptr noundef %117) #18
  %119 = icmp eq ptr %118, null
  br i1 %119, label %185, label %120

120:                                              ; preds = %98, %113
  %121 = phi ptr [ %118, %113 ], [ %106, %98 ]
  %122 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %121, i8 noundef zeroext 1) #19, !range !57
  br label %185

123:                                              ; preds = %43, %43
  %124 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !14
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 43
  br i1 %128, label %129, label %185

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !14
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 30
  br i1 %134, label %135, label %185

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %137 = load ptr, ptr %136, align 8, !tbaa !14
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %185

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !14
  %144 = tail call i32 @mode_dependent_address_p(ptr noundef %143) #19, !range !34
  %145 = and i32 %126, 134217728
  %146 = or disjoint i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %141
  %149 = lshr i32 %126, 16
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !14
  %153 = trunc i64 %152 to i32
  %154 = load i32, ptr %45, align 8
  %155 = trunc i32 %154 to i16
  switch i16 %155, label %185 [
    i16 120, label %156
    i16 119, label %159
  ]

156:                                              ; preds = %148
  %157 = tail call i32 @mode_for_extraction(i32 noundef 2, i32 noundef 1) #18
  %158 = icmp eq i32 %157, 87
  br i1 %158, label %185, label %162

159:                                              ; preds = %148
  %160 = tail call i32 @mode_for_extraction(i32 noundef 1, i32 noundef 1) #18
  %161 = icmp eq i32 %160, 87
  br i1 %161, label %185, label %162

162:                                              ; preds = %159, %156
  %163 = phi i32 [ %157, %156 ], [ %160, %159 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %185, label %165

165:                                              ; preds = %162
  %166 = zext i32 %163 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !14
  %169 = zext nneg i32 %150 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !14
  %172 = icmp ult i8 %168, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %165
  %174 = zext i8 %168 to i32
  %175 = sdiv i32 %153, 8
  %176 = shl nuw nsw i32 %174, 3
  %177 = srem i32 %153, %176
  %178 = load ptr, ptr %124, align 8, !tbaa !14
  %179 = sext i32 %175 to i64
  %180 = tail call ptr @adjust_address_1(ptr noundef %178, i32 noundef %163, i64 noundef %179, i32 noundef 0, i32 noundef 1) #18
  %181 = sext i32 %177 to i64
  %182 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %181) #18
  %183 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %136, ptr noundef %182, i8 noundef zeroext 1) #19, !range !57
  %184 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %124, ptr noundef %180, i8 noundef zeroext 1) #19, !range !57
  br label %185

185:                                              ; preds = %159, %156, %148, %108, %162, %165, %173, %63, %43, %123, %129, %135, %141, %113, %120, %77, %95, %68, %47, %55
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mode_dependent_address_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = add nsw i32 %3, -74
  %5 = icmp ult i32 %4, 4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @mode_for_extraction(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !34
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !34
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_part_nosimplify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 0) #19
  %5 = tail call i32 @apply_change_group() #19, !range !34
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @validate_replace_rtx_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %19, %17 ], [ %6, %3 ]
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -3
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %16, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  br label %17

17:                                               ; preds = %8, %15
  %18 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !86

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @validate_replace_src_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.validate_replace_src_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  store ptr %0, ptr %4, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  call void @note_uses(ptr noundef nonnull %7, ptr noundef nonnull @validate_replace_src_1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @validate_replace_src_1(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @validate_simplify_insn(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %69 [
    i16 23, label %11
    i16 15, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %33, label %69

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = tail call ptr @simplify_rtx(ptr noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 8, !tbaa !14
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef nonnull %15) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %15, i8 noundef zeroext 1) #19, !range !57
  br label %23

23:                                               ; preds = %21, %17, %11
  %24 = load ptr, ptr %12, align 8, !tbaa !14
  %25 = tail call ptr @simplify_rtx(ptr noundef %24) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %12, align 8, !tbaa !14
  %29 = tail call i32 @rtx_equal_p(ptr noundef %28, ptr noundef nonnull %25) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %25, i8 noundef zeroext 1) #19, !range !57
  br label %69

33:                                               ; preds = %6, %63
  %34 = phi i64 [ %64, %63 ], [ 0, %6 ]
  %35 = phi ptr [ %65, %63 ], [ %8, %6 ]
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !12
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !14
  %45 = tail call ptr @simplify_rtx(ptr noundef %44) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %43, align 8, !tbaa !14
  %49 = tail call i32 @rtx_equal_p(ptr noundef %48, ptr noundef nonnull %45) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %45, i8 noundef zeroext 1) #19, !range !57
  br label %53

53:                                               ; preds = %51, %47, %41
  %54 = load ptr, ptr %42, align 8, !tbaa !14
  %55 = tail call ptr @simplify_rtx(ptr noundef %54) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %42, align 8, !tbaa !14
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %55) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull %55, i8 noundef zeroext 1) #19, !range !57
  br label %63

63:                                               ; preds = %53, %57, %61, %33
  %64 = add nuw nsw i64 %34, 1
  %65 = load ptr, ptr %7, align 8, !tbaa !14
  %66 = load i32, ptr %65, align 8, !tbaa !44
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %33, label %69, !llvm.loop !91

69:                                               ; preds = %63, %6, %1, %23, %27, %31
  %70 = tail call i32 @num_changes_pending() #19
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = tail call i32 @apply_change_group() #19, !range !34
  %74 = trunc i32 %73 to i8
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i8 [ 0, %69 ], [ %74, %72 ]
  ret i8 %76
}

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %1, 0
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = select i1 %5, i32 %7, i32 %1
  %9 = and i32 %3, 16711680
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %17 = and i8 %16, -2
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %134

19:                                               ; preds = %13, %2
  %20 = icmp eq i32 %4, 30
  %21 = and i1 %20, %11
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !14
  %25 = tail call i64 @trunc_int_for_mode(i64 noundef %24, i32 noundef %8) #18
  %26 = load i64, ptr %23, align 8, !tbaa !14
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %134

28:                                               ; preds = %22
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 65535
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ %30, %28 ], [ %4, %19 ]
  %33 = phi i32 [ %29, %28 ], [ %3, %19 ]
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !6
  %37 = icmp eq i32 %36, 9
  %38 = lshr i32 %33, 16
  %39 = and i32 %38, 255
  br i1 %37, label %40, label %55

40:                                               ; preds = %31
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %39, %8
  %44 = icmp eq i32 %8, 0
  %45 = or i1 %44, %43
  br i1 %45, label %46, label %134

46:                                               ; preds = %42, %40
  %47 = load i32, ptr @flag_pic, align 4, !tbaa !6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %134, label %52

52:                                               ; preds = %49, %46
  %53 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #18
  %54 = icmp ne i8 %53, 0
  br label %134

55:                                               ; preds = %31
  %56 = icmp eq i32 %39, %8
  br i1 %56, label %57, label %134

57:                                               ; preds = %55
  %58 = icmp eq i32 %4, 39
  br i1 %58, label %59, label %99

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr %61, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 43
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = zext nneg i32 %8 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !14
  %72 = lshr i32 %64, 16
  %73 = and i32 %72, 255
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !14
  %77 = icmp ugt i8 %71, %76
  br i1 %77, label %134, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load i32, ptr %79, align 8, !tbaa !14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %134

82:                                               ; preds = %59, %78
  %83 = zext nneg i32 %8 to i64
  %84 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !14
  %86 = and i8 %85, -2
  %87 = icmp eq i8 %86, 8
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %83
  %90 = load i8, ptr %89, align 1, !tbaa !14
  %91 = lshr i32 %64, 16
  %92 = and i32 %91, 255
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !14
  %96 = icmp ugt i8 %90, %95
  br i1 %96, label %134, label %97

97:                                               ; preds = %88, %82
  %98 = and i32 %64, 65535
  br label %99

99:                                               ; preds = %97, %57
  %100 = phi i32 [ %64, %97 ], [ %33, %57 ]
  %101 = phi i32 [ %98, %97 ], [ %4, %57 ]
  %102 = phi ptr [ %61, %97 ], [ %0, %57 ]
  %103 = trunc i32 %101 to i16
  switch i16 %103, label %133 [
    i16 37, label %104
    i16 43, label %112
  ]

104:                                              ; preds = %99
  %105 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %102) #19
  %106 = icmp ugt i32 %105, 52
  br i1 %106, label %134, label %107

107:                                              ; preds = %104
  %108 = zext nneg i32 %105 to i64
  %109 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !6
  %111 = icmp ne i32 %110, 0
  br label %134

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = load i32, ptr @volatile_ok, align 4, !tbaa !6
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %100, 134217728
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = lshr i32 %100, 16
  %122 = and i32 %121, 255
  %123 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !14
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.mem_attrs, ptr %124, i64 0, i32 5
  %128 = load i8, ptr %127, align 8, !tbaa !35
  br label %129

129:                                              ; preds = %126, %120
  %130 = phi i8 [ %128, %126 ], [ 0, %120 ]
  %131 = tail call i32 @memory_address_addr_space_p(i32 noundef %122, ptr noundef %114, i8 noundef zeroext %130) #19, !range !37
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %99, %129
  br label %134

134:                                              ; preds = %112, %78, %88, %68, %13, %104, %107, %55, %49, %52, %42, %22, %129, %133
  %135 = phi i1 [ false, %133 ], [ true, %129 ], [ false, %13 ], [ false, %22 ], [ false, %49 ], [ %54, %52 ], [ false, %42 ], [ false, %55 ], [ true, %104 ], [ %111, %107 ], [ false, %68 ], [ false, %88 ], [ false, %78 ], [ false, %112 ]
  %136 = zext i1 %135 to i32
  ret i32 %136
}

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @address_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext 0) #19, !range !37
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, %1
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %80, label %9

9:                                                ; preds = %2
  %10 = and i32 %3, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 43
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !34
  br label %80

23:                                               ; preds = %12
  %24 = icmp eq i32 %18, 37
  br i1 %24, label %25, label %45

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #19
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = lshr i32 %17, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %30, i32 noundef %1, i32 noundef %33) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load i32, ptr %14, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !14
  %43 = and i8 %42, -2
  %44 = icmp eq i8 %43, 10
  br i1 %44, label %45, label %80

45:                                               ; preds = %36, %28, %25, %23
  %46 = load i32, ptr %0, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !14
  %52 = and i8 %51, -2
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = load i32, ptr %14, align 8
  br label %66

56:                                               ; preds = %45
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %59 = load i32, ptr %14, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !14
  %65 = icmp ugt i8 %58, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %54, %56, %9
  %67 = phi i32 [ %3, %9 ], [ %59, %56 ], [ %55, %54 ]
  %68 = phi ptr [ %0, %9 ], [ %14, %56 ], [ %14, %54 ]
  %69 = and i32 %67, 65535
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %68) #19
  %73 = icmp ugt i32 %72, 52
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = zext nneg i32 %72 to i64
  %76 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !6
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %56, %36, %21, %66, %74, %71, %2
  %81 = phi i32 [ 0, %2 ], [ 0, %66 ], [ 1, %71 ], [ %79, %74 ], [ 0, %56 ], [ 0, %36 ], [ %22, %21 ]
  ret i32 %81
}

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @pmode_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef 16) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @scratch_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, %1
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %3 to i16
  switch i16 %10, label %15 [
    i16 38, label %16
    i16 37, label %11
  ]

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %13 = icmp ult i32 %12, 53
  %14 = zext i1 %13 to i32
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %11, %15, %9, %2
  %17 = phi i32 [ 0, %2 ], [ 1, %9 ], [ %14, %11 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @immediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %52

14:                                               ; preds = %8, %2
  %15 = and i32 %3, 65535
  %16 = icmp eq i32 %15, 30
  %17 = and i1 %6, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !14
  %21 = tail call i64 @trunc_int_for_mode(i64 noundef %20, i32 noundef %1) #18
  %22 = load i64, ptr %19, align 8, !tbaa !14
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ %26, %24 ], [ %15, %14 ]
  %29 = phi i32 [ %25, %24 ], [ %3, %14 ]
  %30 = zext nneg i32 %28 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !6
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = lshr i32 %29, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, %1
  %38 = icmp eq i32 %1, 0
  %39 = or i1 %38, %37
  %40 = icmp eq i32 %36, 0
  %41 = or i1 %40, %39
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, ptr @flag_pic, align 4, !tbaa !6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45, %42
  %49 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #18
  %50 = icmp ne i8 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %8, %27, %45, %48, %34, %18
  %53 = phi i32 [ 0, %8 ], [ 0, %18 ], [ 0, %45 ], [ 0, %27 ], [ %51, %48 ], [ 0, %34 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @const_int_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !14
  %11 = tail call i64 @trunc_int_for_mode(i64 noundef %10, i32 noundef %1) #18
  %12 = load i64, ptr %9, align 8, !tbaa !14
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %6
  br label %15

15:                                               ; preds = %8, %2, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_double_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %25

14:                                               ; preds = %8, %2
  %15 = trunc i32 %3 to i16
  switch i16 %15, label %25 [
    i16 32, label %16
    i16 30, label %16
  ]

16:                                               ; preds = %14, %14
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = lshr i32 %3, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %20, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %8, %22, %18, %16, %14
  %26 = phi i32 [ 0, %8 ], [ 1, %18 ], [ 1, %16 ], [ %24, %22 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #19, !range !34
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = icmp ne i32 %10, 9
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = and i32 %3, 16711680
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %1, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %18 = and i8 %17, -2
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %83

20:                                               ; preds = %14, %9
  %21 = icmp eq i32 %4, 30
  %22 = and i1 %12, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !14
  %26 = tail call i64 @trunc_int_for_mode(i64 noundef %25, i32 noundef %1) #18
  %27 = load i64, ptr %24, align 8, !tbaa !14
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %23
  %30 = load i32, ptr %0, align 8
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %3, %20 ]
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, %1
  %38 = icmp eq i32 %1, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %83

40:                                               ; preds = %36, %31
  %41 = load i32, ptr @flag_pic, align 4, !tbaa !6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %43, %40
  %47 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #18
  %48 = icmp ne i8 %47, 0
  %49 = zext i1 %48 to i32
  br label %83

50:                                               ; preds = %2
  %51 = lshr i32 %3, 16
  %52 = and i32 %51, 255
  %53 = icmp ne i32 %52, %1
  %54 = icmp ne i32 %1, 0
  %55 = and i1 %54, %53
  br i1 %55, label %83, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %4, 39
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 43
  %66 = select i1 %60, i1 %65, i1 false
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !34
  br label %83

69:                                               ; preds = %58, %56
  %70 = phi i32 [ %3, %56 ], [ %63, %58 ]
  %71 = phi ptr [ %0, %56 ], [ %62, %58 ]
  %72 = and i32 %70, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #19
  %76 = icmp ugt i32 %75, 52
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !6
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %14, %69, %77, %74, %50, %43, %46, %36, %23, %67
  %84 = phi i32 [ %68, %67 ], [ 0, %14 ], [ 0, %23 ], [ 0, %43 ], [ %49, %46 ], [ 0, %36 ], [ 0, %50 ], [ 0, %69 ], [ 1, %74 ], [ %82, %77 ]
  ret i32 %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @push_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, 3
  %8 = and i32 %7, 508
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %60

18:                                               ; preds = %14, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i32 %8, %6
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 65535
  br i1 %21, label %24, label %29

24:                                               ; preds = %18
  %25 = icmp eq i32 %23, 74
  br i1 %25, label %26, label %60

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  br label %55

29:                                               ; preds = %18
  %30 = icmp eq i32 %23, 78
  br i1 %30, label %31, label %60

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 49
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = load ptr, ptr %38, align 8, !tbaa !14
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 30
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !14
  %52 = sub nsw i32 0, %8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %26, %49
  %56 = phi ptr [ %28, %26 ], [ %40, %49 ]
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !12
  %58 = icmp eq ptr %56, %57
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %29, %31, %37, %43, %49, %24, %14, %2, %55
  %61 = phi i32 [ %59, %55 ], [ 0, %2 ], [ 0, %14 ], [ 0, %24 ], [ 0, %49 ], [ 0, %43 ], [ 0, %37 ], [ 0, %31 ], [ 0, %29 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pop_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %24

12:                                               ; preds = %8, %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 77
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !12
  %22 = icmp eq ptr %20, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %12, %8, %2, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %2 ], [ 0, %8 ], [ 0, %12 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %27, label %29

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = load i32, ptr %0, align 8
  br i1 %10, label %16, label %12

12:                                               ; preds = %9
  %13 = lshr i32 %11, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %9
  %17 = and i32 %11, 65535
  %18 = icmp eq i32 %17, 39
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ %11, %16 ]
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %5
  %28 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !34
  br label %29

29:                                               ; preds = %27, %23, %12, %5
  %30 = phi i32 [ 0, %5 ], [ 0, %12 ], [ 0, %23 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @indirect_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !14
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = lshr i32 %5, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %58

23:                                               ; preds = %19, %15
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = tail call i32 @general_operand(ptr noundef %27, i32 noundef 16) #19, !range !34
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25, %23
  %31 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = sub nsw i32 0, %17
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %53, label %58

48:                                               ; preds = %2
  %49 = icmp eq i32 %6, 43
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = tail call i32 @memory_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !34
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %42
  %54 = phi ptr [ %32, %42 ], [ %0, %50 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !14
  %57 = tail call i32 @general_operand(ptr noundef %56, i32 noundef 16) #19, !range !34
  br label %58

58:                                               ; preds = %53, %9, %48, %50, %19, %30, %36, %42, %25
  %59 = phi i32 [ 0, %19 ], [ 1, %25 ], [ 0, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %50 ], [ 0, %48 ], [ 0, %9 ], [ %57, %53 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ordered_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %9, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %4, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %2
  %10 = trunc i32 %4 to i16
  %11 = add i16 %10, -80
  %12 = icmp ult i16 %11, 10
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ 0, %5 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %9, label %5

5:                                                ; preds = %2
  %6 = lshr i32 %4, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %16

9:                                                ; preds = %5, %2
  %10 = and i32 %4, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp ult i32 %13, 2
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @extract_asm_operands(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %23 [
    i16 17, label %24
    i16 23, label %4
    i16 15, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %24, label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 17, label %24
    i16 23, label %17
  ]

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %24, label %23

23:                                               ; preds = %10, %1, %17, %4
  br label %24

24:                                               ; preds = %17, %10, %4, %1, %23
  %25 = phi ptr [ null, %23 ], [ %0, %1 ], [ %6, %4 ], [ %14, %10 ], [ %19, %17 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @offsettable_nonstrict_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %5 ]
  %18 = tail call i32 @offsettable_address_addr_space_p(i32 noundef 0, i32 noundef %7, ptr noundef %9, i8 noundef zeroext %17) #19
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %16 ]
  ret i32 %22
}

; Function Attrs: optsize
declare zeroext i8 @constraint_satisfied_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #10 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_constant_term_loc(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = load i32, ptr %2, align 8
  %4 = freeze i32 %3
  %5 = and i32 %4, 65534
  %6 = icmp eq i32 %5, 44
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = trunc i32 %4 to i16
  switch i16 %8, label %9 [
    i16 35, label %43
    i16 30, label %43
    i16 49, label %10
  ]

9:                                                ; preds = %7
  br label %43

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !6
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %43, label %32

32:                                               ; preds = %25, %21, %14
  %33 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %11) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %10, %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %36) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %39, %32, %25, %7, %7, %1, %42, %9
  %44 = phi ptr [ null, %9 ], [ null, %42 ], [ %0, %7 ], [ %0, %7 ], [ %0, %1 ], [ %0, %25 ], [ %33, %32 ], [ %40, %39 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @offsettable_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %5, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %5 ]
  %18 = tail call i32 @offsettable_address_addr_space_p(i32 noundef 1, i32 noundef %7, ptr noundef %9, i8 noundef zeroext %17) #19
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i32 [ 0, %1 ], [ %20, %16 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @offsettable_address_addr_space_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !12
  %8 = icmp eq i32 %0, 0
  %9 = select i1 %8, ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %13 = zext i8 %12 to i32
  %14 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %2) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %4
  %17 = tail call i32 @mode_dependent_address_p(ptr noundef nonnull %2) #19, !range !34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = icmp eq i8 %12, 0
  %21 = load i32, ptr @ix86_isa_flags, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 16, i32 32
  %25 = select i1 %20, i32 %24, i32 %13
  %26 = icmp eq i32 %7, 49
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = call ptr @find_constant_term_loc(ptr noundef nonnull %5) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !12
  store ptr %31, ptr %5, align 8, !tbaa !12
  %32 = add nsw i32 %25, -1
  %33 = zext nneg i32 %32 to i64
  %34 = call ptr @plus_constant(ptr noundef %31, i64 noundef %33) #18
  store ptr %34, ptr %28, align 8, !tbaa !12
  %35 = call i32 %9(i32 noundef 14, ptr noundef nonnull %2, i8 noundef zeroext %3) #18, !callees !92
  %36 = load ptr, ptr %5, align 8, !tbaa !12
  store ptr %36, ptr %28, align 8, !tbaa !12
  br label %71

37:                                               ; preds = %27, %19
  %38 = zext nneg i32 %7 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 12
  br i1 %41, label %71, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %2, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 122
  %46 = icmp ne i32 %1, 1
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = call i32 @get_mode_alignment(i32 noundef %1) #18
  %50 = lshr i32 %49, 3
  %51 = icmp ugt i32 %25, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %2, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !14
  %60 = add nsw i32 %25, -1
  %61 = zext nneg i32 %60 to i64
  %62 = call ptr @plus_constant(ptr noundef %59, i64 noundef %61) #18
  %63 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %55, ptr noundef %57, ptr noundef %62) #18
  br label %68

64:                                               ; preds = %48, %42
  %65 = add nsw i32 %25, -1
  %66 = zext nneg i32 %65 to i64
  %67 = call ptr @plus_constant(ptr noundef nonnull %2, i64 noundef %66) #18
  br label %68

68:                                               ; preds = %64, %52
  %69 = phi ptr [ %63, %52 ], [ %67, %64 ]
  %70 = call i32 %9(i32 noundef 14, ptr noundef %69, i8 noundef zeroext %3) #18, !callees !92
  br label %71

71:                                               ; preds = %37, %16, %4, %68, %30
  %72 = phi i32 [ %35, %30 ], [ %70, %68 ], [ 1, %4 ], [ 0, %16 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i32 %72
}

; Function Attrs: optsize
declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_insn_cached(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !29
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !14
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %1
  tail call void @extract_insn(ptr noundef %0) #19
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !29
  br label %9

9:                                                ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_constrain_insn_cached(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @extract_insn_cached(ptr noundef %0) #19
  %2 = load i32, ptr @which_alternative, align 4, !tbaa !6
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %6 = tail call i32 @constrain_operands(i32 noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %8, %4, %1
  ret void
}

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @constrain_operands_cached(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @which_alternative, align 4, !tbaa !6
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @constrain_operands(i32 noundef %0) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !14
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #18
  store i32 %8, ptr %2, align 8, !tbaa !14
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @insn_extract(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @preprocess_constraints() local_unnamed_addr #1 {
  %1 = alloca ptr, align 8
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !15
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %139

4:                                                ; preds = %0
  %5 = zext nneg i8 %2 to i64
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  %7 = sext i8 %6 to i64
  %8 = shl nsw i64 %7, 5
  br label %12

9:                                                ; preds = %12
  br i1 %3, label %10, label %139

10:                                               ; preds = %9
  %11 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  br label %17

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %15, %12 ]
  %14 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %14, i8 0, i64 %8, i1 false)
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %9, label %12, !llvm.loop !93

17:                                               ; preds = %10, %132
  %18 = phi i8 [ %2, %10 ], [ %133, %132 ]
  %19 = phi i8 [ %11, %10 ], [ %134, %132 ]
  %20 = phi i8 [ %11, %10 ], [ %135, %132 ]
  %21 = phi i64 [ 0, %10 ], [ %136, %132 ]
  %22 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %21
  %23 = icmp sgt i8 %20, 0
  br i1 %23, label %24, label %132

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = trunc i64 %21 to i32
  br label %28

28:                                               ; preds = %24, %124
  %29 = phi i8 [ %19, %24 ], [ %125, %124 ]
  %30 = phi i64 [ 0, %24 ], [ %127, %124 ]
  %31 = phi ptr [ %26, %24 ], [ %126, %124 ]
  %32 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30
  %33 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 1
  store i32 0, ptr %33, align 8, !tbaa !94
  store ptr %31, ptr %32, align 16, !tbaa !96
  %34 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 3
  store i32 -1, ptr %34, align 16, !tbaa !97
  %35 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 4
  store i32 -1, ptr %35, align 4, !tbaa !98
  %36 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %30
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = tail call fastcc ptr @skip_alternative(ptr noundef %31) #19
  br label %124

41:                                               ; preds = %28
  %42 = load i8, ptr %31, align 1, !tbaa !14
  switch i8 %42, label %43 [
    i8 0, label %46
    i8 44, label %46
  ]

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 5
  %45 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 2
  br label %53

46:                                               ; preds = %41, %41
  %47 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %30, i32 5
  %48 = load i8, ptr %47, align 8
  %49 = or i8 %48, -128
  store i8 %49, ptr %47, align 8
  br label %124

50:                                               ; preds = %118, %73
  %51 = phi ptr [ %79, %73 ], [ %120, %118 ]
  %52 = load i8, ptr %51, align 1, !tbaa !14
  br label %53

53:                                               ; preds = %43, %50
  %54 = phi i8 [ %52, %50 ], [ %42, %43 ]
  %55 = phi ptr [ %51, %50 ], [ %31, %43 ]
  %56 = icmp eq i8 %54, 35
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %59, %57 ], [ %55, %53 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !14
  switch i8 %60, label %57 [
    i8 44, label %61
    i8 0, label %61
  ]

61:                                               ; preds = %57, %57, %53
  %62 = phi ptr [ %55, %53 ], [ %59, %57 ], [ %59, %57 ]
  %63 = phi i8 [ %54, %53 ], [ %60, %57 ], [ %60, %57 ]
  switch i8 %63, label %110 [
    i8 44, label %121
    i8 0, label %121
    i8 61, label %118
    i8 43, label %118
    i8 42, label %118
    i8 37, label %118
    i8 69, label %118
    i8 70, label %118
    i8 71, label %118
    i8 72, label %118
    i8 115, label %118
    i8 105, label %118
    i8 110, label %118
    i8 73, label %118
    i8 74, label %118
    i8 75, label %118
    i8 76, label %118
    i8 77, label %118
    i8 78, label %118
    i8 79, label %118
    i8 80, label %118
    i8 63, label %64
    i8 33, label %67
    i8 38, label %70
    i8 48, label %73
    i8 49, label %73
    i8 50, label %73
    i8 51, label %73
    i8 52, label %73
    i8 53, label %73
    i8 54, label %73
    i8 55, label %73
    i8 56, label %73
    i8 57, label %73
    i8 109, label %80
    i8 60, label %83
    i8 62, label %86
    i8 86, label %89
    i8 111, label %92
    i8 88, label %95
    i8 112, label %98
    i8 103, label %105
    i8 114, label %105
  ]

64:                                               ; preds = %61
  %65 = load i32, ptr %45, align 4, !tbaa !99
  %66 = add i32 %65, 6
  store i32 %66, ptr %45, align 4, !tbaa !99
  br label %118

67:                                               ; preds = %61
  %68 = load i32, ptr %45, align 4, !tbaa !99
  %69 = add i32 %68, 600
  store i32 %69, ptr %45, align 4, !tbaa !99
  br label %118

70:                                               ; preds = %61
  %71 = load i8, ptr %44, align 8
  %72 = or i8 %71, 1
  store i8 %72, ptr %44, align 8
  br label %118

73:                                               ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61, %61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %74 = call i64 @strtoul(ptr noundef nonnull %62, ptr noundef nonnull %1, i32 noundef 10) #19
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %34, align 16, !tbaa !97
  %76 = shl i64 %74, 32
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %77, i64 %30, i32 4
  store i32 %27, ptr %78, align 4, !tbaa !98
  %79 = load ptr, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  br label %50

80:                                               ; preds = %61
  %81 = load i8, ptr %44, align 8
  %82 = or i8 %81, 2
  store i8 %82, ptr %44, align 8
  br label %118

83:                                               ; preds = %61
  %84 = load i8, ptr %44, align 8
  %85 = or i8 %84, 16
  store i8 %85, ptr %44, align 8
  br label %118

86:                                               ; preds = %61
  %87 = load i8, ptr %44, align 8
  %88 = or i8 %87, 32
  store i8 %88, ptr %44, align 8
  br label %118

89:                                               ; preds = %61
  %90 = load i8, ptr %44, align 8
  %91 = or i8 %90, 8
  store i8 %91, ptr %44, align 8
  br label %118

92:                                               ; preds = %61
  %93 = load i8, ptr %44, align 8
  %94 = or i8 %93, 4
  store i8 %94, ptr %44, align 8
  br label %118

95:                                               ; preds = %61
  %96 = load i8, ptr %44, align 8
  %97 = or i8 %96, -128
  store i8 %97, ptr %44, align 8
  br label %118

98:                                               ; preds = %61
  %99 = load i8, ptr %44, align 8
  %100 = or i8 %99, 64
  store i8 %100, ptr %44, align 8
  %101 = load i32, ptr %33, align 8, !tbaa !94
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %102, i64 13
  %104 = load i32, ptr %103, align 4, !tbaa !6
  store i32 %104, ptr %33, align 8, !tbaa !94
  br label %118

105:                                              ; preds = %61, %61
  %106 = load i32, ptr %33, align 8, !tbaa !94
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %107, i64 13
  %109 = load i32, ptr %108, align 4, !tbaa !6
  store i32 %109, ptr %33, align 8, !tbaa !94
  br label %118

110:                                              ; preds = %61
  %111 = load i32, ptr %33, align 8, !tbaa !94
  %112 = sext i32 %111 to i64
  %113 = tail call i32 @lookup_constraint(ptr noundef nonnull %62) #18
  %114 = tail call i32 @regclass_for_constraint(i32 noundef %113) #18
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %112, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !6
  store i32 %117, ptr %33, align 8, !tbaa !94
  br label %118

118:                                              ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %110, %105, %98, %95, %92, %89, %86, %83, %80, %70, %67, %64
  %119 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %63) #19
  %120 = getelementptr inbounds i8, ptr %62, i64 %119
  br label %50

121:                                              ; preds = %61, %61
  %122 = getelementptr inbounds i8, ptr %62, i64 1
  %123 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !17
  br label %124

124:                                              ; preds = %121, %46, %39
  %125 = phi i8 [ %29, %46 ], [ %29, %39 ], [ %123, %121 ]
  %126 = phi ptr [ %31, %46 ], [ %40, %39 ], [ %122, %121 ]
  %127 = add nuw nsw i64 %30, 1
  %128 = sext i8 %125 to i64
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %28, label %130, !llvm.loop !100

130:                                              ; preds = %124
  %131 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !15
  br label %132

132:                                              ; preds = %130, %17
  %133 = phi i8 [ %131, %130 ], [ %18, %17 ]
  %134 = phi i8 [ %125, %130 ], [ %19, %17 ]
  %135 = phi i8 [ %125, %130 ], [ %20, %17 ]
  %136 = add nuw nsw i64 %21, 1
  %137 = sext i8 %133 to i64
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %17, label %139, !llvm.loop !101

139:                                              ; preds = %132, %0, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @skip_alternative(ptr noundef readonly %0) unnamed_addr #4 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %5 ]
  %4 = load i8, ptr %3, align 1, !tbaa !14
  switch i8 %4, label %5 [
    i8 0, label %7
    i8 44, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !102

7:                                                ; preds = %2, %2
  %8 = icmp eq i8 %4, 44
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operands_match_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @reg_fits_class_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #19
  %6 = icmp ne i32 %1, 0
  %7 = icmp slt i32 %5, 53
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !103
  %13 = add nsw i32 %5, %2
  %14 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %12, i32 noundef %3, i32 noundef %13) #19, !range !57
  %15 = zext nneg i8 %14 to i32
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ 0, %4 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @safe_from_earlyclobber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #19
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !104

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @split_all_insns() local_unnamed_addr #1 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #18
  tail call void @sbitmap_zero(ptr noundef %6) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = load ptr, ptr %9, align 8, !tbaa !112
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  tail call void @default_rtl_profile() #18
  br label %73

17:                                               ; preds = %68
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = load ptr, ptr @cfun, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %70, label %25, !llvm.loop !113

25:                                               ; preds = %0, %17
  %26 = phi ptr [ %19, %17 ], [ %13, %0 ]
  %27 = phi i8 [ %69, %17 ], [ 0, %0 ]
  tail call void @rtl_profile_for_bb(ptr noundef %26) #18
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  br label %32

32:                                               ; preds = %25, %68
  %33 = phi i8 [ %27, %25 ], [ %69, %68 ]
  %34 = phi ptr [ %30, %25 ], [ %36, %68 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = load ptr, ptr %28, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.rtl_bb_info, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !116
  %40 = icmp eq ptr %34, %39
  %41 = load i32, ptr %34, align 8
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -7
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %68

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !14
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 23
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = tail call ptr @single_set_2(ptr noundef nonnull %34, ptr noundef nonnull %47) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %45, %51
  %55 = phi ptr [ %52, %51 ], [ %47, %45 ]
  %56 = tail call i32 @set_noop_p(ptr noundef nonnull %55) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %34) #18
  br label %68

63:                                               ; preds = %54, %51
  %64 = tail call fastcc ptr @split_insn(ptr noundef nonnull %34) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %31, align 8, !tbaa !117
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %67) #19
  br label %68

68:                                               ; preds = %32, %61, %58, %66, %63
  %69 = phi i8 [ %33, %32 ], [ %33, %61 ], [ %33, %58 ], [ 1, %66 ], [ %33, %63 ]
  br i1 %40, label %17, label %32, !llvm.loop !118

70:                                               ; preds = %17
  %71 = icmp eq i8 %69, 0
  tail call void @default_rtl_profile() #18
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  tail call void @find_many_sub_basic_blocks(ptr noundef %6) #18
  br label %73

73:                                               ; preds = %16, %72, %70
  %74 = load ptr, ptr %6, align 8, !tbaa !119
  tail call void @free(ptr noundef %74) #19
  tail call void @free(ptr noundef %6) #19
  ret void
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn_and_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @split_insn(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = tail call ptr @try_split(ptr noundef %5, ptr noundef %0, i32 noundef 1) #18
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %84, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %68

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !tbaa !14
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %14) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %68, label %21

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %23 = load i32, ptr %6, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %68

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 23
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = tail call ptr @single_set_2(ptr noundef nonnull %6, ptr noundef nonnull %29) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %68, label %36

36:                                               ; preds = %27, %33
  %37 = phi ptr [ %34, %33 ], [ %29, %27 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = tail call i32 @rtx_equal_p(ptr noundef %39, ptr noundef %41) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %36
  %45 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !6
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %65, label %56

56:                                               ; preds = %47, %44
  %57 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !14
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !6
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %47
  %66 = phi ptr [ %49, %47 ], [ %58, %56 ]
  %67 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %66) #18
  br label %68

68:                                               ; preds = %65, %21, %8, %33, %36, %56, %18
  tail call void @set_insn_deleted(ptr noundef nonnull %0) #18
  %69 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %70 = icmp eq i32 %69, 0
  %71 = icmp eq ptr %3, %6
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %68, %82
  %74 = phi ptr [ %76, %82 ], [ %3, %68 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = add nsw i32 %78, -7
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %76) #18
  br label %82

82:                                               ; preds = %73, %81
  %83 = icmp eq ptr %76, %6
  br i1 %83, label %84, label %73

84:                                               ; preds = %82, %68, %1
  %85 = phi ptr [ null, %1 ], [ %6, %68 ], [ %6, %82 ]
  ret ptr %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !103
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !14
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !14
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !103
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_insn_deleted(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cleanup_subreg_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @split_all_insns_noflow() #1 {
  %1 = tail call ptr @get_insns() #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0, %31
  %4 = phi ptr [ %6, %31 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @single_set_2(ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %18, %17 ], [ %13, %11 ]
  %22 = tail call i32 @set_noop_p(ptr noundef nonnull %21) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %4) #18
  br label %31

29:                                               ; preds = %20, %17
  %30 = tail call fastcc ptr @split_insn(ptr noundef nonnull %4) #19
  br label %31

31:                                               ; preds = %3, %29, %27, %24
  %32 = icmp eq ptr %6, null
  br i1 %32, label %33, label %3, !llvm.loop !121

33:                                               ; preds = %31, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @peep2_next_insn(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @peep2_current_count, align 4, !tbaa !6
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2927, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !122
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @peep2_regno_dead_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2942, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !122
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2948, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %5, %15
  %17 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %1) #18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @peep2_reg_dead_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2960, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !122
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2966, ptr noundef nonnull @.str.1) #18
  br label %16

16:                                               ; preds = %5, %15
  %17 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #19
  %18 = sext i32 %17 to i64
  %19 = load i32, ptr %1, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %18, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11, i32 1
  br label %27

27:                                               ; preds = %30, %16
  %28 = phi i32 [ %25, %16 ], [ %31, %30 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = add nsw i32 %28, -1
  %32 = load ptr, ptr %26, align 8, !tbaa !124
  %33 = add nsw i32 %31, %17
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %33) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %27, label %36, !llvm.loop !125

36:                                               ; preds = %27, %30
  %37 = phi i32 [ 0, %30 ], [ 1, %27 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @peep2_find_free_register(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %8 = icmp slt i32 %0, 5
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2996, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %5, %9
  %11 = icmp slt i32 %1, 5
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2997, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %10, %12
  %14 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %15 = add nsw i32 %14, %0
  %16 = icmp sgt i32 %15, 4
  %17 = add nsw i32 %15, -5
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = add nsw i32 %14, %1
  %20 = icmp sgt i32 %19, 4
  %21 = add nsw i32 %19, -5
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 16, !tbaa !122
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3006, ptr noundef nonnull @.str.1) #18
  br label %28

28:                                               ; preds = %13, %27
  store i64 0, ptr %6, align 8, !tbaa !103
  %29 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %23, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %6, ptr noundef %30) #18
  %31 = icmp eq i32 %18, %22
  br i1 %31, label %49, label %32

32:                                               ; preds = %28, %42
  %33 = phi i32 [ %36, %42 ], [ %18, %28 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %34 = add nsw i32 %33, 1
  %35 = icmp sgt i32 %33, 3
  %36 = select i1 %35, i32 0, i32 %34
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 16, !tbaa !122
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #18
  br label %42

42:                                               ; preds = %32, %41
  store i64 0, ptr %7, align 8, !tbaa !103
  %43 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %37, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %44) #18
  %45 = load i64, ptr %7, align 8, !tbaa !103
  %46 = load i64, ptr %6, align 8, !tbaa !103
  %47 = or i64 %46, %45
  store i64 %47, ptr %6, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %48 = icmp eq i32 %36, %22
  br i1 %48, label %49, label %32, !llvm.loop !126

49:                                               ; preds = %42, %28
  %50 = load i8, ptr %2, align 1, !tbaa !14
  %51 = icmp eq i8 %50, 114
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = call i32 @lookup_constraint(ptr noundef nonnull %2) #18
  %54 = call i32 @regclass_for_constraint(i32 noundef %53) #18
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %49, %52
  %57 = phi i64 [ %55, %52 ], [ 13, %49 ]
  %58 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %57
  %59 = zext i32 %3 to i64
  br label %60

60:                                               ; preds = %56, %128
  %61 = phi i32 [ 0, %56 ], [ %129, %128 ]
  %62 = load i32, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !6
  %63 = add nsw i32 %62, %61
  %64 = icmp sgt i32 %63, 52
  %65 = add nsw i32 %63, -53
  %66 = select i1 %64, i32 %65, i32 %63
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !6
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !14
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %60
  %75 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %70
  %76 = load i8, ptr %75, align 1, !tbaa !14
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %128

78:                                               ; preds = %74
  %79 = load i64, ptr %58, align 8, !tbaa !103
  %80 = zext nneg i32 %69 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %79, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %128, label %84

84:                                               ; preds = %78
  %85 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %69, i32 noundef %3) #18
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %128, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %70
  %89 = load i8, ptr %88, align 1, !tbaa !14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = call zeroext i8 @df_regs_ever_live_p(i32 noundef %69) #18
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %128, label %94

94:                                               ; preds = %91, %87
  %95 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 100), align 8, !tbaa !127
  %96 = call zeroext i8 %95(i32 noundef %69) #18
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %128, label %98

98:                                               ; preds = %94
  switch i32 %69, label %105 [
    i32 20, label %99
    i32 6, label %99
  ]

99:                                               ; preds = %98, %98
  %100 = load i32, ptr @reload_completed, align 4, !tbaa !6
  %101 = icmp eq i32 %100, 0
  %102 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %103 = icmp ne i8 %102, 0
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %128, label %105

105:                                              ; preds = %98, %99
  %106 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %70, i64 %59
  %107 = load i8, ptr %106, align 1, !tbaa !14
  %108 = load i64, ptr %6, align 8
  %109 = zext i8 %107 to i64
  br label %110

110:                                              ; preds = %113, %105
  %111 = phi i64 [ %114, %113 ], [ %109, %105 ]
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = add nsw i64 %111, -1
  %115 = load i64, ptr %4, align 8, !tbaa !103
  %116 = add nsw i64 %114, %70
  %117 = shl nuw i64 1, %116
  %118 = and i64 %115, %117
  %119 = icmp eq i64 %118, 0
  %120 = and i64 %108, %117
  %121 = icmp eq i64 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %110, label %128, !llvm.loop !128

123:                                              ; preds = %110
  call fastcc void @add_to_hard_reg_set(ptr noundef %4, i32 noundef %3, i32 noundef %69) #19
  %124 = add nsw i32 %66, 1
  %125 = icmp sgt i32 %66, 51
  %126 = select i1 %125, i32 0, i32 %124
  store i32 %126, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !6
  %127 = call ptr @gen_rtx_REG(i32 noundef %3, i32 noundef %69) #18
  br label %132

128:                                              ; preds = %113, %60, %74, %78, %84, %91, %94, %99
  %129 = add nuw nsw i32 %61, 1
  %130 = icmp eq i32 %129, 53
  br i1 %130, label %131, label %60, !llvm.loop !129

131:                                              ; preds = %128
  store i32 0, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !6
  br label %132

132:                                              ; preds = %123, %131
  %133 = phi ptr [ %127, %123 ], [ null, %131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret ptr %133
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #19
  %5 = load i64, ptr %0, align 8, !tbaa !103
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !llvm.loop !130

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @store_data_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %81

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %81, label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %175

23:                                               ; preds = %16
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -7
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %18, align 8, !tbaa !14
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %38, %37 ], [ %19, %28 ]
  %41 = phi ptr [ %35, %37 ], [ %30, %28 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !14
  %44 = tail call i32 @reg_mentioned_p(ptr noundef %43, ptr noundef %40) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %174, label %175

46:                                               ; preds = %23, %34
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 15
  br i1 %51, label %52, label %175

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = load i32, ptr %54, align 8, !tbaa !44
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %174

57:                                               ; preds = %52, %75
  %58 = phi i32 [ %76, %75 ], [ %55, %52 ]
  %59 = phi ptr [ %77, %75 ], [ %54, %52 ]
  %60 = phi i64 [ %78, %75 ], [ 0, %52 ]
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = load i32, ptr %62, align 8
  %64 = trunc i32 %63 to i16
  switch i16 %64, label %65 [
    i16 25, label %75
    i16 23, label %66
  ]

65:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3389, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %57, %65
  %67 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !14
  %69 = load ptr, ptr %18, align 8, !tbaa !14
  %70 = tail call i32 @reg_mentioned_p(ptr noundef %68, ptr noundef %69) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %175

72:                                               ; preds = %66
  %73 = load ptr, ptr %53, align 8, !tbaa !14
  %74 = load i32, ptr %73, align 8, !tbaa !44
  br label %75

75:                                               ; preds = %72, %57
  %76 = phi i32 [ %74, %72 ], [ %58, %57 ]
  %77 = phi ptr [ %73, %72 ], [ %59, %57 ]
  %78 = add nuw nsw i64 %60, 1
  %79 = sext i32 %76 to i64
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %57, label %174, !llvm.loop !131

81:                                               ; preds = %2, %13
  %82 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !14
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 15
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3399, ptr noundef nonnull @.str.1) #18
  br label %88

88:                                               ; preds = %81, %87
  %89 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  %91 = load i32, ptr %90, align 8, !tbaa !44
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %174

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %95

95:                                               ; preds = %93, %168
  %96 = phi i64 [ 0, %93 ], [ %169, %168 ]
  %97 = phi ptr [ %90, %93 ], [ %170, %168 ]
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !12
  %100 = load i32, ptr %99, align 8
  %101 = trunc i32 %100 to i16
  switch i16 %101, label %102 [
    i16 25, label %168
    i16 23, label %103
  ]

102:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3408, ptr noundef nonnull @.str.1) #18
  br label %103

103:                                              ; preds = %95, %102
  %104 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !14
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 43
  br i1 %108, label %109, label %175

109:                                              ; preds = %103
  %110 = load i32, ptr %0, align 8
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, -7
  %113 = icmp ult i32 %112, 4
  %114 = load ptr, ptr %94, align 8, !tbaa !14
  br i1 %113, label %115, label %133

115:                                              ; preds = %109
  %116 = load i32, ptr %114, align 8
  %117 = and i32 %116, 65535
  %118 = icmp eq i32 %117, 23
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %114) #18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %104, align 8, !tbaa !14
  br label %126

124:                                              ; preds = %119
  %125 = load ptr, ptr %94, align 8, !tbaa !14
  br label %133

126:                                              ; preds = %122, %115
  %127 = phi ptr [ %123, %122 ], [ %105, %115 ]
  %128 = phi ptr [ %120, %122 ], [ %114, %115 ]
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !14
  %131 = tail call i32 @reg_mentioned_p(ptr noundef %130, ptr noundef %127) #18
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %168, label %175

133:                                              ; preds = %124, %109
  %134 = phi ptr [ %125, %124 ], [ %114, %109 ]
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 15
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #18
  br label %139

139:                                              ; preds = %133, %138
  %140 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !14
  %142 = load i32, ptr %141, align 8, !tbaa !44
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %139, %162
  %145 = phi i32 [ %163, %162 ], [ %142, %139 ]
  %146 = phi ptr [ %164, %162 ], [ %141, %139 ]
  %147 = phi i64 [ %165, %162 ], [ 0, %139 ]
  %148 = getelementptr inbounds %struct.rtvec_def, ptr %146, i64 0, i32 1, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !12
  %150 = load i32, ptr %149, align 8
  %151 = trunc i32 %150 to i16
  switch i16 %151, label %152 [
    i16 25, label %162
    i16 23, label %153
  ]

152:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3431, ptr noundef nonnull @.str.1) #18
  br label %153

153:                                              ; preds = %144, %152
  %154 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !14
  %156 = load ptr, ptr %104, align 8, !tbaa !14
  %157 = tail call i32 @reg_mentioned_p(ptr noundef %155, ptr noundef %156) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load ptr, ptr %140, align 8, !tbaa !14
  %161 = load i32, ptr %160, align 8, !tbaa !44
  br label %162

162:                                              ; preds = %159, %144
  %163 = phi i32 [ %161, %159 ], [ %145, %144 ]
  %164 = phi ptr [ %160, %159 ], [ %146, %144 ]
  %165 = add nuw nsw i64 %147, 1
  %166 = sext i32 %163 to i64
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %144, label %168, !llvm.loop !132

168:                                              ; preds = %162, %139, %95, %126
  %169 = add nuw nsw i64 %96, 1
  %170 = load ptr, ptr %89, align 8, !tbaa !14
  %171 = load i32, ptr %170, align 8, !tbaa !44
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %95, label %174, !llvm.loop !133

174:                                              ; preds = %168, %75, %88, %52, %39
  br label %175

175:                                              ; preds = %126, %103, %153, %66, %46, %39, %16, %174
  %176 = phi i32 [ 1, %174 ], [ 0, %16 ], [ 0, %39 ], [ 0, %46 ], [ 0, %66 ], [ 0, %153 ], [ 0, %103 ], [ 0, %126 ]
  ret i32 %176
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @if_test_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %24, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %9) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ %18, %16 ], [ %4, %2 ]
  %21 = add nsw i32 %20, -9
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %103, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3456, ptr noundef nonnull @.str.1) #18
  br label %103

24:                                               ; preds = %7, %13
  %25 = phi ptr [ %14, %13 ], [ %9, %7 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %103

31:                                               ; preds = %24
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %38) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %36, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %36 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = tail call i32 @reg_mentioned_p(ptr noundef %48, ptr noundef %50) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %103

53:                                               ; preds = %45
  %54 = load ptr, ptr %47, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !14
  %57 = tail call i32 @reg_mentioned_p(ptr noundef %54, ptr noundef %56) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %102, label %103

59:                                               ; preds = %31, %42
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !14
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 15
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3477, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %59, %65
  %67 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !14
  %69 = load i32, ptr %68, align 8, !tbaa !44
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  br label %74

74:                                               ; preds = %71, %96
  %75 = phi i32 [ %69, %71 ], [ %97, %96 ]
  %76 = phi ptr [ %68, %71 ], [ %98, %96 ]
  %77 = phi i64 [ 0, %71 ], [ %99, %96 ]
  %78 = getelementptr inbounds %struct.rtvec_def, ptr %76, i64 0, i32 1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = load i32, ptr %79, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %82 [
    i16 25, label %96
    i16 23, label %83
  ]

82:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3486, ptr noundef nonnull @.str.1) #18
  br label %83

83:                                               ; preds = %74, %82
  %84 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !14
  %85 = load ptr, ptr %72, align 8, !tbaa !14
  %86 = tail call i32 @reg_mentioned_p(ptr noundef %84, ptr noundef %85) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !14
  %90 = load ptr, ptr %73, align 8, !tbaa !14
  %91 = tail call i32 @reg_mentioned_p(ptr noundef %89, ptr noundef %90) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load ptr, ptr %67, align 8, !tbaa !14
  %95 = load i32, ptr %94, align 8, !tbaa !44
  br label %96

96:                                               ; preds = %93, %74
  %97 = phi i32 [ %95, %93 ], [ %75, %74 ]
  %98 = phi ptr [ %94, %93 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %77, 1
  %100 = sext i32 %97 to i64
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %74, label %102, !llvm.loop !134

102:                                              ; preds = %96, %66, %53
  br label %103

103:                                              ; preds = %88, %83, %19, %45, %53, %24, %23, %102
  %104 = phi i32 [ 1, %102 ], [ 0, %19 ], [ 0, %23 ], [ 0, %24 ], [ 0, %53 ], [ 0, %45 ], [ 0, %83 ], [ 0, %88 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_peephole2() #5 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_peephole2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_peephole2() #1 {
  tail call fastcc void @peephole2_optimize() #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peephole2_optimize() unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = tail call i32 @df_set_flags(i32 noundef 1) #18
  tail call void @df_analyze() #18
  br label %5

5:                                                ; preds = %0, %5
  %6 = phi i64 [ 0, %0 ], [ %9, %5 ]
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #18
  %8 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %6, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !124
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 5
  br i1 %10, label %11, label %5, !llvm.loop !135

11:                                               ; preds = %5
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = load ptr, ptr %15, align 8, !tbaa !112
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %354, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds i8, ptr %3, i64 8
  br label %32

24:                                               ; preds = %345
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %347, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = load ptr, ptr @cfun, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = icmp eq ptr %26, %30
  br i1 %31, label %352, label %32, !llvm.loop !136

32:                                               ; preds = %22, %24
  %33 = phi ptr [ %19, %22 ], [ %26, %24 ]
  %34 = phi i8 [ 0, %22 ], [ %346, %24 ]
  call void @rtl_profile_for_bb(ptr noundef %33) #18
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !117
  %37 = call fastcc ptr @df_lr_get_bb_info(i32 noundef %36) #19
  %38 = getelementptr inbounds %struct.df_lr_bb_info, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  call void @bitmap_copy(ptr noundef %12, ptr noundef %39) #18
  call void @df_simulate_initialize_backwards(ptr noundef %33, ptr noundef %12) #18
  call fastcc void @peep2_reinit_state(ptr noundef %12) #19
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.rtl_bb_info, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !116
  br label %44

44:                                               ; preds = %345, %32
  %45 = phi i8 [ %34, %32 ], [ %346, %345 ]
  %46 = phi ptr [ %33, %32 ], [ %347, %345 ]
  %47 = phi ptr [ %43, %32 ], [ %49, %345 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = load i32, ptr %47, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -11
  %53 = icmp ult i32 %52, -3
  br i1 %53, label %345, label %54

54:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  %55 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %56 = add nsw i32 %55, -1
  %57 = icmp slt i32 %55, 1
  %58 = select i1 %57, i32 4, i32 %56
  store i32 %58, ptr @peep2_current, align 4
  %59 = load i32, ptr @peep2_current_count, align 4, !tbaa !6
  %60 = icmp slt i32 %59, 4
  %61 = sext i32 %58 to i64
  br i1 %60, label %62, label %68

62:                                               ; preds = %54
  %63 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %61
  %64 = load ptr, ptr %63, align 16, !tbaa !122
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = add nsw i32 %59, 1
  store i32 %67, ptr @peep2_current_count, align 4, !tbaa !6
  br label %68

68:                                               ; preds = %54, %66, %62
  %69 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %61
  store ptr %47, ptr %69, align 16, !tbaa !122
  call void @df_simulate_one_insn_backwards(ptr noundef %46, ptr noundef nonnull %47, ptr noundef %12) #18
  %70 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %71, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !124
  call void @bitmap_copy(ptr noundef %73, ptr noundef %12) #18
  %74 = load i32, ptr %47, align 8
  %75 = and i32 %74, 1073741824
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  call fastcc void @peep2_reinit_state(ptr noundef %12) #19
  br label %342

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !14
  %81 = call ptr @peephole2_insns(ptr noundef %80, ptr noundef nonnull %47, ptr noundef nonnull %1) #18
  %82 = icmp eq ptr %81, null
  br i1 %82, label %342, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %1, align 4, !tbaa !6
  %85 = icmp sgt i32 %84, -1
  %86 = load i32, ptr @peep2_current, align 4, !tbaa !6
  br i1 %85, label %87, label %175

87:                                               ; preds = %83
  %88 = icmp sgt i32 %86, 4
  %89 = add nsw i32 %86, -5
  %90 = select i1 %88, i32 %89, i32 %86
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 16, !tbaa !122
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %111, label %172

97:                                               ; preds = %172
  %98 = add nuw i32 %173, 1
  %99 = add nsw i32 %86, %98
  %100 = icmp sgt i32 %99, 4
  %101 = add nsw i32 %99, -5
  %102 = select i1 %100, i32 %101, i32 %99
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 16, !tbaa !122
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 10
  br i1 %108, label %109, label %172, !llvm.loop !139

109:                                              ; preds = %97
  %110 = icmp slt i32 %173, %84
  br label %111

111:                                              ; preds = %109, %87
  %112 = phi i1 [ true, %87 ], [ %110, %109 ]
  %113 = phi i32 [ 0, %87 ], [ %98, %109 ]
  %114 = phi ptr [ %93, %87 ], [ %105, %109 ]
  br label %115

115:                                              ; preds = %111, %120
  %116 = phi ptr [ %81, %111 ], [ %122, %120 ]
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 10
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 2
  %122 = load ptr, ptr %121, align 8, !tbaa !14
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %115, !llvm.loop !140

124:                                              ; preds = %120
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3194, ptr noundef nonnull @.str.1) #18
  br label %125

125:                                              ; preds = %115, %124
  %126 = phi ptr [ null, %124 ], [ %116, %115 ]
  %127 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1, i32 1, i32 0, i32 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %128, ptr %129, align 8, !tbaa !14
  %130 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 1, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !14
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %146, %125
  %134 = load i32, ptr %1, align 4, !tbaa !6
  %135 = icmp slt i32 %113, %134
  %136 = load i32, ptr @peep2_current, align 4, !tbaa !6
  br i1 %135, label %150, label %175

137:                                              ; preds = %125, %146
  %138 = phi ptr [ %148, %146 ], [ %131, %125 ]
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 16
  %141 = trunc i32 %140 to i8
  switch i8 %141, label %146 [
    i8 27, label %142
    i8 30, label %142
  ]

142:                                              ; preds = %137, %137
  %143 = and i32 %140, 255
  %144 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !14
  call void @add_reg_note(ptr noundef %126, i32 noundef %143, ptr noundef %145) #18
  br label %146

146:                                              ; preds = %142, %137
  %147 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1, i32 0, i32 0, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !14
  %149 = icmp eq ptr %148, null
  br i1 %149, label %133, label %137, !llvm.loop !141

150:                                              ; preds = %133, %168
  %151 = phi i32 [ %169, %168 ], [ %134, %133 ]
  %152 = phi i32 [ %170, %168 ], [ %136, %133 ]
  %153 = phi i32 [ %154, %168 ], [ %113, %133 ]
  %154 = add nuw nsw i32 %153, 1
  %155 = add nsw i32 %152, %154
  %156 = icmp sgt i32 %155, 4
  %157 = add nsw i32 %155, -5
  %158 = select i1 %156, i32 %157, i32 %155
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %159
  %161 = load ptr, ptr %160, align 16, !tbaa !122
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 10
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3221, ptr noundef nonnull @.str.1) #18
  %166 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %167 = load i32, ptr %1, align 4, !tbaa !6
  br label %168

168:                                              ; preds = %150, %165
  %169 = phi i32 [ %151, %150 ], [ %167, %165 ]
  %170 = phi i32 [ %152, %150 ], [ %166, %165 ]
  %171 = icmp slt i32 %154, %169
  br i1 %171, label %150, label %175, !llvm.loop !142

172:                                              ; preds = %87, %97
  %173 = phi i32 [ %98, %97 ], [ 0, %87 ]
  %174 = icmp eq i32 %173, %84
  br i1 %174, label %175, label %97, !llvm.loop !139

175:                                              ; preds = %172, %168, %83, %133
  %176 = phi i32 [ %136, %133 ], [ %86, %83 ], [ %170, %168 ], [ %86, %172 ]
  %177 = phi i32 [ %134, %133 ], [ %84, %83 ], [ %169, %168 ], [ %84, %172 ]
  %178 = phi i1 [ %112, %133 ], [ false, %83 ], [ %112, %168 ], [ false, %172 ]
  %179 = add nsw i32 %176, %177
  %180 = icmp sgt i32 %179, 4
  %181 = add nsw i32 %179, -5
  %182 = select i1 %180, i32 %181, i32 %179
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 16, !tbaa !122
  %186 = call ptr @find_reg_note(ptr noundef %185, i32 noundef 25, ptr noundef null) #18
  %187 = load ptr, ptr %184, align 16, !tbaa !122
  %188 = getelementptr inbounds %struct.rtx_def, ptr %187, i64 0, i32 1, i32 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !14
  %190 = call ptr @emit_insn_after_setloc(ptr noundef nonnull %81, ptr noundef %187, i32 noundef %189) #18
  %191 = load ptr, ptr %48, align 8, !tbaa !14
  %192 = load ptr, ptr %184, align 16, !tbaa !122
  call void @delete_insn_chain(ptr noundef nonnull %47, ptr noundef %192, i8 noundef zeroext 0) #18
  %193 = icmp eq ptr %186, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %175
  %195 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8
  %196 = icmp ne ptr %195, null
  %197 = select i1 %178, i1 %196, i1 false
  br i1 %197, label %198, label %267

198:                                              ; preds = %194, %175
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 1
  %200 = call fastcc ptr @ei_start_1(ptr noundef nonnull %199) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !143
  store ptr %200, ptr %23, align 8, !tbaa.struct !144
  %201 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %200, ptr noundef nonnull %2) #19, !range !57
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %198, %209
  %204 = load ptr, ptr %2, align 8, !tbaa !12
  %205 = getelementptr inbounds %struct.edge_def, ptr %204, i64 0, i32 7
  %206 = load i32, ptr %205, align 8, !tbaa !145
  %207 = and i32 %206, 12
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %210 = load i32, ptr %3, align 8
  %211 = load ptr, ptr %23, align 8
  %212 = call fastcc zeroext i8 @ei_cond(i32 %210, ptr %211, ptr noundef nonnull %2) #19, !range !57
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %203, !llvm.loop !147

214:                                              ; preds = %209, %203, %198
  br i1 %193, label %216, label %215

215:                                              ; preds = %214
  call void @copy_reg_eh_region_note_backward(ptr noundef nonnull %186, ptr noundef %190, ptr noundef %191) #18
  br label %216

216:                                              ; preds = %215, %214
  %217 = load ptr, ptr %2, align 8, !tbaa !12
  %218 = icmp eq ptr %217, null
  %219 = icmp eq ptr %190, %191
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %264, label %221

221:                                              ; preds = %216, %259
  %222 = phi ptr [ %260, %259 ], [ %46, %216 ]
  %223 = phi ptr [ %262, %259 ], [ %190, %216 ]
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %222, i64 0, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !14
  %226 = getelementptr inbounds %struct.rtl_bb_info, ptr %225, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !116
  %228 = icmp eq ptr %223, %227
  br i1 %228, label %259, label %229

229:                                              ; preds = %221
  %230 = call zeroext i8 @can_throw_internal(ptr noundef %223) #18
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = call zeroext i8 @can_nonlocal_goto(ptr noundef %223) #18
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %259, label %235

235:                                              ; preds = %232, %229
  %236 = call ptr @split_block(ptr noundef nonnull %222, ptr noundef %223) #18
  %237 = load ptr, ptr %2, align 8, !tbaa !12
  %238 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 7
  %239 = load i32, ptr %238, align 8, !tbaa !145
  %240 = and i32 %239, 10
  %241 = load i32, ptr %223, align 8
  %242 = and i32 %241, 65535
  %243 = icmp eq i32 %242, 10
  %244 = or disjoint i32 %240, 4
  %245 = select i1 %243, i32 %244, i32 %240
  %246 = load ptr, ptr %236, align 8, !tbaa !148
  %247 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !149
  %249 = call ptr @make_edge(ptr noundef %246, ptr noundef %248, i32 noundef %245) #18
  %250 = getelementptr inbounds %struct.edge_def, ptr %237, i64 0, i32 8
  %251 = load i32, ptr %250, align 4, !tbaa !150
  %252 = getelementptr inbounds %struct.edge_def, ptr %249, i64 0, i32 8
  store i32 %251, ptr %252, align 4, !tbaa !150
  %253 = sub nsw i32 10000, %251
  %254 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 8
  store i32 %253, ptr %254, align 4, !tbaa !150
  %255 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !149
  %257 = call zeroext i8 @purge_dead_edges(ptr noundef %256) #18
  %258 = load ptr, ptr %236, align 8, !tbaa !148
  store ptr %249, ptr %2, align 8, !tbaa !12
  br label %259

259:                                              ; preds = %221, %232, %235
  %260 = phi ptr [ %258, %235 ], [ %222, %232 ], [ %222, %221 ]
  %261 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !14
  %263 = icmp eq ptr %262, %191
  br i1 %263, label %264, label %221, !llvm.loop !151

264:                                              ; preds = %259, %216
  %265 = phi ptr [ %46, %216 ], [ %260, %259 ]
  %266 = call zeroext i8 @purge_dead_edges(ptr noundef %265) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %267

267:                                              ; preds = %264, %194
  %268 = phi ptr [ %265, %264 ], [ %46, %194 ]
  %269 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !152
  %270 = call zeroext i8 %269() #18
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %293, label %272

272:                                              ; preds = %267, %284
  %273 = phi i64 [ %285, %284 ], [ 0, %267 ]
  %274 = phi <2 x i64> [ %286, %284 ], [ <i64 0, i64 1>, %267 ]
  %275 = icmp ult <2 x i64> %274, <i64 5, i64 5>
  %276 = extractelement <2 x i1> %275, i64 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %273
  store ptr null, ptr %278, align 16, !tbaa !122
  br label %279

279:                                              ; preds = %277, %272
  %280 = extractelement <2 x i1> %275, i64 1
  br i1 %280, label %281, label %284

281:                                              ; preds = %279
  %282 = or disjoint i64 %273, 1
  %283 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %282
  store ptr null, ptr %283, align 16, !tbaa !122
  br label %284

284:                                              ; preds = %281, %279
  %285 = add i64 %273, 2
  %286 = add <2 x i64> %274, <i64 2, i64 2>
  %287 = icmp eq i64 %285, 6
  br i1 %287, label %288, label %272, !llvm.loop !153

288:                                              ; preds = %284
  %289 = load ptr, ptr @global_rtl, align 16, !tbaa !12
  %290 = load i32, ptr @peep2_current, align 4, !tbaa !6
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %291
  store ptr %289, ptr %292, align 16, !tbaa !122
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !6
  br label %331

293:                                              ; preds = %267
  %294 = add nsw i32 %182, 1
  %295 = icmp sgt i32 %182, 3
  %296 = select i1 %295, i32 0, i32 %294
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %297, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !124
  call void @bitmap_copy(ptr noundef %12, ptr noundef %299) #18
  br label %300

300:                                              ; preds = %325, %293
  %301 = phi ptr [ %190, %293 ], [ %328, %325 ]
  %302 = phi i32 [ %296, %293 ], [ %326, %325 ]
  %303 = load i32, ptr %301, align 8
  %304 = and i32 %303, 65535
  %305 = add nsw i32 %304, -7
  %306 = icmp ult i32 %305, 4
  br i1 %306, label %307, label %325

307:                                              ; preds = %300
  %308 = add nsw i32 %302, -1
  %309 = icmp slt i32 %302, 1
  %310 = select i1 %309, i32 4, i32 %308
  %311 = load i32, ptr @peep2_current_count, align 4, !tbaa !6
  %312 = icmp slt i32 %311, 4
  %313 = sext i32 %310 to i64
  br i1 %312, label %314, label %320

314:                                              ; preds = %307
  %315 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %313
  %316 = load ptr, ptr %315, align 16, !tbaa !122
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %320

318:                                              ; preds = %314
  %319 = add nsw i32 %311, 1
  store i32 %319, ptr @peep2_current_count, align 4, !tbaa !6
  br label %320

320:                                              ; preds = %307, %318, %314
  %321 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %313
  store ptr %301, ptr %321, align 16, !tbaa !122
  %322 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %301) #18
  call void @df_simulate_one_insn_backwards(ptr noundef %268, ptr noundef nonnull %301, ptr noundef %12) #18
  %323 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %313, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !124
  call void @bitmap_copy(ptr noundef %324, ptr noundef %12) #18
  br label %325

325:                                              ; preds = %300, %320
  %326 = phi i32 [ %310, %320 ], [ %302, %300 ]
  %327 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1, i32 0, i32 0, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !14
  %329 = icmp eq ptr %328, %49
  br i1 %329, label %330, label %300, !llvm.loop !156

330:                                              ; preds = %325
  store i32 %326, ptr @peep2_current, align 4, !tbaa !6
  br label %331

331:                                              ; preds = %330, %288
  %332 = icmp eq ptr %190, %191
  br i1 %332, label %342, label %333

333:                                              ; preds = %331, %338
  %334 = phi ptr [ %340, %338 ], [ %190, %331 ]
  %335 = load i32, ptr %334, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 9
  br i1 %337, label %342, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1, i32 0, i32 0, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !14
  %341 = icmp eq ptr %340, %191
  br i1 %341, label %342, label %333, !llvm.loop !157

342:                                              ; preds = %338, %333, %331, %77, %78
  %343 = phi i8 [ %45, %78 ], [ %45, %77 ], [ %45, %331 ], [ %45, %338 ], [ 1, %333 ]
  %344 = phi ptr [ %46, %78 ], [ %46, %77 ], [ %268, %331 ], [ %268, %333 ], [ %268, %338 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  br label %345

345:                                              ; preds = %44, %342
  %346 = phi i8 [ %343, %342 ], [ %45, %44 ]
  %347 = phi ptr [ %344, %342 ], [ %46, %44 ]
  %348 = getelementptr inbounds %struct.basic_block_def, ptr %347, i64 0, i32 7
  %349 = load ptr, ptr %348, align 8, !tbaa !14
  %350 = load ptr, ptr %349, align 8, !tbaa !114
  %351 = icmp eq ptr %47, %350
  br i1 %351, label %24, label %44, !llvm.loop !136

352:                                              ; preds = %24
  %353 = icmp eq i8 %346, 0
  br label %354

354:                                              ; preds = %352, %11
  %355 = phi i1 [ true, %11 ], [ %353, %352 ]
  call void @default_rtl_profile() #18
  br label %356

356:                                              ; preds = %354, %356
  %357 = phi i64 [ 0, %354 ], [ %360, %356 ]
  %358 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %357, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !124
  call void @bitmap_obstack_free(ptr noundef %359) #18
  store ptr null, ptr %358, align 8, !tbaa !124
  %360 = add nuw nsw i64 %357, 1
  %361 = icmp eq i64 %360, 5
  br i1 %361, label %362, label %356, !llvm.loop !158

362:                                              ; preds = %356
  call void @bitmap_obstack_free(ptr noundef %12) #18
  br i1 %355, label %365, label %363

363:                                              ; preds = %362
  %364 = call ptr @get_insns() #18
  call void @rebuild_jump_labels(ptr noundef %364) #18
  br label %365

365:                                              ; preds = %363, %362
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @df, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !161
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peep2_reinit_state(ptr noundef %0) unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %3
  store ptr null, ptr %4, align 16, !tbaa !122
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %2, !llvm.loop !162

7:                                                ; preds = %2
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !6
  %8 = load ptr, ptr @global_rtl, align 16, !tbaa !12
  store ptr %8, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4), align 16, !tbaa !122
  store i32 4, ptr @peep2_current, align 4, !tbaa !6
  %9 = load ptr, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4, i32 1), align 8, !tbaa !124
  tail call void @bitmap_copy(ptr noundef %9, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @df_simulate_one_insn_backwards(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @peephole2_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_after_setloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @delete_insn_chain(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !57
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
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !163
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !163
  ret void
}

; Function Attrs: optsize
declare void @copy_reg_eh_region_note_backward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @can_nonlocal_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !165
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_all_insns() #1 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_after_reload() #1 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_regstack() #5 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_before_regstack() #1 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_sched2() #5 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_before_sched2() #1 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_do_final_split() #10 {
  ret i8 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !8, i64 1086}
!16 = !{!"recog_data", !8, i64 0, !8, i64 240, !8, i64 480, !8, i64 720, !8, i64 840, !8, i64 960, !8, i64 1072, !8, i64 1086, !8, i64 1087, !8, i64 1088, !8, i64 1089, !13, i64 1120}
!17 = !{!16, !8, i64 1088}
!18 = !{!16, !8, i64 1087}
!19 = distinct !{!19, !11}
!20 = !{!21, !8, i64 32}
!21 = !{!"insn_data", !13, i64 0, !8, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35}
!22 = !{!21, !8, i64 34}
!23 = !{!21, !8, i64 33}
!24 = !{!21, !13, i64 24}
!25 = !{!26, !13, i64 8}
!26 = !{!"insn_operand_data", !13, i64 0, !13, i64 8, !7, i64 16, !8, i64 18, !8, i64 19}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!16, !13, i64 1120}
!30 = distinct !{!30, !11}
!31 = !{!32, !7, i64 0}
!32 = !{!"funny_match", !7, i64 0, !7, i64 4}
!33 = !{!32, !7, i64 4}
!34 = !{i32 0, i32 2}
!35 = !{!36, !8, i64 32}
!36 = !{!"mem_attrs", !13, i64 0, !13, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !8, i64 32}
!37 = !{i32 0, i32 256}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = !{!45, !7, i64 0}
!45 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !8, i64 0}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = !{i8 0, i8 2}
!58 = !{!59, !13, i64 0}
!59 = !{!"change_t", !13, i64 0, !7, i64 8, !13, i64 16, !13, i64 24, !8, i64 32}
!60 = !{!59, !13, i64 16}
!61 = !{!59, !13, i64 24}
!62 = !{!59, !8, i64 32}
!63 = !{!59, !7, i64 8}
!64 = !{!65, !13, i64 0}
!65 = !{!"reg_attrs", !13, i64 0, !66, i64 8}
!66 = !{!"long", !8, i64 0}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = !{!70, !13, i64 1200}
!70 = !{!"gcc_target", !71, i64 0, !73, i64 368, !74, i64 664, !7, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !13, i64 776, !13, i64 784, !13, i64 792, !13, i64 800, !13, i64 808, !13, i64 816, !13, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !13, i64 936, !13, i64 944, !13, i64 952, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048, !13, i64 1056, !66, i64 1064, !66, i64 1072, !13, i64 1080, !13, i64 1088, !13, i64 1096, !13, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !13, i64 1136, !13, i64 1144, !13, i64 1152, !13, i64 1160, !13, i64 1168, !75, i64 1176, !13, i64 1232, !13, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304, !13, i64 1312, !13, i64 1320, !13, i64 1328, !13, i64 1336, !13, i64 1344, !13, i64 1352, !13, i64 1360, !13, i64 1368, !13, i64 1376, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !13, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !13, i64 1456, !66, i64 1464, !76, i64 1472, !13, i64 1664, !13, i64 1672, !13, i64 1680, !13, i64 1688, !13, i64 1696, !13, i64 1704, !13, i64 1712, !13, i64 1720, !13, i64 1728, !13, i64 1736, !13, i64 1744, !13, i64 1752, !13, i64 1760, !13, i64 1768, !13, i64 1776, !77, i64 1784, !78, i64 1792, !79, i64 1896, !80, i64 1968, !13, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!71 = !{!"asm_out", !13, i64 0, !13, i64 8, !13, i64 16, !72, i64 24, !72, i64 56, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360}
!72 = !{!"asm_int_op", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!73 = !{!"sched", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!74 = !{!"vectorize", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!75 = !{!"addr_space", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!76 = !{!"calls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184}
!77 = !{!"c", !13, i64 0}
!78 = !{!"cxx", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!79 = !{!"emutls", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !8, i64 64, !8, i64 65}
!80 = !{!"target_option_hooks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = !{!88, !13, i64 0}
!88 = !{!"validate_replace_src_data", !13, i64 0, !13, i64 8, !13, i64 16}
!89 = !{!88, !13, i64 8}
!90 = !{!88, !13, i64 16}
!91 = distinct !{!91, !11}
!92 = !{ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p}
!93 = distinct !{!93, !11}
!94 = !{!95, !7, i64 8}
!95 = !{!"operand_alternative", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 24, !7, i64 24, !7, i64 24, !7, i64 24, !7, i64 24, !7, i64 24, !7, i64 24}
!96 = !{!95, !13, i64 0}
!97 = !{!95, !7, i64 16}
!98 = !{!95, !7, i64 20}
!99 = !{!95, !7, i64 12}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = !{!66, !66, i64 0}
!104 = distinct !{!104, !11}
!105 = !{!106, !13, i64 8}
!106 = !{!"function", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !13, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!107 = !{!108, !7, i64 32}
!108 = !{!"control_flow_graph", !13, i64 0, !13, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!109 = !{!108, !13, i64 8}
!110 = !{!111, !13, i64 48}
!111 = !{!"basic_block_def", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !13, i64 48, !13, i64 56, !8, i64 64, !66, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!112 = !{!108, !13, i64 0}
!113 = distinct !{!113, !11}
!114 = !{!115, !13, i64 0}
!115 = !{!"rtl_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !7, i64 32}
!116 = !{!115, !13, i64 8}
!117 = !{!111, !7, i64 80}
!118 = distinct !{!118, !11}
!119 = !{!120, !13, i64 0}
!120 = !{!"simple_bitmap_def", !13, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!121 = distinct !{!121, !11}
!122 = !{!123, !13, i64 0}
!123 = !{!"peep2_insn_data", !13, i64 0, !13, i64 8}
!124 = !{!123, !13, i64 8}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = !{!70, !13, i64 1752}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = !{!138, !13, i64 24}
!138 = !{!"df_lr_bb_info", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = !{i64 0, i64 4, !6, i64 8, i64 8, !12}
!144 = !{i64 0, i64 8, !12}
!145 = !{!146, !7, i64 48}
!146 = !{!"edge_def", !13, i64 0, !13, i64 8, !8, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !66, i64 56}
!147 = distinct !{!147, !11}
!148 = !{!146, !13, i64 0}
!149 = !{!146, !13, i64 8}
!150 = !{!146, !7, i64 52}
!151 = distinct !{!151, !11}
!152 = !{!70, !13, i64 1000}
!153 = distinct !{!153, !11, !154, !155}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = !{!160, !7, i64 16}
!160 = !{!"dataflow", !13, i64 0, !13, i64 8, !7, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !7, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!161 = !{!160, !13, i64 8}
!162 = distinct !{!162, !11}
!163 = !{!164, !7, i64 0}
!164 = !{!"", !7, i64 0, !13, i64 8}
!165 = !{!166, !7, i64 0}
!166 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}

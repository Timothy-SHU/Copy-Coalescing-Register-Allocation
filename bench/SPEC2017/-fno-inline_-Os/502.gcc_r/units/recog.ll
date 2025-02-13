; ModuleID = 'recog.c'
source_filename = "recog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.operand_alternative = type { ptr, i32, i32, i32, i32, i8 }
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
@reload_completed = dso_local local_unnamed_addr global i32 0, align 4
@which_alternative = dso_local local_unnamed_addr global i32 0, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@num_changes = internal unnamed_addr global i32 0, align 4
@changes = internal unnamed_addr global ptr null, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [8 x i8] c"recog.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@recog_data = dso_local global %struct.recog_data zeroinitializer, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@recog_op_alt = dso_local local_unnamed_addr global [30 x [30 x %struct.operand_alternative]] zeroinitializer, align 16
@reg_class_subunion = external local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_contents = external local_unnamed_addr global [27 x i64], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@peep2_current_count = dso_local local_unnamed_addr global i32 0, align 4
@peep2_current = internal unnamed_addr global i32 0, align 4
@peep2_insn_data = internal unnamed_addr global [5 x %struct.peep2_insn_data] zeroinitializer, align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@peep2_find_free_register.search_ofs = internal unnamed_addr global i32 0, align 4
@reg_alloc_order = external local_unnamed_addr global [53 x i32], align 16
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"peephole2\00", align 1
@pass_peephole2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr @gate_handle_peephole2, ptr @rest_of_handle_peephole2, ptr null, ptr null, i32 0, i32 156, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"split1\00", align 1
@pass_split_all_insns = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.4, ptr null, ptr @rest_of_handle_split_all_insns, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"split2\00", align 1
@pass_split_after_reload = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr null, ptr @rest_of_handle_split_after_reload, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"split3\00", align 1
@pass_split_before_regstack = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.6, ptr @gate_handle_split_before_regstack, ptr @rest_of_handle_split_before_regstack, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"split4\00", align 1
@pass_split_before_sched2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.7, ptr @gate_handle_split_before_sched2, ptr @rest_of_handle_split_before_sched2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9 } }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"split5\00", align 1
@pass_split_for_shorten_branches = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.8, ptr @gate_do_final_split, ptr @split_all_insns_noflow, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@epilogue_completed = dso_local local_unnamed_addr global i32 0, align 4
@changes_allocated = internal unnamed_addr global i32 0, align 4
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_peephole2 = external local_unnamed_addr global i32, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@df = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_schedule_insns_after_reload = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog_no_volatile() local_unnamed_addr #0 !prof !214 {
  store i32 0, ptr @volatile_ok, align 4, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_recog() local_unnamed_addr #0 !prof !219 {
  store i32 1, ptr @volatile_ok, align 4, !tbaa !215
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @check_asm_operands(ptr noundef %0) local_unnamed_addr #1 !prof !220 {
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4, !prof !221

4:                                                ; preds = %1
  %5 = tail call ptr @make_insn_raw(ptr noundef %0) #18
  tail call void @extract_insn(ptr noundef %5) #19
  %6 = tail call i32 @constrain_operands(i32 noundef 1) #19
  %7 = load i32, ptr @which_alternative, align 4, !tbaa !215
  %8 = icmp sgt i32 %7, -1
  %9 = zext i1 %8 to i32
  br label %36

10:                                               ; preds = %1
  %11 = tail call i32 @asm_noperands(ptr noundef %0) #19
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13, !prof !221

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
  br i1 %23, label %36, label %24, !llvm.loop !222

24:                                               ; preds = %15, %21
  %25 = phi i64 [ 0, %15 ], [ %22, %21 ]
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !224
  %28 = load i8, ptr %27, align 1, !tbaa !226
  %29 = icmp eq i8 %28, 37
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  %32 = getelementptr inbounds ptr, ptr %18, i64 %25
  %33 = load ptr, ptr %32, align 8, !tbaa !224
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
define dso_local void @extract_insn(ptr noundef %0) local_unnamed_addr #1 !prof !227 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !228
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  store i8 0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !231
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
  ], !prof !232

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %25, label %51, !prof !233

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !224
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %51 [
    i16 23, label %19
    i16 17, label %25
  ], !prof !234

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !226
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 17
  br i1 %24, label %25, label %51, !prof !235

25:                                               ; preds = %12, %1, %19, %6
  %26 = tail call i32 @asm_noperands(ptr noundef nonnull %3) #19
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !228
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
  %37 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2), align 8, !tbaa !224
  store i8 1, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %38 = load i8, ptr %37, align 1, !tbaa !226
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
  store i8 %47, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %48 = load i8, ptr %44, align 1, !tbaa !226
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %88, label %40, !llvm.loop !236

50:                                               ; preds = %25
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2094, ptr noundef nonnull @.str.1) #18
  br label %51

51:                                               ; preds = %12, %19, %50, %1, %6
  %52 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #19
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55, !prof !237

54:                                               ; preds = %51
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2103, ptr noundef nonnull @.str.1) #18
  br label %55

55:                                               ; preds = %54, %51
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 4
  %58 = load i8, ptr %57, align 8, !tbaa !238
  %59 = sext i8 %58 to i32
  store i8 %58, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !228
  %60 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 6
  %61 = load i8, ptr %60, align 2, !tbaa !240
  store i8 %61, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %62 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 5
  %63 = load i8, ptr %62, align 1, !tbaa !241
  store i8 %63, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !231
  tail call void @insn_extract(ptr noundef nonnull %0) #18
  %64 = icmp sgt i8 %58, 0
  br i1 %64, label %65, label %88, !prof !242

65:                                               ; preds = %55
  %66 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %56, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !243
  %68 = zext nneg i32 %59 to i64
  br label %69

69:                                               ; preds = %65, %85
  %70 = phi i64 [ 0, %65 ], [ %86, %85 ]
  %71 = getelementptr inbounds %struct.insn_operand_data, ptr %67, i64 %70, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !244
  %73 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %70
  store ptr %72, ptr %73, align 8, !tbaa !224
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %67, i64 %70, i32 2
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %70
  store i32 %76, ptr %77, align 4, !tbaa !215
  %78 = icmp eq i16 %75, 0
  br i1 %78, label %79, label %85, !prof !246

79:                                               ; preds = %69
  %80 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %70
  %81 = load ptr, ptr %80, align 8, !tbaa !224
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  store i32 %84, ptr %77, align 4, !tbaa !215
  br label %85

85:                                               ; preds = %69, %79
  %86 = add nuw nsw i64 %70, 1
  %87 = icmp eq i64 %86, %68
  br i1 %87, label %88, label %69, !prof !247, !llvm.loop !248

88:                                               ; preds = %40, %85, %55
  %89 = phi i32 [ %59, %55 ], [ %59, %85 ], [ %26, %40 ]
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %106, !prof !249

91:                                               ; preds = %36, %88
  %92 = phi i32 [ %89, %88 ], [ %26, %36 ]
  %93 = zext nneg i32 %92 to i64
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ 0, %91 ], [ %104, %94 ]
  %96 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !224
  %98 = load i8, ptr %97, align 1, !tbaa !226
  %99 = icmp eq i8 %98, 61
  %100 = icmp eq i8 %98, 43
  %101 = select i1 %100, i32 2, i32 0
  %102 = select i1 %99, i32 1, i32 %101, !prof !250
  %103 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %95
  store i32 %102, ptr %103, align 4, !tbaa !215
  %104 = add nuw nsw i64 %95, 1
  %105 = icmp eq i64 %104, %93
  br i1 %105, label %106, label %94, !prof !247, !llvm.loop !251

106:                                              ; preds = %94, %33, %88
  %107 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %108 = icmp slt i8 %107, 31
  br i1 %108, label %110, label %109, !prof !252

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2126, ptr noundef nonnull @.str.1) #18
  br label %110

110:                                              ; preds = %106, %109
  %111 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %112 = icmp sgt i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = zext nneg i8 %111 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 0), i8 1, i64 %114, i1 false), !tbaa !226
  br label %115

115:                                              ; preds = %110, %113
  store ptr null, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !253
  store i32 -1, ptr @which_alternative, align 4, !tbaa !215
  br label %116

116:                                              ; preds = %1, %1, %1, %1, %1, %1, %115
  ret void
}

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @constrain_operands(i32 noundef %0) local_unnamed_addr #1 !prof !254 {
  %2 = alloca [30 x ptr], align 16
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i32], align 16
  %5 = alloca [30 x %struct.funny_match], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %5) #20
  store i32 0, ptr @which_alternative, align 4, !tbaa !215
  %7 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %8 = icmp eq i8 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %539, label %12, !prof !255

12:                                               ; preds = %1
  %13 = icmp sgt i8 %7, 0
  br i1 %13, label %14, label %18, !prof !256

14:                                               ; preds = %12
  %15 = zext nneg i8 %7 to i64
  %16 = shl nuw nsw i64 %15, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 -1, i64 %16, i1 false), !tbaa !215
  %17 = shl nuw nsw i64 %15, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 8 getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 0), i64 %17, i1 false), !tbaa !224
  br label %18

18:                                               ; preds = %14, %12
  %19 = icmp sgt i32 %0, 0
  %20 = icmp eq i32 %0, 0
  %21 = icmp slt i32 %0, 0
  br label %22

22:                                               ; preds = %18, %528
  %23 = phi i8 [ %9, %18 ], [ %529, %528 ]
  %24 = phi i8 [ %7, %18 ], [ %530, %528 ]
  %25 = phi i8 [ %7, %18 ], [ %531, %528 ]
  %26 = phi i32 [ 0, %18 ], [ %533, %528 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !226
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31, !prof !257

31:                                               ; preds = %22
  %32 = icmp sgt i8 %25, 0
  br i1 %32, label %44, label %539, !prof !258

33:                                               ; preds = %22
  %34 = icmp sgt i8 %24, 0
  br i1 %34, label %35, label %528

35:                                               ; preds = %33
  %36 = zext nneg i8 %24 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %42, %37 ]
  %39 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !224
  %41 = tail call fastcc ptr @skip_alternative(ptr noundef %40) #19
  store ptr %41, ptr %39, align 8, !tbaa !224
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, %36
  br i1 %43, label %528, label %37, !llvm.loop !259

44:                                               ; preds = %31, %416
  %45 = phi i64 [ %421, %416 ], [ 0, %31 ]
  %46 = phi i32 [ %106, %416 ], [ 0, %31 ]
  %47 = phi i32 [ %420, %416 ], [ 0, %31 ]
  %48 = phi i32 [ %105, %416 ], [ -1, %31 ]
  %49 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %45
  %50 = load ptr, ptr %49, align 8, !tbaa !224
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [30 x ptr], ptr %2, i64 0, i64 %45
  %55 = load ptr, ptr %54, align 8, !tbaa !224
  %56 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %45
  store i32 0, ptr %56, align 4, !tbaa !215
  %57 = and i32 %51, 65535
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !215
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %66, !prof !260

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !226
  %65 = load i32, ptr %64, align 8
  br label %66

66:                                               ; preds = %62, %44
  %67 = phi i32 [ %65, %62 ], [ %51, %44 ]
  %68 = phi ptr [ %64, %62 ], [ %50, %44 ]
  %69 = and i32 %67, 65535
  %70 = icmp eq i32 %69, 39
  br i1 %70, label %71, label %89, !prof !261

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !226
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %89, !prof !262

77:                                               ; preds = %71
  %78 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %73) #19
  %79 = icmp ult i32 %78, 53
  br i1 %79, label %80, label %89, !prof !263

80:                                               ; preds = %77
  %81 = lshr i32 %74, 16
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load i32, ptr %83, align 8, !tbaa !226
  %85 = lshr i32 %67, 16
  %86 = and i32 %85, 255
  %87 = tail call i32 @subreg_regno_offset(i32 noundef %78, i32 noundef %82, i32 noundef %84, i32 noundef %86) #18
  %88 = load ptr, ptr %72, align 8, !tbaa !226
  br label %89

89:                                               ; preds = %71, %77, %80, %66
  %90 = phi ptr [ %68, %66 ], [ %88, %80 ], [ %73, %77 ], [ %73, %71 ]
  %91 = phi i32 [ 0, %66 ], [ %87, %80 ], [ 0, %77 ], [ 0, %71 ]
  %92 = load i8, ptr %55, align 1, !tbaa !226
  %93 = icmp eq i8 %92, 0
  %94 = icmp eq i8 %92, 44
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i32
  br label %103

97:                                               ; preds = %399, %410
  %98 = phi ptr [ %405, %399 ], [ %414, %410 ]
  %99 = phi i32 [ %403, %399 ], [ %412, %410 ]
  %100 = phi i32 [ %401, %399 ], [ %106, %410 ]
  %101 = phi i32 [ %400, %399 ], [ %105, %410 ]
  %102 = load i8, ptr %98, align 1, !tbaa !226
  br label %103

103:                                              ; preds = %97, %89
  %104 = phi i8 [ %102, %97 ], [ %92, %89 ]
  %105 = phi i32 [ %101, %97 ], [ %48, %89 ]
  %106 = phi i32 [ %100, %97 ], [ %46, %89 ]
  %107 = phi ptr [ %98, %97 ], [ %55, %89 ]
  %108 = phi i32 [ %99, %97 ], [ %96, %89 ]
  %109 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %104) #19
  switch i8 %104, label %372 [
    i8 0, label %406
    i8 44, label %407
    i8 63, label %399
    i8 33, label %399
    i8 42, label %399
    i8 37, label %399
    i8 61, label %399
    i8 43, label %399
    i8 35, label %112
    i8 38, label %116
    i8 48, label %120
    i8 49, label %120
    i8 50, label %120
    i8 51, label %120
    i8 52, label %120
    i8 53, label %120
    i8 54, label %120
    i8 55, label %120
    i8 56, label %120
    i8 57, label %120
    i8 112, label %174
    i8 103, label %182
    i8 88, label %202
    i8 109, label %203
    i8 60, label %253
    i8 62, label %263
    i8 69, label %273
    i8 70, label %273
    i8 71, label %284
    i8 72, label %284
    i8 115, label %293
    i8 105, label %110
    i8 110, label %307
    i8 73, label %314
    i8 74, label %314
    i8 75, label %314
    i8 76, label %314
    i8 77, label %314
    i8 78, label %314
    i8 79, label %314
    i8 80, label %314
    i8 86, label %325
    i8 111, label %344
  ], !prof !264

110:                                              ; preds = %103
  %111 = load i32, ptr %90, align 8
  br label %299

112:                                              ; preds = %103, %112
  %113 = phi ptr [ %114, %112 ], [ %107, %103 ]
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !226
  switch i8 %115, label %112 [
    i8 0, label %410
    i8 44, label %410
  ]

116:                                              ; preds = %103
  %117 = trunc i64 %45 to i32
  store i32 1, ptr %56, align 4, !tbaa !215
  %118 = icmp slt i32 %105, 0
  %119 = select i1 %118, i32 %117, i32 %105
  br label %399

120:                                              ; preds = %103, %103, %103, %103, %103, %103, %103, %103, %103, %103
  %121 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %122 = call i64 @strtoul(ptr noundef nonnull %107, ptr noundef nonnull %6, i32 noundef 10) #19
  %123 = trunc i64 %122 to i32
  %124 = load ptr, ptr %6, align 8, !tbaa !224
  br i1 %21, label %125, label %130, !prof !265

125:                                              ; preds = %120
  %126 = trunc i64 %45 to i32
  store i32 %123, ptr %121, align 4, !tbaa !215
  %127 = shl i64 %122, 32
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %128
  store i32 %126, ptr %129, align 4, !tbaa !215
  br label %171

130:                                              ; preds = %120
  %131 = trunc i64 %45 to i32
  %132 = shl i64 %122, 32
  %133 = ashr exact i64 %132, 32
  %134 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !224
  %136 = load ptr, ptr %49, align 8, !tbaa !224
  %137 = load i32, ptr %135, align 8
  %138 = and i32 %137, 65535
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !215
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %146, !prof !266

143:                                              ; preds = %130
  %144 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !226
  br label %146

146:                                              ; preds = %143, %130
  %147 = phi ptr [ %145, %143 ], [ %135, %130 ]
  %148 = load i32, ptr %136, align 8
  %149 = and i32 %148, 65535
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !215
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %157, !prof !266

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !226
  br label %157

157:                                              ; preds = %146, %154
  %158 = phi ptr [ %156, %154 ], [ %136, %146 ]
  %159 = tail call i32 @operands_match_p(ptr noundef %147, ptr noundef %158) #18
  %160 = freeze i32 %159
  store i32 %123, ptr %121, align 4, !tbaa !215
  %161 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %133
  store i32 %131, ptr %161, align 4, !tbaa !215
  %162 = icmp eq i32 %160, 0
  %163 = select i1 %162, i32 %108, i32 1, !prof !267
  %164 = icmp eq i32 %160, 2
  br i1 %164, label %165, label %171, !prof !268

165:                                              ; preds = %157
  br i1 %20, label %171, label %166

166:                                              ; preds = %165
  %167 = sext i32 %106 to i64
  %168 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %167
  store i32 %131, ptr %168, align 8, !tbaa !269
  %169 = add nsw i32 %106, 1
  %170 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %167, i32 1
  store i32 %123, ptr %170, align 4, !tbaa !271
  br label %171

171:                                              ; preds = %125, %166, %165, %157
  %172 = phi i32 [ %163, %166 ], [ %163, %165 ], [ %163, %157 ], [ 1, %125 ]
  %173 = phi i32 [ %169, %166 ], [ %106, %165 ], [ %106, %157 ], [ %106, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br label %399

174:                                              ; preds = %103
  %175 = icmp slt i32 %0, 1
  br i1 %175, label %181, label %176, !prof !272

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 3, i64 %45
  %178 = load i32, ptr %177, align 4, !tbaa !215
  %179 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %178, ptr noundef %90, i8 noundef zeroext 0) #18
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %399, label %181, !prof !273

181:                                              ; preds = %176, %174
  br label %399

182:                                              ; preds = %103
  %183 = load i32, ptr %90, align 8
  %184 = and i32 %183, 65535
  %185 = icmp eq i32 %184, 37
  br i1 %185, label %186, label %197, !prof !274

186:                                              ; preds = %182
  br i1 %21, label %196, label %187, !prof !275

187:                                              ; preds = %186
  %188 = load i32, ptr @reload_in_progress, align 4, !tbaa !215
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190, !prof !276

190:                                              ; preds = %187
  %191 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %90) #19
  %192 = icmp ugt i32 %191, 52
  br i1 %192, label %196, label %193

193:                                              ; preds = %190, %187
  %194 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %90, i32 noundef 13, i32 noundef %91, i32 noundef %53) #19, !range !277
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %399, label %196, !prof !278

196:                                              ; preds = %193, %190, %186
  br label %399

197:                                              ; preds = %182
  br i1 %21, label %201, label %198, !prof !279

198:                                              ; preds = %197
  %199 = tail call i32 @general_operand(ptr noundef nonnull %90, i32 noundef %53) #19, !range !277
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %399, label %201, !prof !280

201:                                              ; preds = %198, %197
  br label %399

202:                                              ; preds = %103
  br label %399

203:                                              ; preds = %103
  %204 = load i32, ptr %90, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 43
  br i1 %206, label %207, label %238, !prof !281

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %209 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %19, label %210, label %223, !prof !282

210:                                              ; preds = %207
  %211 = lshr i32 %204, 16
  %212 = and i32 %211, 255
  %213 = load ptr, ptr %208, align 8, !tbaa !226
  %214 = load ptr, ptr %209, align 8, !tbaa !226
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216, !prof !283

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.mem_attrs, ptr %214, i64 0, i32 5
  %218 = load i8, ptr %217, align 8, !tbaa !284
  br label %219

219:                                              ; preds = %210, %216
  %220 = phi i8 [ %218, %216 ], [ 0, %210 ]
  %221 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %212, ptr noundef %213, i8 noundef zeroext %220) #18
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %399, label %237, !prof !286

223:                                              ; preds = %207
  br i1 %20, label %224, label %237, !prof !287

224:                                              ; preds = %223
  %225 = lshr i32 %204, 16
  %226 = and i32 %225, 255
  %227 = load ptr, ptr %208, align 8, !tbaa !226
  %228 = load ptr, ptr %209, align 8, !tbaa !226
  %229 = icmp eq ptr %228, null
  br i1 %229, label %233, label %230, !prof !288

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.mem_attrs, ptr %228, i64 0, i32 5
  %232 = load i8, ptr %231, align 8, !tbaa !284
  br label %233

233:                                              ; preds = %224, %230
  %234 = phi i8 [ %232, %230 ], [ 0, %224 ]
  %235 = tail call i32 @memory_address_addr_space_p(i32 noundef %226, ptr noundef %227, i8 noundef zeroext %234) #19, !range !289
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %399, label %237, !prof !290

237:                                              ; preds = %219, %233, %223
  br label %399

238:                                              ; preds = %203
  br i1 %21, label %239, label %244, !prof !291

239:                                              ; preds = %238
  %240 = zext nneg i32 %205 to i64
  %241 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !215
  %243 = icmp eq i32 %242, 9
  br i1 %243, label %399, label %244, !prof !292

244:                                              ; preds = %239, %238
  %245 = load i32, ptr @reload_in_progress, align 4, !tbaa !215
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %399, label %247, !prof !293

247:                                              ; preds = %244
  %248 = icmp eq i32 %205, 37
  br i1 %248, label %249, label %399

249:                                              ; preds = %247
  %250 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %90) #19
  %251 = icmp ugt i32 %250, 52
  %252 = select i1 %251, i32 1, i32 %108
  br label %399

253:                                              ; preds = %103
  %254 = load i32, ptr %90, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 43
  br i1 %256, label %257, label %399, !prof !294

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !226
  %260 = load i32, ptr %259, align 8
  %261 = trunc i32 %260 to i16
  switch i16 %261, label %399 [
    i16 74, label %262
    i16 76, label %262
  ], !prof !295

262:                                              ; preds = %257, %257
  br label %399

263:                                              ; preds = %103
  %264 = load i32, ptr %90, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 43
  br i1 %266, label %267, label %399

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !226
  %270 = load i32, ptr %269, align 8
  %271 = trunc i32 %270 to i16
  switch i16 %271, label %399 [
    i16 75, label %272
    i16 77, label %272
  ]

272:                                              ; preds = %267, %267
  br label %399

273:                                              ; preds = %103, %103
  %274 = load i32, ptr %90, align 8
  %275 = trunc i32 %274 to i16
  switch i16 %275, label %399 [
    i16 32, label %283
    i16 33, label %276
  ], !prof !296

276:                                              ; preds = %273
  %277 = lshr i32 %274, 16
  %278 = and i32 %277, 255
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !226
  %282 = icmp eq i8 %281, 17
  br i1 %282, label %283, label %399

283:                                              ; preds = %273, %276
  br label %399

284:                                              ; preds = %103, %103
  %285 = load i32, ptr %90, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 32
  br i1 %287, label %288, label %399, !prof !297

288:                                              ; preds = %284
  %289 = tail call i32 @lookup_constraint(ptr noundef nonnull %107) #18
  %290 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %90, i32 noundef %289) #18
  %291 = icmp eq i8 %290, 0
  %292 = select i1 %291, i32 %108, i32 1
  br label %399

293:                                              ; preds = %103
  %294 = load i32, ptr %90, align 8
  %295 = trunc i32 %294 to i16
  switch i16 %295, label %299 [
    i16 30, label %399
    i16 32, label %296
  ]

296:                                              ; preds = %293
  %297 = and i32 %294, 16711680
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %399, label %299

299:                                              ; preds = %110, %293, %296
  %300 = phi i32 [ %111, %110 ], [ %294, %293 ], [ %294, %296 ]
  %301 = and i32 %300, 65535
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !215
  %305 = icmp eq i32 %304, 9
  %306 = select i1 %305, i32 1, i32 %108, !prof !298
  br label %399

307:                                              ; preds = %103
  %308 = load i32, ptr %90, align 8
  %309 = trunc i32 %308 to i16
  switch i16 %309, label %399 [
    i16 30, label %313
    i16 32, label %310
  ], !prof !299

310:                                              ; preds = %307
  %311 = and i32 %308, 16711680
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %399

313:                                              ; preds = %307, %310
  br label %399

314:                                              ; preds = %103, %103, %103, %103, %103, %103, %103, %103
  %315 = load i32, ptr %90, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 30
  br i1 %317, label %318, label %399, !prof !300

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %320 = load i64, ptr %319, align 8, !tbaa !226
  %321 = tail call i32 @lookup_constraint(ptr noundef nonnull %107) #18
  %322 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %320, i32 noundef %321) #18
  %323 = icmp eq i8 %322, 0
  %324 = select i1 %323, i32 %108, i32 1, !prof !301
  br label %399

325:                                              ; preds = %103
  %326 = load i32, ptr %90, align 8
  %327 = and i32 %326, 65535
  %328 = icmp eq i32 %327, 43
  br i1 %328, label %329, label %399

329:                                              ; preds = %325
  br i1 %19, label %330, label %333

330:                                              ; preds = %329
  %331 = tail call i32 @offsettable_memref_p(ptr noundef nonnull %90) #19, !range !277
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %343, label %333

333:                                              ; preds = %329, %330
  %334 = load i32, ptr @reload_in_progress, align 4, !tbaa !215
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %399, label %336

336:                                              ; preds = %333
  %337 = load i32, ptr %90, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 37
  br i1 %339, label %340, label %343

340:                                              ; preds = %336
  %341 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %90) #19
  %342 = icmp ugt i32 %341, 52
  br i1 %342, label %399, label %343

343:                                              ; preds = %340, %336, %330
  br label %399

344:                                              ; preds = %103
  br i1 %19, label %345, label %348, !prof !302

345:                                              ; preds = %344
  %346 = tail call i32 @offsettable_memref_p(ptr noundef %90) #19, !range !277
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %361, label %371, !prof !302

348:                                              ; preds = %344
  br i1 %20, label %349, label %352, !prof !303

349:                                              ; preds = %348
  %350 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %90) #19, !range !277
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %361, label %371

352:                                              ; preds = %348
  %353 = load i32, ptr %90, align 8
  %354 = and i32 %353, 65535
  %355 = zext nneg i32 %354 to i64
  %356 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !215
  %358 = icmp eq i32 %357, 9
  %359 = icmp eq i32 %354, 43
  %360 = or i1 %358, %359
  br i1 %360, label %371, label %361

361:                                              ; preds = %345, %349, %352
  %362 = load i32, ptr @reload_in_progress, align 4, !tbaa !215
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %399, label %364, !prof !302

364:                                              ; preds = %361
  %365 = load i32, ptr %90, align 8
  %366 = and i32 %365, 65535
  %367 = icmp eq i32 %366, 37
  br i1 %367, label %368, label %399

368:                                              ; preds = %364
  %369 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %90) #19
  %370 = icmp ugt i32 %369, 52
  br i1 %370, label %371, label %399

371:                                              ; preds = %368, %352, %349, %345
  br label %399

372:                                              ; preds = %103
  %373 = icmp eq i8 %104, 114
  br i1 %373, label %378, label %374, !prof !304

374:                                              ; preds = %372
  %375 = tail call i32 @lookup_constraint(ptr noundef nonnull %107) #18
  %376 = tail call i32 @regclass_for_constraint(i32 noundef %375) #18
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %394, label %378, !prof !305

378:                                              ; preds = %372, %374
  %379 = phi i32 [ %376, %374 ], [ 13, %372 ]
  br i1 %21, label %393, label %380, !prof !306

380:                                              ; preds = %378
  %381 = load i32, ptr %90, align 8
  br i1 %20, label %382, label %387, !prof !307

382:                                              ; preds = %380
  %383 = trunc i32 %381 to i16
  switch i16 %383, label %387 [
    i16 37, label %384
    i16 38, label %393
  ], !prof !308

384:                                              ; preds = %382
  %385 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %90) #19
  %386 = icmp ugt i32 %385, 52
  br i1 %386, label %393, label %387, !prof !309

387:                                              ; preds = %382, %384, %380
  %388 = and i32 %381, 65535
  %389 = icmp eq i32 %388, 37
  br i1 %389, label %390, label %410, !prof !310

390:                                              ; preds = %387
  %391 = tail call i32 @reg_fits_class_p(ptr noundef nonnull %90, i32 noundef %379, i32 noundef %91, i32 noundef %53) #19, !range !277
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %410, label %393, !prof !311

393:                                              ; preds = %382, %390, %384, %378
  br label %410

394:                                              ; preds = %374
  %395 = tail call i32 @lookup_constraint(ptr noundef nonnull %107) #18
  %396 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %90, i32 noundef %395) #18
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %410, label %398, !prof !312

398:                                              ; preds = %394
  br label %410

399:                                              ; preds = %371, %368, %364, %361, %340, %343, %333, %325, %314, %313, %310, %293, %296, %284, %283, %276, %272, %263, %262, %253, %237, %233, %219, %247, %244, %202, %196, %193, %201, %198, %181, %176, %171, %103, %103, %103, %103, %103, %103, %116, %239, %249, %257, %267, %273, %288, %299, %307, %318
  %400 = phi i32 [ %105, %318 ], [ %105, %307 ], [ %105, %299 ], [ %105, %288 ], [ %105, %273 ], [ %105, %267 ], [ %105, %257 ], [ %105, %249 ], [ %105, %239 ], [ %119, %116 ], [ %105, %103 ], [ %105, %103 ], [ %105, %103 ], [ %105, %103 ], [ %105, %103 ], [ %105, %103 ], [ %105, %171 ], [ %105, %176 ], [ %105, %181 ], [ %105, %198 ], [ %105, %201 ], [ %105, %193 ], [ %105, %196 ], [ %105, %202 ], [ %105, %244 ], [ %105, %247 ], [ %105, %219 ], [ %105, %233 ], [ %105, %237 ], [ %105, %253 ], [ %105, %262 ], [ %105, %263 ], [ %105, %272 ], [ %105, %276 ], [ %105, %283 ], [ %105, %284 ], [ %105, %296 ], [ %105, %293 ], [ %105, %310 ], [ %105, %313 ], [ %105, %314 ], [ %105, %325 ], [ %105, %333 ], [ %105, %343 ], [ %105, %340 ], [ %105, %361 ], [ %105, %364 ], [ %105, %368 ], [ %105, %371 ]
  %401 = phi i32 [ %106, %318 ], [ %106, %307 ], [ %106, %299 ], [ %106, %288 ], [ %106, %273 ], [ %106, %267 ], [ %106, %257 ], [ %106, %249 ], [ %106, %239 ], [ %106, %116 ], [ %106, %103 ], [ %106, %103 ], [ %106, %103 ], [ %106, %103 ], [ %106, %103 ], [ %106, %103 ], [ %173, %171 ], [ %106, %176 ], [ %106, %181 ], [ %106, %198 ], [ %106, %201 ], [ %106, %193 ], [ %106, %196 ], [ %106, %202 ], [ %106, %244 ], [ %106, %247 ], [ %106, %219 ], [ %106, %233 ], [ %106, %237 ], [ %106, %253 ], [ %106, %262 ], [ %106, %263 ], [ %106, %272 ], [ %106, %276 ], [ %106, %283 ], [ %106, %284 ], [ %106, %296 ], [ %106, %293 ], [ %106, %310 ], [ %106, %313 ], [ %106, %314 ], [ %106, %325 ], [ %106, %333 ], [ %106, %343 ], [ %106, %340 ], [ %106, %361 ], [ %106, %364 ], [ %106, %368 ], [ %106, %371 ]
  %402 = phi ptr [ %107, %318 ], [ %107, %307 ], [ %107, %299 ], [ %107, %288 ], [ %107, %273 ], [ %107, %267 ], [ %107, %257 ], [ %107, %249 ], [ %107, %239 ], [ %107, %116 ], [ %107, %103 ], [ %107, %103 ], [ %107, %103 ], [ %107, %103 ], [ %107, %103 ], [ %107, %103 ], [ %124, %171 ], [ %107, %176 ], [ %107, %181 ], [ %107, %198 ], [ %107, %201 ], [ %107, %193 ], [ %107, %196 ], [ %107, %202 ], [ %107, %244 ], [ %107, %247 ], [ %107, %219 ], [ %107, %233 ], [ %107, %237 ], [ %107, %253 ], [ %107, %262 ], [ %107, %263 ], [ %107, %272 ], [ %107, %276 ], [ %107, %283 ], [ %107, %284 ], [ %107, %296 ], [ %107, %293 ], [ %107, %310 ], [ %107, %313 ], [ %107, %314 ], [ %107, %325 ], [ %107, %333 ], [ %107, %343 ], [ %107, %340 ], [ %107, %361 ], [ %107, %364 ], [ %107, %368 ], [ %107, %371 ]
  %403 = phi i32 [ %324, %318 ], [ %108, %307 ], [ %306, %299 ], [ %292, %288 ], [ %108, %273 ], [ %108, %267 ], [ %108, %257 ], [ %252, %249 ], [ 1, %239 ], [ %108, %116 ], [ %108, %103 ], [ %108, %103 ], [ %108, %103 ], [ %108, %103 ], [ %108, %103 ], [ %108, %103 ], [ %172, %171 ], [ %108, %176 ], [ 1, %181 ], [ %108, %198 ], [ 1, %201 ], [ %108, %193 ], [ 1, %196 ], [ 1, %202 ], [ %108, %244 ], [ %108, %247 ], [ %108, %219 ], [ %108, %233 ], [ 1, %237 ], [ %108, %253 ], [ 1, %262 ], [ %108, %263 ], [ 1, %272 ], [ %108, %276 ], [ 1, %283 ], [ %108, %284 ], [ %108, %296 ], [ %108, %293 ], [ %108, %310 ], [ 1, %313 ], [ %108, %314 ], [ %108, %325 ], [ %108, %333 ], [ 1, %343 ], [ %108, %340 ], [ %108, %361 ], [ %108, %364 ], [ %108, %368 ], [ 1, %371 ]
  %404 = phi i64 [ %109, %318 ], [ %109, %307 ], [ %109, %299 ], [ %109, %288 ], [ %109, %273 ], [ %109, %267 ], [ %109, %257 ], [ %109, %249 ], [ %109, %239 ], [ %109, %116 ], [ %109, %103 ], [ %109, %103 ], [ %109, %103 ], [ %109, %103 ], [ %109, %103 ], [ %109, %103 ], [ 0, %171 ], [ %109, %176 ], [ %109, %181 ], [ %109, %198 ], [ %109, %201 ], [ %109, %193 ], [ %109, %196 ], [ %109, %202 ], [ %109, %244 ], [ %109, %247 ], [ %109, %219 ], [ %109, %233 ], [ %109, %237 ], [ %109, %253 ], [ %109, %262 ], [ %109, %263 ], [ %109, %272 ], [ %109, %276 ], [ %109, %283 ], [ %109, %284 ], [ %109, %296 ], [ %109, %293 ], [ %109, %310 ], [ %109, %313 ], [ %109, %314 ], [ %109, %325 ], [ %109, %333 ], [ %109, %343 ], [ %109, %340 ], [ %109, %361 ], [ %109, %364 ], [ %109, %368 ], [ %109, %371 ]
  %405 = getelementptr inbounds i8, ptr %402, i64 %404
  br label %97

406:                                              ; preds = %103
  br label %407

407:                                              ; preds = %103, %406
  %408 = phi i64 [ 0, %406 ], [ %109, %103 ]
  %409 = getelementptr inbounds i8, ptr %107, i64 %408
  br label %416

410:                                              ; preds = %112, %112, %393, %390, %387, %394, %398
  %411 = phi ptr [ %107, %398 ], [ %107, %394 ], [ %107, %387 ], [ %107, %390 ], [ %107, %393 ], [ %114, %112 ], [ %114, %112 ]
  %412 = phi i32 [ 1, %398 ], [ %108, %394 ], [ %108, %387 ], [ %108, %390 ], [ 1, %393 ], [ %108, %112 ], [ %108, %112 ]
  %413 = phi i64 [ %109, %398 ], [ %109, %394 ], [ %109, %387 ], [ %109, %390 ], [ %109, %393 ], [ 0, %112 ], [ 0, %112 ]
  %414 = getelementptr inbounds i8, ptr %411, i64 %413
  %415 = icmp eq i8 %104, 0
  br i1 %415, label %416, label %97, !prof !313, !llvm.loop !314

416:                                              ; preds = %410, %407
  %417 = phi ptr [ %409, %407 ], [ %414, %410 ]
  %418 = phi i32 [ %108, %407 ], [ %412, %410 ]
  store ptr %417, ptr %54, align 8, !tbaa !224
  %419 = icmp eq i32 %418, 0
  %420 = select i1 %419, i32 1, i32 %47, !prof !315
  %421 = add nuw nsw i64 %45, 1
  %422 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %423 = sext i8 %422 to i64
  %424 = icmp slt i64 %421, %423
  br i1 %424, label %44, label %425, !prof !316, !llvm.loop !317

425:                                              ; preds = %416
  %426 = icmp eq i32 %420, 0
  br i1 %426, label %427, label %523, !prof !318

427:                                              ; preds = %425
  %428 = icmp sgt i32 %105, -1
  %429 = select i1 %19, i1 %428, i1 false
  br i1 %429, label %430, label %506, !prof !319

430:                                              ; preds = %427
  %431 = sext i8 %422 to i32
  %432 = icmp slt i32 %105, %431
  br i1 %432, label %433, label %506

433:                                              ; preds = %430
  %434 = zext nneg i32 %105 to i64
  br label %435

435:                                              ; preds = %433, %496
  %436 = phi i8 [ %422, %433 ], [ %497, %496 ]
  %437 = phi i8 [ %422, %433 ], [ %498, %496 ]
  %438 = phi i64 [ %434, %433 ], [ %500, %496 ]
  %439 = phi i32 [ 0, %433 ], [ %499, %496 ]
  %440 = getelementptr inbounds [30 x i32], ptr %4, i64 0, i64 %438
  %441 = load i32, ptr %440, align 4, !tbaa !215
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %496, label %443

443:                                              ; preds = %435
  %444 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %438
  %445 = load ptr, ptr %444, align 8, !tbaa !224
  %446 = load i32, ptr %445, align 8
  %447 = and i32 %446, 65535
  %448 = icmp eq i32 %447, 37
  %449 = icmp sgt i8 %437, 0
  %450 = and i1 %448, %449
  br i1 %450, label %451, label %496

451:                                              ; preds = %443, %490
  %452 = phi i64 [ %492, %490 ], [ 0, %443 ]
  %453 = phi i32 [ %491, %490 ], [ %439, %443 ]
  %454 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %452
  %455 = load ptr, ptr %454, align 8, !tbaa !224
  %456 = load i32, ptr %455, align 8
  %457 = and i32 %456, 65535
  %458 = icmp eq i32 %457, 43
  br i1 %458, label %465, label %459

459:                                              ; preds = %451
  %460 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 4, i64 %452
  %461 = load i32, ptr %460, align 4, !tbaa !215
  %462 = icmp eq i32 %461, 1
  %463 = icmp eq i64 %452, %438
  %464 = or i1 %463, %462
  br i1 %464, label %490, label %467

465:                                              ; preds = %451
  %466 = icmp eq i64 %452, %438
  br i1 %466, label %490, label %467

467:                                              ; preds = %459, %465
  %468 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %452
  %469 = load ptr, ptr %468, align 8, !tbaa !224
  %470 = load i8, ptr %469, align 1, !tbaa !226
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %490, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %452
  %474 = load i32, ptr %473, align 4, !tbaa !215
  %475 = zext i32 %474 to i64
  %476 = icmp eq i64 %438, %475
  %477 = load ptr, ptr %444, align 8, !tbaa !224
  br i1 %476, label %478, label %484

478:                                              ; preds = %472
  %479 = tail call i32 @operands_match_p(ptr noundef nonnull %455, ptr noundef %477) #18
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %490

481:                                              ; preds = %478
  %482 = load ptr, ptr %454, align 8, !tbaa !224
  %483 = load ptr, ptr %444, align 8, !tbaa !224
  br label %484

484:                                              ; preds = %481, %472
  %485 = phi ptr [ %483, %481 ], [ %477, %472 ]
  %486 = phi ptr [ %482, %481 ], [ %455, %472 ]
  %487 = tail call i32 @safe_from_earlyclobber(ptr noundef %486, ptr noundef %485) #18
  %488 = icmp eq i32 %487, 0
  %489 = select i1 %488, i32 1, i32 %453
  br label %490

490:                                              ; preds = %484, %459, %465, %467, %478
  %491 = phi i32 [ %453, %478 ], [ %453, %467 ], [ %453, %465 ], [ %453, %459 ], [ %489, %484 ]
  %492 = add nuw nsw i64 %452, 1
  %493 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2
  %494 = sext i8 %493 to i64
  %495 = icmp slt i64 %492, %494
  br i1 %495, label %451, label %496, !llvm.loop !320

496:                                              ; preds = %490, %435, %443
  %497 = phi i8 [ %436, %443 ], [ %436, %435 ], [ %493, %490 ]
  %498 = phi i8 [ %437, %443 ], [ %437, %435 ], [ %493, %490 ]
  %499 = phi i32 [ %439, %443 ], [ %439, %435 ], [ %491, %490 ]
  %500 = add nuw nsw i64 %438, 1
  %501 = sext i8 %498 to i32
  %502 = trunc i64 %500 to i32
  %503 = icmp slt i32 %502, %501
  br i1 %503, label %435, label %504, !llvm.loop !321

504:                                              ; preds = %496
  %505 = icmp eq i32 %499, 0
  br i1 %505, label %506, label %523, !prof !322

506:                                              ; preds = %430, %427, %504
  %507 = icmp sgt i32 %106, 0
  br i1 %507, label %508, label %539, !prof !323

508:                                              ; preds = %506
  %509 = zext nneg i32 %106 to i64
  br label %510

510:                                              ; preds = %508, %510
  %511 = phi i64 [ %509, %508 ], [ %512, %510 ]
  %512 = add nsw i64 %511, -1
  %513 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %512
  %514 = load i32, ptr %513, align 8, !tbaa !269
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !224
  %518 = getelementptr inbounds [30 x %struct.funny_match], ptr %5, i64 0, i64 %512, i32 1
  %519 = load i32, ptr %518, align 4, !tbaa !271
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %520
  store ptr %517, ptr %521, align 8, !tbaa !224
  %522 = icmp ugt i64 %511, 1
  br i1 %522, label %510, label %539, !prof !324, !llvm.loop !325

523:                                              ; preds = %504, %425
  %524 = phi i8 [ %497, %504 ], [ %422, %425 ]
  %525 = phi i8 [ %498, %504 ], [ %422, %425 ]
  %526 = load i32, ptr @which_alternative, align 4, !tbaa !215
  %527 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  br label %528

528:                                              ; preds = %37, %33, %523
  %529 = phi i8 [ %527, %523 ], [ %23, %33 ], [ %23, %37 ]
  %530 = phi i8 [ %524, %523 ], [ %24, %33 ], [ %24, %37 ]
  %531 = phi i8 [ %525, %523 ], [ %24, %33 ], [ %24, %37 ]
  %532 = phi i32 [ %526, %523 ], [ %26, %33 ], [ %26, %37 ]
  %533 = add nsw i32 %532, 1
  store i32 %533, ptr @which_alternative, align 4, !tbaa !215
  %534 = sext i8 %529 to i32
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %22, label %536, !prof !326, !llvm.loop !327

536:                                              ; preds = %528
  store i32 -1, ptr @which_alternative, align 4, !tbaa !215
  br i1 %20, label %537, label %539, !prof !328

537:                                              ; preds = %536
  %538 = tail call i32 @constrain_operands(i32 noundef -1) #19
  br label %539

539:                                              ; preds = %31, %510, %506, %536, %1, %537
  %540 = phi i32 [ %538, %537 ], [ 1, %1 ], [ 0, %536 ], [ 1, %506 ], [ 1, %510 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %2) #20
  ret i32 %540
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @asm_noperands(ptr noundef readonly %0) local_unnamed_addr #4 !prof !329 {
  %2 = tail call ptr @extract_asm_operands(ptr noundef %0) #19
  %3 = icmp eq ptr %2, null
  br i1 %3, label %75, label %4, !prof !330

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %64 [
    i16 23, label %65
    i16 15, label %7
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  %15 = load i32, ptr %9, align 8, !tbaa !331
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
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %75 [
    i16 23, label %29
    i16 25, label %19
  ], !llvm.loop !333

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %31 = and i64 %20, 4294967295
  br label %35

32:                                               ; preds = %48
  %33 = add nuw nsw i64 %36, 1
  %34 = icmp eq i64 %33, %31
  br i1 %34, label %65, label %35, !llvm.loop !334

35:                                               ; preds = %29, %32
  %36 = phi i64 [ 0, %29 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !224
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %42, label %75

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !226
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 17
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !226
  %51 = load ptr, ptr %30, align 8, !tbaa !226
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
  %60 = load ptr, ptr %59, align 8, !tbaa !224
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 25
  br i1 %63, label %53, label %75, !llvm.loop !335

64:                                               ; preds = %4
  br label %65

65:                                               ; preds = %53, %19, %32, %4, %64
  %66 = phi i32 [ 1, %4 ], [ 0, %64 ], [ %21, %32 ], [ %18, %19 ], [ 0, %53 ]
  %67 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !226
  %69 = load i32, ptr %68, align 8, !tbaa !331
  %70 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !226
  %72 = load i32, ptr %71, align 8, !tbaa !331
  %73 = add i32 %69, %66
  %74 = add i32 %73, %72
  br label %75

75:                                               ; preds = %57, %23, %35, %42, %48, %1, %65
  %76 = phi i32 [ %74, %65 ], [ -1, %1 ], [ -1, %48 ], [ -1, %42 ], [ -1, %35 ], [ -1, %23 ], [ -1, %57 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decode_asm_operands(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #1 !prof !336 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !226
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 8, !tbaa !226
  store ptr %15, ptr %1, align 8, !tbaa !224
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp eq ptr %2, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  store ptr %10, ptr %2, align 8, !tbaa !224
  br label %19

19:                                               ; preds = %18, %16
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !226
  store ptr %23, ptr %3, align 8, !tbaa !224
  br label %24

24:                                               ; preds = %21, %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %97, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %10, align 8, !tbaa !226
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  store i32 %30, ptr %4, align 4, !tbaa !215
  br label %97

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !226
  %34 = load i32, ptr %33, align 8, !tbaa !331
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !224
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 23
  br i1 %39, label %40, label %97

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !226
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
  %52 = load ptr, ptr %32, align 8, !tbaa !226
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !224
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 25
  br i1 %57, label %95, label %58

58:                                               ; preds = %50
  br i1 %45, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !226
  %62 = getelementptr inbounds ptr, ptr %1, i64 %51
  store ptr %61, ptr %62, align 8, !tbaa !224
  br label %63

63:                                               ; preds = %59, %58
  br i1 %46, label %70, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %32, align 8, !tbaa !226
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %51
  %67 = load ptr, ptr %66, align 8, !tbaa !224
  %68 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %69 = getelementptr inbounds ptr, ptr %2, i64 %51
  store ptr %68, ptr %69, align 8, !tbaa !224
  br label %70

70:                                               ; preds = %64, %63
  br i1 %47, label %80, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %32, align 8, !tbaa !226
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %72, i64 0, i32 1, i64 %51
  %74 = load ptr, ptr %73, align 8, !tbaa !224
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !226
  %77 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !226
  %79 = getelementptr inbounds ptr, ptr %3, i64 %51
  store ptr %78, ptr %79, align 8, !tbaa !224
  br label %80

80:                                               ; preds = %71, %70
  br i1 %48, label %91, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %32, align 8, !tbaa !226
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %51
  %84 = load ptr, ptr %83, align 8, !tbaa !224
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !226
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = getelementptr inbounds i32, ptr %4, i64 %51
  store i32 %89, ptr %90, align 4, !tbaa !215
  br label %91

91:                                               ; preds = %80, %81
  %92 = add nuw nsw i64 %51, 1
  %93 = icmp eq i64 %92, %49
  br i1 %93, label %97, label %50, !llvm.loop !337

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
  %101 = load ptr, ptr %100, align 8, !tbaa !226
  %102 = load i32, ptr %101, align 8, !tbaa !331
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
  %119 = load ptr, ptr %100, align 8, !tbaa !226
  %120 = getelementptr inbounds %struct.rtvec_def, ptr %119, i64 0, i32 1, i64 %117
  %121 = getelementptr ptr, ptr %112, i64 %117
  store ptr %120, ptr %121, align 8, !tbaa !224
  br label %122

122:                                              ; preds = %118, %116
  br i1 %106, label %128, label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %100, align 8, !tbaa !226
  %125 = getelementptr inbounds %struct.rtvec_def, ptr %124, i64 0, i32 1, i64 %117
  %126 = load ptr, ptr %125, align 8, !tbaa !224
  %127 = getelementptr ptr, ptr %113, i64 %117
  store ptr %126, ptr %127, align 8, !tbaa !224
  br label %128

128:                                              ; preds = %123, %122
  br i1 %107, label %136, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %108, align 8, !tbaa !226
  %131 = getelementptr inbounds %struct.rtvec_def, ptr %130, i64 0, i32 1, i64 %117
  %132 = load ptr, ptr %131, align 8, !tbaa !224
  %133 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !226
  %135 = getelementptr ptr, ptr %114, i64 %117
  store ptr %134, ptr %135, align 8, !tbaa !224
  br label %136

136:                                              ; preds = %129, %128
  br i1 %109, label %145, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %108, align 8, !tbaa !226
  %139 = getelementptr inbounds %struct.rtvec_def, ptr %138, i64 0, i32 1, i64 %117
  %140 = load ptr, ptr %139, align 8, !tbaa !224
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = getelementptr i32, ptr %115, i64 %117
  store i32 %143, ptr %144, align 4, !tbaa !215
  br label %145

145:                                              ; preds = %136, %137
  %146 = add nuw nsw i64 %117, 1
  %147 = icmp eq i64 %146, %111
  br i1 %147, label %148, label %116, !llvm.loop !338

148:                                              ; preds = %145, %97
  %149 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !226
  %151 = load i32, ptr %150, align 8, !tbaa !331
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
  %168 = load ptr, ptr %149, align 8, !tbaa !226
  %169 = getelementptr inbounds %struct.rtvec_def, ptr %168, i64 0, i32 1, i64 %166
  %170 = getelementptr ptr, ptr %161, i64 %166
  store ptr %169, ptr %170, align 8, !tbaa !224
  br label %171

171:                                              ; preds = %167, %165
  br i1 %156, label %177, label %172

172:                                              ; preds = %171
  %173 = load ptr, ptr %149, align 8, !tbaa !226
  %174 = getelementptr inbounds %struct.rtvec_def, ptr %173, i64 0, i32 1, i64 %166
  %175 = load ptr, ptr %174, align 8, !tbaa !224
  %176 = getelementptr ptr, ptr %162, i64 %166
  store ptr %175, ptr %176, align 8, !tbaa !224
  br label %177

177:                                              ; preds = %172, %171
  br i1 %157, label %180, label %178

178:                                              ; preds = %177
  %179 = getelementptr ptr, ptr %163, i64 %166
  store ptr @.str.2, ptr %179, align 8, !tbaa !224
  br label %180

180:                                              ; preds = %178, %177
  br i1 %158, label %183, label %181

181:                                              ; preds = %180
  %182 = getelementptr i32, ptr %164, i64 %166
  store i32 16, ptr %182, align 4, !tbaa !215
  br label %183

183:                                              ; preds = %180, %181
  %184 = add nuw nsw i64 %166, 1
  %185 = icmp eq i64 %184, %160
  br i1 %185, label %186, label %165, !llvm.loop !339

186:                                              ; preds = %183, %148
  %187 = icmp eq ptr %5, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 1, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !226
  store i32 %190, ptr %5, align 4, !tbaa !215
  br label %191

191:                                              ; preds = %188, %186
  %192 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !226
  ret ptr %193
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @asm_operand_ok(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #1 !prof !336 {
  %4 = alloca ptr, align 8
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1607, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i8, ptr %1, align 1, !tbaa !226
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %247, label %15

11:                                               ; preds = %239, %21, %44, %32
  %12 = phi i32 [ %46, %44 ], [ %33, %32 ], [ %17, %21 ], [ %236, %239 ]
  %13 = phi ptr [ %37, %44 ], [ %34, %32 ], [ %22, %21 ], [ %242, %239 ]
  %14 = load i8, ptr %13, align 1, !tbaa !226
  br label %15

15:                                               ; preds = %8, %11
  %16 = phi i8 [ %14, %11 ], [ %9, %8 ]
  %17 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %18 = phi ptr [ %13, %11 ], [ %1, %8 ]
  switch i8 %16, label %218 [
    i8 0, label %247
    i8 44, label %21
    i8 61, label %235
    i8 43, label %235
    i8 42, label %235
    i8 37, label %235
    i8 33, label %235
    i8 35, label %235
    i8 38, label %235
    i8 63, label %235
    i8 48, label %23
    i8 49, label %23
    i8 50, label %23
    i8 51, label %23
    i8 52, label %23
    i8 53, label %23
    i8 54, label %23
    i8 55, label %23
    i8 56, label %23
    i8 57, label %23
    i8 112, label %47
    i8 109, label %51
    i8 86, label %51
    i8 111, label %55
    i8 60, label %59
    i8 62, label %64
    i8 69, label %69
    i8 70, label %69
    i8 71, label %80
    i8 72, label %89
    i8 115, label %98
    i8 105, label %19
    i8 110, label %118
    i8 73, label %125
    i8 74, label %136
    i8 75, label %147
    i8 76, label %158
    i8 77, label %169
    i8 78, label %180
    i8 79, label %191
    i8 80, label %202
    i8 88, label %213
    i8 103, label %214
    i8 114, label %222
  ]

19:                                               ; preds = %15
  %20 = load i32, ptr %0, align 8
  br label %104

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  br label %11, !llvm.loop !340

23:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %24 = icmp eq ptr %2, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %26 = call i64 @strtoul(ptr noundef nonnull %18, ptr noundef nonnull %4, i32 noundef 10) #19
  %27 = icmp eq i32 %17, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds ptr, ptr %2, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !224
  %31 = tail call i32 @asm_operand_ok(ptr noundef %0, ptr noundef %30, ptr noundef null) #19
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %17, %25 ], [ %31, %28 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %11, !llvm.loop !340

35:                                               ; preds = %23, %35
  %36 = phi ptr [ %37, %35 ], [ %18, %23 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !226
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !341
  %42 = and i16 %41, 4
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %35, !llvm.loop !343

44:                                               ; preds = %35
  %45 = icmp eq i32 %17, 0
  %46 = select i1 %45, i32 -1, i32 %17
  br label %11, !llvm.loop !340

47:                                               ; preds = %15
  %48 = tail call i32 @address_operand(ptr noundef %0, i32 noundef 0) #19, !range !289
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %17, i32 1
  br label %235

51:                                               ; preds = %15, %15
  %52 = tail call i32 @memory_operand(ptr noundef %0, i32 noundef 0) #19, !range !277
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %17, i32 1
  br label %235

55:                                               ; preds = %15
  %56 = tail call i32 @offsettable_nonstrict_memref_p(ptr noundef %0) #19, !range !277
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %17, i32 1
  br label %235

59:                                               ; preds = %15
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 43
  %63 = select i1 %62, i32 1, i32 %17
  br label %235

64:                                               ; preds = %15
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 43
  %68 = select i1 %67, i32 1, i32 %17
  br label %235

69:                                               ; preds = %15, %15
  %70 = load i32, ptr %0, align 8
  %71 = trunc i32 %70 to i16
  switch i16 %71, label %235 [
    i16 32, label %79
    i16 33, label %72
  ]

72:                                               ; preds = %69
  %73 = lshr i32 %70, 16
  %74 = and i32 %73, 255
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !226
  %78 = icmp eq i8 %77, 17
  br i1 %78, label %79, label %235

79:                                               ; preds = %69, %72
  br label %235

80:                                               ; preds = %15
  %81 = load i32, ptr %0, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %235

84:                                               ; preds = %80
  %85 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %86 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %85) #18
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i32 %17, i32 1
  br label %235

89:                                               ; preds = %15
  %90 = load i32, ptr %0, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %235

93:                                               ; preds = %89
  %94 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %95 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef nonnull %0, i32 noundef %94) #18
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, i32 %17, i32 1
  br label %235

98:                                               ; preds = %15
  %99 = load i32, ptr %0, align 8
  %100 = trunc i32 %99 to i16
  switch i16 %100, label %104 [
    i16 30, label %235
    i16 32, label %101
  ]

101:                                              ; preds = %98
  %102 = and i32 %99, 16711680
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %235, label %104

104:                                              ; preds = %19, %98, %101
  %105 = phi i32 [ %20, %19 ], [ %99, %98 ], [ %99, %101 ]
  %106 = and i32 %105, 65535
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !215
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %111, label %235

111:                                              ; preds = %104
  %112 = load i32, ptr @flag_pic, align 4, !tbaa !215
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = tail call zeroext i8 @legitimate_pic_operand_p(ptr noundef nonnull %0) #18
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %235, label %117

117:                                              ; preds = %114, %111
  br label %235

118:                                              ; preds = %15
  %119 = load i32, ptr %0, align 8
  %120 = trunc i32 %119 to i16
  switch i16 %120, label %235 [
    i16 30, label %124
    i16 32, label %121
  ]

121:                                              ; preds = %118
  %122 = and i32 %119, 16711680
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %235

124:                                              ; preds = %118, %121
  br label %235

125:                                              ; preds = %15
  %126 = load i32, ptr %0, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 30
  br i1 %128, label %129, label %235

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !226
  %132 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %133 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %131, i32 noundef %132) #18
  %134 = icmp eq i8 %133, 0
  %135 = select i1 %134, i32 %17, i32 1
  br label %235

136:                                              ; preds = %15
  %137 = load i32, ptr %0, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 30
  br i1 %139, label %140, label %235

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !226
  %143 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %144 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %142, i32 noundef %143) #18
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, i32 %17, i32 1
  br label %235

147:                                              ; preds = %15
  %148 = load i32, ptr %0, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 30
  br i1 %150, label %151, label %235

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !226
  %154 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %155 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %153, i32 noundef %154) #18
  %156 = icmp eq i8 %155, 0
  %157 = select i1 %156, i32 %17, i32 1
  br label %235

158:                                              ; preds = %15
  %159 = load i32, ptr %0, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 30
  br i1 %161, label %162, label %235

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !226
  %165 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %166 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %164, i32 noundef %165) #18
  %167 = icmp eq i8 %166, 0
  %168 = select i1 %167, i32 %17, i32 1
  br label %235

169:                                              ; preds = %15
  %170 = load i32, ptr %0, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 30
  br i1 %172, label %173, label %235

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !226
  %176 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %177 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %175, i32 noundef %176) #18
  %178 = icmp eq i8 %177, 0
  %179 = select i1 %178, i32 %17, i32 1
  br label %235

180:                                              ; preds = %15
  %181 = load i32, ptr %0, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 30
  br i1 %183, label %184, label %235

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !226
  %187 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %188 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %186, i32 noundef %187) #18
  %189 = icmp eq i8 %188, 0
  %190 = select i1 %189, i32 %17, i32 1
  br label %235

191:                                              ; preds = %15
  %192 = load i32, ptr %0, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 30
  br i1 %194, label %195, label %235

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !226
  %198 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %199 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %197, i32 noundef %198) #18
  %200 = icmp eq i8 %199, 0
  %201 = select i1 %200, i32 %17, i32 1
  br label %235

202:                                              ; preds = %15
  %203 = load i32, ptr %0, align 8
  %204 = and i32 %203, 65535
  %205 = icmp eq i32 %204, 30
  br i1 %205, label %206, label %235

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !226
  %209 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %210 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 noundef %208, i32 noundef %209) #18
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %211, i32 %17, i32 1
  br label %235

213:                                              ; preds = %15
  br label %235

214:                                              ; preds = %15
  %215 = tail call i32 @general_operand(ptr noundef %0, i32 noundef 0) #19, !range !277
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 %17, i32 1
  br label %235

218:                                              ; preds = %15
  %219 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %220 = tail call i32 @regclass_for_constraint(i32 noundef %219) #18
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %15, %218
  %223 = load i32, ptr %0, align 8
  %224 = and i32 %223, 16711680
  %225 = icmp eq i32 %224, 65536
  br i1 %225, label %235, label %226

226:                                              ; preds = %222
  %227 = tail call i32 @register_operand(ptr noundef nonnull %0, i32 noundef 0) #19
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i32 %17, i32 1
  br label %235

230:                                              ; preds = %218
  %231 = tail call i32 @lookup_constraint(ptr noundef nonnull %18) #18
  %232 = tail call zeroext i8 @constraint_satisfied_p(ptr noundef %0, i32 noundef %231) #18
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %233, i32 %17, i32 1
  br label %235

235:                                              ; preds = %230, %226, %214, %206, %195, %184, %173, %162, %151, %140, %129, %93, %84, %64, %59, %55, %51, %47, %118, %98, %69, %15, %15, %15, %15, %15, %15, %15, %15, %222, %202, %191, %180, %169, %158, %147, %136, %125, %121, %124, %104, %114, %117, %101, %89, %80, %72, %79, %213
  %236 = phi i32 [ %17, %222 ], [ 1, %213 ], [ %17, %202 ], [ %17, %191 ], [ %17, %180 ], [ %17, %169 ], [ %17, %158 ], [ %17, %147 ], [ %17, %136 ], [ %17, %125 ], [ 1, %124 ], [ %17, %121 ], [ 1, %117 ], [ %17, %114 ], [ %17, %104 ], [ %17, %98 ], [ %17, %101 ], [ %17, %89 ], [ %17, %80 ], [ 1, %79 ], [ %17, %72 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %17, %15 ], [ %50, %47 ], [ %54, %51 ], [ %58, %55 ], [ %63, %59 ], [ %68, %64 ], [ %17, %69 ], [ %88, %84 ], [ %97, %93 ], [ %17, %118 ], [ %135, %129 ], [ %146, %140 ], [ %157, %151 ], [ %168, %162 ], [ %179, %173 ], [ %190, %184 ], [ %201, %195 ], [ %212, %206 ], [ %217, %214 ], [ %229, %226 ], [ %234, %230 ]
  %237 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %16) #19
  %238 = trunc i64 %237 to i32
  br label %239

239:                                              ; preds = %244, %235
  %240 = phi ptr [ %18, %235 ], [ %242, %244 ]
  %241 = phi i32 [ %238, %235 ], [ 1, %244 ]
  %242 = getelementptr inbounds i8, ptr %240, i64 1
  %243 = icmp eq i32 %241, 1
  br i1 %243, label %11, label %244

244:                                              ; preds = %239
  %245 = load i8, ptr %242, align 1, !tbaa !226
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %239, !llvm.loop !344

247:                                              ; preds = %15, %244, %8
  %248 = phi i32 [ 1, %8 ], [ 0, %244 ], [ %17, %15 ]
  ret i32 %248
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @validate_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 !prof !345 {
  %5 = tail call fastcc zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 0) #19, !range !346
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !347 !PGOFuncName !348 {
  %6 = load ptr, ptr %1, align 8, !tbaa !224
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %54, label %8, !prof !349

8:                                                ; preds = %5
  %9 = tail call i32 @rtx_equal_p(ptr noundef %6, ptr noundef %2) #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54, !prof !350

11:                                               ; preds = %8
  %12 = icmp ne i8 %3, 0
  %13 = load i32, ptr @num_changes, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %18, label %16, !prof !351

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 208, ptr noundef nonnull @.str.1) #18
  %17 = load i32, ptr @num_changes, align 4, !tbaa !215
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi i32 [ %13, %11 ], [ %17, %16 ]
  store ptr %2, ptr %1, align 8, !tbaa !224
  %20 = load i32, ptr @changes_allocated, align 4, !tbaa !215
  %21 = icmp slt i32 %19, %20
  %22 = load ptr, ptr @changes, align 8, !tbaa !224
  br i1 %21, label %31, label %23, !prof !352

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 0
  %25 = shl nsw i32 %20, 1
  %26 = select i1 %24, i32 150, i32 %25, !prof !353
  store i32 %26, ptr @changes_allocated, align 4, !tbaa !215
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 40
  %29 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %28) #18
  store ptr %29, ptr @changes, align 8, !tbaa !224
  %30 = load i32, ptr @num_changes, align 4, !tbaa !215
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi i32 [ %30, %23 ], [ %19, %18 ]
  %33 = phi ptr [ %29, %23 ], [ %22, %18 ]
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34
  store ptr %0, ptr %35, align 8, !tbaa !354
  %36 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !356
  %37 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 3
  store ptr %6, ptr %37, align 8, !tbaa !357
  %38 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 4
  store i8 %4, ptr %38, align 8, !tbaa !358
  %39 = icmp eq ptr %0, null
  br i1 %39, label %48, label %40, !prof !359

40:                                               ; preds = %31
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 43
  br i1 %43, label %48, label %44, !prof !360

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !226
  %47 = getelementptr inbounds %struct.change_t, ptr %33, i64 %34, i32 1
  store i32 %46, ptr %47, align 8, !tbaa !361
  store i32 -1, ptr %45, align 8, !tbaa !226
  br label %48

48:                                               ; preds = %44, %40, %31
  %49 = add nsw i32 %32, 1
  store i32 %49, ptr @num_changes, align 4, !tbaa !215
  %50 = icmp eq i8 %3, 0
  br i1 %50, label %51, label %54, !prof !362

51:                                               ; preds = %48
  %52 = tail call i32 @apply_change_group() #19, !range !277
  %53 = trunc i32 %52 to i8
  br label %54

54:                                               ; preds = %48, %5, %8, %51
  %55 = phi i8 [ %53, %51 ], [ 1, %8 ], [ 1, %5 ], [ 1, %48 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @validate_unshare_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 !prof !363 {
  %5 = tail call fastcc zeroext i8 @validate_change_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext 1) #19, !range !346
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @canonicalize_change_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !364 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !215
  %8 = and i32 %7, -3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %22, !prof !365

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !226
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %12, ptr noundef %14) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17, !prof !366

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !226
  %19 = load ptr, ptr %13, align 8, !tbaa !226
  %20 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %19, i8 noundef zeroext 1) #19, !range !346
  %21 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %18, i8 noundef zeroext 1) #19, !range !346
  br label %22

22:                                               ; preds = %2, %10, %17
  %23 = phi i8 [ 1, %17 ], [ 0, %10 ], [ 0, %2 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @insn_invalid_p(ptr noundef %0) local_unnamed_addr #1 !prof !367 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store i32 0, ptr %2, align 4, !tbaa !215
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp ne i32 %6, 23
  %8 = load i32, ptr @reload_completed, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = load i32, ptr @reload_in_progress, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  %14 = select i1 %13, ptr null, ptr %2, !prof !368
  %15 = call i32 @recog(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %14) #18
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %24, label %17, !prof !369

17:                                               ; preds = %1
  %18 = load ptr, ptr %3, align 8, !tbaa !226
  %19 = call i32 @asm_noperands(ptr noundef %18) #19
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %46, !prof !370

21:                                               ; preds = %17
  %22 = call i32 @check_asm_operands(ptr noundef %18) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24, !prof !371

24:                                               ; preds = %1, %21
  %25 = load i32, ptr %2, align 4, !tbaa !215
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38, !prof !372

27:                                               ; preds = %24
  %28 = call i32 @added_clobbers_hard_reg_p(i32 noundef %15) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 4, !tbaa !215
  %32 = add nsw i32 %31, 1
  %33 = call ptr @rtvec_alloc(i32 noundef %32) #18
  %34 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %33) #18
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !226
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %36, i64 0, i32 1
  store ptr %4, ptr %37, align 8, !tbaa !224
  call void @add_clobbers(ptr noundef %34, i32 noundef %15) #18
  store ptr %34, ptr %3, align 8, !tbaa !226
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !373

41:                                               ; preds = %38
  call void @extract_insn(ptr noundef nonnull %0) #19
  %42 = call i32 @constrain_operands(i32 noundef 1) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !374

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  store i32 %15, ptr %45, align 8, !tbaa !226
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
define dso_local i32 @num_changes_pending() local_unnamed_addr #5 !prof !375 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !215
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @verify_changes(i32 noundef %0) local_unnamed_addr #1 !prof !376 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !215
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %128, !prof !377

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  br label %6

6:                                                ; preds = %4, %118
  %7 = phi i64 [ %5, %4 ], [ %120, %118 ]
  %8 = phi ptr [ null, %4 ], [ %119, %118 ]
  %9 = load ptr, ptr @changes, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !354
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %8
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %118, label %15, !prof !378

15:                                               ; preds = %6
  %16 = load i32, ptr %11, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %34, !prof !379

19:                                               ; preds = %15
  %20 = lshr i32 %16, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !226
  %24 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.mem_attrs, ptr %25, i64 0, i32 5
  %29 = load i8, ptr %28, align 8, !tbaa !284
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi i8 [ %29, %27 ], [ 0, %19 ]
  %32 = tail call i32 @memory_address_addr_space_p(i32 noundef %21, ptr noundef %23, i8 noundef zeroext %31) #19, !range !289
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %124, label %118

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.change_t, ptr %9, i64 %7, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !357
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 37
  br i1 %39, label %40, label %67, !prof !380

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !226
  %43 = tail call i32 @asm_noperands(ptr noundef %42) #19
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %67, !prof !381

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !226
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !382
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %54, i64 13
  %56 = load i8, ptr %55, align 1, !tbaa !226
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %50, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !226
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
  br i1 %68, label %118, label %69, !prof !379

69:                                               ; preds = %67
  %70 = tail call i32 @insn_invalid_p(ptr noundef nonnull %11) #19, !range !277
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %118, label %72, !prof !385

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !226
  %75 = load i32, ptr %74, align 8
  %76 = trunc i32 %75 to i16
  switch i16 %76, label %124 [
    i16 15, label %77
    i16 24, label %118
    i16 25, label %118
    i16 138, label %118
  ], !prof !386

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !226
  %80 = load i32, ptr %79, align 8, !tbaa !331
  %81 = add nsw i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !224
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 25
  br i1 %87, label %88, label %124, !prof !387

88:                                               ; preds = %77
  %89 = tail call i32 @asm_noperands(ptr noundef nonnull %74) #19
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %124, !prof !387

91:                                               ; preds = %88
  %92 = icmp eq i32 %80, 2
  br i1 %92, label %93, label %96, !prof !387

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !224
  br label %115

96:                                               ; preds = %91
  %97 = tail call ptr @rtvec_alloc(i32 noundef %81) #18
  %98 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %97) #18
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !226
  %101 = load i32, ptr %100, align 8, !tbaa !331
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96, %103
  %104 = phi i64 [ %110, %103 ], [ 0, %96 ]
  %105 = phi ptr [ %111, %103 ], [ %100, %96 ]
  %106 = load ptr, ptr %78, align 8, !tbaa !226
  %107 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1, i64 %104
  %108 = load ptr, ptr %107, align 8, !tbaa !224
  %109 = getelementptr inbounds %struct.rtvec_def, ptr %105, i64 0, i32 1, i64 %104
  store ptr %108, ptr %109, align 8, !tbaa !224
  %110 = add nuw nsw i64 %104, 1
  %111 = load ptr, ptr %99, align 8, !tbaa !226
  %112 = load i32, ptr %111, align 8, !tbaa !331
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %103, label %115, !llvm.loop !388

115:                                              ; preds = %103, %96, %93
  %116 = phi ptr [ %95, %93 ], [ %98, %96 ], [ %98, %103 ]
  %117 = tail call zeroext i8 @validate_change(ptr noundef nonnull %11, ptr noundef nonnull %73, ptr noundef %116, i8 noundef zeroext 1) #19, !range !346
  br label %118

118:                                              ; preds = %72, %72, %72, %30, %69, %6, %67, %115
  %119 = phi ptr [ %8, %115 ], [ %8, %67 ], [ %8, %6 ], [ %11, %69 ], [ %11, %30 ], [ %8, %72 ], [ %8, %72 ], [ %8, %72 ]
  %120 = add nsw i64 %7, 1
  %121 = load i32, ptr @num_changes, align 4, !tbaa !215
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %6, label %124, !prof !389, !llvm.loop !390

124:                                              ; preds = %30, %62, %77, %88, %72, %118
  %125 = phi i64 [ %120, %118 ], [ %7, %72 ], [ %7, %88 ], [ %7, %77 ], [ %7, %62 ], [ %7, %30 ]
  %126 = trunc i64 %125 to i32
  %127 = load i32, ptr @num_changes, align 4, !tbaa !215
  br label %128

128:                                              ; preds = %124, %1
  %129 = phi i32 [ %2, %1 ], [ %127, %124 ]
  %130 = phi i32 [ %0, %1 ], [ %126, %124 ]
  %131 = icmp eq i32 %130, %129
  %132 = zext i1 %131 to i32
  ret i32 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_address_addr_space_p(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 !prof !391 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 3), align 8, !tbaa !392
  %5 = tail call zeroext i8 %4(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %2) #18
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @confirm_change_group() local_unnamed_addr #1 !prof !404 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !215
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %53, !prof !405

3:                                                ; preds = %0
  %4 = load ptr, ptr @changes, align 8, !tbaa !224
  br label %5

5:                                                ; preds = %3, %37
  %6 = phi ptr [ %4, %3 ], [ %38, %37 ]
  %7 = phi i64 [ 0, %3 ], [ %40, %37 ]
  %8 = phi ptr [ null, %3 ], [ %39, %37 ]
  %9 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !354
  %11 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !358
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14, !prof !406

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.change_t, ptr %6, i64 %7, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !356
  %17 = load ptr, ptr %16, align 8, !tbaa !224
  %18 = tail call ptr @copy_rtx(ptr noundef %17) #18
  %19 = load ptr, ptr @changes, align 8, !tbaa !224
  %20 = getelementptr inbounds %struct.change_t, ptr %19, i64 %7, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !356
  store ptr %18, ptr %21, align 8, !tbaa !224
  br label %22

22:                                               ; preds = %14, %5
  %23 = phi ptr [ %19, %14 ], [ %6, %5 ]
  %24 = icmp eq ptr %10, null
  br i1 %24, label %37, label %25, !prof !407

25:                                               ; preds = %22
  %26 = icmp ne ptr %10, %8
  %27 = icmp ne ptr %8, null
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %37, !prof !408

29:                                               ; preds = %25
  %30 = load i32, ptr %8, align 8
  %31 = and i32 %30, 65535
  %32 = add nsw i32 %31, -7
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %37, !prof !409

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %8) #18
  %36 = load ptr, ptr @changes, align 8, !tbaa !224
  br label %37

37:                                               ; preds = %29, %25, %34, %22
  %38 = phi ptr [ %23, %22 ], [ %23, %29 ], [ %36, %34 ], [ %23, %25 ]
  %39 = phi ptr [ %8, %22 ], [ %10, %29 ], [ %10, %34 ], [ %10, %25 ]
  %40 = add nuw nsw i64 %7, 1
  %41 = load i32, ptr @num_changes, align 4, !tbaa !215
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %5, label %44, !prof !410, !llvm.loop !411

44:                                               ; preds = %37
  %45 = icmp eq ptr %39, null
  br i1 %45, label %53, label %46, !prof !412

46:                                               ; preds = %44
  %47 = load i32, ptr %39, align 8
  %48 = and i32 %47, 65535
  %49 = add nsw i32 %48, -7
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %53, !prof !413

51:                                               ; preds = %46
  %52 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %39) #18
  br label %53

53:                                               ; preds = %0, %46, %51, %44
  store i32 0, ptr @num_changes, align 4, !tbaa !215
  ret void
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @apply_change_group() local_unnamed_addr #1 !prof !414 {
  %1 = tail call i32 @verify_changes(i32 noundef 0) #19, !range !277
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !415

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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cancel_changes(i32 noundef %0) local_unnamed_addr #6 !prof !416 {
  %2 = load i32, ptr @num_changes, align 4, !tbaa !215
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %28, !prof !417

4:                                                ; preds = %1
  %5 = load ptr, ptr @changes, align 8, !tbaa !224
  %6 = sext i32 %2 to i64
  %7 = sext i32 %0 to i64
  br label %8

8:                                                ; preds = %4, %26
  %9 = phi i64 [ %6, %4 ], [ %10, %26 ]
  %10 = add nsw i64 %9, -1
  %11 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !357
  %13 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !356
  store ptr %12, ptr %14, align 8, !tbaa !224
  %15 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !354
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !418

18:                                               ; preds = %8
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %26, label %22, !prof !418

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.change_t, ptr %5, i64 %10, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !361
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !226
  br label %26

26:                                               ; preds = %8, %18, %22
  %27 = icmp sgt i64 %10, %7
  br i1 %27, label %8, label %28, !prof !419, !llvm.loop !420

28:                                               ; preds = %26, %1
  store i32 %0, ptr @num_changes, align 4, !tbaa !215
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @num_validated_changes() local_unnamed_addr #5 !prof !421 {
  %1 = load i32, ptr @num_changes, align 4, !tbaa !215
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_subexp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 !prof !336 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !277
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !422 !PGOFuncName !423 {
  %6 = load ptr, ptr %0, align 8, !tbaa !224
  %7 = load i32, ptr @num_changes, align 4, !tbaa !215
  %8 = icmp eq ptr %6, null
  br i1 %8, label %148, label %9, !prof !424

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 8
  %11 = and i32 %10, 65535
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !224
  %15 = load i8, ptr %14, align 1, !tbaa !226
  %16 = icmp eq i8 %15, 101
  br i1 %16, label %17, label %23, !prof !425

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !226
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i32 [ %22, %17 ], [ 0, %9 ]
  %25 = icmp eq ptr %6, %1
  br i1 %25, label %49, label %26, !prof !426

26:                                               ; preds = %23
  %27 = icmp eq i32 %11, 37
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  %31 = select i1 %27, i1 %30, i1 false
  br i1 %31, label %32, label %40, !prof !427

32:                                               ; preds = %26
  %33 = xor i32 %28, %10
  %34 = and i32 %33, 16711680
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40, !prof !428

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #19
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #19
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %49, label %40, !prof !429

40:                                               ; preds = %36, %32, %26
  %41 = xor i32 %28, %10
  %42 = and i32 %41, 16777215
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51, !prof !430

44:                                               ; preds = %40
  %45 = tail call i32 @rtx_equal_p(ptr noundef nonnull %6, ptr noundef nonnull %1) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49, !prof !431

47:                                               ; preds = %44
  %48 = load i32, ptr %6, align 8
  br label %51

49:                                               ; preds = %44, %36, %23
  %50 = tail call zeroext i8 @validate_unshare_change(ptr noundef %3, ptr noundef nonnull %0, ptr noundef %2, i8 noundef zeroext 1) #19, !range !346
  br label %148

51:                                               ; preds = %47, %40
  %52 = phi i32 [ %48, %47 ], [ %10, %40 ]
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %101, !prof !432

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !226
  %58 = load i32, ptr %57, align 8, !tbaa !331
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %130, !prof !433

60:                                               ; preds = %55
  %61 = zext nneg i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %98
  %63 = phi i64 [ %61, %60 ], [ %64, %98 ]
  %64 = add nsw i64 %63, -1
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %56, align 8, !tbaa !226
  br i1 %65, label %96, label %67, !prof !434

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %64
  %70 = load ptr, ptr %69, align 8, !tbaa !224
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 23
  br i1 %73, label %74, label %96, !prof !435

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !226
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 17
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load ptr, ptr %68, align 8, !tbaa !224
  %82 = getelementptr inbounds %struct.rtx_def, ptr %81, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !226
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !226
  %86 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !226
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 711, ptr noundef nonnull @.str.1) #18
  %90 = load ptr, ptr %56, align 8, !tbaa !226
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %90, i64 0, i32 1, i64 %64
  %92 = load ptr, ptr %91, align 8, !tbaa !224
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
  br i1 %100, label %62, label %130, !prof !436, !llvm.loop !437

101:                                              ; preds = %51
  %102 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %12
  %103 = load i8, ptr %102, align 1, !tbaa !226
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %130, label %105, !prof !438

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %107 = zext i8 %103 to i64
  br label %108

108:                                              ; preds = %105, %128
  %109 = phi i64 [ %107, %105 ], [ %110, %128 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds i8, ptr %14, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !226
  switch i8 %112, label %128 [
    i8 101, label %113
    i8 69, label %115
  ], !prof !439

113:                                              ; preds = %108
  %114 = getelementptr inbounds [1 x %union.rtunion_def], ptr %106, i64 0, i64 %110
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %114, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  br label %128

115:                                              ; preds = %108
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %106, i64 0, i64 %110
  %117 = load ptr, ptr %116, align 8, !tbaa !226
  %118 = load i32, ptr %117, align 8, !tbaa !331
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = zext nneg i32 %118 to i64
  br label %122

122:                                              ; preds = %120, %122
  %123 = phi i64 [ %121, %120 ], [ %124, %122 ]
  %124 = add nsw i64 %123, -1
  %125 = load ptr, ptr %116, align 8, !tbaa !226
  %126 = getelementptr inbounds %struct.rtvec_def, ptr %125, i64 0, i32 1, i64 %124
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %126, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  %127 = icmp ugt i64 %123, 1
  br i1 %127, label %122, label %128, !llvm.loop !440

128:                                              ; preds = %122, %115, %108, %113
  %129 = icmp sgt i64 %109, 1
  br i1 %129, label %108, label %130, !prof !441, !llvm.loop !442

130:                                              ; preds = %128, %98, %101, %55
  %131 = load i32, ptr @num_changes, align 4, !tbaa !215
  %132 = icmp eq i32 %131, %7
  br i1 %132, label %148, label %133, !prof !443

133:                                              ; preds = %130
  %134 = load i8, ptr %14, align 1, !tbaa !226
  %135 = icmp eq i8 %134, 101
  br i1 %135, label %136, label %144, !prof !444

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !226
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 %24, i32 %141, !prof !445
  br label %144

144:                                              ; preds = %136, %133
  %145 = phi i32 [ %24, %133 ], [ %143, %136 ]
  %146 = icmp eq i8 %4, 0
  br i1 %146, label %148, label %147, !prof !446

147:                                              ; preds = %144
  tail call fastcc void @simplify_while_replacing(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %145) #19
  br label %148

148:                                              ; preds = %144, %147, %130, %5, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !447 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !277
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 !prof !336 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 1) #19
  %5 = tail call i32 @apply_change_group() #19, !range !277
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @validate_replace_rtx_part_nosimplify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 !prof !448 {
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3, i8 noundef zeroext 0) #19
  %5 = tail call i32 @apply_change_group() #19, !range !277
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @validate_replace_rtx_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !336 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  tail call fastcc void @validate_replace_rtx_1(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #19
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !226
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
  %19 = load ptr, ptr %18, align 8, !tbaa !226
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !449

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @validate_replace_src_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !prof !450 {
  %4 = alloca %struct.validate_replace_src_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  store ptr %0, ptr %4, align 8, !tbaa !451
  %5 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !453
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !454
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  call void @note_uses(ptr noundef nonnull %7, ptr noundef nonnull @validate_replace_src_1, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @validate_replace_src_1(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !prof !450 !PGOFuncName !455 {
  %3 = load ptr, ptr %1, align 8, !tbaa !451
  %4 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds %struct.validate_replace_src_data, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !454
  tail call fastcc void @validate_replace_rtx_1(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef %7, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @validate_simplify_insn(ptr noundef %0) local_unnamed_addr #1 !prof !336 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %69 [
    i16 23, label %11
    i16 15, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !226
  %9 = load i32, ptr %8, align 8, !tbaa !331
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %33, label %69

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = tail call ptr @simplify_rtx(ptr noundef %14) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 8, !tbaa !226
  %19 = tail call i32 @rtx_equal_p(ptr noundef %18, ptr noundef nonnull %15) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %15, i8 noundef zeroext 1) #19, !range !346
  br label %23

23:                                               ; preds = %21, %17, %11
  %24 = load ptr, ptr %12, align 8, !tbaa !226
  %25 = tail call ptr @simplify_rtx(ptr noundef %24) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %12, align 8, !tbaa !226
  %29 = tail call i32 @rtx_equal_p(ptr noundef %28, ptr noundef nonnull %25) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @validate_change(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %25, i8 noundef zeroext 1) #19, !range !346
  br label %69

33:                                               ; preds = %6, %63
  %34 = phi i64 [ %64, %63 ], [ 0, %6 ]
  %35 = phi ptr [ %65, %63 ], [ %8, %6 ]
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !224
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !226
  %45 = tail call ptr @simplify_rtx(ptr noundef %44) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %43, align 8, !tbaa !226
  %49 = tail call i32 @rtx_equal_p(ptr noundef %48, ptr noundef nonnull %45) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %45, i8 noundef zeroext 1) #19, !range !346
  br label %53

53:                                               ; preds = %51, %47, %41
  %54 = load ptr, ptr %42, align 8, !tbaa !226
  %55 = tail call ptr @simplify_rtx(ptr noundef %54) #18
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %42, align 8, !tbaa !226
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %55) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = tail call zeroext i8 @validate_change(ptr noundef %0, ptr noundef nonnull %42, ptr noundef nonnull %55, i8 noundef zeroext 1) #19, !range !346
  br label %63

63:                                               ; preds = %53, %57, %61, %33
  %64 = add nuw nsw i64 %34, 1
  %65 = load ptr, ptr %7, align 8, !tbaa !226
  %66 = load i32, ptr %65, align 8, !tbaa !331
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %33, label %69, !llvm.loop !456

69:                                               ; preds = %63, %6, %1, %23, %27, %31
  %70 = tail call i32 @num_changes_pending() #19
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = tail call i32 @apply_change_group() #19, !range !277
  %74 = trunc i32 %73 to i8
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i8 [ 0, %69 ], [ %74, %72 ]
  ret i8 %76
}

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @general_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !457 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %1, 0
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = select i1 %5, i32 %7, i32 %1, !prof !458
  %9 = and i32 %3, 16711680
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %8, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %19, !prof !459

13:                                               ; preds = %2
  %14 = zext i32 %8 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !226
  %17 = and i8 %16, -2
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %134, !prof !460

19:                                               ; preds = %13, %2
  %20 = icmp eq i32 %4, 30
  %21 = and i1 %20, %11
  br i1 %21, label %22, label %31, !prof !461

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !226
  %25 = tail call i64 @trunc_int_for_mode(i64 noundef %24, i32 noundef %8) #18
  %26 = load i64, ptr %23, align 8, !tbaa !226
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %134, !prof !462

28:                                               ; preds = %22
  %29 = load i32, ptr %0, align 8
  %30 = and i32 %29, 65535
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ %30, %28 ], [ %4, %19 ]
  %33 = phi i32 [ %29, %28 ], [ %3, %19 ]
  %34 = zext nneg i32 %32 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !215
  %37 = icmp eq i32 %36, 9
  %38 = lshr i32 %33, 16
  %39 = and i32 %38, 255
  br i1 %37, label %40, label %55, !prof !463

40:                                               ; preds = %31
  %41 = icmp eq i32 %39, 0
  %42 = icmp eq i32 %39, %8
  %43 = or i1 %41, %42
  br i1 %43, label %46, label %44, !prof !464

44:                                               ; preds = %40
  %45 = icmp eq i32 %8, 0
  br i1 %45, label %46, label %134

46:                                               ; preds = %44, %40
  %47 = load i32, ptr @flag_pic, align 4, !tbaa !215
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49, !prof !465

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
  br i1 %56, label %57, label %134, !prof !466

57:                                               ; preds = %55
  %58 = icmp eq i32 %4, 39
  br i1 %58, label %59, label %99, !prof !467

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !226
  %62 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr %61, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 43
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %82, !prof !468

68:                                               ; preds = %59
  %69 = zext nneg i32 %8 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !226
  %72 = lshr i32 %64, 16
  %73 = and i32 %72, 255
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !226
  %77 = icmp ugt i8 %71, %76
  br i1 %77, label %134, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load i32, ptr %79, align 8, !tbaa !226
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %134, !prof !469

82:                                               ; preds = %59, %78
  %83 = zext nneg i32 %8 to i64
  %84 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !226
  %86 = and i8 %85, -2
  %87 = icmp eq i8 %86, 8
  br i1 %87, label %88, label %97, !prof !470

88:                                               ; preds = %82
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %83
  %90 = load i8, ptr %89, align 1, !tbaa !226
  %91 = lshr i32 %64, 16
  %92 = and i32 %91, 255
  %93 = zext nneg i32 %92 to i64
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !226
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
  ], !prof !471

104:                                              ; preds = %99
  %105 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %102) #19
  %106 = icmp ugt i32 %105, 52
  br i1 %106, label %134, label %107, !prof !472

107:                                              ; preds = %104
  %108 = zext nneg i32 %105 to i64
  %109 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !215
  %111 = icmp ne i32 %110, 0
  br label %134

112:                                              ; preds = %99
  %113 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !226
  %115 = load i32, ptr @volatile_ok, align 4, !tbaa !215
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %100, 134217728
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %134, !prof !473

120:                                              ; preds = %112
  %121 = lshr i32 %100, 16
  %122 = and i32 %121, 255
  %123 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !226
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126, !prof !474

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.mem_attrs, ptr %124, i64 0, i32 5
  %128 = load i8, ptr %127, align 8, !tbaa !284
  br label %129

129:                                              ; preds = %126, %120
  %130 = phi i8 [ %128, %126 ], [ 0, %120 ]
  %131 = tail call i32 @memory_address_addr_space_p(i32 noundef %122, ptr noundef %114, i8 noundef zeroext %130) #19, !range !289
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %99, %129
  br label %134

134:                                              ; preds = %112, %78, %88, %68, %13, %104, %107, %55, %44, %49, %52, %22, %129, %133
  %135 = phi i1 [ false, %133 ], [ true, %129 ], [ false, %13 ], [ false, %22 ], [ false, %49 ], [ false, %44 ], [ %54, %52 ], [ false, %55 ], [ true, %104 ], [ %111, %107 ], [ false, %68 ], [ false, %88 ], [ false, %78 ], [ false, %112 ]
  %136 = zext i1 %135 to i32
  ret i32 %136
}

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @legitimate_pic_operand_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !475 !PGOFuncName !476 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !226
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @address_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !477 {
  %3 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %0, i8 noundef zeroext 0) #19, !range !289
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !478 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ne i32 %5, %1
  %7 = icmp ne i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %80, label %9, !prof !479

9:                                                ; preds = %2
  %10 = and i32 %3, 65535
  %11 = icmp eq i32 %10, 39
  br i1 %11, label %12, label %66, !prof !480

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 43
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %21, label %23, !prof !481

21:                                               ; preds = %12
  %22 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !277
  br label %80

23:                                               ; preds = %12
  %24 = icmp eq i32 %18, 37
  br i1 %24, label %25, label %45, !prof !482

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %14) #19
  %27 = icmp ult i32 %26, 53
  br i1 %27, label %28, label %45, !prof !483

28:                                               ; preds = %25
  %29 = lshr i32 %17, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !215
  %34 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %30, i32 noundef %1, i32 noundef %33) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load i32, ptr %14, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !226
  %43 = and i8 %42, -2
  %44 = icmp eq i8 %43, 10
  br i1 %44, label %45, label %80

45:                                               ; preds = %36, %28, %25, %23
  %46 = load i32, ptr %0, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !226
  %52 = and i8 %51, -2
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %56, label %54, !prof !484

54:                                               ; preds = %45
  %55 = load i32, ptr %14, align 8
  br label %66

56:                                               ; preds = %45
  %57 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %58 = load i8, ptr %57, align 1, !tbaa !226
  %59 = load i32, ptr %14, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !226
  %65 = icmp ugt i8 %58, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %54, %56, %9
  %67 = phi i32 [ %3, %9 ], [ %59, %56 ], [ %55, %54 ]
  %68 = phi ptr [ %0, %9 ], [ %14, %56 ], [ %14, %54 ]
  %69 = and i32 %67, 65535
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %71, label %80, !prof !485

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %68) #19
  %73 = icmp ugt i32 %72, 52
  br i1 %73, label %80, label %74, !prof !486

74:                                               ; preds = %71
  %75 = zext nneg i32 %72 to i64
  %76 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !215
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
define dso_local i32 @pmode_register_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !336 {
  %3 = tail call i32 @register_operand(ptr noundef %0, i32 noundef 16) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @scratch_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !487 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %9, label %7, !prof !488

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %7, %2
  %10 = trunc i32 %3 to i16
  switch i16 %10, label %15 [
    i16 38, label %16
    i16 37, label %11
  ], !prof !489

11:                                               ; preds = %9
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %13 = icmp ult i32 %12, 53
  %14 = zext i1 %13 to i32
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %11, %15, %9, %7
  %17 = phi i32 [ 0, %7 ], [ 1, %9 ], [ %14, %11 ], [ 0, %15 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @immediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !490 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14, !prof !491

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !226
  %12 = and i8 %11, -2
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %52, !prof !492

14:                                               ; preds = %8, %2
  %15 = and i32 %3, 65535
  %16 = icmp eq i32 %15, 30
  %17 = and i1 %6, %16
  br i1 %17, label %18, label %27, !prof !493

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !226
  %21 = tail call i64 @trunc_int_for_mode(i64 noundef %20, i32 noundef %1) #18
  %22 = load i64, ptr %19, align 8, !tbaa !226
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %52, !prof !494

24:                                               ; preds = %18
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ %26, %24 ], [ %15, %14 ]
  %29 = phi i32 [ %25, %24 ], [ %3, %14 ]
  %30 = zext nneg i32 %28 to i64
  %31 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !215
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %52, !prof !495

34:                                               ; preds = %27
  %35 = lshr i32 %29, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, %1
  %38 = icmp eq i32 %1, 0
  %39 = or i1 %38, %37
  %40 = icmp eq i32 %36, 0
  %41 = or i1 %40, %39
  br i1 %41, label %42, label %52, !prof !496

42:                                               ; preds = %34
  %43 = load i32, ptr @flag_pic, align 4, !tbaa !215
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45, !prof !497

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
define dso_local noundef i32 @const_int_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 !prof !498 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 30
  br i1 %5, label %6, label %15, !prof !499

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8, !prof !500

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !226
  %11 = tail call i64 @trunc_int_for_mode(i64 noundef %10, i32 noundef %1) #18
  %12 = load i64, ptr %9, align 8, !tbaa !226
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15, !prof !501

14:                                               ; preds = %8, %6
  br label %15

15:                                               ; preds = %8, %2, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @const_double_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !336 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !226
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
define dso_local i32 @nonimmediate_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !502 {
  %3 = tail call i32 @general_operand(ptr noundef %0, i32 noundef %1) #19, !range !277
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5, !prof !503

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !215
  %11 = icmp ne i32 %10, 9
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @nonmemory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !504 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !215
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %9, label %50, !prof !505

9:                                                ; preds = %2
  %10 = and i32 %3, 16711680
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %1, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %20, !prof !506

14:                                               ; preds = %9
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !226
  %18 = and i8 %17, -2
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %83, !prof !507

20:                                               ; preds = %14, %9
  %21 = icmp eq i32 %4, 30
  %22 = and i1 %12, %21
  br i1 %22, label %23, label %31, !prof !506

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !226
  %26 = tail call i64 @trunc_int_for_mode(i64 noundef %25, i32 noundef %1) #18
  %27 = load i64, ptr %24, align 8, !tbaa !226
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %83, !prof !508

29:                                               ; preds = %23
  %30 = load i32, ptr %0, align 8
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %3, %20 ]
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !509

36:                                               ; preds = %31
  %37 = icmp eq i32 %34, %1
  %38 = icmp eq i32 %1, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %83

40:                                               ; preds = %36, %31
  %41 = load i32, ptr @flag_pic, align 4, !tbaa !215
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !509

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
  br i1 %55, label %83, label %56, !prof !510

56:                                               ; preds = %50
  %57 = icmp eq i32 %4, 39
  br i1 %57, label %58, label %69, !prof !511

58:                                               ; preds = %56
  %59 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %60 = icmp eq i32 %59, 0
  %61 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !226
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 43
  %66 = select i1 %60, i1 %65, i1 false
  br i1 %66, label %67, label %69, !prof !512

67:                                               ; preds = %58
  %68 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !277
  br label %83

69:                                               ; preds = %58, %56
  %70 = phi i32 [ %3, %56 ], [ %63, %58 ]
  %71 = phi ptr [ %0, %56 ], [ %62, %58 ]
  %72 = and i32 %70, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %83, !prof !513

74:                                               ; preds = %69
  %75 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %71) #19
  %76 = icmp ugt i32 %75, 52
  br i1 %76, label %83, label %77, !prof !514

77:                                               ; preds = %74
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !215
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  br label %83

83:                                               ; preds = %14, %69, %77, %74, %50, %43, %46, %36, %23, %67
  %84 = phi i32 [ %68, %67 ], [ 0, %14 ], [ 0, %23 ], [ 0, %43 ], [ %49, %46 ], [ 0, %36 ], [ 0, %50 ], [ 0, %69 ], [ 1, %74 ], [ %82, %77 ]
  ret i32 %84
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @push_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !515 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !226
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, 3
  %8 = and i32 %7, 508
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 43
  br i1 %11, label %12, label %60, !prof !516

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %18, label %14, !prof !517

14:                                               ; preds = %12
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %60, !prof !518

18:                                               ; preds = %14, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !226
  %21 = icmp eq i32 %8, %6
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 65535
  br i1 %21, label %24, label %29, !prof !519

24:                                               ; preds = %18
  %25 = icmp eq i32 %23, 74
  br i1 %25, label %26, label %60, !prof !520

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !226
  br label %55

29:                                               ; preds = %18
  %30 = icmp eq i32 %23, 78
  br i1 %30, label %31, label %60, !prof !521

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !226
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 49
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !226
  %41 = load ptr, ptr %38, align 8, !tbaa !226
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !226
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 30
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !226
  %52 = sub nsw i32 0, %8
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %26, %49
  %56 = phi ptr [ %28, %26 ], [ %40, %49 ]
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !224
  %58 = icmp eq ptr %56, %57
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %29, %31, %37, %43, %49, %24, %14, %2, %55
  %61 = phi i32 [ %59, %55 ], [ 0, %2 ], [ 0, %14 ], [ 0, %24 ], [ 0, %49 ], [ 0, %43 ], [ 0, %37 ], [ 0, %31 ], [ 0, %29 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pop_operand(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 !prof !336 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 77
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !226
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !224
  %22 = icmp eq ptr %20, %21
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %12, %8, %2, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %2 ], [ 0, %8 ], [ 0, %12 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @memory_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !522 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9, !prof !523

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %27, label %29, !prof !524

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = load i32, ptr %0, align 8
  br i1 %10, label %16, label %12, !prof !525

12:                                               ; preds = %9
  %13 = lshr i32 %11, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %29, !prof !526

16:                                               ; preds = %12, %9
  %17 = and i32 %11, 65535
  %18 = icmp eq i32 %17, 39
  br i1 %18, label %19, label %23, !prof !527

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !226
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %22, %19 ], [ %11, %16 ]
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %29, !prof !528

27:                                               ; preds = %23, %5
  %28 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !277
  br label %29

29:                                               ; preds = %27, %23, %12, %5
  %30 = phi i32 [ 0, %5 ], [ 0, %12 ], [ 0, %23 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @indirect_operand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !336 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !226
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
  %27 = load ptr, ptr %26, align 8, !tbaa !226
  %28 = tail call i32 @general_operand(ptr noundef %27, i32 noundef 16) #19, !range !277
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %25, %23
  %31 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !226
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !226
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 30
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !226
  %45 = sub nsw i32 0, %17
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %53, label %58

48:                                               ; preds = %2
  %49 = icmp eq i32 %6, 43
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = tail call i32 @memory_operand(ptr noundef nonnull %0, i32 noundef %1) #19, !range !277
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %42
  %54 = phi ptr [ %32, %42 ], [ %0, %50 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !226
  %57 = tail call i32 @general_operand(ptr noundef %56, i32 noundef 16) #19, !range !277
  br label %58

58:                                               ; preds = %53, %9, %48, %50, %19, %30, %36, %42, %25
  %59 = phi i32 [ 0, %19 ], [ 1, %25 ], [ 0, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %50 ], [ 0, %48 ], [ 0, %9 ], [ %57, %53 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @ordered_comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !336 {
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
define dso_local i32 @comparison_operator(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !529 {
  %3 = icmp eq i32 %1, 0
  %4 = load i32, ptr %0, align 8
  br i1 %3, label %9, label %5, !prof !530

5:                                                ; preds = %2
  %6 = lshr i32 %4, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %16, !prof !531

9:                                                ; preds = %5, %2
  %10 = and i32 %4, 65535
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !215
  %14 = icmp ult i32 %13, 2
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @extract_asm_operands(ptr noundef readonly %0) local_unnamed_addr #8 !prof !532 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %23 [
    i16 17, label %24
    i16 23, label %4
    i16 15, label %10
  ], !prof !533

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !226
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 17
  br i1 %9, label %24, label %23, !prof !534

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !226
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !224
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %23 [
    i16 17, label %24
    i16 23, label %17
  ], !prof !535

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !226
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %24, label %23, !prof !536

23:                                               ; preds = %10, %1, %17, %4
  br label %24

24:                                               ; preds = %17, %10, %4, %1, %23
  %25 = phi ptr [ null, %23 ], [ %0, %1 ], [ %6, %4 ], [ %14, %10 ], [ %19, %17 ]
  ret ptr %25
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @offsettable_nonstrict_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !336 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !284
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
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #10 !prof !537 !PGOFuncName !538 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1, !prof !539
  ret i64 %3
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @find_constant_term_loc(ptr noundef readonly %0) local_unnamed_addr #11 !prof !540 {
  %2 = load ptr, ptr %0, align 8, !tbaa !224
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
  ], !prof !541

9:                                                ; preds = %7
  br label %43

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !226
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14, !prof !542

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !215
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %32, !prof !542

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !226
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !215
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %43, label %32

32:                                               ; preds = %25, %21, %14
  %33 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %11) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43, !prof !353

35:                                               ; preds = %10, %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !226
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !542

39:                                               ; preds = %35
  %40 = tail call ptr @find_constant_term_loc(ptr noundef nonnull %36) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !353

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %39, %32, %25, %7, %7, %1, %42, %9
  %44 = phi ptr [ null, %9 ], [ null, %42 ], [ %0, %7 ], [ %0, %7 ], [ %0, %1 ], [ %0, %25 ], [ %33, %32 ], [ %40, %39 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @offsettable_memref_p(ptr nocapture noundef readonly %0) local_unnamed_addr #1 !prof !543 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %21, !prof !544

5:                                                ; preds = %1
  %6 = lshr i32 %2, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !284
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
define dso_local i32 @offsettable_address_addr_space_p(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 !prof !336 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !224
  %8 = icmp eq i32 %0, 0
  %9 = select i1 %8, ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p
  %10 = zext i32 %1 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !226
  %13 = zext i8 %12 to i32
  %14 = tail call zeroext i8 @constant_address_p(ptr noundef nonnull %2) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %4
  %17 = tail call i32 @mode_dependent_address_p(ptr noundef nonnull %2) #19, !range !277
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
  %31 = load ptr, ptr %28, align 8, !tbaa !224
  store ptr %31, ptr %5, align 8, !tbaa !224
  %32 = add nsw i32 %25, -1
  %33 = zext nneg i32 %32 to i64
  %34 = call ptr @plus_constant(ptr noundef %31, i64 noundef %33) #18
  store ptr %34, ptr %28, align 8, !tbaa !224
  %35 = call i32 %9(i32 noundef 14, ptr noundef nonnull %2, i8 noundef zeroext %3) #18, !callees !545
  %36 = load ptr, ptr %5, align 8, !tbaa !224
  store ptr %36, ptr %28, align 8, !tbaa !224
  br label %71

37:                                               ; preds = %27, %19
  %38 = zext nneg i32 %7 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !215
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
  %57 = load ptr, ptr %56, align 8, !tbaa !226
  %58 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !226
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
  %70 = call i32 %9(i32 noundef 14, ptr noundef %69, i8 noundef zeroext %3) #18, !callees !545
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @mode_dependent_address_p(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !546 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65534
  %4 = add nsw i32 %3, -74
  %5 = icmp ult i32 %4, 4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_insn_cached(ptr noundef %0) local_unnamed_addr #1 !prof !547 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !253
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %8, !prof !548

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !226
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8, !prof !549

8:                                                ; preds = %4, %1
  tail call void @extract_insn(ptr noundef %0) #19
  store ptr %0, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 11), align 8, !tbaa !253
  br label %9

9:                                                ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @extract_constrain_insn_cached(ptr noundef %0) local_unnamed_addr #1 !prof !550 {
  tail call void @extract_insn_cached(ptr noundef %0) #19
  %2 = load i32, ptr @which_alternative, align 4, !tbaa !215
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %9, !prof !551

4:                                                ; preds = %1
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %6 = tail call i32 @constrain_operands(i32 noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !552

8:                                                ; preds = %4
  tail call void @_fatal_insn_not_found(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %8, %4, %1
  ret void
}

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @constrain_operands_cached(i32 noundef %0) local_unnamed_addr #1 !prof !553 {
  %2 = load i32, ptr @which_alternative, align 4, !tbaa !215
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6, !prof !554

4:                                                ; preds = %1
  %5 = tail call i32 @constrain_operands(i32 noundef %0) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #1 !prof !555 !PGOFuncName !556 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !226
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !557

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !226
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #18
  store i32 %8, ptr %2, align 8, !tbaa !226
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @insn_extract(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @preprocess_constraints() local_unnamed_addr #1 !prof !558 {
  %1 = alloca ptr, align 8
  %2 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !228
  %3 = icmp sgt i8 %2, 0
  br i1 %3, label %4, label %146, !prof !559

4:                                                ; preds = %0
  %5 = zext nneg i8 %2 to i64
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  %7 = sext i8 %6 to i64
  %8 = shl nsw i64 %7, 5
  br label %12

9:                                                ; preds = %12
  br i1 %3, label %10, label %146, !prof !560

10:                                               ; preds = %9
  %11 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  br label %17

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %15, %12 ]
  %14 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %14, i8 0, i64 %8, i1 false)
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %9, label %12, !prof !561, !llvm.loop !562

17:                                               ; preds = %10, %139
  %18 = phi i8 [ %2, %10 ], [ %140, %139 ]
  %19 = phi i8 [ %11, %10 ], [ %141, %139 ]
  %20 = phi i8 [ %11, %10 ], [ %142, %139 ]
  %21 = phi i64 [ 0, %10 ], [ %143, %139 ]
  %22 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %21
  %23 = icmp sgt i8 %20, 0
  br i1 %23, label %24, label %139, !prof !563

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 2, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  br label %27

27:                                               ; preds = %24, %131
  %28 = phi i8 [ %19, %24 ], [ %132, %131 ]
  %29 = phi i64 [ 0, %24 ], [ %134, %131 ]
  %30 = phi ptr [ %26, %24 ], [ %133, %131 ]
  %31 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29
  %32 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 1
  store i32 0, ptr %32, align 8, !tbaa !564
  store ptr %30, ptr %31, align 16, !tbaa !566
  %33 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 3
  store i32 -1, ptr %33, align 16, !tbaa !567
  %34 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 4
  store i32 -1, ptr %34, align 4, !tbaa !568
  %35 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 10, i64 %29
  %36 = load i8, ptr %35, align 1, !tbaa !226
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40, !prof !569

38:                                               ; preds = %27
  %39 = tail call fastcc ptr @skip_alternative(ptr noundef %30) #19
  br label %131

40:                                               ; preds = %27
  %41 = load i8, ptr %30, align 1, !tbaa !226
  switch i8 %41, label %49 [
    i8 0, label %42
    i8 44, label %42
  ], !prof !570

42:                                               ; preds = %40, %40
  %43 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %44 = load i8, ptr %43, align 8
  %45 = or i8 %44, -128
  store i8 %45, ptr %43, align 8
  br label %131

46:                                               ; preds = %125, %72
  %47 = phi ptr [ %79, %72 ], [ %127, %125 ]
  %48 = load i8, ptr %47, align 1, !tbaa !226
  br label %49

49:                                               ; preds = %40, %46
  %50 = phi i8 [ %48, %46 ], [ %41, %40 ]
  %51 = phi ptr [ %47, %46 ], [ %30, %40 ]
  %52 = icmp eq i8 %50, 35
  br i1 %52, label %53, label %57, !prof !571

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %55, %53 ], [ %51, %49 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !226
  switch i8 %56, label %53 [
    i8 44, label %57
    i8 0, label %57
  ]

57:                                               ; preds = %53, %53, %49
  %58 = phi ptr [ %51, %49 ], [ %55, %53 ], [ %55, %53 ]
  %59 = phi i8 [ %50, %49 ], [ %56, %53 ], [ %56, %53 ]
  switch i8 %59, label %117 [
    i8 44, label %128
    i8 0, label %128
    i8 61, label %125
    i8 43, label %125
    i8 42, label %125
    i8 37, label %125
    i8 69, label %125
    i8 70, label %125
    i8 71, label %125
    i8 72, label %125
    i8 115, label %125
    i8 105, label %125
    i8 110, label %125
    i8 73, label %125
    i8 74, label %125
    i8 75, label %125
    i8 76, label %125
    i8 77, label %125
    i8 78, label %125
    i8 79, label %125
    i8 80, label %125
    i8 63, label %60
    i8 33, label %64
    i8 38, label %68
    i8 48, label %72
    i8 49, label %72
    i8 50, label %72
    i8 51, label %72
    i8 52, label %72
    i8 53, label %72
    i8 54, label %72
    i8 55, label %72
    i8 56, label %72
    i8 57, label %72
    i8 109, label %80
    i8 60, label %84
    i8 62, label %88
    i8 86, label %92
    i8 111, label %96
    i8 88, label %100
    i8 112, label %104
    i8 103, label %112
    i8 114, label %112
  ], !prof !572

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !573
  %63 = add i32 %62, 6
  store i32 %63, ptr %61, align 4, !tbaa !573
  br label %125

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !573
  %67 = add i32 %66, 600
  store i32 %67, ptr %65, align 4, !tbaa !573
  br label %125

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %70 = load i8, ptr %69, align 8
  %71 = or i8 %70, 1
  store i8 %71, ptr %69, align 8
  br label %125

72:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %73 = trunc i64 %21 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %74 = call i64 @strtoul(ptr noundef nonnull %58, ptr noundef nonnull %1, i32 noundef 10) #19
  %75 = trunc i64 %74 to i32
  store i32 %75, ptr %33, align 16, !tbaa !567
  %76 = shl i64 %74, 32
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], ptr @recog_op_alt, i64 0, i64 %77, i64 %29, i32 4
  store i32 %73, ptr %78, align 4, !tbaa !568
  %79 = load ptr, ptr %1, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  br label %46

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %82 = load i8, ptr %81, align 8
  %83 = or i8 %82, 2
  store i8 %83, ptr %81, align 8
  br label %125

84:                                               ; preds = %57
  %85 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %86 = load i8, ptr %85, align 8
  %87 = or i8 %86, 16
  store i8 %87, ptr %85, align 8
  br label %125

88:                                               ; preds = %57
  %89 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %90 = load i8, ptr %89, align 8
  %91 = or i8 %90, 32
  store i8 %91, ptr %89, align 8
  br label %125

92:                                               ; preds = %57
  %93 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %94 = load i8, ptr %93, align 8
  %95 = or i8 %94, 8
  store i8 %95, ptr %93, align 8
  br label %125

96:                                               ; preds = %57
  %97 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %98 = load i8, ptr %97, align 8
  %99 = or i8 %98, 4
  store i8 %99, ptr %97, align 8
  br label %125

100:                                              ; preds = %57
  %101 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %102 = load i8, ptr %101, align 8
  %103 = or i8 %102, -128
  store i8 %103, ptr %101, align 8
  br label %125

104:                                              ; preds = %57
  %105 = getelementptr inbounds %struct.operand_alternative, ptr %22, i64 %29, i32 5
  %106 = load i8, ptr %105, align 8
  %107 = or i8 %106, 64
  store i8 %107, ptr %105, align 8
  %108 = load i32, ptr %32, align 8, !tbaa !564
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %109, i64 13
  %111 = load i32, ptr %110, align 4, !tbaa !215
  store i32 %111, ptr %32, align 8, !tbaa !564
  br label %125

112:                                              ; preds = %57, %57
  %113 = load i32, ptr %32, align 8, !tbaa !564
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %114, i64 13
  %116 = load i32, ptr %115, align 4, !tbaa !215
  store i32 %116, ptr %32, align 8, !tbaa !564
  br label %125

117:                                              ; preds = %57
  %118 = load i32, ptr %32, align 8, !tbaa !564
  %119 = sext i32 %118 to i64
  %120 = tail call i32 @lookup_constraint(ptr noundef nonnull %58) #18
  %121 = tail call i32 @regclass_for_constraint(i32 noundef %120) #18
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [27 x [27 x i32]], ptr @reg_class_subunion, i64 0, i64 %119, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !215
  store i32 %124, ptr %32, align 8, !tbaa !564
  br label %125

125:                                              ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %117, %112, %104, %100, %96, %92, %88, %84, %80, %68, %64, %60
  %126 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %59) #19
  %127 = getelementptr inbounds i8, ptr %58, i64 %126
  br label %46

128:                                              ; preds = %57, %57
  %129 = getelementptr inbounds i8, ptr %58, i64 1
  %130 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 9), align 8, !tbaa !230
  br label %131

131:                                              ; preds = %128, %42, %38
  %132 = phi i8 [ %28, %42 ], [ %28, %38 ], [ %130, %128 ]
  %133 = phi ptr [ %30, %42 ], [ %39, %38 ], [ %129, %128 ]
  %134 = add nuw nsw i64 %29, 1
  %135 = sext i8 %132 to i64
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %27, label %137, !prof !574, !llvm.loop !575

137:                                              ; preds = %131
  %138 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !228
  br label %139

139:                                              ; preds = %137, %17
  %140 = phi i8 [ %138, %137 ], [ %18, %17 ]
  %141 = phi i8 [ %132, %137 ], [ %19, %17 ]
  %142 = phi i8 [ %132, %137 ], [ %20, %17 ]
  %143 = add nuw nsw i64 %21, 1
  %144 = sext i8 %140 to i64
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %17, label %146, !prof !576, !llvm.loop !577

146:                                              ; preds = %139, %0, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @skip_alternative(ptr noundef readonly %0) unnamed_addr #4 !prof !336 !PGOFuncName !578 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %5 ]
  %4 = load i8, ptr %3, align 1, !tbaa !226
  switch i8 %4, label %5 [
    i8 0, label %7
    i8 44, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !579

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
define dso_local i32 @reg_fits_class_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 !prof !580 {
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #19
  %6 = icmp ne i32 %1, 0
  %7 = icmp slt i32 %5, 53
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %16, !prof !581

9:                                                ; preds = %4
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !582
  %13 = add nsw i32 %5, %2
  %14 = tail call fastcc zeroext i8 @in_hard_reg_set_p(i64 noundef %12, i32 noundef %3, i32 noundef %13) #19, !range !346
  %15 = zext nneg i8 %14 to i32
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ 0, %4 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @safe_from_earlyclobber(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @in_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !583 !PGOFuncName !584 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !585

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #19
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi i32 [ %2, %8 ], [ %12, %14 ]
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, %9
  br i1 %13, label %14, label %19, !prof !586

14:                                               ; preds = %10
  %15 = zext nneg i32 %12 to i64
  %16 = shl nuw i64 1, %15
  %17 = and i64 %16, %0
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !prof !587, !llvm.loop !588

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 0, %3 ], [ 1, %10 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @split_all_insns() local_unnamed_addr #1 !prof !214 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !224
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !589
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !591
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #18
  tail call void @sbitmap_zero(ptr noundef %6) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !224
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !589
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !593
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !594
  %14 = load ptr, ptr %9, align 8, !tbaa !596
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %25, !prof !597

16:                                               ; preds = %0
  tail call void @default_rtl_profile() #18
  br label %73

17:                                               ; preds = %68
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !594
  %20 = load ptr, ptr @cfun, align 8, !tbaa !224
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !589
  %23 = load ptr, ptr %22, align 8, !tbaa !596
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %70, label %25, !prof !598, !llvm.loop !599

25:                                               ; preds = %0, %17
  %26 = phi ptr [ %19, %17 ], [ %13, %0 ]
  %27 = phi i8 [ %69, %17 ], [ 0, %0 ]
  tail call void @rtl_profile_for_bb(ptr noundef %26) #18
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = load ptr, ptr %29, align 8, !tbaa !600
  br label %31

31:                                               ; preds = %25, %68
  %32 = phi i8 [ %27, %25 ], [ %69, %68 ]
  %33 = phi ptr [ %30, %25 ], [ %35, %68 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !226
  %36 = load ptr, ptr %28, align 8, !tbaa !226
  %37 = getelementptr inbounds %struct.rtl_bb_info, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !602
  %39 = icmp eq ptr %33, %38
  %40 = load i32, ptr %33, align 8
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -7
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %68, !prof !603

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !226
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 23
  br i1 %49, label %53, label %50, !prof !604

50:                                               ; preds = %44
  %51 = tail call ptr @single_set_2(ptr noundef nonnull %33, ptr noundef nonnull %46) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53, !prof !560

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %51, %50 ], [ %46, %44 ]
  %55 = tail call i32 @set_noop_p(ptr noundef nonnull %54) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57, !prof !605

57:                                               ; preds = %53
  %58 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @delete_insn_and_edges(ptr noundef nonnull %33) #18
  br label %68

62:                                               ; preds = %53, %50
  %63 = tail call fastcc ptr @split_insn(ptr noundef nonnull %33) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65, !prof !606

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !607
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %67) #19
  br label %68

68:                                               ; preds = %31, %60, %57, %65, %62
  %69 = phi i8 [ %32, %31 ], [ %32, %60 ], [ %32, %57 ], [ 1, %65 ], [ %32, %62 ]
  br i1 %39, label %17, label %31, !prof !608, !llvm.loop !609

70:                                               ; preds = %17
  %71 = icmp eq i8 %69, 0
  tail call void @default_rtl_profile() #18
  br i1 %71, label %73, label %72, !prof !610

72:                                               ; preds = %70
  tail call void @find_many_sub_basic_blocks(ptr noundef %6) #18
  br label %73

73:                                               ; preds = %16, %72, %70
  %74 = load ptr, ptr %6, align 8, !tbaa !611
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
define internal fastcc ptr @split_insn(ptr noundef %0) unnamed_addr #1 !prof !613 !PGOFuncName !614 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !226
  %6 = tail call ptr @try_split(ptr noundef %5, ptr noundef %0, i32 noundef 1) #18
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %84, label %8, !prof !606

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %68, !prof !615

13:                                               ; preds = %8
  %14 = load ptr, ptr %4, align 8, !tbaa !226
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %21, label %18, !prof !616

18:                                               ; preds = %13
  %19 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %14) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %68, label %21, !prof !617

21:                                               ; preds = %13, %18
  %22 = phi ptr [ %19, %18 ], [ %14, %13 ]
  %23 = load i32, ptr %6, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %68, !prof !615

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 23
  br i1 %32, label %36, label %33, !prof !618

33:                                               ; preds = %27
  %34 = tail call ptr @single_set_2(ptr noundef nonnull %6, ptr noundef nonnull %29) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %68, label %36, !prof !619

36:                                               ; preds = %27, %33
  %37 = phi ptr [ %34, %33 ], [ %29, %27 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !226
  %40 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !226
  %42 = tail call i32 @rtx_equal_p(ptr noundef %39, ptr noundef %41) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44, !prof !620

44:                                               ; preds = %36
  %45 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47, !prof !618

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !226
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !215
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %65, label %56

56:                                               ; preds = %47, %44
  %57 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !226
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !215
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %68, !prof !621

65:                                               ; preds = %56, %47
  %66 = phi ptr [ %49, %47 ], [ %58, %56 ]
  %67 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %66) #18
  br label %68

68:                                               ; preds = %65, %21, %8, %33, %36, %56, %18
  tail call void @set_insn_deleted(ptr noundef nonnull %0) #18
  %69 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %70 = icmp eq i32 %69, 0
  %71 = icmp eq ptr %3, %6
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %84, label %73, !prof !622

73:                                               ; preds = %68, %82
  %74 = phi ptr [ %76, %82 ], [ %3, %68 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !226
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = add nsw i32 %78, -7
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %82, !prof !623

81:                                               ; preds = %73
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %76) #18
  br label %82

82:                                               ; preds = %73, %81
  %83 = icmp eq ptr %76, %6
  br i1 %83, label %84, label %73, !prof !624

84:                                               ; preds = %82, %68, %1
  %85 = phi ptr [ null, %1 ], [ %6, %68 ], [ %6, %82 ]
  ret ptr %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !625 !PGOFuncName !626 {
  %3 = load ptr, ptr %0, align 8, !tbaa !611
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !627

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
  %15 = load i64, ptr %14, align 8, !tbaa !582
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !226
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !226
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !582
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !582
  ret void
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @split_all_insns_noflow() #1 !prof !336 {
  %1 = tail call ptr @get_insns() #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0, %31
  %4 = phi ptr [ %6, %31 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !226
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !226
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
  %25 = load i32, ptr @reload_completed, align 4, !tbaa !215
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
  br i1 %32, label %33, label %3, !llvm.loop !628

33:                                               ; preds = %31, %0
  ret i32 0
}

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @peep2_next_insn(i32 noundef %0) local_unnamed_addr #1 !prof !629 {
  %2 = load i32, ptr @peep2_current_count, align 4, !tbaa !215
  %3 = icmp slt i32 %2, %0
  br i1 %3, label %4, label %5, !prof !630

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2927, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7, !prof !631
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !632
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @peep2_regno_dead_p(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !634 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4, !prof !635

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2942, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  br i1 %8, label %9, label %11, !prof !636

9:                                                ; preds = %5
  %10 = add nsw i32 %7, -5
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %7, %5 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 16, !tbaa !632
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !636

17:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2948, ptr noundef nonnull @.str.1) #18
  br label %18

18:                                               ; preds = %11, %17
  %19 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %13, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !637
  %21 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %1) #18
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @peep2_reg_dead_p(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !638 {
  %3 = icmp slt i32 %0, 5
  br i1 %3, label %5, label %4, !prof !639

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2960, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %7 = add nsw i32 %6, %0
  %8 = icmp sgt i32 %7, 4
  %9 = add nsw i32 %7, -5
  %10 = select i1 %8, i32 %9, i32 %7, !prof !640
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 16, !tbaa !632
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !641

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
  %24 = load i8, ptr %23, align 1, !tbaa !226
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %29, %16
  %27 = phi i32 [ %25, %16 ], [ %31, %29 ]
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %36, !prof !642

29:                                               ; preds = %26
  %30 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %11, i32 1
  %31 = add nsw i32 %27, -1
  %32 = load ptr, ptr %30, align 8, !tbaa !637
  %33 = add nsw i32 %31, %17
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %33) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %26, label %36, !prof !643, !llvm.loop !644

36:                                               ; preds = %26, %29
  %37 = phi i32 [ 0, %29 ], [ 1, %26 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @peep2_find_free_register(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 !prof !645 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %8 = icmp slt i32 %0, 5
  br i1 %8, label %10, label %9, !prof !646

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2996, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %5, %9
  %11 = icmp slt i32 %1, 5
  br i1 %11, label %13, label %12, !prof !646

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2997, ptr noundef nonnull @.str.1) #18
  br label %13

13:                                               ; preds = %10, %12
  %14 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %15 = add nsw i32 %14, %0
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %19, !prof !647

17:                                               ; preds = %13
  %18 = add nsw i32 %15, -5
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %18, %17 ], [ %15, %13 ]
  %21 = add nsw i32 %14, %1
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %25, !prof !647

23:                                               ; preds = %19
  %24 = add nsw i32 %21, -5
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ %21, %19 ]
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 16, !tbaa !632
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !647

31:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3006, ptr noundef nonnull @.str.1) #18
  br label %32

32:                                               ; preds = %31, %25
  store i64 0, ptr %6, align 8, !tbaa !582
  %33 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %27, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !637
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %6, ptr noundef %34) #18
  %35 = icmp eq i32 %20, %26
  br i1 %35, label %53, label %36, !prof !648

36:                                               ; preds = %32, %46
  %37 = phi i32 [ %40, %46 ], [ %20, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %38 = add nsw i32 %37, 1
  %39 = icmp sgt i32 %37, 3
  %40 = select i1 %39, i32 0, i32 %38
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 16, !tbaa !632
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3015, ptr noundef nonnull @.str.1) #18
  br label %46

46:                                               ; preds = %36, %45
  store i64 0, ptr %7, align 8, !tbaa !582
  %47 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %41, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !637
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %48) #18
  %49 = load i64, ptr %7, align 8, !tbaa !582
  %50 = load i64, ptr %6, align 8, !tbaa !582
  %51 = or i64 %50, %49
  store i64 %51, ptr %6, align 8, !tbaa !582
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %52 = icmp eq i32 %40, %26
  br i1 %52, label %53, label %36, !prof !649, !llvm.loop !650

53:                                               ; preds = %46, %32
  %54 = load i8, ptr %2, align 1, !tbaa !226
  %55 = icmp eq i8 %54, 114
  br i1 %55, label %60, label %56, !prof !646

56:                                               ; preds = %53
  %57 = call i32 @lookup_constraint(ptr noundef nonnull %2) #18
  %58 = call i32 @regclass_for_constraint(i32 noundef %57) #18
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %53, %56
  %61 = phi i64 [ %59, %56 ], [ 13, %53 ]
  %62 = getelementptr inbounds [27 x i64], ptr @reg_class_contents, i64 0, i64 %61
  %63 = zext i32 %3 to i64
  br label %64

64:                                               ; preds = %60, %134
  %65 = phi i32 [ 0, %60 ], [ %135, %134 ]
  %66 = load i32, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !215
  %67 = add nsw i32 %66, %65
  %68 = icmp sgt i32 %67, 52
  %69 = add nsw i32 %67, -53
  %70 = select i1 %68, i32 %69, i32 %67, !prof !651
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [53 x i32], ptr @reg_alloc_order, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !215
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !226
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %134, !prof !652

78:                                               ; preds = %64
  %79 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %74
  %80 = load i8, ptr %79, align 1, !tbaa !226
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %134, !prof !653

82:                                               ; preds = %78
  %83 = load i64, ptr %62, align 8, !tbaa !582
  %84 = zext nneg i32 %73 to i64
  %85 = shl nuw i64 1, %84
  %86 = and i64 %83, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %134, label %88, !prof !654

88:                                               ; preds = %82
  %89 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %73, i32 noundef %3) #18
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %134, label %91, !prof !655

91:                                               ; preds = %88
  %92 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %74
  %93 = load i8, ptr %92, align 1, !tbaa !226
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %98, !prof !656

95:                                               ; preds = %91
  %96 = call zeroext i8 @df_regs_ever_live_p(i32 noundef %73) #18
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %134, label %98, !prof !657

98:                                               ; preds = %95, %91
  %99 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 100), align 8, !tbaa !658
  %100 = call zeroext i8 %99(i32 noundef %73) #18
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %134, label %102, !prof !659

102:                                              ; preds = %98
  switch i32 %73, label %109 [
    i32 20, label %103
    i32 6, label %103
  ]

103:                                              ; preds = %102, %102
  %104 = load i32, ptr @reload_completed, align 4, !tbaa !215
  %105 = icmp eq i32 %104, 0
  %106 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %107 = icmp ne i8 %106, 0
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %134, label %109, !prof !660

109:                                              ; preds = %102, %103
  %110 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %74, i64 %63
  %111 = load i8, ptr %110, align 1, !tbaa !226
  %112 = zext i8 %111 to i64
  br label %113

113:                                              ; preds = %116, %109
  %114 = phi i64 [ %118, %116 ], [ %112, %109 ]
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %127, !prof !661

116:                                              ; preds = %113
  %117 = load i64, ptr %6, align 8
  %118 = add nsw i64 %114, -1
  %119 = load i64, ptr %4, align 8, !tbaa !582
  %120 = add nsw i64 %118, %74
  %121 = shl nuw i64 1, %120
  %122 = and i64 %119, %121
  %123 = icmp eq i64 %122, 0
  %124 = and i64 %117, %121
  %125 = icmp eq i64 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %113, label %134, !prof !662, !llvm.loop !663

127:                                              ; preds = %113
  call fastcc void @add_to_hard_reg_set(ptr noundef %4, i32 noundef %3, i32 noundef %73) #19
  %128 = add nsw i32 %70, 1
  %129 = icmp sgt i32 %70, 51
  br i1 %129, label %130, label %131, !prof !647

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %127, %130
  %132 = phi i32 [ 0, %130 ], [ %128, %127 ]
  store i32 %132, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !215
  %133 = call ptr @gen_rtx_REG(i32 noundef %3, i32 noundef %73) #18
  br label %138

134:                                              ; preds = %116, %64, %78, %82, %88, %95, %98, %103
  %135 = add nuw nsw i32 %65, 1
  %136 = icmp eq i32 %135, 53
  br i1 %136, label %137, label %64, !prof !664, !llvm.loop !665

137:                                              ; preds = %134
  store i32 0, ptr @peep2_find_free_register.search_ofs, align 4, !tbaa !215
  br label %138

138:                                              ; preds = %131, %137
  %139 = phi ptr [ %133, %131 ], [ null, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  ret ptr %139
}

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_regs_ever_live_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_to_hard_reg_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 !prof !645 !PGOFuncName !666 {
  %4 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #19
  %5 = load i64, ptr %0, align 8, !tbaa !582
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %5, %3 ], [ %11, %6 ]
  %8 = phi i32 [ %2, %3 ], [ %12, %6 ]
  %9 = zext nneg i32 %8 to i64
  %10 = shl nuw i64 1, %9
  %11 = or i64 %10, %7
  %12 = add i32 %8, 1
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %6, label %14, !prof !647, !llvm.loop !667

14:                                               ; preds = %6
  store i64 %11, ptr %0, align 8, !tbaa !582
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @store_data_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !336 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %81

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
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
  %19 = load ptr, ptr %18, align 8, !tbaa !226
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
  %30 = load ptr, ptr %29, align 8, !tbaa !226
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %30) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %18, align 8, !tbaa !226
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %38, %37 ], [ %19, %28 ]
  %41 = phi ptr [ %35, %37 ], [ %30, %28 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !226
  %44 = tail call i32 @reg_mentioned_p(ptr noundef %43, ptr noundef %40) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %174, label %175

46:                                               ; preds = %23, %34
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !226
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 15
  br i1 %51, label %52, label %175

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !226
  %55 = load i32, ptr %54, align 8, !tbaa !331
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %174

57:                                               ; preds = %52, %75
  %58 = phi i32 [ %76, %75 ], [ %55, %52 ]
  %59 = phi ptr [ %77, %75 ], [ %54, %52 ]
  %60 = phi i64 [ %78, %75 ], [ 0, %52 ]
  %61 = getelementptr inbounds %struct.rtvec_def, ptr %59, i64 0, i32 1, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !224
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
  %68 = load ptr, ptr %67, align 8, !tbaa !226
  %69 = load ptr, ptr %18, align 8, !tbaa !226
  %70 = tail call i32 @reg_mentioned_p(ptr noundef %68, ptr noundef %69) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %175

72:                                               ; preds = %66
  %73 = load ptr, ptr %53, align 8, !tbaa !226
  %74 = load i32, ptr %73, align 8, !tbaa !331
  br label %75

75:                                               ; preds = %72, %57
  %76 = phi i32 [ %74, %72 ], [ %58, %57 ]
  %77 = phi ptr [ %73, %72 ], [ %59, %57 ]
  %78 = add nuw nsw i64 %60, 1
  %79 = sext i32 %76 to i64
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %57, label %174, !llvm.loop !668

81:                                               ; preds = %2, %13
  %82 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !226
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 15
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3399, ptr noundef nonnull @.str.1) #18
  br label %88

88:                                               ; preds = %81, %87
  %89 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !226
  %91 = load i32, ptr %90, align 8, !tbaa !331
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %174

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  br label %95

95:                                               ; preds = %93, %168
  %96 = phi i64 [ 0, %93 ], [ %169, %168 ]
  %97 = phi ptr [ %90, %93 ], [ %170, %168 ]
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !224
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
  %105 = load ptr, ptr %104, align 8, !tbaa !226
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 43
  br i1 %108, label %109, label %175

109:                                              ; preds = %103
  %110 = load i32, ptr %0, align 8
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, -7
  %113 = icmp ult i32 %112, 4
  %114 = load ptr, ptr %94, align 8, !tbaa !226
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
  %123 = load ptr, ptr %104, align 8, !tbaa !226
  br label %126

124:                                              ; preds = %119
  %125 = load ptr, ptr %94, align 8, !tbaa !226
  br label %133

126:                                              ; preds = %122, %115
  %127 = phi ptr [ %123, %122 ], [ %105, %115 ]
  %128 = phi ptr [ %120, %122 ], [ %114, %115 ]
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !226
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
  %141 = load ptr, ptr %140, align 8, !tbaa !226
  %142 = load i32, ptr %141, align 8, !tbaa !331
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %139, %162
  %145 = phi i32 [ %163, %162 ], [ %142, %139 ]
  %146 = phi ptr [ %164, %162 ], [ %141, %139 ]
  %147 = phi i64 [ %165, %162 ], [ 0, %139 ]
  %148 = getelementptr inbounds %struct.rtvec_def, ptr %146, i64 0, i32 1, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !224
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
  %155 = load ptr, ptr %154, align 8, !tbaa !226
  %156 = load ptr, ptr %104, align 8, !tbaa !226
  %157 = tail call i32 @reg_mentioned_p(ptr noundef %155, ptr noundef %156) #18
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %153
  %160 = load ptr, ptr %140, align 8, !tbaa !226
  %161 = load i32, ptr %160, align 8, !tbaa !331
  br label %162

162:                                              ; preds = %159, %144
  %163 = phi i32 [ %161, %159 ], [ %145, %144 ]
  %164 = phi ptr [ %160, %159 ], [ %146, %144 ]
  %165 = add nuw nsw i64 %147, 1
  %166 = sext i32 %163 to i64
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %144, label %168, !llvm.loop !669

168:                                              ; preds = %162, %139, %95, %126
  %169 = add nuw nsw i64 %96, 1
  %170 = load ptr, ptr %89, align 8, !tbaa !226
  %171 = load i32, ptr %170, align 8, !tbaa !331
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %169, %172
  br i1 %173, label %95, label %174, !llvm.loop !670

174:                                              ; preds = %168, %75, %88, %52, %39
  br label %175

175:                                              ; preds = %126, %103, %153, %66, %46, %39, %16, %174
  %176 = phi i32 [ 1, %174 ], [ 0, %16 ], [ 0, %39 ], [ 0, %46 ], [ 0, %66 ], [ 0, %153 ], [ 0, %103 ], [ 0, %126 ]
  ret i32 %176
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @if_test_bypass_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !336 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
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
  %27 = load ptr, ptr %26, align 8, !tbaa !226
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
  %38 = load ptr, ptr %37, align 8, !tbaa !226
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
  %48 = load ptr, ptr %47, align 8, !tbaa !226
  %49 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !226
  %51 = tail call i32 @reg_mentioned_p(ptr noundef %48, ptr noundef %50) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %103

53:                                               ; preds = %45
  %54 = load ptr, ptr %47, align 8, !tbaa !226
  %55 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !226
  %57 = tail call i32 @reg_mentioned_p(ptr noundef %54, ptr noundef %56) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %102, label %103

59:                                               ; preds = %31, %42
  %60 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !226
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 15
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3477, ptr noundef nonnull @.str.1) #18
  br label %66

66:                                               ; preds = %59, %65
  %67 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !226
  %69 = load i32, ptr %68, align 8, !tbaa !331
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
  %79 = load ptr, ptr %78, align 8, !tbaa !224
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
  %84 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !226
  %85 = load ptr, ptr %72, align 8, !tbaa !226
  %86 = tail call i32 @reg_mentioned_p(ptr noundef %84, ptr noundef %85) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !226
  %90 = load ptr, ptr %73, align 8, !tbaa !226
  %91 = tail call i32 @reg_mentioned_p(ptr noundef %89, ptr noundef %90) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load ptr, ptr %67, align 8, !tbaa !226
  %95 = load i32, ptr %94, align 8, !tbaa !331
  br label %96

96:                                               ; preds = %93, %74
  %97 = phi i32 [ %95, %93 ], [ %75, %74 ]
  %98 = phi ptr [ %94, %93 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %77, 1
  %100 = sext i32 %97 to i64
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %74, label %102, !llvm.loop !671

102:                                              ; preds = %96, %66, %53
  br label %103

103:                                              ; preds = %88, %83, %19, %45, %53, %24, %23, %102
  %104 = phi i32 [ 1, %102 ], [ 0, %19 ], [ 0, %23 ], [ 0, %24 ], [ 0, %53 ], [ 0, %45 ], [ 0, %83 ], [ 0, %88 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_peephole2() #5 !prof !672 !PGOFuncName !673 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !215
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_peephole2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !674
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_peephole2() #1 !prof !672 !PGOFuncName !675 {
  tail call fastcc void @peephole2_optimize() #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_all_insns() #1 !prof !672 !PGOFuncName !676 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_after_reload() #1 !prof !672 !PGOFuncName !677 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_regstack() #5 !prof !672 !PGOFuncName !678 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !215
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !674
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_before_regstack() #1 !prof !336 !PGOFuncName !679 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_split_before_sched2() #5 !prof !672 !PGOFuncName !680 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !215
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_schedule_insns_after_reload, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !674
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_split_before_sched2() #1 !prof !672 !PGOFuncName !681 {
  tail call void @split_all_insns() #19
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_do_final_split() #10 !prof !672 !PGOFuncName !682 {
  ret i8 0
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_while_replacing(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 !prof !683 !PGOFuncName !684 {
  %5 = load ptr, ptr %0, align 8, !tbaa !224
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !215
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, 11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %43, label %14, !prof !685

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !226
  %17 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !226
  %19 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %16, ptr noundef %18) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %43, label %21, !prof !686

21:                                               ; preds = %14
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !215
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
  %36 = load ptr, ptr %17, align 8, !tbaa !226
  %37 = load ptr, ptr %15, align 8, !tbaa !226
  %38 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %33, i32 noundef %35, ptr noundef %36, ptr noundef %37) #18
  %39 = tail call zeroext i8 @validate_unshare_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %38, i8 noundef zeroext 1) #19, !range !346
  %40 = load ptr, ptr %0, align 8, !tbaa !224
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
  ], !prof !687

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !226
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 30
  %53 = icmp eq ptr %49, %1
  %54 = and i1 %53, %52
  br i1 %54, label %55, label %185, !prof !688

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %57 = load i32, ptr %45, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = load ptr, ptr %56, align 8, !tbaa !226
  %61 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %59, ptr noundef %60, ptr noundef nonnull %1) #18
  %62 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %61, i8 noundef zeroext 1) #19, !range !346
  br label %185

63:                                               ; preds = %43
  %64 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !226
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
  %73 = load ptr, ptr %69, align 8, !tbaa !226
  %74 = tail call ptr @simplify_gen_unary(i32 noundef 51, i32 noundef %72, ptr noundef nonnull %65, i32 noundef %72) #18
  %75 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %72, ptr noundef %73, ptr noundef %74) #18
  %76 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %75, i8 noundef zeroext 1) #19, !range !346
  br label %185

77:                                               ; preds = %43, %43
  %78 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !226
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 16711680
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %185, !prof !689

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
  %93 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !224
  %94 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %92, ptr noundef %93) #18
  br label %95

95:                                               ; preds = %89, %83
  %96 = phi ptr [ %87, %83 ], [ %94, %89 ]
  %97 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef %96, i8 noundef zeroext 1) #19, !range !346
  br label %185

98:                                               ; preds = %43
  %99 = load i32, ptr %45, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !226
  %104 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %105 = load i32, ptr %104, align 8, !tbaa !226
  %106 = tail call ptr @simplify_subreg(i32 noundef %101, ptr noundef %103, i32 noundef %3, i32 noundef %105) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %120, !prof !690

108:                                              ; preds = %98
  %109 = load ptr, ptr %102, align 8, !tbaa !226
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 16711680
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %185, !prof !691

113:                                              ; preds = %108
  %114 = load i32, ptr %45, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !224
  %118 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef %116, ptr noundef %117) #18
  %119 = icmp eq ptr %118, null
  br i1 %119, label %185, label %120, !prof !560

120:                                              ; preds = %98, %113
  %121 = phi ptr [ %118, %113 ], [ %106, %98 ]
  %122 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull %121, i8 noundef zeroext 1) #19, !range !346
  br label %185

123:                                              ; preds = %43, %43
  %124 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !226
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 43
  br i1 %128, label %129, label %185, !prof !692

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !226
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 30
  br i1 %134, label %135, label %185

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %137 = load ptr, ptr %136, align 8, !tbaa !226
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 30
  br i1 %140, label %141, label %185

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !226
  %144 = tail call i32 @mode_dependent_address_p(ptr noundef %143) #19, !range !277
  %145 = and i32 %126, 134217728
  %146 = or disjoint i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %185

148:                                              ; preds = %141
  %149 = lshr i32 %126, 16
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !226
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
  %168 = load i8, ptr %167, align 1, !tbaa !226
  %169 = zext nneg i32 %150 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !226
  %172 = icmp ult i8 %168, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %165
  %174 = zext i8 %168 to i32
  %175 = sdiv i32 %153, 8
  %176 = shl nuw nsw i32 %174, 3
  %177 = srem i32 %153, %176
  %178 = load ptr, ptr %124, align 8, !tbaa !226
  %179 = sext i32 %175 to i64
  %180 = tail call ptr @adjust_address_1(ptr noundef %178, i32 noundef %163, i64 noundef %179, i32 noundef 0, i32 noundef 1) #18
  %181 = sext i32 %177 to i64
  %182 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %181) #18
  %183 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %136, ptr noundef %182, i8 noundef zeroext 1) #19, !range !346
  %184 = tail call zeroext i8 @validate_change(ptr noundef %2, ptr noundef nonnull %124, ptr noundef %180, i8 noundef zeroext 1) #19, !range !346
  br label %185

185:                                              ; preds = %159, %156, %148, %108, %162, %165, %173, %63, %43, %123, %129, %135, %141, %113, %120, %77, %95, %68, %47, %55
  ret void
}

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

; Function Attrs: optsize
declare i32 @mode_for_extraction(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !prof !693 !PGOFuncName !694 {
  %3 = zext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !226
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

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
define internal fastcc void @peephole2_optimize() unnamed_addr #1 !prof !672 !PGOFuncName !695 {
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
  store ptr %7, ptr %8, align 8, !tbaa !637
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 5
  br i1 %10, label %11, label %5, !prof !696, !llvm.loop !697

11:                                               ; preds = %5
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @reg_obstack) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !224
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !589
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !593
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !594
  %20 = load ptr, ptr %15, align 8, !tbaa !596
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %353, label %30, !prof !698

22:                                               ; preds = %344
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !594
  %25 = load ptr, ptr @cfun, align 8, !tbaa !224
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !589
  %28 = load ptr, ptr %27, align 8, !tbaa !596
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %351, label %30, !prof !699, !llvm.loop !700

30:                                               ; preds = %11, %22
  %31 = phi ptr [ %24, %22 ], [ %19, %11 ]
  %32 = phi i8 [ %345, %22 ], [ 0, %11 ]
  call void @rtl_profile_for_bb(ptr noundef %31) #18
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !607
  %35 = call fastcc ptr @df_lr_get_bb_info(i32 noundef %34) #19
  %36 = getelementptr inbounds %struct.df_lr_bb_info, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !701
  call void @bitmap_copy(ptr noundef %12, ptr noundef %37) #18
  call void @df_simulate_initialize_backwards(ptr noundef %31, ptr noundef %12) #18
  call fastcc void @peep2_reinit_state(ptr noundef %12) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !226
  %40 = getelementptr inbounds %struct.rtl_bb_info, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !602
  br label %42

42:                                               ; preds = %344, %30
  %43 = phi i8 [ %32, %30 ], [ %345, %344 ]
  %44 = phi ptr [ %31, %30 ], [ %346, %344 ]
  %45 = phi ptr [ %41, %30 ], [ %47, %344 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !226
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = add nsw i32 %49, -11
  %51 = icmp ult i32 %50, -3
  br i1 %51, label %344, label %52, !prof !703

52:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #20
  %53 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %54 = add nsw i32 %53, -1
  %55 = icmp slt i32 %53, 1
  %56 = select i1 %55, i32 4, i32 %54, !prof !704
  store i32 %56, ptr @peep2_current, align 4
  %57 = load i32, ptr @peep2_current_count, align 4, !tbaa !215
  %58 = icmp slt i32 %57, 4
  %59 = sext i32 %56 to i64
  br i1 %58, label %60, label %66, !prof !705

60:                                               ; preds = %52
  %61 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %59
  %62 = load ptr, ptr %61, align 16, !tbaa !632
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66, !prof !706

64:                                               ; preds = %60
  %65 = add nsw i32 %57, 1
  store i32 %65, ptr @peep2_current_count, align 4, !tbaa !215
  br label %66

66:                                               ; preds = %52, %64, %60
  %67 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %59
  store ptr %45, ptr %67, align 16, !tbaa !632
  call void @df_simulate_one_insn_backwards(ptr noundef %44, ptr noundef nonnull %45, ptr noundef %12) #18
  %68 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %69, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !637
  call void @bitmap_copy(ptr noundef %71, ptr noundef %12) #18
  %72 = load i32, ptr %45, align 8
  %73 = and i32 %72, 1073741824
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !707

75:                                               ; preds = %66
  call fastcc void @peep2_reinit_state(ptr noundef %12) #19
  br label %341

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !226
  %79 = call ptr @peephole2_insns(ptr noundef %78, ptr noundef nonnull %45, ptr noundef nonnull %1) #18
  %80 = icmp eq ptr %79, null
  br i1 %80, label %341, label %81, !prof !708

81:                                               ; preds = %76
  %82 = load i32, ptr %1, align 4, !tbaa !215
  %83 = icmp slt i32 %82, 0
  %84 = load i32, ptr @peep2_current, align 4, !tbaa !215
  br i1 %83, label %173, label %85, !prof !709

85:                                               ; preds = %81
  %86 = icmp sgt i32 %84, 4
  %87 = add nsw i32 %84, -5
  %88 = select i1 %86, i32 %87, i32 %84, !prof !710
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 16, !tbaa !632
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %109, label %170, !prof !711

95:                                               ; preds = %170
  %96 = add nuw i32 %171, 1
  %97 = add nsw i32 %84, %96
  %98 = icmp sgt i32 %97, 4
  %99 = add nsw i32 %97, -5
  %100 = select i1 %98, i32 %99, i32 %97, !prof !710
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %101
  %103 = load ptr, ptr %102, align 16, !tbaa !632
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %170, !prof !712, !llvm.loop !713

107:                                              ; preds = %95
  %108 = icmp sge i32 %171, %82
  br label %109

109:                                              ; preds = %107, %85
  %110 = phi i1 [ false, %85 ], [ %108, %107 ]
  %111 = phi i32 [ 0, %85 ], [ %96, %107 ]
  %112 = phi ptr [ %91, %85 ], [ %103, %107 ]
  br label %113

113:                                              ; preds = %109, %118
  %114 = phi ptr [ %79, %109 ], [ %120, %118 ]
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !226
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %113, !llvm.loop !714

122:                                              ; preds = %118
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3194, ptr noundef nonnull @.str.1) #18
  br label %123

123:                                              ; preds = %113, %122
  %124 = phi ptr [ null, %122 ], [ %114, %113 ]
  %125 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1, i32 1, i32 0, i32 0, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !226
  %127 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %126, ptr %127, align 8, !tbaa !226
  %128 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 1, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !226
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %144, %123
  %132 = load i32, ptr %1, align 4, !tbaa !215
  %133 = icmp slt i32 %111, %132
  %134 = load i32, ptr @peep2_current, align 4, !tbaa !215
  br i1 %133, label %148, label %173

135:                                              ; preds = %123, %144
  %136 = phi ptr [ %146, %144 ], [ %129, %123 ]
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = trunc i32 %138 to i8
  switch i8 %139, label %144 [
    i8 27, label %140
    i8 30, label %140
  ]

140:                                              ; preds = %135, %135
  %141 = and i32 %138, 255
  %142 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !226
  call void @add_reg_note(ptr noundef %124, i32 noundef %141, ptr noundef %143) #18
  br label %144

144:                                              ; preds = %140, %135
  %145 = getelementptr inbounds %struct.rtx_def, ptr %136, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !226
  %147 = icmp eq ptr %146, null
  br i1 %147, label %131, label %135, !llvm.loop !715

148:                                              ; preds = %131, %166
  %149 = phi i32 [ %167, %166 ], [ %132, %131 ]
  %150 = phi i32 [ %168, %166 ], [ %134, %131 ]
  %151 = phi i32 [ %152, %166 ], [ %111, %131 ]
  %152 = add nuw nsw i32 %151, 1
  %153 = add nsw i32 %150, %152
  %154 = icmp sgt i32 %153, 4
  %155 = add nsw i32 %153, -5
  %156 = select i1 %154, i32 %155, i32 %153
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 16, !tbaa !632
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 10
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3221, ptr noundef nonnull @.str.1) #18
  %164 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %165 = load i32, ptr %1, align 4, !tbaa !215
  br label %166

166:                                              ; preds = %148, %163
  %167 = phi i32 [ %149, %148 ], [ %165, %163 ]
  %168 = phi i32 [ %150, %148 ], [ %164, %163 ]
  %169 = icmp slt i32 %152, %167
  br i1 %169, label %148, label %173, !llvm.loop !716

170:                                              ; preds = %85, %95
  %171 = phi i32 [ %96, %95 ], [ 0, %85 ]
  %172 = icmp eq i32 %171, %82
  br i1 %172, label %173, label %95, !prof !717, !llvm.loop !713

173:                                              ; preds = %170, %166, %81, %131
  %174 = phi i32 [ %134, %131 ], [ %84, %81 ], [ %168, %166 ], [ %84, %170 ]
  %175 = phi i32 [ %132, %131 ], [ %82, %81 ], [ %167, %166 ], [ %82, %170 ]
  %176 = phi i1 [ %110, %131 ], [ true, %81 ], [ %110, %166 ], [ true, %170 ]
  %177 = add nsw i32 %174, %175
  %178 = icmp sgt i32 %177, 4
  %179 = add nsw i32 %177, -5
  %180 = select i1 %178, i32 %179, i32 %177, !prof !718
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 16, !tbaa !632
  %184 = call ptr @find_reg_note(ptr noundef %183, i32 noundef 25, ptr noundef null) #18
  %185 = load ptr, ptr %182, align 16, !tbaa !632
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !226
  %188 = call ptr @emit_insn_after_setloc(ptr noundef nonnull %79, ptr noundef %185, i32 noundef %187) #18
  %189 = load ptr, ptr %46, align 8, !tbaa !226
  %190 = load ptr, ptr %182, align 16, !tbaa !632
  call void @delete_insn_chain(ptr noundef nonnull %45, ptr noundef %190, i8 noundef zeroext 0) #18
  %191 = icmp eq ptr %184, null
  br i1 %191, label %192, label %196, !prof !719

192:                                              ; preds = %173
  br i1 %176, label %266, label %193, !prof !719

193:                                              ; preds = %192
  %194 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !720
  %195 = icmp eq ptr %194, null
  br i1 %195, label %266, label %196

196:                                              ; preds = %193, %173
  %197 = getelementptr inbounds i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 1
  %199 = call fastcc ptr @ei_start_1(ptr noundef nonnull %198) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !729
  store ptr %199, ptr %197, align 8, !tbaa.struct !730
  %200 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %199, ptr noundef nonnull %2) #19, !range !346
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %196, %208
  %203 = load ptr, ptr %2, align 8, !tbaa !224
  %204 = getelementptr inbounds %struct.edge_def, ptr %203, i64 0, i32 7
  %205 = load i32, ptr %204, align 8, !tbaa !731
  %206 = and i32 %205, 12
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %209 = load i32, ptr %3, align 8
  %210 = load ptr, ptr %197, align 8
  %211 = call fastcc zeroext i8 @ei_cond(i32 %209, ptr %210, ptr noundef nonnull %2) #19, !range !346
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %202, !llvm.loop !733

213:                                              ; preds = %208, %202, %196
  br i1 %191, label %215, label %214

214:                                              ; preds = %213
  call void @copy_reg_eh_region_note_backward(ptr noundef nonnull %184, ptr noundef %188, ptr noundef %189) #18
  br label %215

215:                                              ; preds = %214, %213
  %216 = load ptr, ptr %2, align 8, !tbaa !224
  %217 = icmp eq ptr %216, null
  %218 = icmp eq ptr %188, %189
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %263, label %220

220:                                              ; preds = %215, %258
  %221 = phi ptr [ %259, %258 ], [ %44, %215 ]
  %222 = phi ptr [ %261, %258 ], [ %188, %215 ]
  %223 = getelementptr inbounds %struct.basic_block_def, ptr %221, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !226
  %225 = getelementptr inbounds %struct.rtl_bb_info, ptr %224, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !602
  %227 = icmp eq ptr %222, %226
  br i1 %227, label %258, label %228

228:                                              ; preds = %220
  %229 = call zeroext i8 @can_throw_internal(ptr noundef %222) #18
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = call zeroext i8 @can_nonlocal_goto(ptr noundef %222) #18
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %258, label %234

234:                                              ; preds = %231, %228
  %235 = call ptr @split_block(ptr noundef nonnull %221, ptr noundef %222) #18
  %236 = load ptr, ptr %2, align 8, !tbaa !224
  %237 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 7
  %238 = load i32, ptr %237, align 8, !tbaa !731
  %239 = and i32 %238, 10
  %240 = load i32, ptr %222, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 10
  %243 = or disjoint i32 %239, 4
  %244 = select i1 %242, i32 %243, i32 %239
  %245 = load ptr, ptr %235, align 8, !tbaa !734
  %246 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !735
  %248 = call ptr @make_edge(ptr noundef %245, ptr noundef %247, i32 noundef %244) #18
  %249 = getelementptr inbounds %struct.edge_def, ptr %236, i64 0, i32 8
  %250 = load i32, ptr %249, align 4, !tbaa !736
  %251 = getelementptr inbounds %struct.edge_def, ptr %248, i64 0, i32 8
  store i32 %250, ptr %251, align 4, !tbaa !736
  %252 = sub nsw i32 10000, %250
  %253 = getelementptr inbounds %struct.edge_def, ptr %235, i64 0, i32 8
  store i32 %252, ptr %253, align 4, !tbaa !736
  %254 = getelementptr inbounds %struct.edge_def, ptr %235, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !735
  %256 = call zeroext i8 @purge_dead_edges(ptr noundef %255) #18
  %257 = load ptr, ptr %235, align 8, !tbaa !734
  store ptr %248, ptr %2, align 8, !tbaa !224
  br label %258

258:                                              ; preds = %220, %231, %234
  %259 = phi ptr [ %257, %234 ], [ %221, %231 ], [ %221, %220 ]
  %260 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !226
  %262 = icmp eq ptr %261, %189
  br i1 %262, label %263, label %220, !llvm.loop !737

263:                                              ; preds = %258, %215
  %264 = phi ptr [ %44, %215 ], [ %259, %258 ]
  %265 = call zeroext i8 @purge_dead_edges(ptr noundef %264) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %266

266:                                              ; preds = %263, %193, %192
  %267 = phi ptr [ %264, %263 ], [ %44, %193 ], [ %44, %192 ]
  %268 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !738
  %269 = call zeroext i8 %268() #18
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %292, label %271, !prof !719

271:                                              ; preds = %266, %283
  %272 = phi i64 [ %284, %283 ], [ 0, %266 ]
  %273 = phi <2 x i64> [ %285, %283 ], [ <i64 0, i64 1>, %266 ]
  %274 = icmp ult <2 x i64> %273, <i64 5, i64 5>
  %275 = extractelement <2 x i1> %274, i64 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %272
  store ptr null, ptr %277, align 16, !tbaa !632
  br label %278

278:                                              ; preds = %276, %271
  %279 = extractelement <2 x i1> %274, i64 1
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = or disjoint i64 %272, 1
  %282 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %281
  store ptr null, ptr %282, align 16, !tbaa !632
  br label %283

283:                                              ; preds = %280, %278
  %284 = add i64 %272, 2
  %285 = add <2 x i64> %273, <i64 2, i64 2>
  %286 = icmp eq i64 %284, 6
  br i1 %286, label %287, label %271, !llvm.loop !739

287:                                              ; preds = %283
  %288 = load ptr, ptr @global_rtl, align 16, !tbaa !224
  %289 = load i32, ptr @peep2_current, align 4, !tbaa !215
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %290
  store ptr %288, ptr %291, align 16, !tbaa !632
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !215
  br label %330

292:                                              ; preds = %266
  %293 = add nsw i32 %180, 1
  %294 = icmp sgt i32 %180, 3
  %295 = select i1 %294, i32 0, i32 %293, !prof !742
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %296, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !637
  call void @bitmap_copy(ptr noundef %12, ptr noundef %298) #18
  br label %299

299:                                              ; preds = %324, %292
  %300 = phi ptr [ %188, %292 ], [ %327, %324 ]
  %301 = phi i32 [ %295, %292 ], [ %325, %324 ]
  %302 = load i32, ptr %300, align 8
  %303 = and i32 %302, 65535
  %304 = add nsw i32 %303, -7
  %305 = icmp ult i32 %304, 4
  br i1 %305, label %306, label %324, !prof !743

306:                                              ; preds = %299
  %307 = add nsw i32 %301, -1
  %308 = icmp slt i32 %301, 1
  %309 = select i1 %308, i32 4, i32 %307, !prof !744
  %310 = load i32, ptr @peep2_current_count, align 4, !tbaa !215
  %311 = icmp slt i32 %310, 4
  %312 = sext i32 %309 to i64
  br i1 %311, label %313, label %319, !prof !745

313:                                              ; preds = %306
  %314 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %312
  %315 = load ptr, ptr %314, align 16, !tbaa !632
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %319, !prof !746

317:                                              ; preds = %313
  %318 = add nsw i32 %310, 1
  store i32 %318, ptr @peep2_current_count, align 4, !tbaa !215
  br label %319

319:                                              ; preds = %306, %317, %313
  %320 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %312
  store ptr %300, ptr %320, align 16, !tbaa !632
  %321 = call zeroext i8 @df_insn_rescan(ptr noundef nonnull %300) #18
  call void @df_simulate_one_insn_backwards(ptr noundef %267, ptr noundef nonnull %300, ptr noundef %12) #18
  %322 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %312, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !637
  call void @bitmap_copy(ptr noundef %323, ptr noundef %12) #18
  br label %324

324:                                              ; preds = %299, %319
  %325 = phi i32 [ %309, %319 ], [ %301, %299 ]
  %326 = getelementptr inbounds %struct.rtx_def, ptr %300, i64 0, i32 1, i32 0, i32 0, i64 1
  %327 = load ptr, ptr %326, align 8, !tbaa !226
  %328 = icmp eq ptr %327, %47
  br i1 %328, label %329, label %299, !prof !747, !llvm.loop !748

329:                                              ; preds = %324
  store i32 %325, ptr @peep2_current, align 4, !tbaa !215
  br label %330

330:                                              ; preds = %329, %287
  %331 = icmp eq ptr %188, %189
  br i1 %331, label %341, label %332, !prof !709

332:                                              ; preds = %330, %337
  %333 = phi ptr [ %339, %337 ], [ %188, %330 ]
  %334 = load i32, ptr %333, align 8
  %335 = and i32 %334, 65535
  %336 = icmp eq i32 %335, 9
  br i1 %336, label %341, label %337, !prof !749

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !226
  %340 = icmp eq ptr %339, %189
  br i1 %340, label %341, label %332, !prof !750, !llvm.loop !751

341:                                              ; preds = %337, %332, %330, %75, %76
  %342 = phi i8 [ %43, %76 ], [ %43, %75 ], [ %43, %330 ], [ %43, %337 ], [ 1, %332 ]
  %343 = phi ptr [ %44, %76 ], [ %44, %75 ], [ %267, %330 ], [ %267, %332 ], [ %267, %337 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #20
  br label %344

344:                                              ; preds = %42, %341
  %345 = phi i8 [ %342, %341 ], [ %43, %42 ]
  %346 = phi ptr [ %343, %341 ], [ %44, %42 ]
  %347 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 7
  %348 = load ptr, ptr %347, align 8, !tbaa !226
  %349 = load ptr, ptr %348, align 8, !tbaa !600
  %350 = icmp eq ptr %45, %349
  br i1 %350, label %22, label %42, !prof !752, !llvm.loop !700

351:                                              ; preds = %22
  %352 = icmp eq i8 %345, 0
  br label %353

353:                                              ; preds = %351, %11
  %354 = phi i1 [ true, %11 ], [ %352, %351 ]
  call void @default_rtl_profile() #18
  br label %355

355:                                              ; preds = %353, %355
  %356 = phi i64 [ 0, %353 ], [ %359, %355 ]
  %357 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %356, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !637
  call void @bitmap_obstack_free(ptr noundef %358) #18
  store ptr null, ptr %357, align 8, !tbaa !637
  %359 = add nuw nsw i64 %356, 1
  %360 = icmp eq i64 %359, 5
  br i1 %360, label %361, label %355, !prof !696, !llvm.loop !753

361:                                              ; preds = %355
  call void @bitmap_obstack_free(ptr noundef %12) #18
  br i1 %354, label %364, label %362, !prof !674

362:                                              ; preds = %361
  %363 = call ptr @get_insns() #18
  call void @rebuild_jump_labels(ptr noundef %363) #18
  br label %364

364:                                              ; preds = %362, %361
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
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #8 !prof !754 !PGOFuncName !755 {
  %2 = load ptr, ptr @df, align 8, !tbaa !224
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !756
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !758

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !759
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @df_simulate_initialize_backwards(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @peep2_reinit_state(ptr noundef %0) unnamed_addr #1 !prof !760 !PGOFuncName !761 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds [5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 %3
  store ptr null, ptr %4, align 16, !tbaa !632
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %2, !prof !762, !llvm.loop !763

7:                                                ; preds = %2
  store i32 0, ptr @peep2_current_count, align 4, !tbaa !215
  %8 = load ptr, ptr @global_rtl, align 16, !tbaa !224
  store ptr %8, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4), align 16, !tbaa !632
  store i32 4, ptr @peep2_current, align 4, !tbaa !215
  %9 = load ptr, ptr getelementptr inbounds ([5 x %struct.peep2_insn_data], ptr @peep2_insn_data, i64 0, i64 4, i32 1), align 8, !tbaa !637
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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !336 !PGOFuncName !764 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !336 !PGOFuncName !765 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !346
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !224
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !336 !PGOFuncName !766 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !767
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !767
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
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !336 !PGOFuncName !769 {
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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !336 !PGOFuncName !770 {
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !336 !PGOFuncName !771 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !772
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !336 !PGOFuncName !774 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !224
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !336 !PGOFuncName !775 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  ret ptr %5
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!213}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!35 = !{ptr @check_asm_operands, ptr @make_insn_raw, i64 1}
!36 = !{ptr @check_asm_operands, ptr @extract_insn, i64 1}
!37 = !{ptr @check_asm_operands, ptr @constrain_operands, i64 1}
!38 = !{ptr @check_asm_operands, ptr @asm_noperands, i64 712381}
!39 = !{ptr @check_asm_operands, ptr @decode_asm_operands, i64 1}
!40 = !{ptr @check_asm_operands, ptr @asm_operand_ok, i64 10}
!41 = !{ptr @extract_insn, ptr @asm_noperands, i64 4}
!42 = !{ptr @extract_insn, ptr @fancy_abort, i64 2}
!43 = !{ptr @extract_insn, ptr @decode_asm_operands, i64 2}
!44 = !{ptr @extract_insn, ptr @_fatal_insn_not_found, i64 3}
!45 = !{ptr @extract_insn, ptr @recog_memoized, i64 13672661}
!46 = !{ptr @extract_insn, ptr @insn_extract, i64 13672661}
!47 = !{ptr @constrain_operands, ptr @skip_alternative, i64 20}
!48 = !{ptr @constrain_operands, ptr @rhs_regno, i64 290824}
!49 = !{ptr @constrain_operands, ptr @subreg_regno_offset, i64 1}
!50 = !{ptr @constrain_operands, ptr @insn_constraint_len, i64 21503811}
!51 = !{ptr @constrain_operands, ptr @strtoul, i64 173225}
!52 = !{ptr @constrain_operands, ptr @operands_match_p, i64 172539}
!53 = !{ptr @constrain_operands, ptr @strict_memory_address_addr_space_p, i64 1105417}
!54 = !{ptr @constrain_operands, ptr @reg_fits_class_p, i64 3340522}
!55 = !{ptr @constrain_operands, ptr @general_operand, i64 899860}
!56 = !{ptr @constrain_operands, ptr @memory_address_addr_space_p, i64 97947}
!57 = !{ptr @constrain_operands, ptr @lookup_constraint, i64 266483}
!58 = !{ptr @constrain_operands, ptr @constraint_satisfied_p, i64 2550}
!59 = !{ptr @constrain_operands, ptr @insn_const_int_ok_for_constraint, i64 1122}
!60 = !{ptr @constrain_operands, ptr @offsettable_memref_p, i64 114}
!61 = !{ptr @constrain_operands, ptr @offsettable_nonstrict_memref_p, i64 1}
!62 = !{ptr @constrain_operands, ptr @regclass_for_constraint, i64 262811}
!63 = !{ptr @constrain_operands, ptr @safe_from_earlyclobber, i64 66}
!64 = !{ptr @constrain_operands, ptr @constrain_operands, i64 888}
!65 = !{ptr @asm_noperands, ptr @extract_asm_operands, i64 7520004}
!66 = !{ptr @validate_change, ptr @validate_change_1, i64 11169790}
!67 = !{ptr @validate_change_1, ptr @rtx_equal_p, i64 721889}
!68 = !{ptr @validate_change_1, ptr @fancy_abort, i64 1}
!69 = !{ptr @validate_change_1, ptr @xrealloc, i64 2}
!70 = !{ptr @validate_change_1, ptr @apply_change_group, i64 32961}
!71 = !{ptr @validate_unshare_change, ptr @validate_change_1, i64 1636279}
!72 = !{ptr @canonicalize_change_group, ptr @swap_commutative_operands_p, i64 136}
!73 = !{ptr @canonicalize_change_group, ptr @validate_change, i64 2}
!74 = !{ptr @insn_invalid_p, ptr @recog, i64 651041}
!75 = !{ptr @insn_invalid_p, ptr @asm_noperands, i64 95818}
!76 = !{ptr @insn_invalid_p, ptr @check_asm_operands, i64 1}
!77 = !{ptr @insn_invalid_p, ptr @added_clobbers_hard_reg_p, i64 1}
!78 = !{ptr @insn_invalid_p, ptr @extract_insn, i64 382477}
!79 = !{ptr @insn_invalid_p, ptr @constrain_operands, i64 382477}
!80 = !{ptr @verify_changes, ptr @memory_address_addr_space_p, i64 1}
!81 = !{ptr @verify_changes, ptr @asm_noperands, i64 86491}
!82 = !{ptr @verify_changes, ptr @insn_invalid_p, i64 659423}
!83 = !{ptr @verify_changes, ptr @rtvec_alloc, i64 1}
!84 = !{ptr @verify_changes, ptr @gen_rtx_fmt_E_stat, i64 1}
!85 = !{ptr @verify_changes, ptr @validate_change, i64 35572}
!86 = !{ptr @confirm_change_group, ptr @copy_rtx, i64 27340}
!87 = !{ptr @confirm_change_group, ptr @df_insn_rescan, i64 551840}
!88 = !{ptr @apply_change_group, ptr @verify_changes, i64 4693018}
!89 = !{ptr @apply_change_group, ptr @confirm_change_group, i64 4639245}
!90 = !{ptr @apply_change_group, ptr @cancel_changes, i64 53773}
!91 = !{ptr @validate_replace_rtx_1, ptr @rhs_regno, i64 55820}
!92 = !{ptr @validate_replace_rtx_1, ptr @rtx_equal_p, i64 27910}
!93 = !{ptr @validate_replace_rtx_1, ptr @validate_unshare_change, i64 28431}
!94 = !{ptr @validate_replace_rtx_1, ptr @validate_replace_rtx_1, i64 132467}
!95 = !{ptr @validate_replace_rtx_1, ptr @simplify_while_replacing, i64 50581}
!96 = !{ptr @validate_replace_rtx, ptr @validate_replace_rtx_1, i64 25628}
!97 = !{ptr @validate_replace_rtx, ptr @apply_change_group, i64 25628}
!98 = !{ptr @validate_replace_rtx_part_nosimplify, ptr @validate_replace_rtx_1, i64 1589}
!99 = !{ptr @validate_replace_rtx_part_nosimplify, ptr @apply_change_group, i64 1589}
!100 = !{ptr @validate_replace_src_group, ptr @note_uses, i64 1214}
!101 = !{ptr @validate_replace_src_1, ptr @validate_replace_rtx_1, i64 1214}
!102 = !{ptr @general_operand, ptr @trunc_int_for_mode, i64 782900}
!103 = !{ptr @general_operand, ptr @legitimate_pic_operand_p, i64 1}
!104 = !{ptr @general_operand, ptr @legitimate_constant_p, i64 2274722}
!105 = !{ptr @general_operand, ptr @rhs_regno, i64 4167089}
!106 = !{ptr @general_operand, ptr @memory_address_addr_space_p, i64 6427992}
!107 = !{ptr @address_operand, ptr @memory_address_addr_space_p, i64 177590}
!108 = !{ptr @register_operand, ptr @general_operand, i64 1}
!109 = !{ptr @register_operand, ptr @rhs_regno, i64 5468435}
!110 = !{ptr @register_operand, ptr @ix86_cannot_change_mode_class, i64 1}
!111 = !{ptr @scratch_operand, ptr @rhs_regno, i64 15479}
!112 = !{ptr @immediate_operand, ptr @trunc_int_for_mode, i64 115302}
!113 = !{ptr @immediate_operand, ptr @legitimate_pic_operand_p, i64 1}
!114 = !{ptr @immediate_operand, ptr @legitimate_constant_p, i64 301667}
!115 = !{ptr @const_int_operand, ptr @trunc_int_for_mode, i64 89235}
!116 = !{ptr @nonimmediate_operand, ptr @general_operand, i64 6451538}
!117 = !{ptr @nonmemory_operand, ptr @trunc_int_for_mode, i64 135}
!118 = !{ptr @nonmemory_operand, ptr @legitimate_pic_operand_p, i64 1}
!119 = !{ptr @nonmemory_operand, ptr @legitimate_constant_p, i64 10520}
!120 = !{ptr @nonmemory_operand, ptr @general_operand, i64 1}
!121 = !{ptr @nonmemory_operand, ptr @rhs_regno, i64 25049}
!122 = !{ptr @memory_operand, ptr @general_operand, i64 4304792}
!123 = !{ptr @offsettable_memref_p, ptr @offsettable_address_addr_space_p, i64 1}
!124 = !{ptr @extract_insn_cached, ptr @extract_insn, i64 6594206}
!125 = !{ptr @extract_constrain_insn_cached, ptr @extract_insn_cached, i64 12496631}
!126 = !{ptr @extract_constrain_insn_cached, ptr @constrain_operands, i64 2358720}
!127 = !{ptr @extract_constrain_insn_cached, ptr @_fatal_insn_not_found, i64 1}
!128 = !{ptr @constrain_operands_cached, ptr @constrain_operands, i64 616192}
!129 = !{ptr @recog_memoized, ptr @recog, i64 1139089}
!130 = !{ptr @preprocess_constraints, ptr @skip_alternative, i64 1}
!131 = !{ptr @preprocess_constraints, ptr @strtoul, i64 12713}
!132 = !{ptr @preprocess_constraints, ptr @lookup_constraint, i64 1543420}
!133 = !{ptr @preprocess_constraints, ptr @regclass_for_constraint, i64 1543420}
!134 = !{ptr @preprocess_constraints, ptr @insn_constraint_len, i64 5681102}
!135 = !{ptr @reg_fits_class_p, ptr @rhs_regno, i64 6504908}
!136 = !{ptr @reg_fits_class_p, ptr @in_hard_reg_set_p, i64 5384097}
!137 = !{ptr @in_hard_reg_set_p, ptr @end_hard_regno, i64 5382967}
!138 = !{ptr @split_all_insns, ptr @sbitmap_alloc, i64 114}
!139 = !{ptr @split_all_insns, ptr @sbitmap_zero, i64 114}
!140 = !{ptr @split_all_insns, ptr @rtl_profile_for_bb, i64 494003}
!141 = !{ptr @split_all_insns, ptr @single_set_2, i64 1}
!142 = !{ptr @split_all_insns, ptr @set_noop_p, i64 1749655}
!143 = !{ptr @split_all_insns, ptr @delete_insn_and_edges, i64 1}
!144 = !{ptr @split_all_insns, ptr @split_insn, i64 1749655}
!145 = !{ptr @split_all_insns, ptr @SET_BIT, i64 12073}
!146 = !{ptr @split_all_insns, ptr @default_rtl_profile, i64 114}
!147 = !{ptr @split_all_insns, ptr @find_many_sub_basic_blocks, i64 57}
!148 = !{ptr @split_all_insns, ptr @free, i64 228}
!149 = !{ptr @split_insn, ptr @try_split, i64 1765002}
!150 = !{ptr @split_insn, ptr @single_set_2, i64 6}
!151 = !{ptr @split_insn, ptr @rtx_equal_p, i64 12177}
!152 = !{ptr @split_insn, ptr @find_reg_equal_equiv_note, i64 12027}
!153 = !{ptr @split_insn, ptr @set_unique_reg_note, i64 1}
!154 = !{ptr @split_insn, ptr @set_insn_deleted, i64 12179}
!155 = !{ptr @split_insn, ptr @cleanup_subreg_operands, i64 5487}
!156 = !{ptr @peep2_next_insn, ptr @fancy_abort, i64 1}
!157 = !{ptr @peep2_regno_dead_p, ptr @fancy_abort, i64 2}
!158 = !{ptr @peep2_regno_dead_p, ptr @bitmap_bit_p, i64 2962}
!159 = !{ptr @peep2_reg_dead_p, ptr @fancy_abort, i64 2}
!160 = !{ptr @peep2_reg_dead_p, ptr @rhs_regno, i64 16913}
!161 = !{ptr @peep2_reg_dead_p, ptr @bitmap_bit_p, i64 16912}
!162 = !{ptr @peep2_find_free_register, ptr @fancy_abort, i64 3}
!163 = !{ptr @peep2_find_free_register, ptr @reg_set_to_hard_reg_set, i64 569}
!164 = !{ptr @peep2_find_free_register, ptr @lookup_constraint, i64 1}
!165 = !{ptr @peep2_find_free_register, ptr @regclass_for_constraint, i64 1}
!166 = !{ptr @peep2_find_free_register, ptr @ix86_hard_regno_mode_ok, i64 2200}
!167 = !{ptr @peep2_find_free_register, ptr @df_regs_ever_live_p, i64 1253}
!168 = !{ptr @peep2_find_free_register, ptr @add_to_hard_reg_set, i64 566}
!169 = !{ptr @peep2_find_free_register, ptr @gen_rtx_REG, i64 566}
!170 = !{ptr @add_to_hard_reg_set, ptr @end_hard_regno, i64 568}
!171 = !{ptr @rest_of_handle_peephole2, ptr @peephole2_optimize, i64 38}
!172 = !{ptr @rest_of_handle_split_all_insns, ptr @split_all_insns, i64 38}
!173 = !{ptr @rest_of_handle_split_after_reload, ptr @split_all_insns, i64 38}
!174 = !{ptr @rest_of_handle_split_before_sched2, ptr @split_all_insns, i64 38}
!175 = !{ptr @simplify_while_replacing, ptr @swap_commutative_operands_p, i64 502}
!176 = !{ptr @simplify_while_replacing, ptr @gen_rtx_fmt_ee_stat, i64 1}
!177 = !{ptr @simplify_while_replacing, ptr @validate_unshare_change, i64 1}
!178 = !{ptr @simplify_while_replacing, ptr @simplify_gen_binary, i64 2}
!179 = !{ptr @simplify_while_replacing, ptr @validate_change, i64 175}
!180 = !{ptr @simplify_while_replacing, ptr @simplify_gen_unary, i64 2}
!181 = !{ptr @simplify_while_replacing, ptr @simplify_subreg, i64 224}
!182 = !{ptr @simplify_while_replacing, ptr @gen_rtx_fmt_e_stat, i64 1}
!183 = !{ptr @peephole2_optimize, ptr @df_set_flags, i64 38}
!184 = !{ptr @peephole2_optimize, ptr @df_analyze, i64 38}
!185 = !{ptr @peephole2_optimize, ptr @bitmap_obstack_alloc_stat, i64 224}
!186 = !{ptr @peephole2_optimize, ptr @rtl_profile_for_bb, i64 151480}
!187 = !{ptr @peephole2_optimize, ptr @df_lr_get_bb_info, i64 151480}
!188 = !{ptr @peephole2_optimize, ptr @bitmap_copy, i64 737408}
!189 = !{ptr @peephole2_optimize, ptr @df_simulate_initialize_backwards, i64 151480}
!190 = !{ptr @peephole2_optimize, ptr @peep2_reinit_state, i64 151767}
!191 = !{ptr @peephole2_optimize, ptr @df_simulate_one_insn_backwards, i64 566262}
!192 = !{ptr @peephole2_optimize, ptr @peephole2_insns, i64 543471}
!193 = !{ptr @peephole2_optimize, ptr @fancy_abort, i64 1306}
!194 = !{ptr @peephole2_optimize, ptr @add_reg_note, i64 2050}
!195 = !{ptr @peephole2_optimize, ptr @find_reg_note, i64 19667}
!196 = !{ptr @peephole2_optimize, ptr @emit_insn_after_setloc, i64 19667}
!197 = !{ptr @peephole2_optimize, ptr @delete_insn_chain, i64 19667}
!198 = !{ptr @peephole2_optimize, ptr @ei_start_1, i64 2}
!199 = !{ptr @peephole2_optimize, ptr @ei_cond, i64 18}
!200 = !{ptr @peephole2_optimize, ptr @ei_next, i64 16}
!201 = !{ptr @peephole2_optimize, ptr @copy_reg_eh_region_note_backward, i64 1}
!202 = !{ptr @peephole2_optimize, ptr @can_throw_internal, i64 16}
!203 = !{ptr @peephole2_optimize, ptr @can_nonlocal_goto, i64 6}
!204 = !{ptr @peephole2_optimize, ptr @split_block, i64 14}
!205 = !{ptr @peephole2_optimize, ptr @make_edge, i64 14}
!206 = !{ptr @peephole2_optimize, ptr @purge_dead_edges, i64 16}
!207 = !{ptr @peephole2_optimize, ptr @df_insn_rescan, i64 22504}
!208 = !{ptr @peephole2_optimize, ptr @default_rtl_profile, i64 38}
!209 = !{ptr @peephole2_optimize, ptr @bitmap_obstack_free, i64 224}
!210 = !{ptr @peephole2_optimize, ptr @get_insns, i64 1}
!211 = !{ptr @peephole2_optimize, ptr @rebuild_jump_labels, i64 1}
!212 = !{ptr @peep2_reinit_state, ptr @bitmap_copy, i64 155759}
!213 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!214 = !{!"function_entry_count", i64 114}
!215 = !{!216, !216, i64 0}
!216 = !{!"int", !217, i64 0}
!217 = !{!"omnipotent char", !218, i64 0}
!218 = !{!"Simple C/C++ TBAA"}
!219 = !{!"function_entry_count", i64 268}
!220 = !{!"function_entry_count", i64 712382}
!221 = !{!"branch_weights", i32 712383, i32 1}
!222 = distinct !{!222, !223}
!223 = !{!"llvm.loop.mustprogress"}
!224 = !{!225, !225, i64 0}
!225 = !{!"any pointer", !217, i64 0}
!226 = !{!217, !217, i64 0}
!227 = !{!"function_entry_count", i64 13672906}
!228 = !{!229, !217, i64 1086}
!229 = !{!"recog_data", !217, i64 0, !217, i64 240, !217, i64 480, !217, i64 720, !217, i64 840, !217, i64 960, !217, i64 1072, !217, i64 1086, !217, i64 1087, !217, i64 1088, !217, i64 1089, !225, i64 1120}
!230 = !{!229, !217, i64 1088}
!231 = !{!229, !217, i64 1087}
!232 = !{!"branch_weights", i32 64490, i32 191, i32 1, i32 1, i32 47, i32 1, i32 1, i32 12972185, i32 635998, i32 1}
!233 = !{!"branch_weights", i32 1, i32 12972185}
!234 = !{!"branch_weights", i32 0, i32 -1689919488, i32 4095}
!235 = !{!"branch_weights", i32 1, i32 635998}
!236 = distinct !{!236, !223}
!237 = !{!"branch_weights", i32 1, i32 13672671}
!238 = !{!239, !217, i64 32}
!239 = !{!"insn_data", !225, i64 0, !217, i64 8, !225, i64 16, !225, i64 24, !217, i64 32, !217, i64 33, !217, i64 34, !217, i64 35}
!240 = !{!239, !217, i64 34}
!241 = !{!239, !217, i64 33}
!242 = !{!"branch_weights", i32 13672670, i32 1}
!243 = !{!239, !225, i64 24}
!244 = !{!245, !225, i64 8}
!245 = !{!"insn_operand_data", !225, i64 0, !225, i64 8, !216, i64 16, !217, i64 18, !217, i64 19}
!246 = !{!"branch_weights", i32 9161046, i32 19728763}
!247 = !{!"branch_weights", i32 13672670, i32 15217138}
!248 = distinct !{!248, !223}
!249 = !{!"branch_weights", i32 2147483565, i32 83}
!250 = !{!"branch_weights", i32 4545285, i32 24344524}
!251 = distinct !{!251, !223}
!252 = !{!"branch_weights", i32 13672671, i32 1}
!253 = !{!229, !225, i64 1120}
!254 = !{!"function_entry_count", i64 5374348}
!255 = !{!"branch_weights", i32 756525670, i32 -1525777004}
!256 = !{!"branch_weights", i32 4221156, i32 1}
!257 = !{!"branch_weights", i32 1, i32 5421463}
!258 = !{!"branch_weights", i32 5421462, i32 1}
!259 = distinct !{!259, !223}
!260 = !{!"branch_weights", i32 1, i32 10970095}
!261 = !{!"branch_weights", i32 7647, i32 10962449}
!262 = !{!"branch_weights", i32 7647, i32 1}
!263 = !{!"branch_weights", i32 1, i32 7647}
!264 = !{!"branch_weights", i32 6658945, i32 1420187, i32 9549909, i32 111142, i32 13218, i32 220962, i32 102451, i32 2532512, i32 96773, i32 1, i32 1, i32 225790, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 16667, i32 2199284, i32 1, i32 2501809, i32 441, i32 1, i32 1, i32 215, i32 95, i32 1, i32 1, i32 2107999, i32 208359, i32 3016, i32 1, i32 1, i32 196, i32 1, i32 60186, i32 1, i32 1, i32 1, i32 149}
!265 = !{!"branch_weights", i32 956, i32 224835}
!266 = !{!"branch_weights", i32 1, i32 224835}
!267 = !{!"branch_weights", i32 264926519, i32 1882557129}
!268 = !{!"branch_weights", i32 9551, i32 2147474097}
!269 = !{!270, !216, i64 0}
!270 = !{!"funny_match", !216, i64 0, !216, i64 4}
!271 = !{!270, !216, i64 4}
!272 = !{!"branch_weights", i32 244, i32 16424}
!273 = !{!"branch_weights", i32 1, i32 16424}
!274 = !{!"branch_weights", i32 1026300, i32 1172985}
!275 = !{!"branch_weights", i32 136, i32 1026165}
!276 = !{!"branch_weights", i32 1026165, i32 1}
!277 = !{i32 0, i32 2}
!278 = !{!"branch_weights", i32 69697, i32 956469}
!279 = !{!"branch_weights", i32 13, i32 1172973}
!280 = !{!"branch_weights", i32 1, i32 1172973}
!281 = !{!"branch_weights", i32 1552169, i32 949641}
!282 = !{!"branch_weights", i32 1424495, i32 127675}
!283 = !{!"branch_weights", i32 825, i32 1423671}
!284 = !{!285, !217, i64 32}
!285 = !{!"mem_attrs", !225, i64 0, !225, i64 8, !225, i64 16, !216, i64 24, !216, i64 28, !217, i64 32}
!286 = !{!"branch_weights", i32 1, i32 1424495}
!287 = !{!"branch_weights", i32 2147482265, i32 1383}
!288 = !{!"branch_weights", i32 24, i32 127652}
!289 = !{i32 0, i32 256}
!290 = !{!"branch_weights", i32 1, i32 127675}
!291 = !{!"branch_weights", i32 944, i32 948698}
!292 = !{!"branch_weights", i32 1, i32 944}
!293 = !{!"branch_weights", i32 949641, i32 1}
!294 = !{!"branch_weights", i32 441, i32 1}
!295 = !{!"branch_weights", i32 1, i32 882, i32 1}
!296 = !{!"branch_weights", i32 46225, i32 216, i32 215}
!297 = !{!"branch_weights", i32 1, i32 95}
!298 = !{!"branch_weights", i32 1201396, i32 906604}
!299 = !{!"branch_weights", i32 6843456, i32 538432048, i32 2616}
!300 = !{!"branch_weights", i32 1463, i32 61934}
!301 = !{!"branch_weights", i32 196, i32 1268}
!302 = !{!"branch_weights", i32 149, i32 1}
!303 = !{!"branch_weights", i32 2133262532, i32 14221116}
!304 = !{!"branch_weights", i32 6316371, i32 342575}
!305 = !{!"branch_weights", i32 20830725, i32 2126652923}
!306 = !{!"branch_weights", i32 1794, i32 6653830}
!307 = !{!"branch_weights", i32 635526, i32 6018305}
!308 = !{!"branch_weights", i32 -2112595298, i32 -1271111680, i32 9569}
!309 = !{!"branch_weights", i32 367417, i32 1707}
!310 = !{!"branch_weights", i32 3328226, i32 2958189}
!311 = !{!"branch_weights", i32 1064, i32 3327163}
!312 = !{!"branch_weights", i32 3323, i32 1}
!313 = !{!"branch_weights", i32 1073741824, i32 1073741824}
!314 = distinct !{!314, !223}
!315 = !{!"branch_weights", i32 1273701, i32 9696395}
!316 = !{!"branch_weights", i32 5548633, i32 5421462}
!317 = distinct !{!317, !223}
!318 = !{!"branch_weights", i32 1671621950, i32 475861698}
!319 = !{!"branch_weights", i32 508, i32 2147483140}
!320 = distinct !{!320, !223}
!321 = distinct !{!321, !223}
!322 = !{!"branch_weights", i32 0, i32 -2147483648}
!323 = !{!"branch_weights", i32 509, i32 2147483139}
!324 = !{!"branch_weights", i32 0, i32 1}
!325 = distinct !{!325, !223}
!326 = !{!"branch_weights", i32 1200307, i32 1038}
!327 = distinct !{!327, !223}
!328 = !{!"branch_weights", i32 889, i32 150}
!329 = !{!"function_entry_count", i64 7520004}
!330 = !{!"branch_weights", i32 7520005, i32 1}
!331 = !{!332, !216, i64 0}
!332 = !{!"rtvec_def", !216, i64 0, !217, i64 8}
!333 = distinct !{!333, !223}
!334 = distinct !{!334, !223}
!335 = distinct !{!335, !223}
!336 = !{!"function_entry_count", i64 0}
!337 = distinct !{!337, !223}
!338 = distinct !{!338, !223}
!339 = distinct !{!339, !223}
!340 = distinct !{!340, !223}
!341 = !{!342, !342, i64 0}
!342 = !{!"short", !217, i64 0}
!343 = distinct !{!343, !223}
!344 = distinct !{!344, !223}
!345 = !{!"function_entry_count", i64 11169790}
!346 = !{i8 0, i8 2}
!347 = !{!"function_entry_count", i64 12806069}
!348 = !{!"recog.c:validate_change_1"}
!349 = !{!"branch_weights", i32 12084182, i32 721889}
!350 = !{!"branch_weights", i32 720675, i32 1215}
!351 = !{!"branch_weights", i32 -1325606128, i32 4120}
!352 = !{!"branch_weights", i32 720674, i32 2}
!353 = !{!"branch_weights", i32 2, i32 1}
!354 = !{!355, !225, i64 0}
!355 = !{!"change_t", !225, i64 0, !216, i64 8, !225, i64 16, !225, i64 24, !217, i64 32}
!356 = !{!355, !225, i64 16}
!357 = !{!355, !225, i64 24}
!358 = !{!355, !217, i64 32}
!359 = !{!"branch_weights", i32 2, i32 720674}
!360 = !{!"branch_weights", i32 1, i32 720674}
!361 = !{!355, !216, i64 8}
!362 = !{!"branch_weights", i32 32961, i32 687715}
!363 = !{!"function_entry_count", i64 1636279}
!364 = !{!"function_entry_count", i64 18393}
!365 = !{!"branch_weights", i32 136, i32 18259}
!366 = !{!"branch_weights", i32 136, i32 1}
!367 = !{!"function_entry_count", i64 651041}
!368 = !{!"branch_weights", i32 -736151223, i32 1968315056}
!369 = !{!"branch_weights", i32 555225, i32 95818}
!370 = !{!"branch_weights", i32 22416, i32 2147461232}
!371 = !{!"branch_weights", i32 -496228781, i32 -1470940379}
!372 = !{!"branch_weights", i32 1, i32 555225}
!373 = !{!"branch_weights", i32 172747, i32 382479}
!374 = !{!"branch_weights", i32 48, i32 382432}
!375 = !{!"function_entry_count", i64 1231}
!376 = !{!"function_entry_count", i64 4777309}
!377 = !{!"branch_weights", i32 720503, i32 3996064}
!378 = !{!"branch_weights", i32 391001800, i32 -630302741}
!379 = !{!"branch_weights", i32 1, i32 651042}
!380 = !{!"branch_weights", i32 50271, i32 600772}
!381 = !{!"branch_weights", i32 1, i32 50271}
!382 = !{!383, !225, i64 0}
!383 = !{!"reg_attrs", !225, i64 0, !384, i64 8}
!384 = !{!"long", !217, i64 0}
!385 = !{!"branch_weights", i32 555178, i32 95865}
!386 = !{!"branch_weights", i32 -314638277, i32 -1993211906, i32 196587, i32 196587, i32 196587}
!387 = !{!"branch_weights", i32 35122, i32 1}
!388 = distinct !{!388, !223}
!389 = !{!"branch_weights", i32 0, i32 720503}
!390 = distinct !{!390, !223}
!391 = !{!"function_entry_count", i64 7326284}
!392 = !{!393, !225, i64 1200}
!393 = !{!"gcc_target", !394, i64 0, !396, i64 368, !397, i64 664, !216, i64 744, !225, i64 752, !225, i64 760, !225, i64 768, !225, i64 776, !225, i64 784, !225, i64 792, !225, i64 800, !225, i64 808, !225, i64 816, !225, i64 824, !225, i64 832, !225, i64 840, !225, i64 848, !225, i64 856, !225, i64 864, !225, i64 872, !225, i64 880, !225, i64 888, !225, i64 896, !225, i64 904, !225, i64 912, !225, i64 920, !225, i64 928, !225, i64 936, !225, i64 944, !225, i64 952, !225, i64 960, !225, i64 968, !225, i64 976, !225, i64 984, !225, i64 992, !225, i64 1000, !225, i64 1008, !225, i64 1016, !225, i64 1024, !225, i64 1032, !225, i64 1040, !225, i64 1048, !225, i64 1056, !384, i64 1064, !384, i64 1072, !225, i64 1080, !225, i64 1088, !225, i64 1096, !225, i64 1104, !225, i64 1112, !225, i64 1120, !225, i64 1128, !225, i64 1136, !225, i64 1144, !225, i64 1152, !225, i64 1160, !225, i64 1168, !398, i64 1176, !225, i64 1232, !225, i64 1240, !225, i64 1248, !225, i64 1256, !225, i64 1264, !225, i64 1272, !225, i64 1280, !225, i64 1288, !225, i64 1296, !225, i64 1304, !225, i64 1312, !225, i64 1320, !225, i64 1328, !225, i64 1336, !225, i64 1344, !225, i64 1352, !225, i64 1360, !225, i64 1368, !225, i64 1376, !225, i64 1384, !225, i64 1392, !225, i64 1400, !225, i64 1408, !225, i64 1416, !225, i64 1424, !225, i64 1432, !225, i64 1440, !225, i64 1448, !225, i64 1456, !384, i64 1464, !399, i64 1472, !225, i64 1664, !225, i64 1672, !225, i64 1680, !225, i64 1688, !225, i64 1696, !225, i64 1704, !225, i64 1712, !225, i64 1720, !225, i64 1728, !225, i64 1736, !225, i64 1744, !225, i64 1752, !225, i64 1760, !225, i64 1768, !225, i64 1776, !400, i64 1784, !401, i64 1792, !402, i64 1896, !403, i64 1968, !225, i64 2016, !217, i64 2024, !217, i64 2025, !217, i64 2026, !217, i64 2027, !217, i64 2028, !217, i64 2029, !217, i64 2030, !217, i64 2031, !217, i64 2032, !217, i64 2033, !217, i64 2034, !217, i64 2035}
!394 = !{!"asm_out", !225, i64 0, !225, i64 8, !225, i64 16, !395, i64 24, !395, i64 56, !225, i64 88, !225, i64 96, !225, i64 104, !225, i64 112, !225, i64 120, !225, i64 128, !225, i64 136, !225, i64 144, !225, i64 152, !225, i64 160, !225, i64 168, !225, i64 176, !225, i64 184, !225, i64 192, !225, i64 200, !225, i64 208, !225, i64 216, !225, i64 224, !225, i64 232, !225, i64 240, !225, i64 248, !225, i64 256, !225, i64 264, !225, i64 272, !225, i64 280, !225, i64 288, !225, i64 296, !225, i64 304, !225, i64 312, !225, i64 320, !225, i64 328, !225, i64 336, !225, i64 344, !225, i64 352, !225, i64 360}
!395 = !{!"asm_int_op", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24}
!396 = !{!"sched", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !225, i64 64, !225, i64 72, !225, i64 80, !225, i64 88, !225, i64 96, !225, i64 104, !225, i64 112, !225, i64 120, !225, i64 128, !225, i64 136, !225, i64 144, !225, i64 152, !225, i64 160, !225, i64 168, !225, i64 176, !225, i64 184, !225, i64 192, !225, i64 200, !225, i64 208, !225, i64 216, !225, i64 224, !225, i64 232, !225, i64 240, !225, i64 248, !225, i64 256, !225, i64 264, !225, i64 272, !225, i64 280, !225, i64 288}
!397 = !{!"vectorize", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !225, i64 64, !225, i64 72}
!398 = !{!"addr_space", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48}
!399 = !{!"calls", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !225, i64 64, !225, i64 72, !225, i64 80, !225, i64 88, !225, i64 96, !225, i64 104, !225, i64 112, !225, i64 120, !225, i64 128, !225, i64 136, !225, i64 144, !225, i64 152, !225, i64 160, !225, i64 168, !225, i64 176, !225, i64 184}
!400 = !{!"c", !225, i64 0}
!401 = !{!"cxx", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !225, i64 64, !225, i64 72, !225, i64 80, !225, i64 88, !225, i64 96}
!402 = !{!"emutls", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !217, i64 64, !217, i64 65}
!403 = !{!"target_option_hooks", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40}
!404 = !{!"function_entry_count", i64 4713228}
!405 = !{!"branch_weights", i32 621301, i32 4091928}
!406 = !{!"branch_weights", i32 593962, i32 27340}
!407 = !{!"branch_weights", i32 2, i32 621300}
!408 = !{!"branch_weights", i32 2517770, i32 -1618896276}
!409 = !{!"branch_weights", i32 4679, i32 1}
!410 = !{!"branch_weights", i32 0, i32 621301}
!411 = distinct !{!411, !223}
!412 = !{!"branch_weights", i32 242102610, i32 1905381038}
!413 = !{!"branch_weights", i32 -24880992, i32 3873}
!414 = !{!"function_entry_count", i64 4693018}
!415 = !{!"branch_weights", i32 53773, i32 4639247}
!416 = !{!"function_entry_count", i64 64081}
!417 = !{!"branch_weights", i32 64081, i32 1}
!418 = !{!"branch_weights", i32 1, i32 99375}
!419 = !{!"branch_weights", i32 35294, i32 64081}
!420 = distinct !{!420, !223}
!421 = !{!"function_entry_count", i64 1157922}
!422 = !{!"function_entry_count", i64 160882}
!423 = !{!"recog.c:validate_replace_rtx_1"}
!424 = !{!"branch_weights", i32 1, i32 160883}
!425 = !{!"branch_weights", i32 67900, i32 92984}
!426 = !{!"branch_weights", i32 28430, i32 132454}
!427 = !{!"branch_weights", i32 1566893056, i32 -618629177}
!428 = !{!"branch_weights", i32 27912, i32 11673}
!429 = !{!"branch_weights", i32 1, i32 27912}
!430 = !{!"branch_weights", i32 1104868608, i32 -156604729}
!431 = !{!"branch_weights", i32 27912, i32 1}
!432 = !{!"branch_weights", i32 865, i32 131590}
!433 = !{!"branch_weights", i32 864, i32 1}
!434 = !{!"branch_weights", i32 865, i32 865}
!435 = !{!"branch_weights", i32 1, i32 865}
!436 = !{!"branch_weights", i32 865, i32 864}
!437 = distinct !{!437, !223}
!438 = !{!"branch_weights", i32 1, i32 131589}
!439 = !{!"branch_weights", i32 -1160072734, i32 -1707204014, i32 19795}
!440 = distinct !{!440, !223}
!441 = !{!"branch_weights", i32 157498, i32 131589}
!442 = distinct !{!442, !223}
!443 = !{!"branch_weights", i32 79899, i32 52556}
!444 = !{!"branch_weights", i32 51692, i32 865}
!445 = !{!"branch_weights", i32 7426, i32 44267}
!446 = !{!"branch_weights", i32 1973, i32 50584}
!447 = !{!"function_entry_count", i64 25628}
!448 = !{!"function_entry_count", i64 1589}
!449 = distinct !{!449, !223}
!450 = !{!"function_entry_count", i64 1214}
!451 = !{!452, !225, i64 0}
!452 = !{!"validate_replace_src_data", !225, i64 0, !225, i64 8, !225, i64 16}
!453 = !{!452, !225, i64 8}
!454 = !{!452, !225, i64 16}
!455 = !{!"recog.c:validate_replace_src_1"}
!456 = distinct !{!456, !223}
!457 = !{!"function_entry_count", i64 14568518}
!458 = !{!"branch_weights", i32 7291947, i32 7276573}
!459 = !{!"branch_weights", i32 503576551, i32 -1489166350}
!460 = !{!"branch_weights", i32 4433685, i32 1}
!461 = !{!"branch_weights", i32 199520580, i32 -781731143}
!462 = !{!"branch_weights", i32 782901, i32 1}
!463 = !{!"branch_weights", i32 2274724, i32 12293796}
!464 = !{!"branch_weights", i32 -2124027579, i32 954}
!465 = !{!"branch_weights", i32 2274724, i32 1}
!466 = !{!"branch_weights", i32 11009572, i32 1284225}
!467 = !{!"branch_weights", i32 13364, i32 10996209}
!468 = !{!"branch_weights", i32 13364, i32 178609861}
!469 = !{!"branch_weights", i32 13364, i32 1}
!470 = !{!"branch_weights", i32 26729, i32 178596496}
!471 = !{!"branch_weights", i32 173102599, i32 1740310627, i32 -1610430323}
!472 = !{!"branch_weights", i32 2148885, i32 2018207}
!473 = !{!"branch_weights", i32 -2119931476, i32 338}
!474 = !{!"branch_weights", i32 7945, i32 6420053}
!475 = !{!"function_entry_count", i64 22088779}
!476 = !{!"recog.c:rhs_regno"}
!477 = !{!"function_entry_count", i64 177590}
!478 = !{!"function_entry_count", i64 8129721}
!479 = !{!"branch_weights", i32 145977479, i32 -729685538}
!480 = !{!"branch_weights", i32 15167, i32 7794785}
!481 = !{!"branch_weights", i32 15167, i32 230053057}
!482 = !{!"branch_weights", i32 15167, i32 1}
!483 = !{!"branch_weights", i32 1, i32 15167}
!484 = !{!"branch_weights", i32 30335, i32 230037889}
!485 = !{!"branch_weights", i32 5453274, i32 2356678}
!486 = !{!"branch_weights", i32 2015459, i32 3437816}
!487 = !{!"function_entry_count", i64 15482}
!488 = !{!"branch_weights", i32 15483, i32 1}
!489 = !{!"branch_weights", i32 15483, i32 15484, i32 239723289}
!490 = !{!"function_entry_count", i64 947319}
!491 = !{!"branch_weights", i32 993046553, i32 -73085754}
!492 = !{!"branch_weights", i32 360787, i32 1}
!493 = !{!"branch_weights", i32 517465451, i32 -560959713}
!494 = !{!"branch_weights", i32 115303, i32 1}
!495 = !{!"branch_weights", i32 301669, i32 645652}
!496 = !{!"branch_weights", i32 -470072296, i32 12678}
!497 = !{!"branch_weights", i32 301669, i32 1}
!498 = !{!"function_entry_count", i64 285199}
!499 = !{!"branch_weights", i32 228099, i32 57102}
!500 = !{!"branch_weights", i32 138864, i32 89236}
!501 = !{!"branch_weights", i32 89236, i32 1}
!502 = !{!"function_entry_count", i64 6451538}
!503 = !{!"branch_weights", i32 1696494, i32 4755046}
!504 = !{!"function_entry_count", i64 55856}
!505 = !{!"branch_weights", i32 10523, i32 45335}
!506 = !{!"branch_weights", i32 1420605, i32 109333971}
!507 = !{!"branch_weights", i32 271, i32 1}
!508 = !{!"branch_weights", i32 135, i32 1}
!509 = !{!"branch_weights", i32 10523, i32 1}
!510 = !{!"branch_weights", i32 1672, i32 75845456}
!511 = !{!"branch_weights", i32 15320, i32 30016}
!512 = !{!"branch_weights", i32 15320, i32 234717721}
!513 = !{!"branch_weights", i32 25052, i32 20284}
!514 = !{!"branch_weights", i32 22767, i32 2286}
!515 = !{!"function_entry_count", i64 6379557}
!516 = !{!"branch_weights", i32 1357453, i32 5022106}
!517 = !{!"branch_weights", i32 245437, i32 1112017}
!518 = !{!"branch_weights", i32 1112017, i32 1}
!519 = !{!"branch_weights", i32 1357449, i32 5}
!520 = !{!"branch_weights", i32 177, i32 1357273}
!521 = !{!"branch_weights", i32 1, i32 5}
!522 = !{!"function_entry_count", i64 12498816}
!523 = !{!"branch_weights", i32 1131598, i32 11367220}
!524 = !{!"branch_weights", i32 181754, i32 949845}
!525 = !{!"branch_weights", i32 10957383, i32 409838}
!526 = !{!"branch_weights", i32 406070, i32 3769}
!527 = !{!"branch_weights", i32 1, i32 11363452}
!528 = !{!"branch_weights", i32 4123040, i32 7240413}
!529 = !{!"function_entry_count", i64 2499927}
!530 = !{!"branch_weights", i32 1941882, i32 558047}
!531 = !{!"branch_weights", i32 558047, i32 1}
!532 = !{!"function_entry_count", i64 11728985}
!533 = !{!"branch_weights", i32 80373, i32 1, i32 10889186, i32 759429}
!534 = !{!"branch_weights", i32 1, i32 10889186}
!535 = !{!"branch_weights", i32 8899, i32 2966, i32 -2042112268}
!536 = !{!"branch_weights", i32 1, i32 759427}
!537 = !{!"function_entry_count", i64 48702892}
!538 = !{!"recog.c:insn_constraint_len"}
!539 = !{!"branch_weights", i32 789651, i32 47913243}
!540 = !{!"function_entry_count", i64 3}
!541 = !{!"branch_weights", i32 3, i32 5, i32 5, i32 2}
!542 = !{!"branch_weights", i32 1, i32 2}
!543 = !{!"function_entry_count", i64 148}
!544 = !{!"branch_weights", i32 1, i32 149}
!545 = !{ptr @memory_address_addr_space_p, ptr @strict_memory_address_addr_space_p}
!546 = !{!"function_entry_count", i64 191044}
!547 = !{!"function_entry_count", i64 21394658}
!548 = !{!"branch_weights", i32 14800454, i32 6594206}
!549 = !{!"branch_weights", i32 14800454, i32 1}
!550 = !{!"function_entry_count", i64 12496631}
!551 = !{!"branch_weights", i32 2358720, i32 10137913}
!552 = !{!"branch_weights", i32 1, i32 2358720}
!553 = !{!"function_entry_count", i64 1133702}
!554 = !{!"branch_weights", i32 616193, i32 517511}
!555 = !{!"function_entry_count", i64 13672670}
!556 = !{!"recog.c:recog_memoized"}
!557 = !{!"branch_weights", i32 1139089, i32 12533583}
!558 = !{!"function_entry_count", i64 1362967}
!559 = !{!"branch_weights", i32 1362967, i32 1}
!560 = !{!"branch_weights", i32 -2147483648, i32 0}
!561 = !{!"branch_weights", i32 1362967, i32 1508984}
!562 = distinct !{!562, !223}
!563 = !{!"branch_weights", i32 2871950, i32 1}
!564 = !{!565, !216, i64 8}
!565 = !{!"operand_alternative", !225, i64 0, !216, i64 8, !216, i64 12, !216, i64 16, !216, i64 20, !216, i64 24, !216, i64 24, !216, i64 24, !216, i64 24, !216, i64 24, !216, i64 24, !216, i64 24, !216, i64 24}
!566 = !{!565, !225, i64 0}
!567 = !{!565, !216, i64 16}
!568 = !{!565, !216, i64 20}
!569 = !{!"branch_weights", i32 1, i32 11558605}
!570 = !{!"branch_weights", i32 -337497584, i32 59414313, i32 347}
!571 = !{!"branch_weights", i32 1, i32 32106502}
!572 = !{!"branch_weights", i32 5616265, i32 20718903, i32 20718903, i32 435870, i32 14127, i32 4748248, i32 13415, i32 1, i32 1, i32 1, i32 1, i32 1, i32 770680, i32 43215, i32 522, i32 1, i32 1, i32 3513, i32 135, i32 23298, i32 1, i32 1, i32 1659953, i32 2379, i32 1, i32 46253, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2840123, i32 89, i32 1, i32 1, i32 1, i32 1, i32 3423, i32 401559, i32 4095813}
!573 = !{!565, !216, i64 12}
!574 = !{!"branch_weights", i32 8686655, i32 2871950}
!575 = distinct !{!575, !223}
!576 = !{!"branch_weights", i32 1508984, i32 1362967}
!577 = distinct !{!577, !223}
!578 = !{!"recog.c:skip_alternative"}
!579 = distinct !{!579, !223}
!580 = !{!"function_entry_count", i64 6504908}
!581 = !{!"branch_weights", i32 -709682488, i32 746350799}
!582 = !{!384, !384, i64 0}
!583 = !{!"function_entry_count", i64 5384099}
!584 = !{!"recog.c:in_hard_reg_set_p"}
!585 = !{!"branch_weights", i32 1132, i32 5382969}
!586 = !{!"branch_weights", i32 153, i32 5382927}
!587 = !{!"branch_weights", i32 43, i32 111}
!588 = distinct !{!588, !223}
!589 = !{!590, !225, i64 8}
!590 = !{!"function", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !225, i64 48, !225, i64 56, !225, i64 64, !225, i64 72, !225, i64 80, !225, i64 88, !225, i64 96, !216, i64 104, !216, i64 108, !216, i64 112, !216, i64 116, !216, i64 120, !216, i64 124, !225, i64 128, !216, i64 136, !216, i64 137, !216, i64 138, !216, i64 138, !216, i64 138, !216, i64 138, !216, i64 138, !216, i64 138, !216, i64 138, !216, i64 139, !216, i64 139, !216, i64 139, !216, i64 139, !216, i64 139, !216, i64 139, !216, i64 139}
!591 = !{!592, !216, i64 32}
!592 = !{!"control_flow_graph", !225, i64 0, !225, i64 8, !225, i64 16, !216, i64 24, !216, i64 28, !216, i64 32, !225, i64 40, !216, i64 48, !217, i64 52, !217, i64 60, !216, i64 68, !216, i64 72}
!593 = !{!592, !225, i64 8}
!594 = !{!595, !225, i64 48}
!595 = !{!"basic_block_def", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !217, i64 32, !225, i64 48, !225, i64 56, !217, i64 64, !384, i64 72, !216, i64 80, !216, i64 84, !216, i64 88, !216, i64 92, !216, i64 96}
!596 = !{!592, !225, i64 0}
!597 = !{!"branch_weights", i32 1, i32 229}
!598 = !{!"branch_weights", i32 229, i32 996445}
!599 = distinct !{!599, !223}
!600 = !{!601, !225, i64 0}
!601 = !{!"rtl_bb_info", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !216, i64 32}
!602 = !{!601, !225, i64 8}
!603 = !{!"branch_weights", i32 -95878777, i32 2074298953}
!604 = !{!"branch_weights", i32 1708880, i32 1}
!605 = !{!"branch_weights", i32 1757669, i32 1}
!606 = !{!"branch_weights", i32 1752825, i32 12179}
!607 = !{!595, !216, i64 80}
!608 = !{!"branch_weights", i32 498337, i32 2138558}
!609 = distinct !{!609, !223}
!610 = !{!"branch_weights", i32 1069052995, i32 1078430653}
!611 = !{!612, !225, i64 0}
!612 = !{!"simple_bitmap_def", !225, i64 0, !216, i64 8, !216, i64 12, !217, i64 16}
!613 = !{!"function_entry_count", i64 1765002}
!614 = !{!"recog.c:split_insn"}
!615 = !{!"branch_weights", i32 -2069087524, i32 91351}
!616 = !{!"branch_weights", i32 2445, i32 1}
!617 = !{!"branch_weights", i32 215700593, i32 1931783055}
!618 = !{!"branch_weights", i32 12030, i32 1}
!619 = !{!"branch_weights", i32 1060952881, i32 1086530767}
!620 = !{!"branch_weights", i32 150, i32 12030}
!621 = !{!"branch_weights", i32 1, i32 12030}
!622 = !{!"branch_weights", i32 33528180, i32 17640000}
!623 = !{!"branch_weights", i32 43911, i32 1}
!624 = !{!"branch_weights", i32 4200, i32 1289}
!625 = !{!"function_entry_count", i64 12178}
!626 = !{!"recog.c:SET_BIT"}
!627 = !{!"branch_weights", i32 12179, i32 1}
!628 = distinct !{!628, !223}
!629 = !{!"function_entry_count", i64 117924}
!630 = !{!"branch_weights", i32 1, i32 117925}
!631 = !{!"branch_weights", i32 2143, i32 115783}
!632 = !{!633, !225, i64 0}
!633 = !{!"peep2_insn_data", !225, i64 0, !225, i64 8}
!634 = !{!"function_entry_count", i64 2962}
!635 = !{!"branch_weights", i32 2963, i32 1}
!636 = !{!"branch_weights", i32 1, i32 2963}
!637 = !{!633, !225, i64 8}
!638 = !{!"function_entry_count", i64 16913}
!639 = !{!"branch_weights", i32 16914, i32 1}
!640 = !{!"branch_weights", i32 734, i32 16181}
!641 = !{!"branch_weights", i32 1, i32 16914}
!642 = !{!"branch_weights", i32 16914, i32 15483}
!643 = !{!"branch_weights", i32 15483, i32 1432}
!644 = distinct !{!644, !223}
!645 = !{!"function_entry_count", i64 568}
!646 = !{!"branch_weights", i32 569, i32 1}
!647 = !{!"branch_weights", i32 1, i32 569}
!648 = !{!"branch_weights", i32 568, i32 1}
!649 = !{!"branch_weights", i32 1, i32 0}
!650 = distinct !{!650, !223}
!651 = !{!"branch_weights", i32 149, i32 6427}
!652 = !{!"branch_weights", i32 1863, i32 4713}
!653 = !{!"branch_weights", i32 1863, i32 1}
!654 = !{!"branch_weights", i32 993, i32 871}
!655 = !{!"branch_weights", i32 1, i32 871}
!656 = !{!"branch_weights", i32 497, i32 375}
!657 = !{!"branch_weights", i32 12, i32 486}
!658 = !{!393, !225, i64 1752}
!659 = !{!"branch_weights", i32 1, i32 860}
!660 = !{!"branch_weights", i32 15751, i32 125}
!661 = !{!"branch_weights", i32 736, i32 569}
!662 = !{!"branch_weights", i32 418784, i32 124385}
!663 = distinct !{!663, !223}
!664 = !{!"branch_weights", i32 1, i32 6574}
!665 = distinct !{!665, !223}
!666 = !{!"recog.c:add_to_hard_reg_set"}
!667 = distinct !{!667, !223}
!668 = distinct !{!668, !223}
!669 = distinct !{!669, !223}
!670 = distinct !{!670, !223}
!671 = distinct !{!671, !223}
!672 = !{!"function_entry_count", i64 38}
!673 = !{!"recog.c:gate_handle_peephole2"}
!674 = !{!"branch_weights", i32 39, i32 1}
!675 = !{!"recog.c:rest_of_handle_peephole2"}
!676 = !{!"recog.c:rest_of_handle_split_all_insns"}
!677 = !{!"recog.c:rest_of_handle_split_after_reload"}
!678 = !{!"recog.c:gate_handle_split_before_regstack"}
!679 = !{!"recog.c:rest_of_handle_split_before_regstack"}
!680 = !{!"recog.c:gate_handle_split_before_sched2"}
!681 = !{!"recog.c:rest_of_handle_split_before_sched2"}
!682 = !{!"recog.c:gate_do_final_split"}
!683 = !{!"function_entry_count", i64 50583}
!684 = !{!"recog.c:simplify_while_replacing"}
!685 = !{!"branch_weights", i32 50083, i32 502}
!686 = !{!"branch_weights", i32 502, i32 1}
!687 = !{!"branch_weights", i32 39396, i32 100, i32 1, i32 48, i32 1, i32 224, i32 10820, i32 1}
!688 = !{!"branch_weights", i32 100, i32 10101}
!689 = !{!"branch_weights", i32 1, i32 48}
!690 = !{!"branch_weights", i32 52, i32 173}
!691 = !{!"branch_weights", i32 1, i32 52}
!692 = !{!"branch_weights", i32 1, i32 10820}
!693 = !{!"function_entry_count", i64 5383536}
!694 = !{!"recog.c:end_hard_regno"}
!695 = !{!"recog.c:peephole2_optimize"}
!696 = !{!"branch_weights", i32 39, i32 152}
!697 = distinct !{!697, !223}
!698 = !{!"branch_weights", i32 1, i32 155}
!699 = !{!"branch_weights", i32 155, i32 621709}
!700 = distinct !{!700, !223}
!701 = !{!702, !225, i64 24}
!702 = !{!"df_lr_bb_info", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24}
!703 = !{!"branch_weights", i32 1342827292, i32 -1514274066}
!704 = !{!"branch_weights", i32 48909, i32 509159}
!705 = !{!"branch_weights", i32 482458, i32 75610}
!706 = !{!"branch_weights", i32 482458, i32 1}
!707 = !{!"branch_weights", i32 557773, i32 295}
!708 = !{!"branch_weights", i32 2069769315, i32 77714333}
!709 = !{!"branch_weights", i32 1, i32 20184}
!710 = !{!"branch_weights", i32 597, i32 21933}
!711 = !{!"branch_weights", i32 1, i32 127}
!712 = !{!"branch_weights", i32 127, i32 2883585}
!713 = distinct !{!713, !223}
!714 = distinct !{!714, !223}
!715 = distinct !{!715, !223}
!716 = distinct !{!716, !223}
!717 = !{!"branch_weights", i32 20184, i32 2345}
!718 = !{!"branch_weights", i32 377, i32 19809}
!719 = !{!"branch_weights", i32 20185, i32 1}
!720 = !{!721, !225, i64 344}
!721 = !{!"rtl_data", !722, i64 0, !723, i64 40, !724, i64 96, !725, i64 112, !727, i64 208, !728, i64 248, !216, i64 312, !225, i64 320, !225, i64 328, !225, i64 336, !225, i64 344, !225, i64 352, !225, i64 360, !225, i64 368, !225, i64 376, !225, i64 384, !225, i64 392, !384, i64 400, !225, i64 408, !225, i64 416, !225, i64 424, !216, i64 432, !216, i64 436, !216, i64 440, !216, i64 444, !216, i64 448, !216, i64 452, !225, i64 456, !217, i64 464, !217, i64 465, !217, i64 466, !217, i64 467, !217, i64 468, !217, i64 469, !217, i64 470, !217, i64 471, !217, i64 472, !217, i64 473, !217, i64 474, !217, i64 475, !217, i64 476, !217, i64 477, !217, i64 478, !217, i64 479, !217, i64 480, !217, i64 481, !217, i64 482, !217, i64 483, !217, i64 484, !217, i64 485}
!722 = !{!"expr_status", !216, i64 0, !216, i64 4, !216, i64 8, !225, i64 16, !225, i64 24, !225, i64 32}
!723 = !{!"emit_status", !216, i64 0, !216, i64 4, !225, i64 8, !225, i64 16, !225, i64 24, !216, i64 32, !216, i64 36, !216, i64 40, !216, i64 44, !225, i64 48}
!724 = !{!"varasm_status", !225, i64 0, !216, i64 8}
!725 = !{!"incoming_args", !216, i64 0, !216, i64 4, !216, i64 8, !225, i64 16, !726, i64 24, !225, i64 88}
!726 = !{!"ix86_args", !216, i64 0, !216, i64 4, !216, i64 8, !216, i64 12, !216, i64 16, !216, i64 20, !216, i64 24, !216, i64 28, !216, i64 32, !216, i64 36, !216, i64 40, !216, i64 44, !216, i64 48, !216, i64 52, !216, i64 56, !216, i64 60}
!727 = !{!"function_subsections", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32}
!728 = !{!"rtl_eh", !225, i64 0, !225, i64 8, !225, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !217, i64 48}
!729 = !{i64 0, i64 4, !215, i64 8, i64 8, !224}
!730 = !{i64 0, i64 8, !224}
!731 = !{!732, !216, i64 48}
!732 = !{!"edge_def", !225, i64 0, !225, i64 8, !217, i64 16, !225, i64 24, !225, i64 32, !216, i64 40, !216, i64 44, !216, i64 48, !216, i64 52, !384, i64 56}
!733 = distinct !{!733, !223}
!734 = !{!732, !225, i64 0}
!735 = !{!732, !225, i64 8}
!736 = !{!732, !216, i64 52}
!737 = distinct !{!737, !223}
!738 = !{!393, !225, i64 1000}
!739 = distinct !{!739, !223, !740, !741}
!740 = !{!"llvm.loop.isvectorized", i32 1}
!741 = !{!"llvm.loop.unroll.runtime.disable"}
!742 = !{!"branch_weights", i32 350, i32 19836}
!743 = !{!"branch_weights", i32 184783, i32 1}
!744 = !{!"branch_weights", i32 726, i32 22372}
!745 = !{!"branch_weights", i32 19506, i32 3592}
!746 = !{!"branch_weights", i32 569, i32 18938}
!747 = !{!"branch_weights", i32 20185, i32 2913}
!748 = distinct !{!748, !223}
!749 = !{!"branch_weights", i32 1, i32 23097}
!750 = !{!"branch_weights", i32 20184, i32 2913}
!751 = distinct !{!751, !223}
!752 = !{!"branch_weights", i32 155466, i32 672099}
!753 = distinct !{!753, !223}
!754 = !{!"function_entry_count", i64 155465}
!755 = !{!"recog.c:df_lr_get_bb_info"}
!756 = !{!757, !216, i64 16}
!757 = !{!"dataflow", !225, i64 0, !225, i64 8, !216, i64 16, !225, i64 24, !225, i64 32, !225, i64 40, !216, i64 48, !217, i64 52, !217, i64 53, !217, i64 54}
!758 = !{!"branch_weights", i32 155466, i32 1}
!759 = !{!757, !225, i64 8}
!760 = !{!"function_entry_count", i64 155759}
!761 = !{!"recog.c:peep2_reinit_state"}
!762 = !{!"branch_weights", i32 155760, i32 467277}
!763 = distinct !{!763, !223}
!764 = !{!"recog.c:ei_start_1"}
!765 = !{!"recog.c:ei_cond"}
!766 = !{!"recog.c:ei_next"}
!767 = !{!768, !216, i64 0}
!768 = !{!"", !216, i64 0, !225, i64 8}
!769 = !{!"recog.c:ei_end_p"}
!770 = !{!"recog.c:ei_edge"}
!771 = !{!"recog.c:VEC_edge_base_length"}
!772 = !{!773, !216, i64 0}
!773 = !{!"VEC_edge_base", !216, i64 0, !216, i64 4, !217, i64 8}
!774 = !{!"recog.c:ei_container"}
!775 = !{!"recog.c:VEC_edge_base_index"}

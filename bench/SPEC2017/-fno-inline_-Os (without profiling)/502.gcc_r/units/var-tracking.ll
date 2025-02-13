; ModuleID = 'var-tracking.c'
source_filename = "var-tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.micro_operation_def = type { i32, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.shared_hash_def = type { i32, ptr }
%struct.variable_tracking_info_def = type { ptr, %struct.dataflow_set_def, %struct.dataflow_set_def, ptr, i8, i8 }
%struct.dataflow_set_def = type { i64, [53 x ptr], ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.variable_def = type { ptr, i32, i8, i8, i8, [1 x %struct.variable_part_def] }
%struct.variable_part_def = type { ptr, ptr, i64 }
%struct.value_chain_def = type { ptr, ptr, i32 }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.count_use_info = type { ptr, ptr, ptr, i32, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.adjust_mem_data = type { i8, i32, i64, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.attrs_def = type { ptr, ptr, ptr, i64 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.location_chain_def = type { ptr, ptr, ptr, i32 }
%struct.VEC_micro_operation_base = type { i32, i32, [1 x %struct.micro_operation_def] }
%struct.reg_attrs = type { ptr, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.cselib_set = type { ptr, ptr, ptr, ptr }
%struct.dfset_merge = type { ptr, ptr, ptr, i32 }
%struct.dfset_post_merge = type { ptr, ptr }
%struct.variable_union_info = type { ptr, i32, i32 }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.emit_note_data_def = type { ptr, i32, ptr }
%struct.VEC_variable_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.expand_loc_callback_data = type { ptr, i8, i8 }

@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"vartrack\00", align 1
@pass_variable_tracking = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_handle_var_tracking, ptr @variable_tracking_main, ptr null, ptr null, i32 0, i32 167, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"var-tracking.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"attrs_def pool\00", align 1
@attrs_pool = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"variable_def pool\00", align 1
@var_pool = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"location_chain_def pool\00", align 1
@loc_chain_pool = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"shared_hash_def pool\00", align 1
@shared_hash_pool = internal unnamed_addr global ptr null, align 8
@empty_shared_hash = internal unnamed_addr global ptr null, align 8
@changed_variables = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"value_chain_def pool\00", align 1
@value_chain_pool = internal unnamed_addr global ptr null, align 8
@value_chains = internal unnamed_addr global ptr null, align 8
@scratch_regs = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"small variable_def pool\00", align 1
@valvar_pool = internal unnamed_addr global ptr null, align 8
@preserved_values = internal global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@hard_frame_pointer_adjustment = internal unnamed_addr global i64 -1, align 8
@cselib_record_sets_hook = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [17 x i8] c"first value: %i\0A\00", align 1
@cselib_hook_called = internal unnamed_addr global i1 false, align 1
@cfa_base_rtx = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_uninit = external local_unnamed_addr global i32, align 4
@emit_notes = internal unnamed_addr global i1 false, align 1
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@dst_can_be_shared = internal unnamed_addr global i1 false, align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"bb %i op %i insn %i %s \00", align 1
@reltable.log_op_type = internal unnamed_addr constant [10 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.log_op_type to i64)) to i32)], align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"MO_USE\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"MO_USE_NO_VAR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MO_VAL_USE\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MO_VAL_LOC\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"MO_VAL_SET\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"MO_SET\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"MO_COPY\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MO_CLOBBER\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"MO_CALL\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"MO_ADJUST\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@vui_vec = internal unnamed_addr global ptr null, align 8
@vui_allocated = internal unnamed_addr global i32 0, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [88 x i8] c"variable tracking size limit exceeded with -fvar-tracking-assignments, retrying without\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"variable tracking size limit exceeded\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"BB %i: in %i (was %i), out %i (was %i), rem %i + %i, tsz %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"BB %i IN:\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"BB %i OUT:\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Created new value %u:%u for reg %i\0A\00", align 1
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%i: \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"head: \00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" is at \00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" stored in \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"\0A%i: \00", align 1
@dataflow_set_different_value = internal unnamed_addr global i1 false, align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"dataflow difference found: removal of:\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"dataflow difference found: old and new follow:\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"  name: %s\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"D.%u\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"  name: D#%u\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"  name: D.%u\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"    offset %ld\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"[uninit]\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Stack adjustment: %ld\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Reg %d:\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"+%ld\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Variables:\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"\0ABasic block %d:\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"IN:\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"OUT:\0A\00", align 1
@changed_variables_stack = internal unnamed_addr global ptr null, align 8
@changed_values_stack = internal global ptr null, align 8
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@flag_var_tracking = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_dv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) #24, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @debug_rtx(ptr noundef %0) #25
  br label %6

5:                                                ; preds = %1
  tail call void @debug_generic_stmt(ptr noundef %0) #25
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef nonnull %0) #24, !range !5
  %5 = xor i8 %4, 1
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i8 [ 0, %1 ], [ %5, %3 ]
  ret i8 %7
}

; Function Attrs: optsize
declare void @debug_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @debug_generic_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @variable_tracking_main() #0 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  tail call fastcc void @variable_tracking_main_1() #24
  store i32 %1, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @variable_tracking_main_1() unnamed_addr #0 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call fastcc void @delete_debug_insns() #24
  br label %49

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = icmp sgt i32 %9, 500
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = sdiv i32 %13, %9
  %15 = icmp sgt i32 %14, 19
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call fastcc void @vt_debug_insns_local() #24
  br label %49

17:                                               ; preds = %11, %4
  %18 = tail call zeroext i8 @mark_dfs_back_edges() #25
  %19 = tail call fastcc zeroext i8 @vt_initialize() #24, !range !5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @vt_finalize() #24
  tail call fastcc void @vt_debug_insns_local() #24
  br label %49

22:                                               ; preds = %17
  %23 = tail call fastcc zeroext i8 @vt_find_locations() #24, !range !5
  %24 = icmp eq i8 %23, 0
  %25 = load i32, ptr @flag_var_tracking_assignments, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  tail call fastcc void @vt_finalize() #24
  tail call fastcc void @delete_debug_insns() #24
  store i32 0, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %29 = tail call fastcc zeroext i8 @vt_initialize() #24, !range !5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8468, ptr noundef nonnull @.str.2) #25
  br label %32

32:                                               ; preds = %28, %31
  %33 = tail call fastcc zeroext i8 @vt_find_locations() #24, !range !5
  br label %34

34:                                               ; preds = %32, %22
  %35 = phi i8 [ %33, %32 ], [ %23, %22 ]
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call fastcc void @vt_finalize() #24
  tail call fastcc void @vt_debug_insns_local() #24
  br label %49

38:                                               ; preds = %34
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  tail call fastcc void @dump_dataflow_sets() #24
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @dump_flow_info(ptr noundef %46, i32 noundef %47) #25
  br label %48

48:                                               ; preds = %45, %41, %38
  tail call fastcc void @vt_emit_notes() #24
  tail call fastcc void @vt_finalize() #24
  tail call fastcc void @vt_debug_insns_local() #24
  br label %49

49:                                               ; preds = %48, %37, %21, %16, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_var_tracking() #4 {
  %1 = load i32, ptr @flag_var_tracking, align 4, !tbaa !6
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dv_is_decl_p(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp ne i64 %5, 1
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_debug_insns() unnamed_addr #0 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %49, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %49, label %13

13:                                               ; preds = %3, %40
  %14 = phi ptr [ %41, %40 ], [ %4, %3 ]
  %15 = phi ptr [ %43, %40 ], [ %9, %3 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %13, %36
  %21 = phi ptr [ %23, %36 ], [ %18, %13 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = load ptr, ptr %16, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %21, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %20
  %31 = load i32, ptr %21, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call ptr @delete_insn(ptr noundef nonnull %21) #25
  br label %36

36:                                               ; preds = %30, %34
  %37 = icmp eq ptr %23, null
  br i1 %37, label %38, label %20, !llvm.loop !26

38:                                               ; preds = %36, %20
  %39 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %13, %38
  %41 = phi ptr [ %39, %38 ], [ %14, %13 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !12
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %49, label %13, !llvm.loop !28

49:                                               ; preds = %40, %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vt_debug_insns_local() unnamed_addr #0 {
  tail call fastcc void @delete_debug_insns() #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vt_initialize() unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.micro_operation_def, align 8
  %4 = alloca %struct.micro_operation_def, align 8
  tail call void @alloc_aux_for_blocks(i32 noundef 920) #25
  %5 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 32, i64 noundef 1024) #25
  store ptr %5, ptr @attrs_pool, align 8, !tbaa !10
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 400, i64 noundef 64) #25
  store ptr %6, ptr @var_pool, align 8, !tbaa !10
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 32, i64 noundef 1024) #25
  store ptr %7, ptr @loc_chain_pool, align 8, !tbaa !10
  %8 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 16, i64 noundef 256) #25
  store ptr %8, ptr @shared_hash_pool, align 8, !tbaa !10
  %9 = tail call ptr @pool_alloc(ptr noundef %8) #25
  store ptr %9, ptr @empty_shared_hash, align 8, !tbaa !10
  store i32 1, ptr %9, align 8, !tbaa !29
  %10 = tail call ptr @htab_create(i64 noundef 1, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #25
  %11 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.shared_hash_def, ptr %11, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !31
  %13 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #25
  store ptr %13, ptr @changed_variables, align 8, !tbaa !10
  %14 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 24, i64 noundef 1024) #25
  store ptr %17, ptr @value_chain_pool, align 8, !tbaa !10
  %18 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @value_chain_htab_hash, ptr noundef nonnull @value_chain_htab_eq, ptr noundef null) #25
  store ptr %18, ptr @value_chains, align 8, !tbaa !10
  br label %19

19:                                               ; preds = %16, %0
  %20 = load ptr, ptr @cfun, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %37, %25 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %28, i64 0, i32 4
  store i8 0, ptr %29, align 8, !tbaa !33
  %30 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %28, i64 0, i32 5
  store i8 0, ptr %30, align 1, !tbaa !36
  %31 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %28, i64 0, i32 1
  tail call fastcc void @dataflow_set_init(ptr noundef nonnull %31) #24
  %32 = load ptr, ptr %27, align 8, !tbaa !32
  %33 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %32, i64 0, i32 2
  tail call fastcc void @dataflow_set_init(ptr noundef nonnull %33) #24
  %34 = load ptr, ptr %27, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 3
  store ptr null, ptr %35, align 8, !tbaa !37
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %25, !llvm.loop !38

39:                                               ; preds = %25, %19
  %40 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  tail call void @cselib_init(i32 noundef 3) #25
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  store ptr %43, ptr @scratch_regs, align 8, !tbaa !10
  %44 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 40, i64 noundef 256) #25
  store ptr %44, ptr @valvar_pool, align 8, !tbaa !10
  %45 = tail call fastcc ptr @VEC_rtx_heap_alloc(i32 noundef 256) #24
  store ptr %45, ptr @preserved_values, align 8, !tbaa !10
  br label %47

46:                                               ; preds = %39
  store ptr null, ptr @scratch_regs, align 8, !tbaa !10
  store ptr null, ptr @valvar_pool, align 8, !tbaa !10
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !39
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = tail call fastcc zeroext i8 @vt_stack_adjustments() #24
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %315, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !10
  %55 = tail call ptr @eliminate_regs(ptr noundef %54, i32 noundef 0, ptr noundef null) #25
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %101, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %55, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 49
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi ptr [ %63, %61 ], [ %55, %57 ]
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !10
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  tail call fastcc void @vt_init_cfa_base() #24
  br label %101

69:                                               ; preds = %47
  %70 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 44), align 8, !tbaa !48
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !10
  %74 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !49
  %75 = sext i32 %74 to i64
  %76 = tail call ptr @eliminate_regs(ptr noundef %73, i32 noundef 0, ptr noundef null) #25
  %77 = icmp eq ptr %76, %73
  br i1 %77, label %101, label %78

78:                                               ; preds = %72
  %79 = load i32, ptr %76, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 49
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %84 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !22
  %88 = sub nsw i64 %75, %87
  %89 = load ptr, ptr %83, align 8, !tbaa !22
  br label %90

90:                                               ; preds = %82, %78
  %91 = phi ptr [ %89, %82 ], [ %76, %78 ]
  %92 = phi i64 [ %88, %82 ], [ %75, %78 ]
  %93 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !10
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load ptr, ptr @cfun, align 8, !tbaa !10
  %97 = getelementptr inbounds %struct.function, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !12
  %99 = load ptr, ptr %98, align 8, !tbaa !17
  %100 = tail call fastcc ptr @single_succ(ptr noundef %99) #24
  br label %101

101:                                              ; preds = %64, %68, %53, %72, %95, %90, %69
  %102 = phi i64 [ -1, %69 ], [ %92, %95 ], [ %75, %72 ], [ -1, %90 ], [ -1, %53 ], [ -1, %68 ], [ -1, %64 ]
  %103 = phi ptr [ null, %69 ], [ %100, %95 ], [ null, %72 ], [ null, %90 ], [ null, %53 ], [ null, %68 ], [ null, %64 ]
  store i64 -1, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !50
  %104 = load ptr, ptr @cfun, align 8, !tbaa !10
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !12
  %107 = load ptr, ptr %106, align 8, !tbaa !17
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !18
  %110 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !21
  %112 = icmp eq ptr %109, %111
  br i1 %112, label %310, label %113

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.micro_operation_def, ptr %3, i64 0, i32 2
  %115 = getelementptr inbounds %struct.micro_operation_def, ptr %3, i64 0, i32 1
  %116 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 2
  %117 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 1
  %118 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  br label %119

119:                                              ; preds = %113, %299
  %120 = phi ptr [ %104, %113 ], [ %302, %299 ]
  %121 = phi i32 [ %118, %113 ], [ %301, %299 ]
  %122 = phi ptr [ %109, %113 ], [ %300, %299 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store i64 0, ptr %2, align 8, !tbaa !50
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  store ptr @add_with_sets, ptr @cselib_record_sets_hook, align 8, !tbaa !10
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %129 = and i32 %128, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = call i32 @cselib_get_next_uid() #25
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %125, ptr noundef nonnull @.str.9, i32 noundef %132) #24
  %134 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %135

135:                                              ; preds = %124, %127, %131, %119
  %136 = phi ptr [ %120, %124 ], [ %120, %127 ], [ %134, %131 ], [ %120, %119 ]
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !18
  %139 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !12
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !21
  %143 = icmp eq ptr %138, %142
  br i1 %143, label %168, label %144

144:                                              ; preds = %135, %159
  %145 = phi ptr [ %162, %159 ], [ %138, %135 ]
  %146 = phi ptr [ %161, %159 ], [ %137, %135 ]
  %147 = phi ptr [ %160, %159 ], [ %122, %135 ]
  %148 = call fastcc zeroext i8 @single_pred_p(ptr noundef %145) #24, !range !5
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %168, label %150

150:                                              ; preds = %144
  %151 = call ptr @find_edge(ptr noundef nonnull %147, ptr noundef %145) #25
  %152 = icmp eq ptr %151, null
  %153 = load ptr, ptr @cfun, align 8, !tbaa !10
  br i1 %152, label %168, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 7
  %156 = load i32, ptr %155, align 8, !tbaa !51
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr %146, align 8, !tbaa !18
  %161 = getelementptr inbounds %struct.basic_block_def, ptr %160, i64 0, i32 6
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  %163 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !12
  %165 = getelementptr inbounds %struct.control_flow_graph, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !21
  %167 = icmp eq ptr %162, %166
  br i1 %167, label %168, label %144

168:                                              ; preds = %150, %154, %159, %144, %135
  %169 = phi ptr [ %122, %135 ], [ %147, %150 ], [ %147, %154 ], [ %160, %159 ], [ %147, %144 ]
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = icmp eq ptr %122, %171
  br i1 %172, label %291, label %173

173:                                              ; preds = %168, %286
  %174 = phi ptr [ %288, %286 ], [ %122, %168 ]
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !32
  %177 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %176, i64 0, i32 2
  %178 = load i64, ptr %177, align 8, !tbaa !53
  %179 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %176, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !54
  store i64 %180, ptr %177, align 8, !tbaa !53
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 7
  %182 = load ptr, ptr %181, align 8, !tbaa !22
  %183 = load ptr, ptr %182, align 8, !tbaa !22
  %184 = getelementptr inbounds %struct.rtl_bb_info, ptr %182, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !25
  %186 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 2
  %187 = load ptr, ptr %186, align 8, !tbaa !22
  %188 = icmp eq ptr %183, %187
  br i1 %188, label %282, label %189

189:                                              ; preds = %173
  %190 = icmp eq ptr %174, %103
  br label %191

191:                                              ; preds = %189, %269
  %192 = phi ptr [ %183, %189 ], [ %271, %269 ]
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -7
  %196 = icmp ult i32 %195, 4
  br i1 %196, label %197, label %269

197:                                              ; preds = %191
  %198 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !39
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %197
  call fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef nonnull %192, ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %201 = load i64, ptr %1, align 8, !tbaa !50
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  store i32 9, ptr %3, align 8, !tbaa !55
  store i64 %201, ptr %114, align 8, !tbaa !22
  store ptr %192, ptr %115, align 8, !tbaa !57
  %204 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %208 = and i32 %207, 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !22
  call fastcc void @log_op_type(ptr noundef %212, ptr noundef nonnull %174, ptr noundef nonnull %192, i32 noundef 9, ptr noundef nonnull %204) #24
  br label %213

213:                                              ; preds = %210, %206, %203
  %214 = load ptr, ptr %175, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %214, ptr noundef nonnull %3) #24
  %215 = load ptr, ptr %175, align 8, !tbaa !32
  %216 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %215, i64 0, i32 2
  %217 = load i64, ptr %216, align 8, !tbaa !53
  %218 = add nsw i64 %217, %201
  store i64 %218, ptr %216, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  br label %219

219:                                              ; preds = %200, %213, %197
  store i1 false, ptr @cselib_hook_called, align 1
  call fastcc void @adjust_insn(ptr noundef nonnull %174, ptr noundef nonnull %192) #24
  %220 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %219
  call void @cselib_process_insn(ptr noundef nonnull %192) #25
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %224 = icmp eq ptr %223, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %227 = and i32 %226, 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = call i32 @print_rtl_single(ptr noundef nonnull %223, ptr noundef nonnull %192) #25
  %231 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @dump_cselib_table(ptr noundef %231) #25
  br label %232

232:                                              ; preds = %222, %225, %229, %219
  %233 = load i1, ptr @cselib_hook_called, align 1
  br i1 %233, label %235, label %234

234:                                              ; preds = %232
  call void @add_with_sets(ptr noundef nonnull %192, ptr noundef null, i32 noundef 0) #24
  br label %235

235:                                              ; preds = %234, %232
  call void @cancel_changes(i32 noundef 0) #25
  %236 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !39
  %237 = icmp eq i8 %236, 0
  %238 = load i64, ptr %2, align 8
  %239 = icmp ne i64 %238, 0
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %257

241:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  store i32 9, ptr %4, align 8, !tbaa !55
  store i64 %238, ptr %116, align 8, !tbaa !22
  store ptr %192, ptr %117, align 8, !tbaa !57
  %242 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %243 = icmp eq ptr %242, null
  br i1 %243, label %251, label %244

244:                                              ; preds = %241
  %245 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %246 = and i32 %245, 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !22
  call fastcc void @log_op_type(ptr noundef %250, ptr noundef nonnull %174, ptr noundef nonnull %192, i32 noundef 9, ptr noundef nonnull %242) #24
  br label %251

251:                                              ; preds = %248, %244, %241
  %252 = load ptr, ptr %175, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %252, ptr noundef nonnull %4) #24
  %253 = load ptr, ptr %175, align 8, !tbaa !32
  %254 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %253, i64 0, i32 2
  %255 = load i64, ptr %254, align 8, !tbaa !53
  %256 = add nsw i64 %255, %238
  store i64 %256, ptr %254, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %257

257:                                              ; preds = %251, %235
  %258 = load i64, ptr @hard_frame_pointer_adjustment, align 8
  %259 = icmp eq i64 %258, -1
  %260 = select i1 %190, i1 %259, i1 false
  br i1 %260, label %261, label %269

261:                                              ; preds = %257
  %262 = load i32, ptr %192, align 8
  %263 = and i32 %262, 1073741824
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = call fastcc zeroext i8 @fp_setter(ptr noundef nonnull %192) #24, !range !5
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  call fastcc void @vt_init_cfa_base() #24
  store i64 %102, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !50
  br label %269

269:                                              ; preds = %191, %268, %265, %261, %257
  %270 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1, i32 0, i32 0, i64 2
  %271 = load ptr, ptr %270, align 8, !tbaa !22
  %272 = load ptr, ptr %181, align 8, !tbaa !22
  %273 = getelementptr inbounds %struct.rtl_bb_info, ptr %272, i64 0, i32 1
  %274 = load ptr, ptr %273, align 8, !tbaa !25
  %275 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 2
  %276 = load ptr, ptr %275, align 8, !tbaa !22
  %277 = icmp eq ptr %271, %276
  br i1 %277, label %278, label %191, !llvm.loop !58

278:                                              ; preds = %269
  %279 = load ptr, ptr %175, align 8, !tbaa !32
  %280 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %279, i64 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !53
  br label %282

282:                                              ; preds = %278, %173
  %283 = phi i64 [ %281, %278 ], [ %180, %173 ]
  %284 = icmp eq i64 %178, %283
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8330, ptr noundef nonnull @.str.2) #25
  br label %286

286:                                              ; preds = %282, %285
  %287 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 6
  %288 = load ptr, ptr %287, align 8, !tbaa !18
  %289 = load ptr, ptr %170, align 8, !tbaa !18
  %290 = icmp eq ptr %288, %289
  br i1 %290, label %291, label %173, !llvm.loop !59

291:                                              ; preds = %286, %168
  %292 = phi ptr [ %122, %168 ], [ %288, %286 ]
  %293 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  call void @cselib_preserve_only_values() #25
  %296 = call i32 @cselib_get_next_uid() #25
  call void @cselib_reset_table(i32 noundef %296) #25
  store ptr null, ptr @cselib_record_sets_hook, align 8, !tbaa !10
  %297 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %298 = load ptr, ptr %170, align 8, !tbaa !18
  br label %299

299:                                              ; preds = %295, %291
  %300 = phi ptr [ %298, %295 ], [ %292, %291 ]
  %301 = phi i32 [ %297, %295 ], [ 0, %291 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #26
  %302 = load ptr, ptr @cfun, align 8, !tbaa !10
  %303 = getelementptr inbounds %struct.function, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !12
  %305 = getelementptr inbounds %struct.control_flow_graph, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !21
  %307 = icmp eq ptr %300, %306
  br i1 %307, label %308, label %119, !llvm.loop !60

308:                                              ; preds = %299
  %309 = load ptr, ptr %304, align 8, !tbaa !17
  br label %310

310:                                              ; preds = %308, %101
  %311 = phi ptr [ %107, %101 ], [ %309, %308 ]
  store i64 -1, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !50
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %311, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !32
  %314 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %313, i64 0, i32 5
  store i8 1, ptr %314, align 1, !tbaa !36
  call fastcc void @vt_add_function_parameters() #24
  store ptr null, ptr @cfa_base_rtx, align 8, !tbaa !10
  br label %315

315:                                              ; preds = %50, %310
  %316 = phi i8 [ 1, %310 ], [ 0, %50 ]
  ret i8 %316
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vt_finalize() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %13, label %15

10:                                               ; preds = %15
  %11 = load ptr, ptr %23, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %0, %10
  %14 = phi ptr [ %4, %0 ], [ %11, %10 ]
  br label %27

15:                                               ; preds = %0, %15
  %16 = phi ptr [ %20, %15 ], [ %6, %0 ]
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  tail call fastcc void @VEC_micro_operation_heap_free(ptr noundef %18) #24
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = load ptr, ptr @cfun, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %10, label %15, !llvm.loop !61

27:                                               ; preds = %13, %42
  %28 = phi ptr [ %44, %42 ], [ %14, %13 ]
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %30, i64 0, i32 1
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %31) #24
  %32 = load ptr, ptr %29, align 8, !tbaa !32
  %33 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %32, i64 0, i32 2
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %33) #24
  %34 = load ptr, ptr %29, align 8, !tbaa !32
  %35 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !37
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %36) #24
  %39 = load ptr, ptr %29, align 8, !tbaa !32
  %40 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  tail call void @free(ptr noundef %41) #24
  br label %42

42:                                               ; preds = %27, %38
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %27, !llvm.loop !62

46:                                               ; preds = %42, %10
  tail call void @free_aux_for_blocks() #25
  %47 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !10
  %48 = getelementptr inbounds %struct.shared_hash_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  tail call void @htab_delete(ptr noundef %49) #25
  %50 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  tail call void @htab_delete(ptr noundef %50) #25
  %51 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %51) #25
  %52 = load ptr, ptr @var_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %52) #25
  %53 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %53) #25
  %54 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %54) #25
  %55 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load ptr, ptr @value_chains, align 8, !tbaa !10
  tail call void @htab_delete(ptr noundef %58) #25
  %59 = load ptr, ptr @value_chain_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %59) #25
  %60 = load ptr, ptr @valvar_pool, align 8, !tbaa !10
  tail call void @free_alloc_pool(ptr noundef %60) #25
  tail call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull @preserved_values) #24
  tail call void @cselib_finish() #25
  %61 = load ptr, ptr @scratch_regs, align 8, !tbaa !10
  tail call void @bitmap_obstack_free(ptr noundef %61) #25
  store ptr null, ptr @scratch_regs, align 8, !tbaa !10
  br label %62

62:                                               ; preds = %57, %46
  %63 = load ptr, ptr @vui_vec, align 8, !tbaa !10
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %63) #24
  br label %66

66:                                               ; preds = %65, %62
  store ptr null, ptr @vui_vec, align 8, !tbaa !10
  store i32 0, ptr @vui_allocated, align 4, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vt_find_locations() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #26
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 116, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr @cfun, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = add nsw i32 %10, -2
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call ptr @xmalloc(i64 noundef %13) #25
  %15 = load ptr, ptr @cfun, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr @xmalloc(i64 noundef %21) #25
  %23 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %14, i8 noundef zeroext 0) #25
  %24 = load ptr, ptr @cfun, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !14
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %42

30:                                               ; preds = %0, %30
  %31 = phi i64 [ %37, %30 ], [ 0, %0 ]
  %32 = getelementptr inbounds i32, ptr %14, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %22, i64 %34
  %36 = trunc i64 %31 to i32
  store i32 %36, ptr %35, align 4, !tbaa !6
  %37 = add nuw nsw i64 %31, 1
  %38 = load i32, ptr %27, align 8, !tbaa !14
  %39 = add nsw i32 %38, -2
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %30, label %42, !llvm.loop !66

42:                                               ; preds = %30, %0
  tail call void @free(ptr noundef %14) #24
  %43 = tail call ptr @fibheap_new() #25
  %44 = tail call ptr @fibheap_new() #25
  %45 = load ptr, ptr @cfun, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !12
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !65
  %50 = tail call ptr @sbitmap_alloc(i32 noundef %49) #25
  %51 = load ptr, ptr @cfun, align 8, !tbaa !10
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !12
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !65
  %56 = tail call ptr @sbitmap_alloc(i32 noundef %55) #25
  %57 = load ptr, ptr @cfun, align 8, !tbaa !10
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !65
  %62 = tail call ptr @sbitmap_alloc(i32 noundef %61) #25
  tail call void @sbitmap_zero(ptr noundef %56) #25
  %63 = load ptr, ptr @cfun, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !12
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  %69 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !21
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %89, label %72

72:                                               ; preds = %42, %72
  %73 = phi ptr [ %82, %72 ], [ %68, %42 ]
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !67
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %22, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !6
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @fibheap_insert(ptr noundef %44, i64 noundef %79, ptr noundef %73) #25
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !18
  %83 = load ptr, ptr @cfun, align 8, !tbaa !10
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !12
  %86 = getelementptr inbounds %struct.control_flow_graph, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !21
  %88 = icmp eq ptr %82, %87
  br i1 %88, label %89, label %72, !llvm.loop !68

89:                                               ; preds = %72, %42
  tail call void @sbitmap_ones(ptr noundef %62) #25
  %90 = getelementptr inbounds i8, ptr %2, i64 8
  %91 = icmp ne i32 %5, 0
  %92 = tail call i32 @fibheap_empty(ptr noundef %44) #25
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %364

94:                                               ; preds = %89, %360
  %95 = phi i32 [ %361, %360 ], [ 0, %89 ]
  %96 = phi ptr [ %97, %360 ], [ %62, %89 ]
  %97 = phi ptr [ %96, %360 ], [ %56, %89 ]
  %98 = phi ptr [ %99, %360 ], [ %44, %89 ]
  %99 = phi ptr [ %98, %360 ], [ %43, %89 ]
  tail call void @sbitmap_zero(ptr noundef %50) #25
  %100 = tail call i32 @fibheap_empty(ptr noundef %98) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %360

102:                                              ; preds = %94, %356
  %103 = phi i32 [ %357, %356 ], [ %95, %94 ]
  %104 = tail call ptr @fibheap_extract_min(ptr noundef %98) #25
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !67
  tail call fastcc void @RESET_BIT(ptr noundef %96, i32 noundef %106) #24
  %107 = load i32, ptr %105, align 8, !tbaa !67
  %108 = lshr i32 %107, 6
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds %struct.simple_bitmap_def, ptr %50, i64 0, i32 3, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !50
  %112 = and i32 %107, 63
  %113 = zext nneg i32 %112 to i64
  %114 = shl nuw i64 1, %113
  %115 = and i64 %114, %111
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %356

117:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  tail call fastcc void @SET_BIT(ptr noundef nonnull %50, i32 noundef %107) #24
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !32
  %120 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %119, i64 0, i32 1, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !69
  %122 = icmp eq ptr %121, null
  br i1 %122, label %146, label %123

123:                                              ; preds = %117
  %124 = tail call fastcc ptr @shared_hash_htab(ptr noundef nonnull %121) #24
  %125 = tail call i64 @htab_size(ptr noundef %124) #25
  %126 = load ptr, ptr %118, align 8, !tbaa !32
  %127 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %126, i64 0, i32 2, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !70
  %129 = tail call fastcc ptr @shared_hash_htab(ptr noundef %128) #24
  %130 = tail call i64 @htab_size(ptr noundef %129) #25
  %131 = add i64 %130, %125
  %132 = trunc i64 %131 to i32
  %133 = sub i32 %103, %132
  %134 = load ptr, ptr %118, align 8, !tbaa !32
  %135 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %134, i64 0, i32 1, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !69
  %137 = tail call fastcc ptr @shared_hash_htab(ptr noundef %136) #24
  %138 = tail call i64 @htab_elements(ptr noundef %137) #25
  %139 = trunc i64 %138 to i32
  %140 = load ptr, ptr %118, align 8, !tbaa !32
  %141 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %140, i64 0, i32 2, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !70
  %143 = tail call fastcc ptr @shared_hash_htab(ptr noundef %142) #24
  %144 = tail call i64 @htab_elements(ptr noundef %143) #25
  %145 = trunc i64 %144 to i32
  br label %146

146:                                              ; preds = %117, %123
  %147 = phi i32 [ %145, %123 ], [ 0, %117 ]
  %148 = phi i32 [ %139, %123 ], [ 0, %117 ]
  %149 = phi i32 [ %133, %123 ], [ %103, %117 ]
  %150 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %151 = icmp eq i32 %150, 0
  %152 = load ptr, ptr %118, align 8, !tbaa !32
  %153 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %152, i64 0, i32 1
  tail call fastcc void @dataflow_set_clear(ptr noundef nonnull %153) #24
  br i1 %151, label %213, label %154

154:                                              ; preds = %146
  store i1 true, ptr @dst_can_be_shared, align 1
  %155 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %104) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !71
  store ptr %155, ptr %90, align 8, !tbaa.struct !72
  %156 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %155, ptr noundef nonnull %1) #24, !range !5
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %210, label %158

158:                                              ; preds = %154, %190
  %159 = phi i8 [ %193, %190 ], [ 0, %154 ]
  %160 = phi i8 [ %192, %190 ], [ 1, %154 ]
  %161 = phi ptr [ %191, %190 ], [ null, %154 ]
  %162 = load ptr, ptr %1, align 8, !tbaa !10
  %163 = load ptr, ptr %162, align 8, !tbaa !73
  %164 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !32
  %166 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %165, i64 0, i32 5
  %167 = load i8, ptr %166, align 1, !tbaa !36
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %158
  %170 = load i32, ptr %105, align 8, !tbaa !67
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %22, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !6
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !67
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %22, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !6
  %179 = icmp sgt i32 %173, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6014, ptr noundef nonnull @.str.2) #25
  br label %190

181:                                              ; preds = %158
  %182 = icmp eq i8 %160, 0
  %183 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %165, i64 0, i32 2
  br i1 %182, label %189, label %184

184:                                              ; preds = %181
  tail call fastcc void @dataflow_set_copy(ptr noundef nonnull %153, ptr noundef nonnull %183) #24
  %185 = load ptr, ptr %162, align 8, !tbaa !73
  %186 = getelementptr inbounds %struct.basic_block_def, ptr %185, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !32
  %188 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %187, i64 0, i32 2
  br label %190

189:                                              ; preds = %181
  tail call fastcc void @dataflow_set_merge(ptr noundef nonnull %153, ptr noundef nonnull %183) #24
  br label %190

190:                                              ; preds = %180, %169, %189, %184
  %191 = phi ptr [ %188, %184 ], [ %161, %189 ], [ %161, %169 ], [ %161, %180 ]
  %192 = phi i8 [ 0, %184 ], [ 0, %189 ], [ %160, %169 ], [ %160, %180 ]
  %193 = phi i8 [ %159, %184 ], [ 1, %189 ], [ %159, %169 ], [ %159, %180 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %194 = load i32, ptr %2, align 8
  %195 = load ptr, ptr %90, align 8
  %196 = call fastcc zeroext i8 @ei_cond(i32 %194, ptr %195, ptr noundef nonnull %1) #24, !range !5
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %158, !llvm.loop !74

198:                                              ; preds = %190
  %199 = icmp eq i8 %193, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %198
  %201 = load ptr, ptr %118, align 8, !tbaa !32
  %202 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %201, i64 0, i32 3
  tail call fastcc void @dataflow_post_merge_adjust(ptr noundef nonnull %153, ptr noundef nonnull %202) #24
  %203 = load i1, ptr @dst_can_be_shared, align 1
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %152, i64 0, i32 1, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !75
  tail call fastcc void @shared_hash_destroy(ptr noundef %206) #24
  %207 = getelementptr inbounds %struct.dataflow_set_def, ptr %191, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !75
  %209 = tail call fastcc ptr @shared_hash_copy(ptr noundef %208) #24
  store ptr %208, ptr %205, align 8, !tbaa !75
  br label %210

210:                                              ; preds = %154, %200, %204, %198
  %211 = load ptr, ptr %118, align 8, !tbaa !32
  %212 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %211, i64 0, i32 5
  store i8 1, ptr %212, align 1, !tbaa !36
  br label %229

213:                                              ; preds = %146
  %214 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %104) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !71
  store ptr %214, ptr %90, align 8, !tbaa.struct !72
  %215 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %214, ptr noundef nonnull %1) #24, !range !5
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %213, %217
  %218 = load ptr, ptr %118, align 8, !tbaa !32
  %219 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %1, align 8, !tbaa !10
  %221 = load ptr, ptr %220, align 8, !tbaa !73
  %222 = getelementptr inbounds %struct.basic_block_def, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !32
  %224 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %223, i64 0, i32 2
  tail call fastcc void @dataflow_set_union(ptr noundef nonnull %219, ptr noundef nonnull %224) #24
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %225 = load i32, ptr %2, align 8
  %226 = load ptr, ptr %90, align 8
  %227 = call fastcc zeroext i8 @ei_cond(i32 %225, ptr %226, ptr noundef nonnull %1) #24, !range !5
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %217, !llvm.loop !76

229:                                              ; preds = %217, %213, %210
  %230 = tail call fastcc zeroext i8 @compute_bb_dataflow(ptr noundef nonnull %104) #24, !range !5
  %231 = load ptr, ptr %118, align 8, !tbaa !32
  %232 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %231, i64 0, i32 1, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !69
  %234 = tail call fastcc ptr @shared_hash_htab(ptr noundef %233) #24
  %235 = tail call i64 @htab_size(ptr noundef %234) #25
  %236 = load ptr, ptr %118, align 8, !tbaa !32
  %237 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 2, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !70
  %239 = tail call fastcc ptr @shared_hash_htab(ptr noundef %238) #24
  %240 = tail call i64 @htab_size(ptr noundef %239) #25
  %241 = add i64 %240, %235
  %242 = trunc i64 %241 to i32
  %243 = add i32 %149, %242
  %244 = icmp sgt i32 %243, %5
  %245 = select i1 %91, i1 %244, i1 false
  br i1 %245, label %246, label %255

246:                                              ; preds = %229
  %247 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %248 = icmp eq i32 %247, 0
  %249 = load ptr, ptr @cfun, align 8, !tbaa !10
  %250 = getelementptr inbounds %struct.function, ptr %249, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !77
  %252 = getelementptr inbounds %struct.tree_decl_minimal, ptr %251, i64 0, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !22
  %254 = select i1 %248, ptr @.str.23, ptr @.str.22
  tail call void (i32, ptr, ...) @inform(i32 noundef %253, ptr noundef nonnull %254) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  br label %400

255:                                              ; preds = %229
  %256 = icmp eq i8 %230, 0
  br i1 %256, label %317, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.basic_block_def, ptr %104, i64 0, i32 1
  %259 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %258) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !71
  store ptr %259, ptr %90, align 8, !tbaa.struct !72
  %260 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %259, ptr noundef nonnull %1) #24, !range !5
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %317, label %262

262:                                              ; preds = %257, %312
  %263 = load ptr, ptr %1, align 8, !tbaa !10
  %264 = getelementptr inbounds %struct.edge_def, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !78
  %266 = load ptr, ptr @cfun, align 8, !tbaa !10
  %267 = getelementptr inbounds %struct.function, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !12
  %269 = getelementptr inbounds %struct.control_flow_graph, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !21
  %271 = icmp eq ptr %265, %270
  br i1 %271, label %312, label %272

272:                                              ; preds = %262
  %273 = getelementptr inbounds %struct.basic_block_def, ptr %265, i64 0, i32 9
  %274 = load i32, ptr %273, align 8, !tbaa !67
  %275 = lshr i32 %274, 6
  %276 = zext nneg i32 %275 to i64
  %277 = getelementptr inbounds %struct.simple_bitmap_def, ptr %50, i64 0, i32 3, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !50
  %279 = and i32 %274, 63
  %280 = zext nneg i32 %279 to i64
  %281 = shl nuw i64 1, %280
  %282 = and i64 %281, %278
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %298, label %284

284:                                              ; preds = %272
  %285 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3, i64 %276
  %286 = load i64, ptr %285, align 8, !tbaa !50
  %287 = and i64 %286, %281
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %284
  tail call fastcc void @SET_BIT(ptr noundef nonnull %97, i32 noundef %274) #24
  %290 = load ptr, ptr %264, align 8, !tbaa !78
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %290, i64 0, i32 9
  %292 = load i32, ptr %291, align 8, !tbaa !67
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, ptr %22, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !6
  %296 = sext i32 %295 to i64
  %297 = tail call ptr @fibheap_insert(ptr noundef %99, i64 noundef %296, ptr noundef %290) #25
  br label %312

298:                                              ; preds = %272
  %299 = getelementptr inbounds %struct.simple_bitmap_def, ptr %96, i64 0, i32 3, i64 %276
  %300 = load i64, ptr %299, align 8, !tbaa !50
  %301 = and i64 %300, %281
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %298
  tail call fastcc void @SET_BIT(ptr noundef nonnull %96, i32 noundef %274) #24
  %304 = load ptr, ptr %264, align 8, !tbaa !78
  %305 = getelementptr inbounds %struct.basic_block_def, ptr %304, i64 0, i32 9
  %306 = load i32, ptr %305, align 8, !tbaa !67
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %22, i64 %307
  %309 = load i32, ptr %308, align 4, !tbaa !6
  %310 = sext i32 %309 to i64
  %311 = tail call ptr @fibheap_insert(ptr noundef %98, i64 noundef %310, ptr noundef %304) #25
  br label %312

312:                                              ; preds = %289, %284, %303, %298, %262
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %313 = load i32, ptr %2, align 8
  %314 = load ptr, ptr %90, align 8
  %315 = call fastcc zeroext i8 @ei_cond(i32 %313, ptr %314, ptr noundef nonnull %1) #24, !range !5
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %262, !llvm.loop !79

317:                                              ; preds = %312, %257, %255
  %318 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %319 = icmp eq ptr %318, null
  br i1 %319, label %355, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %105, align 8, !tbaa !67
  %322 = load ptr, ptr %118, align 8, !tbaa !32
  %323 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %322, i64 0, i32 1, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !69
  %325 = tail call fastcc ptr @shared_hash_htab(ptr noundef %324) #24
  %326 = tail call i64 @htab_elements(ptr noundef %325) #25
  %327 = trunc i64 %326 to i32
  %328 = load ptr, ptr %118, align 8, !tbaa !32
  %329 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %328, i64 0, i32 2, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !70
  %331 = tail call fastcc ptr @shared_hash_htab(ptr noundef %330) #24
  %332 = tail call i64 @htab_elements(ptr noundef %331) #25
  %333 = trunc i64 %332 to i32
  %334 = load i64, ptr %98, align 8, !tbaa !80
  %335 = trunc i64 %334 to i32
  %336 = load i64, ptr %99, align 8, !tbaa !80
  %337 = trunc i64 %336 to i32
  %338 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %318, ptr noundef nonnull @.str.24, i32 noundef %321, i32 noundef %327, i32 noundef %148, i32 noundef %333, i32 noundef %147, i32 noundef %335, i32 noundef %337, i32 noundef %243) #24
  %339 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %340 = icmp eq ptr %339, null
  br i1 %340, label %355, label %341

341:                                              ; preds = %320
  %342 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %343 = and i32 %342, 8
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %355, label %345

345:                                              ; preds = %341
  %346 = load i32, ptr %105, align 8, !tbaa !67
  %347 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %339, ptr noundef nonnull @.str.25, i32 noundef %346) #24
  %348 = load ptr, ptr %118, align 8, !tbaa !32
  %349 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %348, i64 0, i32 1
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %349) #24
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %351 = load i32, ptr %105, align 8, !tbaa !67
  %352 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %350, ptr noundef nonnull @.str.26, i32 noundef %351) #24
  %353 = load ptr, ptr %118, align 8, !tbaa !32
  %354 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %353, i64 0, i32 2
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %354) #24
  br label %355

355:                                              ; preds = %345, %341, %320, %317
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  br label %356

356:                                              ; preds = %355, %102
  %357 = phi i32 [ %103, %102 ], [ %243, %355 ]
  %358 = tail call i32 @fibheap_empty(ptr noundef %98) #25
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %102, label %360, !llvm.loop !82

360:                                              ; preds = %356, %94
  %361 = phi i32 [ %95, %94 ], [ %357, %356 ]
  %362 = tail call i32 @fibheap_empty(ptr noundef %99) #25
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %94, label %364

364:                                              ; preds = %360, %89
  %365 = phi ptr [ %43, %89 ], [ %98, %360 ]
  %366 = phi ptr [ %44, %89 ], [ %99, %360 ]
  %367 = phi ptr [ %56, %89 ], [ %96, %360 ]
  %368 = phi ptr [ %62, %89 ], [ %97, %360 ]
  %369 = load i32, ptr @flag_var_tracking_assignments, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %400, label %371

371:                                              ; preds = %364
  %372 = load ptr, ptr @cfun, align 8, !tbaa !10
  %373 = getelementptr inbounds %struct.function, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !12
  %375 = load ptr, ptr %374, align 8, !tbaa !17
  %376 = getelementptr inbounds %struct.basic_block_def, ptr %375, i64 0, i32 6
  %377 = load ptr, ptr %376, align 8, !tbaa !18
  %378 = getelementptr inbounds %struct.control_flow_graph, ptr %374, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !21
  %380 = icmp eq ptr %377, %379
  br i1 %380, label %400, label %381

381:                                              ; preds = %371, %391
  %382 = phi ptr [ %392, %391 ], [ %372, %371 ]
  %383 = phi ptr [ %394, %391 ], [ %377, %371 ]
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !32
  %386 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %385, i64 0, i32 5
  %387 = load i8, ptr %386, align 1, !tbaa !36
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %381
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6122, ptr noundef nonnull @.str.2) #25
  %390 = load ptr, ptr @cfun, align 8, !tbaa !10
  br label %391

391:                                              ; preds = %381, %389
  %392 = phi ptr [ %382, %381 ], [ %390, %389 ]
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 6
  %394 = load ptr, ptr %393, align 8, !tbaa !18
  %395 = getelementptr inbounds %struct.function, ptr %392, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !12
  %397 = getelementptr inbounds %struct.control_flow_graph, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !21
  %399 = icmp eq ptr %394, %398
  br i1 %399, label %400, label %381, !llvm.loop !83

400:                                              ; preds = %391, %246, %371, %364
  %401 = phi i8 [ 1, %364 ], [ 1, %371 ], [ 0, %246 ], [ 1, %391 ]
  %402 = phi ptr [ %368, %364 ], [ %368, %371 ], [ %97, %246 ], [ %368, %391 ]
  %403 = phi ptr [ %367, %364 ], [ %367, %371 ], [ %96, %246 ], [ %367, %391 ]
  %404 = phi ptr [ %366, %364 ], [ %366, %371 ], [ %99, %246 ], [ %366, %391 ]
  %405 = phi ptr [ %365, %364 ], [ %365, %371 ], [ %98, %246 ], [ %365, %391 ]
  tail call void @free(ptr noundef %22) #24
  tail call void @fibheap_delete(ptr noundef %405) #25
  tail call void @fibheap_delete(ptr noundef %404) #25
  %406 = load ptr, ptr %50, align 8, !tbaa !84
  tail call void @free(ptr noundef %406) #24
  tail call void @free(ptr noundef %50) #24
  %407 = load ptr, ptr %403, align 8, !tbaa !84
  tail call void @free(ptr noundef %407) #24
  tail call void @free(ptr noundef %403) #24
  %408 = load ptr, ptr %402, align 8, !tbaa !84
  tail call void @free(ptr noundef %408) #24
  tail call void @free(ptr noundef %402) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #26
  ret i8 %401
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dataflow_sets() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %33, label %10

10:                                               ; preds = %0, %10
  %11 = phi ptr [ %26, %10 ], [ %6, %0 ]
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !67
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef %14) #24
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 4, i64 1, ptr %16)
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %19, i64 0, i32 1
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %20) #24
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 5, i64 1, ptr %21)
  %23 = load ptr, ptr %18, align 8, !tbaa !32
  %24 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %23, i64 0, i32 2
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !21
  %32 = icmp eq ptr %26, %31
  br i1 %32, label %33, label %10, !llvm.loop !86

33:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vt_emit_notes() unnamed_addr #0 {
  %1 = alloca %struct.dataflow_set_def, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %1) #26
  %3 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  %4 = tail call i64 @htab_elements(ptr noundef %3) #25
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7851, ptr noundef nonnull @.str.2) #25
  br label %7

7:                                                ; preds = %0, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %7, %17
  %18 = phi ptr [ %23, %17 ], [ %13, %7 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %20, i64 0, i32 2
  tail call fastcc void @dataflow_set_clear(ptr noundef nonnull %21) #24
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %17, !llvm.loop !87

30:                                               ; preds = %17, %7
  store i1 true, ptr @emit_notes, align 1
  %31 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  %34 = load ptr, ptr @preserved_values, align 8
  %35 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %2) #24, !range !88
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %33 ]
  %39 = load ptr, ptr %2, align 8, !tbaa !10
  tail call fastcc void @add_cselib_value_chains(ptr noundef %39) #24
  %40 = add i32 %38, 1
  %41 = load ptr, ptr @preserved_values, align 8
  %42 = call fastcc i32 @VEC_rtx_base_iterate(ptr noundef %41, i32 noundef %40, ptr noundef nonnull %2) #24, !range !88
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %37, !llvm.loop !89

44:                                               ; preds = %37, %33
  %45 = tail call fastcc ptr @VEC_variable_heap_alloc() #24
  store ptr %45, ptr @changed_variables_stack, align 8, !tbaa !10
  %46 = tail call fastcc ptr @VEC_rtx_heap_alloc(i32 noundef 40) #24
  store ptr %46, ptr @changed_values_stack, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  br label %47

47:                                               ; preds = %44, %30
  call fastcc void @dataflow_set_init(ptr noundef nonnull %1) #24
  %48 = load ptr, ptr @cfun, align 8, !tbaa !10
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !12
  %51 = load ptr, ptr %50, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %47, %57
  %58 = phi ptr [ %68, %57 ], [ %53, %47 ]
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = load ptr, ptr %60, align 8, !tbaa !23
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !32
  %64 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %63, i64 0, i32 1
  call fastcc void @emit_notes_for_differences(ptr noundef %61, ptr noundef nonnull %1, ptr noundef nonnull %64) #24
  call fastcc void @emit_notes_in_bb(ptr noundef %58, ptr noundef nonnull %1) #24
  %65 = load ptr, ptr %62, align 8, !tbaa !32
  %66 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %65, i64 0, i32 1
  call fastcc void @dataflow_set_clear(ptr noundef nonnull %66) #24
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !18
  %69 = load ptr, ptr @cfun, align 8, !tbaa !10
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %57, !llvm.loop !90

75:                                               ; preds = %57, %47
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %1) #24
  %76 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call fastcc void @VEC_variable_heap_free() #24
  call fastcc void @VEC_rtx_heap_free(ptr noundef nonnull @changed_values_stack) #24
  br label %79

79:                                               ; preds = %78, %75
  store i1 false, ptr @emit_notes, align 1
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %1) #26
  ret void
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @variable_htab_hash(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = tail call fastcc i32 @dv_htab_hash(ptr noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @variable_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @variable_htab_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !93
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1175, ptr noundef nonnull @.str.2) #25
  %6 = load i32, ptr %2, align 8, !tbaa !93
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !93
  %10 = icmp sgt i32 %8, 1
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !94
  %14 = icmp sgt i8 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11, %28
  %16 = phi i8 [ %29, %28 ], [ %13, %11 ]
  %17 = phi i64 [ %30, %28 ], [ 0, %11 ]
  %18 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %15 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %24, ptr noundef nonnull %22) #25
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %21, !llvm.loop !99

26:                                               ; preds = %21
  %27 = load i8, ptr %12, align 4, !tbaa !94
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i8 [ %27, %26 ], [ %16, %15 ]
  store ptr null, ptr %18, align 8, !tbaa !95
  %30 = add nuw nsw i64 %17, 1
  %31 = sext i8 %29 to i64
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %15, label %33, !llvm.loop !100

33:                                               ; preds = %28, %11
  %34 = load ptr, ptr %0, align 8, !tbaa !91
  %35 = tail call fastcc ptr @dv_pool(ptr noundef %34) #24
  tail call void @pool_free(ptr noundef %35, ptr noundef nonnull %0) #25
  br label %36

36:                                               ; preds = %7, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @value_chain_htab_hash(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.value_chain_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !101
  %4 = tail call fastcc i32 @dv_htab_hash(ptr noundef %3) #24
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @value_chain_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.value_chain_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dataflow_set_init(ptr nocapture noundef writeonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1
  tail call fastcc void @init_attrs_list_set(ptr noundef nonnull %2) #24
  %3 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !10
  %4 = tail call fastcc ptr @shared_hash_copy(ptr noundef %3) #24
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  store ptr %3, ptr %5, align 8, !tbaa !75
  store i64 0, ptr %0, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_rtx_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #25
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vt_stack_adjustments() unnamed_addr #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %8, i64 0, i32 4
  store i8 1, ptr %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %8, i64 0, i32 1
  store i64 4, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %8, i64 0, i32 2
  store i64 4, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !14
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 4
  %17 = tail call ptr @xmalloc(i64 noundef %16) #25
  %18 = load ptr, ptr @cfun, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 1
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %22) #24
  store i32 0, ptr %17, align 8, !tbaa.struct !71
  %24 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !72
  br label %25

25:                                               ; preds = %0, %119
  %26 = phi i32 [ 1, %0 ], [ %120, %119 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr %struct.edge_iterator, ptr %17, i64 %27
  %29 = getelementptr %struct.edge_iterator, ptr %28, i64 -1
  %30 = load i32, ptr %29, align 8, !tbaa.struct !71
  %31 = getelementptr %struct.edge_iterator, ptr %28, i64 -1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa.struct !72
  %33 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #24
  %34 = load ptr, ptr %33, align 8, !tbaa !73
  %35 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #24
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  %40 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %39, i64 0, i32 4
  %41 = load i8, ptr %40, align 8, !tbaa !33
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %104

43:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store i8 1, ptr %40, align 8, !tbaa !33
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !53
  %48 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %39, i64 0, i32 1
  store i64 %47, ptr %48, align 8, !tbaa !54
  %49 = load ptr, ptr @cfun, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = icmp eq ptr %37, %53
  br i1 %54, label %90, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = icmp eq ptr %58, %62
  br i1 %63, label %90, label %64

64:                                               ; preds = %55, %78
  %65 = phi ptr [ %79, %78 ], [ %57, %55 ]
  %66 = phi ptr [ %82, %78 ], [ %58, %55 ]
  %67 = phi i64 [ %80, %78 ], [ %47, %55 ]
  %68 = load i32, ptr %66, align 8
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -7
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  call fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef nonnull %66, ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  %73 = load i64, ptr %1, align 8, !tbaa !50
  %74 = load i64, ptr %2, align 8, !tbaa !50
  %75 = add i64 %73, %67
  %76 = add i64 %75, %74
  %77 = load ptr, ptr %56, align 8, !tbaa !22
  br label %78

78:                                               ; preds = %64, %72
  %79 = phi ptr [ %77, %72 ], [ %65, %64 ]
  %80 = phi i64 [ %76, %72 ], [ %67, %64 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !22
  %83 = getelementptr inbounds %struct.rtl_bb_info, ptr %79, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !25
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %82, %86
  br i1 %87, label %88, label %64, !llvm.loop !105

88:                                               ; preds = %78
  %89 = load ptr, ptr %38, align 8, !tbaa !32
  br label %90

90:                                               ; preds = %88, %55, %43
  %91 = phi ptr [ %39, %43 ], [ %39, %55 ], [ %89, %88 ]
  %92 = phi i64 [ %47, %43 ], [ %47, %55 ], [ %80, %88 ]
  %93 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %91, i64 0, i32 2
  store i64 %92, ptr %93, align 8, !tbaa !53
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !106
  %96 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %95) #24
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %90
  %99 = add nsw i32 %26, 1
  %100 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %94) #24
  store i32 0, ptr %28, align 8, !tbaa.struct !71
  %101 = getelementptr inbounds i8, ptr %28, i64 8
  store ptr %100, ptr %101, align 8, !tbaa.struct !72
  br label %102

102:                                              ; preds = %98, %90
  %103 = phi i32 [ %99, %98 ], [ %26, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #26
  br label %119

104:                                              ; preds = %25
  %105 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %39, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !54
  %107 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !32
  %109 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !53
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  tail call void @free(ptr noundef nonnull %17) #24
  br label %123

113:                                              ; preds = %104
  %114 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #24, !range !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  tail call fastcc void @ei_next(ptr noundef nonnull %29) #24
  br label %119

117:                                              ; preds = %113
  %118 = add nsw i32 %26, -1
  br label %119

119:                                              ; preds = %102, %117, %116
  %120 = phi i32 [ %118, %117 ], [ %26, %116 ], [ %103, %102 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %25, !llvm.loop !107

122:                                              ; preds = %119
  tail call void @free(ptr noundef %17) #24
  br label %123

123:                                              ; preds = %112, %122
  %124 = phi i8 [ 1, %122 ], [ 0, %112 ]
  ret i8 %124
}

; Function Attrs: optsize
declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vt_init_cfa_base() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !10
  store ptr %1, ptr @cfa_base_rtx, align 8, !tbaa !10
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !10
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4, %0
  store ptr null, ptr @cfa_base_rtx, align 8, !tbaa !10
  br label %30

11:                                               ; preds = %4
  %12 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %1, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @get_insns() #25
  %19 = tail call ptr @cselib_lookup_from_insn(ptr noundef nonnull %1, i32 noundef %17, i32 noundef 1, ptr noundef %18) #25
  tail call fastcc void @preserve_value(ptr noundef %19) #24
  tail call void @cselib_preserve_cfa_base_value(ptr noundef %19) #25
  %20 = load ptr, ptr @cfun, align 8, !tbaa !10
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.cselib_val_struct, ptr %19, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  tail call fastcc void @var_reg_decl_set(ptr noundef nonnull %26, ptr noundef %27, i32 noundef 2, ptr noundef %29, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  br label %30

30:                                               ; preds = %11, %14, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_with_sets(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.count_use_info, align 8
  %5 = alloca %struct.micro_operation_def, align 8
  %6 = alloca %struct.micro_operation_def, align 8
  %7 = alloca %struct.micro_operation_def, align 8
  %8 = alloca %struct.micro_operation_def, align 8
  %9 = alloca %struct.micro_operation_def, align 8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  store i1 true, ptr @cselib_hook_called, align 1
  store ptr %0, ptr %4, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 2
  store ptr %1, ptr %13, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 3
  store i32 %2, ptr %14, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = tail call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %17) #24
  %19 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 4
  store i8 0, ptr %19, align 4, !tbaa !116
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  call void @note_uses(ptr noundef nonnull %20, ptr noundef nonnull @add_uses_1, ptr noundef nonnull %4) #25
  %21 = load ptr, ptr %15, align 8, !tbaa !32
  %22 = load ptr, ptr %21, align 8, !tbaa !115
  %23 = call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %22) #24
  %24 = add i32 %23, -1
  %25 = call fastcc ptr @VEC_micro_operation_base_address(ptr noundef %22) #24
  %26 = icmp slt i32 %18, %24
  br i1 %26, label %27, label %69

27:                                               ; preds = %3, %59
  %28 = phi i32 [ %60, %59 ], [ %24, %3 ]
  %29 = phi i32 [ %41, %59 ], [ %18, %3 ]
  %30 = sext i32 %29 to i64
  %31 = sext i32 %28 to i64
  br label %32

32:                                               ; preds = %27, %37
  %33 = phi i64 [ %30, %27 ], [ %38, %37 ]
  %34 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %33
  %35 = load i32, ptr %34, align 8, !tbaa !55
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = add nsw i64 %33, 1
  %39 = icmp slt i64 %38, %31
  br i1 %39, label %32, label %62, !llvm.loop !117

40:                                               ; preds = %32
  %41 = trunc i64 %33 to i32
  %42 = icmp sgt i32 %28, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = shl i64 %33, 32
  %45 = ashr exact i64 %44, 32
  br label %46

46:                                               ; preds = %43, %51
  %47 = phi i64 [ %31, %43 ], [ %52, %51 ]
  %48 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %47
  %49 = load i32, ptr %48, align 8, !tbaa !55
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = add nsw i64 %47, -1
  %53 = icmp sgt i64 %52, %45
  br i1 %53, label %46, label %57, !llvm.loop !118

54:                                               ; preds = %46
  %55 = trunc i64 %47 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %56 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %56, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %48, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  br label %59

57:                                               ; preds = %51
  %58 = trunc i64 %52 to i32
  br label %59

59:                                               ; preds = %57, %40, %54
  %60 = phi i32 [ %55, %54 ], [ %28, %40 ], [ %58, %57 ]
  %61 = icmp sgt i32 %60, %41
  br i1 %61, label %27, label %65, !llvm.loop !120

62:                                               ; preds = %37
  %63 = add nsw i32 %29, 1
  %64 = call i32 @llvm.smax.i32(i32 %28, i32 %63)
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi i32 [ %64, %62 ], [ %41, %59 ]
  %67 = load ptr, ptr %15, align 8, !tbaa !32
  %68 = load ptr, ptr %67, align 8, !tbaa !115
  br label %69

69:                                               ; preds = %65, %3
  %70 = phi ptr [ %22, %3 ], [ %68, %65 ]
  %71 = phi i32 [ %18, %3 ], [ %66, %65 ]
  %72 = call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %70) #24
  %73 = add i32 %72, -1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %69, %107
  %76 = phi i32 [ %108, %107 ], [ %73, %69 ]
  %77 = phi i32 [ %89, %107 ], [ %71, %69 ]
  %78 = sext i32 %77 to i64
  %79 = sext i32 %76 to i64
  br label %80

80:                                               ; preds = %75, %85
  %81 = phi i64 [ %78, %75 ], [ %86, %85 ]
  %82 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %81
  %83 = load i32, ptr %82, align 8, !tbaa !55
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = add nsw i64 %81, 1
  %87 = icmp slt i64 %86, %79
  br i1 %87, label %80, label %110, !llvm.loop !121

88:                                               ; preds = %80
  %89 = trunc i64 %81 to i32
  %90 = icmp sgt i32 %76, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = shl i64 %81, 32
  %93 = ashr exact i64 %92, 32
  br label %94

94:                                               ; preds = %91, %99
  %95 = phi i64 [ %79, %91 ], [ %100, %99 ]
  %96 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %95
  %97 = load i32, ptr %96, align 8, !tbaa !55
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = add nsw i64 %95, -1
  %101 = icmp sgt i64 %100, %93
  br i1 %101, label %94, label %105, !llvm.loop !122

102:                                              ; preds = %94
  %103 = trunc i64 %95 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %104 = getelementptr inbounds %struct.micro_operation_def, ptr %25, i64 %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %104, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %104, ptr noundef nonnull align 8 dereferenceable(24) %96, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  br label %107

105:                                              ; preds = %99
  %106 = trunc i64 %100 to i32
  br label %107

107:                                              ; preds = %105, %88, %102
  %108 = phi i32 [ %103, %102 ], [ %76, %88 ], [ %106, %105 ]
  %109 = icmp sgt i32 %108, %89
  br i1 %109, label %75, label %110, !llvm.loop !123

110:                                              ; preds = %107, %85, %69
  %111 = load i32, ptr %0, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  store i32 8, ptr %7, align 8, !tbaa !55
  %115 = getelementptr inbounds %struct.micro_operation_def, ptr %7, i64 0, i32 1
  store ptr %0, ptr %115, align 8, !tbaa !57
  %116 = getelementptr inbounds %struct.micro_operation_def, ptr %7, i64 0, i32 2
  store ptr null, ptr %116, align 8, !tbaa !22
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %121 = and i32 %120, 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %20, align 8, !tbaa !22
  call fastcc void @log_op_type(ptr noundef %124, ptr noundef %11, ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %117) #24
  br label %125

125:                                              ; preds = %123, %119, %114
  %126 = load ptr, ptr %15, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %126, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  br label %127

127:                                              ; preds = %125, %110
  %128 = load ptr, ptr %15, align 8, !tbaa !32
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %129) #24
  store i8 1, ptr %19, align 4, !tbaa !116
  %131 = load ptr, ptr %20, align 8, !tbaa !22
  call void @note_stores(ptr noundef %131, ptr noundef nonnull @add_stores, ptr noundef nonnull %4) #25
  %132 = load ptr, ptr %15, align 8, !tbaa !32
  %133 = load ptr, ptr %132, align 8, !tbaa !115
  %134 = call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %133) #24
  %135 = add i32 %134, -1
  %136 = call fastcc ptr @VEC_micro_operation_base_address(ptr noundef %133) #24
  %137 = icmp slt i32 %130, %135
  br i1 %137, label %138, label %180

138:                                              ; preds = %127, %170
  %139 = phi i32 [ %171, %170 ], [ %135, %127 ]
  %140 = phi i32 [ %152, %170 ], [ %130, %127 ]
  %141 = sext i32 %140 to i64
  %142 = sext i32 %139 to i64
  br label %143

143:                                              ; preds = %138, %148
  %144 = phi i64 [ %141, %138 ], [ %149, %148 ]
  %145 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %144
  %146 = load i32, ptr %145, align 8, !tbaa !55
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = add nsw i64 %144, 1
  %150 = icmp slt i64 %149, %142
  br i1 %150, label %143, label %173, !llvm.loop !124

151:                                              ; preds = %143
  %152 = trunc i64 %144 to i32
  %153 = icmp sgt i32 %139, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = shl i64 %144, 32
  %156 = ashr exact i64 %155, 32
  br label %157

157:                                              ; preds = %154, %162
  %158 = phi i64 [ %142, %154 ], [ %163, %162 ]
  %159 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %158
  %160 = load i32, ptr %159, align 8, !tbaa !55
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = add nsw i64 %158, -1
  %164 = icmp sgt i64 %163, %156
  br i1 %164, label %157, label %168, !llvm.loop !125

165:                                              ; preds = %157
  %166 = trunc i64 %158 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  %167 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %167, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %167, ptr noundef nonnull align 8 dereferenceable(24) %159, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %159, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %170

168:                                              ; preds = %162
  %169 = trunc i64 %163 to i32
  br label %170

170:                                              ; preds = %168, %151, %165
  %171 = phi i32 [ %166, %165 ], [ %139, %151 ], [ %169, %168 ]
  %172 = icmp sgt i32 %171, %152
  br i1 %172, label %138, label %176, !llvm.loop !126

173:                                              ; preds = %148
  %174 = add nsw i32 %140, 1
  %175 = call i32 @llvm.smax.i32(i32 %139, i32 %174)
  br label %176

176:                                              ; preds = %170, %173
  %177 = phi i32 [ %175, %173 ], [ %152, %170 ]
  %178 = load ptr, ptr %15, align 8, !tbaa !32
  %179 = load ptr, ptr %178, align 8, !tbaa !115
  br label %180

180:                                              ; preds = %176, %127
  %181 = phi ptr [ %133, %127 ], [ %179, %176 ]
  %182 = phi i32 [ %130, %127 ], [ %177, %176 ]
  %183 = call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %181) #24
  %184 = add i32 %183, -1
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %180, %218
  %187 = phi i32 [ %219, %218 ], [ %184, %180 ]
  %188 = phi i32 [ %200, %218 ], [ %182, %180 ]
  %189 = sext i32 %188 to i64
  %190 = sext i32 %187 to i64
  br label %191

191:                                              ; preds = %186, %196
  %192 = phi i64 [ %189, %186 ], [ %197, %196 ]
  %193 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %192
  %194 = load i32, ptr %193, align 8, !tbaa !55
  %195 = icmp eq i32 %194, 7
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = add nsw i64 %192, 1
  %198 = icmp slt i64 %197, %190
  br i1 %198, label %191, label %221, !llvm.loop !127

199:                                              ; preds = %191
  %200 = trunc i64 %192 to i32
  %201 = icmp sgt i32 %187, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = shl i64 %192, 32
  %204 = ashr exact i64 %203, 32
  br label %205

205:                                              ; preds = %202, %210
  %206 = phi i64 [ %190, %202 ], [ %211, %210 ]
  %207 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %206
  %208 = load i32, ptr %207, align 8, !tbaa !55
  %209 = icmp eq i32 %208, 7
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = add nsw i64 %206, -1
  %212 = icmp sgt i64 %211, %204
  br i1 %212, label %205, label %216, !llvm.loop !128

213:                                              ; preds = %205
  %214 = trunc i64 %206 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  %215 = getelementptr inbounds %struct.micro_operation_def, ptr %136, i64 %204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %215, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %215, ptr noundef nonnull align 8 dereferenceable(24) %207, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %207, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  br label %218

216:                                              ; preds = %210
  %217 = trunc i64 %211 to i32
  br label %218

218:                                              ; preds = %216, %199, %213
  %219 = phi i32 [ %214, %213 ], [ %187, %199 ], [ %217, %216 ]
  %220 = icmp sgt i32 %219, %200
  br i1 %220, label %186, label %221, !llvm.loop !129

221:                                              ; preds = %218, %196, %180
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @cselib_get_next_uid() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 17, ptr noundef null) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %9, %12, %3
  %16 = phi ptr [ %5, %3 ], [ %14, %12 ], [ %5, %9 ]
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %39 [
    i16 23, label %19
    i16 15, label %20
    i16 5, label %20
  ]

19:                                               ; preds = %15
  tail call fastcc void @stack_adjust_offset_pre_post(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  br label %39

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = load i32, ptr %22, align 8, !tbaa !131
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = zext nneg i32 %23 to i64
  br label %27

27:                                               ; preds = %25, %37
  %28 = phi i64 [ %26, %25 ], [ %29, %37 ]
  %29 = add nsw i64 %28, -1
  %30 = load ptr, ptr %21, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 23
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call fastcc void @stack_adjust_offset_pre_post(ptr noundef nonnull %32, ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  br label %37

37:                                               ; preds = %27, %36
  %38 = icmp ugt i64 %28, 1
  br i1 %38, label %27, label %39, !llvm.loop !133

39:                                               ; preds = %37, %20, %15, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @log_op_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = tail call fastcc i32 @VEC_micro_operation_base_length(ptr noundef %10) #24
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = zext i32 %3 to i64
  %15 = shl i64 %14, 2
  %16 = call ptr @llvm.load.relative.i64(ptr @reltable.log_op_type, i64 %15)
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %11, i32 noundef %13, ptr noundef %16) #24
  tail call void @print_inline_rtx(ptr noundef %4, ptr noundef %0, i32 noundef 2) #25
  %18 = tail call i32 @fputc(i32 noundef 10, ptr noundef %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_micro_operation_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_micro_operation_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_micro_operation_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_insn(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.adjust_mem_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !134
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = sub nsw i64 0, %8
  %10 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 2
  store i64 %9, ptr %10, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !137
  store i8 1, ptr %3, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  call void @note_stores(ptr noundef %13, ptr noundef nonnull @adjust_mem_stores, ptr noundef nonnull %3) #25
  store i8 0, ptr %3, align 8, !tbaa !138
  call void @note_uses(ptr noundef nonnull %12, ptr noundef nonnull @adjust_mem_uses, ptr noundef nonnull %3) #25
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -7
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load ptr, ptr %12, align 8, !tbaa !22
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 23
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %19) #25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %18, %23
  %27 = phi ptr [ %24, %23 ], [ %19, %18 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 67174399
  %32 = icmp eq i32 %31, 67108907
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %1) #25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !6
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %28, ptr noundef nonnull %38, i8 noundef zeroext 1) #25
  br label %47

47:                                               ; preds = %2, %33, %36, %45, %26, %23
  %48 = load ptr, ptr %11, align 8, !tbaa !137
  %49 = icmp eq ptr %48, null
  br i1 %49, label %120, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %12, align 8, !tbaa !10
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 14
  %55 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = select i1 %54, ptr %55, ptr %12
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 15
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = load i32, ptr %63, align 8, !tbaa !131
  br label %65

65:                                               ; preds = %50, %61
  %66 = phi i32 [ %64, %61 ], [ 1, %50 ]
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i32 [ 0, %65 ], [ %72, %67 ]
  %69 = phi ptr [ %48, %65 ], [ %71, %67 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !22
  %72 = add nuw nsw i32 %68, 1
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %67, !llvm.loop !139

74:                                               ; preds = %67
  %75 = add nsw i32 %72, %66
  %76 = call ptr @rtvec_alloc(i32 noundef %75) #25
  %77 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %76) #25
  %78 = load ptr, ptr %56, align 8, !tbaa !10
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 15
  br i1 %81, label %82, label %98

82:                                               ; preds = %74
  %83 = icmp sgt i32 %66, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %86 = zext nneg i32 %66 to i64
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ 0, %84 ], [ %96, %87 ]
  %89 = load ptr, ptr %56, align 8, !tbaa !10
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %88
  %93 = load ptr, ptr %92, align 8, !tbaa !10
  %94 = load ptr, ptr %85, align 8, !tbaa !22
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %94, i64 0, i32 1, i64 %88
  store ptr %93, ptr %95, align 8, !tbaa !10
  %96 = add nuw nsw i64 %88, 1
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %102, label %87, !llvm.loop !140

98:                                               ; preds = %74
  %99 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %100, i64 0, i32 1
  store ptr %78, ptr %101, align 8, !tbaa !10
  br label %102

102:                                              ; preds = %87, %82, %98
  %103 = load ptr, ptr %11, align 8, !tbaa !137
  %104 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %105 = sext i32 %66 to i64
  %106 = sext i32 %75 to i64
  br label %107

107:                                              ; preds = %102, %107
  %108 = phi i64 [ %105, %102 ], [ %114, %107 ]
  %109 = phi ptr [ %103, %102 ], [ %116, %107 ]
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !22
  %112 = load ptr, ptr %104, align 8, !tbaa !22
  %113 = getelementptr inbounds %struct.rtvec_def, ptr %112, i64 0, i32 1, i64 %108
  store ptr %111, ptr %113, align 8, !tbaa !10
  %114 = add nsw i64 %108, 1
  %115 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !22
  %117 = icmp slt i64 %114, %106
  br i1 %117, label %107, label %118, !llvm.loop !141

118:                                              ; preds = %107
  call void @free_EXPR_LIST_list(ptr noundef nonnull %11) #25
  %119 = call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %56, ptr noundef nonnull %77, i8 noundef zeroext 1) #25
  br label %120

120:                                              ; preds = %118, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_cselib_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cancel_changes(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fp_setter(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 1073741824
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 17, ptr noundef null) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  br label %13

13:                                               ; preds = %7, %10, %1
  %14 = phi ptr [ %3, %1 ], [ %12, %10 ], [ %3, %7 ]
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %45 [
    i16 23, label %17
    i16 15, label %23
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !10
  %21 = icmp eq ptr %19, %20
  %22 = zext i1 %21 to i8
  br label %45

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = load i32, ptr %25, align 8, !tbaa !131
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %30 = zext nneg i32 %26 to i64
  br label %31

31:                                               ; preds = %28, %43
  %32 = phi i64 [ %30, %28 ], [ %33, %43 ]
  %33 = add nsw i64 %32, -1
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, %29
  br i1 %42, label %45, label %43

43:                                               ; preds = %31, %39
  %44 = icmp ult i64 %32, 2
  br i1 %44, label %45, label %31, !llvm.loop !142

45:                                               ; preds = %39, %43, %23, %13, %17
  %46 = phi i8 [ %22, %17 ], [ 0, %13 ], [ 0, %23 ], [ 1, %39 ], [ 0, %43 ]
  ret i8 %46
}

; Function Attrs: optsize
declare void @cselib_preserve_only_values() local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_reset_table(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vt_add_function_parameters() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %131, label %8

8:                                                ; preds = %0, %127
  %9 = phi ptr [ %129, %127 ], [ %6, %0 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %11, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %9, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ null, %8 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.tree_parm_decl, ptr %9, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %22 = icmp eq i64 %11, 34
  br i1 %22, label %23, label %127

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %127, label %27

27:                                               ; preds = %23
  %28 = icmp ne ptr %19, null
  %29 = icmp ne ptr %21, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %127

31:                                               ; preds = %27
  %32 = load i32, ptr %19, align 8
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 65536
  br i1 %34, label %127, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %21, align 8
  %37 = and i32 %36, 16711680
  %38 = icmp eq i32 %37, 65536
  br i1 %38, label %127, label %39

39:                                               ; preds = %35
  %40 = call fastcc zeroext i8 @vt_get_decl_and_offset(ptr noundef nonnull %21, ptr noundef nonnull %1, ptr noundef nonnull %3) #24, !range !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i32, ptr %21, align 8
  %44 = trunc i32 %43 to i16
  switch i16 %44, label %50 [
    i16 37, label %45
    i16 43, label %45
  ]

45:                                               ; preds = %42, %42
  store i64 0, ptr %3, align 8, !tbaa !50
  store ptr %9, ptr %1, align 8, !tbaa !10
  %46 = load i32, ptr %19, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = call ptr @gen_rtx_MEM(i32 noundef %48, ptr noundef nonnull %21) #25
  br label %74

50:                                               ; preds = %42
  %51 = call fastcc zeroext i8 @vt_get_decl_and_offset(ptr noundef nonnull %19, ptr noundef nonnull %1, ptr noundef nonnull %3) #24, !range !5
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %127, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %21, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = load i32, ptr %19, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = call i32 @byte_lowpart_offset(i32 noundef %56, i32 noundef %59) #25
  %61 = sext i32 %60 to i64
  %62 = load i64, ptr %3, align 8, !tbaa !50
  %63 = add nsw i64 %62, %61
  store i64 %63, ptr %3, align 8, !tbaa !50
  br label %64

64:                                               ; preds = %53, %39
  %65 = load ptr, ptr %1, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %127, label %67

67:                                               ; preds = %64
  %68 = icmp eq ptr %9, %65
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #25
  %71 = icmp eq ptr %65, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8001, ptr noundef nonnull @.str.2) #25
  br label %73

73:                                               ; preds = %69, %72
  store i64 0, ptr %3, align 8, !tbaa !50
  br label %74

74:                                               ; preds = %45, %73, %67
  %75 = phi ptr [ %49, %45 ], [ %21, %73 ], [ %21, %67 ]
  %76 = load i64, ptr %3, align 8, !tbaa !50
  %77 = call fastcc zeroext i8 @track_loc_p(ptr noundef %75, ptr noundef nonnull %9, i64 noundef %76, ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %127, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr @cfun, align 8, !tbaa !10
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !12
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !32
  %86 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %85, i64 0, i32 2
  %87 = call ptr @target_for_debug_bind(ptr noundef nonnull %9) #25
  %88 = icmp eq ptr %87, null
  br i1 %88, label %107, label %89

89:                                               ; preds = %79
  %90 = load i32, ptr %75, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 15
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = load i64, ptr %3, align 8, !tbaa !50
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = load i32, ptr %2, align 4, !tbaa !6
  %98 = call fastcc ptr @var_lowpart(i32 noundef %97, ptr noundef nonnull %75) #24
  %99 = load i32, ptr %2, align 4, !tbaa !6
  %100 = call ptr @cselib_lookup(ptr noundef %98, i32 noundef %99, i32 noundef 1) #25
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  call fastcc void @preserve_value(ptr noundef nonnull %100) #24
  %103 = getelementptr inbounds %struct.cselib_val_struct, ptr %100, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !108
  %105 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @set_variable_part(ptr noundef nonnull %86, ptr noundef %104, ptr noundef nonnull %9, i64 noundef %105, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  %106 = load ptr, ptr %103, align 8, !tbaa !108
  br label %107

107:                                              ; preds = %102, %96, %89, %79
  %108 = phi ptr [ %9, %89 ], [ %9, %79 ], [ %9, %96 ], [ %106, %102 ]
  %109 = load i32, ptr %75, align 8
  %110 = trunc i32 %109 to i16
  switch i16 %110, label %127 [
    i16 37, label %111
    i16 43, label %123
  ]

111:                                              ; preds = %107
  %112 = load i32, ptr %2, align 4, !tbaa !6
  %113 = call fastcc ptr @var_lowpart(i32 noundef %112, ptr noundef nonnull %75) #24
  %114 = call fastcc i32 @rhs_regno(ptr noundef %113) #24
  %115 = icmp ult i32 %114, 53
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8044, ptr noundef nonnull @.str.2) #25
  br label %117

117:                                              ; preds = %111, %116
  %118 = call fastcc i32 @rhs_regno(ptr noundef %113) #24
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %85, i64 0, i32 2, i32 1, i64 %119
  %121 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @attrs_list_insert(ptr noundef nonnull %120, ptr noundef %108, i64 noundef %121, ptr noundef %113) #24
  %122 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @set_variable_part(ptr noundef nonnull %86, ptr noundef %113, ptr noundef %108, i64 noundef %122, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %127

123:                                              ; preds = %107
  %124 = load i32, ptr %2, align 4, !tbaa !6
  %125 = call fastcc ptr @var_lowpart(i32 noundef %124, ptr noundef nonnull %75) #24
  %126 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @set_variable_part(ptr noundef nonnull %86, ptr noundef %125, ptr noundef %108, i64 noundef %126, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %127

127:                                              ; preds = %93, %117, %123, %107, %74, %64, %50, %31, %35, %27, %23, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #26
  %128 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %8, !llvm.loop !143

131:                                              ; preds = %127, %0
  %132 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  call void @cselib_preserve_only_values() #25
  %135 = call i32 @cselib_get_next_uid() #25
  call void @cselib_reset_table(i32 noundef %135) #25
  br label %136

136:                                              ; preds = %134, %131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @dv_htab_hash(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @dv_uid(ptr noundef %0) #24
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @dv_uid(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) #24, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %6, i64 0, i32 1
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %7, %4 ], [ %9, %8 ]
  %12 = load i32, ptr %11, align 4, !tbaa !22
  ret i32 %12
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dv_pool(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %0) #24, !range !5
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @valvar_pool, align 8
  %5 = load ptr, ptr @var_pool, align 8
  %6 = select i1 %3, ptr %5, ptr %4
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dv_onepart_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) #24, !range !5
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq ptr %0, null
  %8 = or i1 %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 37
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %0) #25
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %9, %4, %1, %13
  %18 = phi i8 [ %16, %13 ], [ 0, %1 ], [ 1, %4 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @init_attrs_list_set(ptr nocapture noundef writeonly %0) unnamed_addr #8 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, i8 0, i64 424, i1 false), !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @shared_hash_copy(ptr noundef returned %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !29
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !29
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !144
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = add i32 %0, 1
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #25
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !146
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #25
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !22
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @cselib_lookup_from_insn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @preserve_value(ptr noundef %0) unnamed_addr #0 {
  tail call void @cselib_preserve_value(ptr noundef %0) #25
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull @preserved_values, ptr noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @cselib_preserve_cfa_base_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %3) #24, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @var_debug_decl(ptr noundef %3) #24
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %3, %7 ]
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.attrs_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = icmp eq ptr %22, %13
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.attrs_def, ptr %20, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !150
  %27 = icmp eq i64 %26, %4
  br i1 %27, label %32, label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !151

31:                                               ; preds = %28, %12
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %16, ptr noundef %13, i64 noundef %4, ptr noundef %1) #24
  br label %32

32:                                               ; preds = %24, %31
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %13, i64 noundef %4, i32 noundef %2, ptr noundef %5, i32 noundef %6) #24
  ret void
}

; Function Attrs: optsize
declare void @cselib_preserve_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_rtx_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @VEC_rtx_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_rtx_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_rtx_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #25
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_rtx_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !152
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !152
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_space(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !154
  %6 = load i32, ptr %0, align 8, !tbaa !152
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @var_debug_decl(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 16384
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #25
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !6
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #25
  br label %26

26:                                               ; preds = %24, %17, %14, %9, %3, %1
  %27 = phi ptr [ %25, %24 ], [ %0, %17 ], [ %0, %14 ], [ %0, %9 ], [ %0, %3 ], [ null, %1 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attrs_list_insert(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  %7 = getelementptr inbounds %struct.attrs_def, ptr %6, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !155
  %8 = getelementptr inbounds %struct.attrs_def, ptr %6, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !148
  %9 = getelementptr inbounds %struct.attrs_def, ptr %6, i64 0, i32 3
  store i64 %2, ptr %9, align 8, !tbaa !150
  %10 = load ptr, ptr %0, align 8, !tbaa !10
  store ptr %10, ptr %6, align 8, !tbaa !156
  store ptr %6, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp eq i32 %6, 0
  %9 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  br i1 %8, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %10, ptr noundef %2) #24
  br label %18

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @shared_hash_find_slot(ptr noundef %10, ptr noundef %2) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %9, ptr noundef %2, i32 noundef 1) #24
  br label %18

18:                                               ; preds = %13, %16, %11
  %19 = phi ptr [ %12, %11 ], [ %14, %13 ], [ %17, %16 ]
  %20 = tail call fastcc ptr @set_slot_part(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %19, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) #24
  ret void
}

; Function Attrs: optsize
declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot_noinsert(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @dv_htab_hash(ptr noundef %1) #24
  %4 = tail call fastcc ptr @shared_hash_find_slot_noinsert_1(ptr noundef %0, ptr noundef %1, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @dv_htab_hash(ptr noundef %1) #24
  %4 = tail call fastcc ptr @shared_hash_find_slot_1(ptr noundef %0, ptr noundef %1, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot_unshare(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @dv_htab_hash(ptr noundef %1) #24
  %5 = tail call fastcc ptr @shared_hash_find_slot_unshare_1(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %2) #24
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @set_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %3) #24, !range !5
  %10 = icmp ne i64 %4, 0
  %11 = icmp ne i8 %9, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6374, ptr noundef nonnull @.str.2) #25
  br label %14

14:                                               ; preds = %7, %13
  %15 = icmp eq ptr %3, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6375, ptr noundef nonnull @.str.2) #25
  br label %17

17:                                               ; preds = %14, %16
  %18 = load ptr, ptr %2, align 8, !tbaa !10
  %19 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2, i32 %5
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @dv_pool(ptr noundef %3) #24
  %25 = tail call ptr @pool_alloc(ptr noundef %24) #25
  store ptr %3, ptr %25, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 1
  store i32 1, ptr %26, align 8, !tbaa !93
  %27 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 2
  store i8 1, ptr %27, align 4, !tbaa !94
  %28 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 3
  store i8 0, ptr %28, align 1, !tbaa !157
  %29 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 4
  store i8 0, ptr %29, align 2, !tbaa !158
  %30 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 5
  %31 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 5, i64 0, i32 2
  store i64 %4, ptr %31, align 8, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store ptr %25, ptr %2, align 8, !tbaa !10
  br label %302

32:                                               ; preds = %17
  br i1 %11, label %33, label %157

33:                                               ; preds = %32
  %34 = load ptr, ptr %18, align 8, !tbaa !91
  %35 = icmp eq ptr %34, %3
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6402, ptr noundef nonnull @.str.2) #25
  br label %37

37:                                               ; preds = %33, %36
  %38 = load i32, ptr %1, align 8
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.variable_def, ptr %18, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  switch i16 %39, label %102 [
    i16 1, label %43
    i16 37, label %61
    i16 43, label %81
  ]

43:                                               ; preds = %37
  br i1 %42, label %125, label %44

44:                                               ; preds = %43, %57
  %45 = phi ptr [ %59, %57 ], [ %41, %43 ]
  %46 = phi i32 [ %58, %57 ], [ 0, %43 ]
  %47 = phi ptr [ %45, %57 ], [ %40, %43 ]
  %48 = getelementptr inbounds %struct.location_chain_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !160
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %125 [
    i16 1, label %52
    i16 37, label %57
    i16 43, label %57
  ]

52:                                               ; preds = %44
  %53 = icmp eq ptr %49, %1
  br i1 %53, label %324, label %54

54:                                               ; preds = %52
  %55 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %49, ptr noundef nonnull %1) #24, !range !5
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %125, label %57

57:                                               ; preds = %44, %44, %54
  %58 = add nuw nsw i32 %46, 1
  %59 = load ptr, ptr %45, align 8, !tbaa !10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %125, label %44, !llvm.loop !161

61:                                               ; preds = %37
  br i1 %42, label %125, label %62

62:                                               ; preds = %61, %75
  %63 = phi ptr [ %77, %75 ], [ %41, %61 ]
  %64 = phi i32 [ %76, %75 ], [ 0, %61 ]
  %65 = phi ptr [ %63, %75 ], [ %40, %61 ]
  %66 = getelementptr inbounds %struct.location_chain_def, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 37
  br i1 %70, label %71, label %125

71:                                               ; preds = %62
  %72 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %67) #24
  %73 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = add nuw nsw i32 %64, 1
  %77 = load ptr, ptr %63, align 8, !tbaa !10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %125, label %62, !llvm.loop !162

79:                                               ; preds = %71
  %80 = icmp eq i32 %72, %73
  br i1 %80, label %324, label %125

81:                                               ; preds = %37
  br i1 %42, label %125, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %84

84:                                               ; preds = %82, %98
  %85 = phi ptr [ %41, %82 ], [ %100, %98 ]
  %86 = phi i32 [ 0, %82 ], [ %99, %98 ]
  %87 = phi ptr [ %40, %82 ], [ %85, %98 ]
  %88 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !160
  %90 = load i32, ptr %89, align 8
  %91 = trunc i32 %90 to i16
  switch i16 %91, label %125 [
    i16 37, label %98
    i16 43, label %92
  ]

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !22
  %95 = load ptr, ptr %83, align 8, !tbaa !22
  %96 = tail call fastcc i32 @loc_cmp(ptr noundef %94, ptr noundef %95) #24, !range !163
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %119, label %98

98:                                               ; preds = %92, %84
  %99 = add nuw nsw i32 %86, 1
  %100 = load ptr, ptr %85, align 8, !tbaa !10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %125, label %84, !llvm.loop !164

102:                                              ; preds = %37
  br i1 %42, label %125, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.location_chain_def, ptr %41, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !160
  %106 = tail call fastcc i32 @loc_cmp(ptr noundef %105, ptr noundef nonnull %1) #24, !range !163
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %119, label %113

108:                                              ; preds = %113
  %109 = getelementptr inbounds %struct.location_chain_def, ptr %117, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !160
  %111 = tail call fastcc i32 @loc_cmp(ptr noundef %110, ptr noundef nonnull %1) #24, !range !163
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %119, label %113, !llvm.loop !165

113:                                              ; preds = %103, %108
  %114 = phi i32 [ %116, %108 ], [ 0, %103 ]
  %115 = phi ptr [ %117, %108 ], [ %41, %103 ]
  %116 = add nuw nsw i32 %114, 1
  %117 = load ptr, ptr %115, align 8, !tbaa !10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %108, !llvm.loop !165

119:                                              ; preds = %92, %108, %103
  %120 = phi ptr [ %41, %103 ], [ %117, %108 ], [ %85, %92 ]
  %121 = phi ptr [ %40, %103 ], [ %115, %108 ], [ %87, %92 ]
  %122 = phi i32 [ %106, %103 ], [ %111, %108 ], [ %96, %92 ]
  %123 = phi i32 [ 0, %103 ], [ %116, %108 ], [ %86, %92 ]
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %324, label %125

125:                                              ; preds = %98, %84, %75, %62, %57, %54, %44, %113, %81, %61, %43, %102, %79, %119
  %126 = phi i32 [ %123, %119 ], [ %64, %79 ], [ 0, %102 ], [ 0, %43 ], [ 0, %61 ], [ 0, %81 ], [ %116, %113 ], [ %58, %57 ], [ %46, %54 ], [ %46, %44 ], [ %76, %75 ], [ %64, %62 ], [ %99, %98 ], [ %86, %84 ]
  %127 = phi ptr [ %121, %119 ], [ %65, %79 ], [ %40, %102 ], [ %40, %43 ], [ %40, %61 ], [ %40, %81 ], [ %115, %113 ], [ %45, %57 ], [ %47, %54 ], [ %47, %44 ], [ %63, %75 ], [ %65, %62 ], [ %85, %98 ], [ %87, %84 ]
  %128 = phi ptr [ %120, %119 ], [ %63, %79 ], [ null, %102 ], [ null, %43 ], [ null, %61 ], [ null, %81 ], [ null, %113 ], [ null, %57 ], [ %45, %54 ], [ %45, %44 ], [ null, %75 ], [ %63, %62 ], [ null, %98 ], [ %85, %84 ]
  %129 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !75
  %131 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %18, ptr noundef %130) #24, !range !5
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %302, label %133

133:                                              ; preds = %125
  %134 = tail call fastcc ptr @unshare_variable(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %18, i32 noundef %21) #24
  %135 = load ptr, ptr %134, align 8, !tbaa !10
  %136 = getelementptr inbounds %struct.variable_def, ptr %135, i64 0, i32 5
  %137 = icmp eq i32 %126, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133, %138
  %139 = phi i32 [ %141, %138 ], [ %126, %133 ]
  %140 = phi ptr [ %142, %138 ], [ %136, %133 ]
  %141 = add nsw i32 %139, -1
  %142 = load ptr, ptr %140, align 8, !tbaa !10
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %144, label %138, !llvm.loop !166

144:                                              ; preds = %138, %133
  %145 = phi ptr [ %136, %133 ], [ %142, %138 ]
  %146 = icmp eq ptr %128, null
  %147 = load ptr, ptr %145, align 8, !tbaa !10
  %148 = icmp eq ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %302, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.location_chain_def, ptr %128, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !160
  %153 = getelementptr inbounds %struct.location_chain_def, ptr %147, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !160
  %155 = icmp eq ptr %152, %154
  br i1 %155, label %302, label %156

156:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6493, ptr noundef nonnull @.str.2) #25
  br label %302

157:                                              ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  store i32 0, ptr %8, align 4, !tbaa !6
  %158 = load ptr, ptr %18, align 8, !tbaa !91
  %159 = icmp eq ptr %158, %3
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6500, ptr noundef nonnull @.str.2) #25
  br label %161

161:                                              ; preds = %157, %160
  %162 = call fastcc i32 @find_variable_location_part(ptr noundef nonnull %18, i64 noundef %4, ptr noundef nonnull %8) #24
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %164, label %203

164:                                              ; preds = %161
  %165 = zext nneg i32 %162 to i64
  %166 = getelementptr inbounds %struct.variable_def, ptr %18, i64 0, i32 5, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !95
  %168 = icmp eq ptr %167, null
  br i1 %168, label %195, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.location_chain_def, ptr %167, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !160
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 37
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load i32, ptr %1, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 37
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = call fastcc i32 @rhs_regno(ptr noundef nonnull %171) #24
  %181 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %186, label %183

183:                                              ; preds = %179, %175, %169
  %184 = call i32 @rtx_equal_p(ptr noundef nonnull %171, ptr noundef %1) #25
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %183, %179
  %187 = getelementptr inbounds %struct.location_chain_def, ptr %167, i64 0, i32 3
  %188 = load i32, ptr %187, align 8, !tbaa !167
  %189 = icmp ult i32 %188, %21
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 %21, ptr %187, align 8, !tbaa !167
  br label %191

191:                                              ; preds = %190, %186
  %192 = icmp eq ptr %6, null
  br i1 %192, label %301, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.location_chain_def, ptr %167, i64 0, i32 2
  store ptr %6, ptr %194, align 8, !tbaa !168
  br label %301

195:                                              ; preds = %183, %164
  %196 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %18, ptr noundef %197) #24, !range !5
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %248, label %200

200:                                              ; preds = %195
  %201 = call fastcc ptr @unshare_variable(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %18, i32 noundef %21) #24
  %202 = load ptr, ptr %201, align 8, !tbaa !10
  br label %248

203:                                              ; preds = %161
  %204 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !75
  %206 = call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %18, ptr noundef %205) #24, !range !5
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = call fastcc ptr @unshare_variable(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %18, i32 noundef %21) #24
  %210 = load ptr, ptr %209, align 8, !tbaa !10
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi ptr [ %209, %208 ], [ %2, %203 ]
  %213 = phi ptr [ %210, %208 ], [ %18, %203 ]
  %214 = getelementptr inbounds %struct.variable_def, ptr %213, i64 0, i32 2
  %215 = load i8, ptr %214, align 4, !tbaa !94
  %216 = icmp slt i8 %215, 16
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = icmp eq i8 %215, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %217
  %220 = load ptr, ptr %213, align 8, !tbaa !91
  %221 = call fastcc zeroext i8 @dv_onepart_p(ptr noundef %220) #24, !range !5
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219, %211
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6546, ptr noundef nonnull @.str.2) #25
  br label %224

224:                                              ; preds = %217, %219, %223
  %225 = load i8, ptr %214, align 4, !tbaa !94
  %226 = sext i8 %225 to i32
  %227 = load i32, ptr %8, align 4, !tbaa !6
  %228 = icmp slt i32 %227, %226
  br i1 %228, label %229, label %241

229:                                              ; preds = %224
  %230 = sext i8 %225 to i64
  %231 = sext i32 %227 to i64
  br label %232

232:                                              ; preds = %229, %232
  %233 = phi i64 [ %230, %229 ], [ %235, %232 ]
  %234 = getelementptr inbounds %struct.variable_def, ptr %213, i64 0, i32 5, i64 %233
  %235 = add nsw i64 %233, -1
  %236 = getelementptr inbounds %struct.variable_def, ptr %213, i64 0, i32 5, i64 %235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %234, ptr noundef nonnull align 8 dereferenceable(24) %236, i64 24, i1 false), !tbaa.struct !169
  %237 = icmp sgt i64 %235, %231
  br i1 %237, label %232, label %238, !llvm.loop !170

238:                                              ; preds = %232
  %239 = trunc i64 %235 to i32
  %240 = load i8, ptr %214, align 4, !tbaa !94
  br label %241

241:                                              ; preds = %238, %224
  %242 = phi i8 [ %225, %224 ], [ %240, %238 ]
  %243 = phi i32 [ %226, %224 ], [ %239, %238 ]
  %244 = add i8 %242, 1
  store i8 %244, ptr %214, align 4, !tbaa !94
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds %struct.variable_def, ptr %213, i64 0, i32 5, i64 %245
  %247 = getelementptr inbounds %struct.variable_def, ptr %213, i64 0, i32 5, i64 %245, i32 2
  store i64 %4, ptr %247, align 8, !tbaa !159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %246, i8 0, i64 16, i1 false)
  br label %248

248:                                              ; preds = %200, %195, %241
  %249 = phi i32 [ %162, %200 ], [ %162, %195 ], [ %243, %241 ]
  %250 = phi ptr [ %201, %200 ], [ %2, %195 ], [ %212, %241 ]
  %251 = phi ptr [ %202, %200 ], [ %18, %195 ], [ %213, %241 ]
  %252 = sext i32 %249 to i64
  %253 = getelementptr inbounds %struct.variable_def, ptr %251, i64 0, i32 5, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !95
  br label %255

255:                                              ; preds = %274, %248
  %256 = phi ptr [ %254, %248 ], [ %260, %274 ]
  %257 = phi ptr [ %253, %248 ], [ %256, %274 ]
  %258 = icmp eq ptr %256, null
  br i1 %258, label %298, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %256, align 8, !tbaa !97
  %261 = getelementptr inbounds %struct.location_chain_def, ptr %256, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !160
  %263 = load i32, ptr %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 37
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load i32, ptr %1, align 8
  %268 = and i32 %267, 65535
  %269 = icmp eq i32 %268, 37
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = call fastcc i32 @rhs_regno(ptr noundef nonnull %262) #24
  %272 = call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %280, label %274

274:                                              ; preds = %270, %266, %259
  %275 = call i32 @rtx_equal_p(ptr noundef nonnull %262, ptr noundef %1) #25
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %255, label %277, !llvm.loop !171

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.location_chain_def, ptr %256, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !160
  br label %280

280:                                              ; preds = %270, %277
  %281 = phi ptr [ %279, %277 ], [ %262, %270 ]
  %282 = getelementptr inbounds %struct.location_chain_def, ptr %256, i64 0, i32 3
  %283 = load i32, ptr %282, align 8, !tbaa !167
  %284 = call i32 @llvm.umax.i32(i32 %283, i32 %21)
  %285 = getelementptr inbounds %struct.location_chain_def, ptr %256, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !168
  %287 = icmp ne ptr %286, null
  %288 = icmp eq ptr %6, null
  %289 = and i1 %288, %287
  %290 = select i1 %289, ptr %286, ptr %6
  %291 = getelementptr inbounds %struct.variable_def, ptr %251, i64 0, i32 5, i64 %252, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !172
  %293 = icmp eq ptr %292, %281
  br i1 %293, label %294, label %296

294:                                              ; preds = %280
  store ptr null, ptr %291, align 8, !tbaa !172
  %295 = getelementptr inbounds %struct.variable_def, ptr %251, i64 0, i32 3
  store i8 1, ptr %295, align 1, !tbaa !157
  br label %296

296:                                              ; preds = %294, %280
  %297 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  call void @pool_free(ptr noundef %297, ptr noundef nonnull %256) #25
  store ptr %260, ptr %257, align 8, !tbaa !10
  br label %298

298:                                              ; preds = %255, %296
  %299 = phi i32 [ %284, %296 ], [ %21, %255 ]
  %300 = phi ptr [ %290, %296 ], [ %6, %255 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  br label %302

301:                                              ; preds = %191, %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  br label %324

302:                                              ; preds = %144, %150, %156, %125, %298, %23
  %303 = phi i32 [ %21, %23 ], [ %21, %156 ], [ %299, %298 ], [ %21, %125 ], [ %21, %150 ], [ %21, %144 ]
  %304 = phi ptr [ %6, %23 ], [ %6, %156 ], [ %300, %298 ], [ %6, %125 ], [ %6, %150 ], [ %6, %144 ]
  %305 = phi i64 [ 0, %23 ], [ 0, %156 ], [ %252, %298 ], [ 0, %125 ], [ 0, %150 ], [ 0, %144 ]
  %306 = phi ptr [ %2, %23 ], [ %134, %156 ], [ %250, %298 ], [ %2, %125 ], [ %134, %150 ], [ %134, %144 ]
  %307 = phi ptr [ %30, %23 ], [ %145, %156 ], [ %253, %298 ], [ %127, %125 ], [ %145, %150 ], [ %145, %144 ]
  %308 = phi ptr [ %25, %23 ], [ %135, %156 ], [ %251, %298 ], [ %18, %125 ], [ %135, %150 ], [ %135, %144 ]
  %309 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %310 = call ptr @pool_alloc(ptr noundef %309) #25
  %311 = getelementptr inbounds %struct.location_chain_def, ptr %310, i64 0, i32 1
  store ptr %1, ptr %311, align 8, !tbaa !160
  %312 = getelementptr inbounds %struct.location_chain_def, ptr %310, i64 0, i32 3
  store i32 %303, ptr %312, align 8, !tbaa !167
  %313 = getelementptr inbounds %struct.location_chain_def, ptr %310, i64 0, i32 2
  store ptr %304, ptr %313, align 8, !tbaa !168
  %314 = load ptr, ptr %307, align 8, !tbaa !10
  store ptr %314, ptr %310, align 8, !tbaa !97
  store ptr %310, ptr %307, align 8, !tbaa !10
  %315 = load i1, ptr @emit_notes, align 1
  %316 = select i1 %11, i1 %315, i1 false
  br i1 %316, label %317, label %319

317:                                              ; preds = %302
  %318 = load ptr, ptr %308, align 8, !tbaa !91
  call fastcc void @add_value_chains(ptr noundef %318, ptr noundef %1) #24
  br label %319

319:                                              ; preds = %317, %302
  %320 = getelementptr inbounds %struct.variable_def, ptr %308, i64 0, i32 5, i64 %305, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !172
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  call fastcc void @variable_was_changed(ptr noundef nonnull %308, ptr noundef %0) #24
  br label %324

324:                                              ; preds = %52, %79, %119, %301, %319, %323
  %325 = phi ptr [ %2, %301 ], [ %306, %323 ], [ %306, %319 ], [ %2, %119 ], [ %2, %79 ], [ %2, %52 ]
  ret ptr %325
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot_noinsert_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @shared_hash_htab(ptr noundef %0) #24
  %5 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 0) #25
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @shared_hash_htab(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.shared_hash_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @shared_hash_htab(ptr noundef %0) #24
  %5 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %0) #24, !range !5
  %6 = xor i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %7) #25
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @shared_hash_shared(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8, !tbaa !29
  %3 = icmp sgt i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_slot_unshare_1(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %5) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @shared_hash_unshare(ptr noundef %5) #24
  store ptr %9, ptr %0, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %5, %4 ]
  %12 = tail call fastcc ptr @shared_hash_htab(ptr noundef %11) #24
  %13 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_unshare(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !10
  %3 = tail call ptr @pool_alloc(ptr noundef %2) #25
  %4 = load i32, ptr %0, align 8, !tbaa !29
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @.str.2) #25
  br label %7

7:                                                ; preds = %1, %6
  store i32 1, ptr %3, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.shared_hash_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !31
  %10 = tail call i64 @htab_elements(ptr noundef %9) #25
  %11 = add i64 %10, 3
  %12 = tail call ptr @htab_create(i64 noundef %11, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #25
  %13 = getelementptr inbounds %struct.shared_hash_def, ptr %3, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !31
  %14 = load ptr, ptr %8, align 8, !tbaa !31
  tail call fastcc void @vars_copy(ptr noundef %12, ptr noundef %14) #24
  %15 = load i32, ptr %0, align 8, !tbaa !29
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr %0, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vars_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @htab_traverse_noresize(ptr noundef %1, ptr noundef nonnull @vars_copy_1, ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @vars_copy_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !93
  %7 = load ptr, ptr %3, align 8, !tbaa !91
  %8 = tail call fastcc i32 @dv_htab_hash(ptr noundef %7) #24
  %9 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %7, i32 noundef %8, i32 noundef 1) #25
  store ptr %3, ptr %9, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @canon_value_cmp(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.cselib_val_struct, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !173
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !173
  %13 = icmp slt i32 %8, %12
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %2
  %16 = phi i8 [ 1, %2 ], [ %14, %4 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @loc_cmp(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %169, label %4

4:                                                ; preds = %2, %36
  %5 = phi ptr [ %40, %36 ], [ %1, %2 ]
  %6 = phi ptr [ %38, %36 ], [ %0, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  %10 = load i32, ptr %5, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %9, label %13, label %26

13:                                               ; preds = %4
  br i1 %12, label %14, label %169

14:                                               ; preds = %13
  %15 = xor i32 %10, %7
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2673, ptr noundef nonnull @.str.2) #25
  br label %19

19:                                               ; preds = %14, %18
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #24
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #24
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %169, label %23

23:                                               ; preds = %19
  %24 = icmp ult i32 %20, %21
  %25 = select i1 %24, i32 -1, i32 1
  br label %169

26:                                               ; preds = %4
  br i1 %12, label %169, label %27

27:                                               ; preds = %26
  %28 = icmp eq i32 %8, 43
  %29 = icmp eq i32 %11, 43
  br i1 %28, label %30, label %42

30:                                               ; preds = %27
  br i1 %29, label %31, label %169

31:                                               ; preds = %30
  %32 = xor i32 %10, %7
  %33 = and i32 %32, 16711680
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2689, ptr noundef nonnull @.str.2) #25
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %169, label %4

42:                                               ; preds = %27
  br i1 %29, label %169, label %43

43:                                               ; preds = %42
  %44 = icmp eq i32 %8, 1
  %45 = icmp eq i32 %11, 1
  br i1 %44, label %46, label %51

46:                                               ; preds = %43
  br i1 %45, label %47, label %169

47:                                               ; preds = %46
  %48 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !5
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 1, i32 -1
  br label %169

51:                                               ; preds = %43
  br i1 %45, label %169, label %52

52:                                               ; preds = %51
  %53 = icmp eq i32 %8, %11
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %8, %11
  %56 = select i1 %55, i32 -1, i32 1
  br label %169

57:                                               ; preds = %52
  %58 = xor i32 %10, %7
  %59 = and i32 %58, 16711680
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2720, ptr noundef nonnull @.str.2) #25
  %62 = load i32, ptr %6, align 8
  br label %63

63:                                               ; preds = %57, %61
  %64 = phi i32 [ %7, %57 ], [ %62, %61 ]
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !22
  %72 = sub i32 0, %71
  %73 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !22
  %77 = sub i32 0, %76
  %78 = icmp ult i32 %72, %77
  %79 = select i1 %78, i32 -1, i32 1
  br label %169

80:                                               ; preds = %63
  %81 = zext nneg i32 %8 to i64
  %82 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %81
  %85 = load i8, ptr %84, align 1, !tbaa !22
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %169, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %89 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %90 = zext i8 %85 to i64
  br label %91

91:                                               ; preds = %87, %166
  %92 = phi i64 [ 0, %87 ], [ %167, %166 ]
  %93 = getelementptr inbounds i8, ptr %83, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !22
  switch i8 %94, label %165 [
    i8 119, label %95
    i8 110, label %104
    i8 105, label %104
    i8 86, label %113
    i8 69, label %113
    i8 101, label %142
    i8 83, label %149
    i8 115, label %149
    i8 117, label %166
    i8 48, label %166
    i8 116, label %166
  ]

95:                                               ; preds = %91
  %96 = getelementptr inbounds [1 x i64], ptr %88, i64 0, i64 %92
  %97 = load i64, ptr %96, align 8, !tbaa !22
  %98 = getelementptr inbounds [1 x i64], ptr %89, i64 0, i64 %92
  %99 = load i64, ptr %98, align 8, !tbaa !22
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %166, label %101

101:                                              ; preds = %95
  %102 = icmp slt i64 %97, %99
  %103 = select i1 %102, i32 -1, i32 1
  br label %169

104:                                              ; preds = %91, %91
  %105 = getelementptr inbounds [1 x %union.rtunion_def], ptr %88, i64 0, i64 %92
  %106 = load i32, ptr %105, align 8, !tbaa !22
  %107 = getelementptr inbounds [1 x %union.rtunion_def], ptr %89, i64 0, i64 %92
  %108 = load i32, ptr %107, align 8, !tbaa !22
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %166, label %110

110:                                              ; preds = %104
  %111 = icmp slt i32 %106, %108
  %112 = select i1 %111, i32 -1, i32 1
  br label %169

113:                                              ; preds = %91, %91
  %114 = getelementptr inbounds [1 x %union.rtunion_def], ptr %88, i64 0, i64 %92
  %115 = load ptr, ptr %114, align 8, !tbaa !22
  %116 = load i32, ptr %115, align 8, !tbaa !131
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %89, i64 0, i64 %92
  %118 = load ptr, ptr %117, align 8, !tbaa !22
  %119 = load i32, ptr %118, align 8, !tbaa !131
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = icmp sgt i32 %116, 0
  br i1 %122, label %132, label %166

123:                                              ; preds = %113
  %124 = icmp slt i32 %116, %119
  %125 = select i1 %124, i32 -1, i32 1
  br label %169

126:                                              ; preds = %132
  %127 = add nuw nsw i64 %133, 1
  %128 = load ptr, ptr %114, align 8, !tbaa !22
  %129 = load i32, ptr %128, align 8, !tbaa !131
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %166, !llvm.loop !174

132:                                              ; preds = %121, %126
  %133 = phi i64 [ %127, %126 ], [ 0, %121 ]
  %134 = phi ptr [ %128, %126 ], [ %115, %121 ]
  %135 = getelementptr inbounds %struct.rtvec_def, ptr %134, i64 0, i32 1, i64 %133
  %136 = load ptr, ptr %135, align 8, !tbaa !10
  %137 = load ptr, ptr %117, align 8, !tbaa !22
  %138 = getelementptr inbounds %struct.rtvec_def, ptr %137, i64 0, i32 1, i64 %133
  %139 = load ptr, ptr %138, align 8, !tbaa !10
  %140 = tail call fastcc i32 @loc_cmp(ptr noundef %136, ptr noundef %139) #24, !range !163
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %126, label %169

142:                                              ; preds = %91
  %143 = getelementptr inbounds [1 x %union.rtunion_def], ptr %88, i64 0, i64 %92
  %144 = load ptr, ptr %143, align 8, !tbaa !22
  %145 = getelementptr inbounds [1 x %union.rtunion_def], ptr %89, i64 0, i64 %92
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = tail call fastcc i32 @loc_cmp(ptr noundef %144, ptr noundef %146) #24, !range !163
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %166, label %169

149:                                              ; preds = %91, %91
  %150 = getelementptr inbounds [1 x %union.rtunion_def], ptr %88, i64 0, i64 %92
  %151 = load ptr, ptr %150, align 8, !tbaa !22
  %152 = getelementptr inbounds [1 x %union.rtunion_def], ptr %89, i64 0, i64 %92
  %153 = load ptr, ptr %152, align 8, !tbaa !22
  %154 = icmp eq ptr %151, %153
  br i1 %154, label %166, label %155

155:                                              ; preds = %149
  %156 = icmp eq ptr %151, null
  br i1 %156, label %169, label %157

157:                                              ; preds = %155
  %158 = icmp eq ptr %153, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %157
  %160 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %151, ptr noundef nonnull dereferenceable(1) %153) #24
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = icmp sgt i32 %160, -1
  %164 = select i1 %163, i32 1, i32 -1
  br label %169

165:                                              ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2803, ptr noundef nonnull @.str.2) #25
  br label %166

166:                                              ; preds = %126, %121, %91, %165, %95, %104, %142, %149, %159, %91, %91
  %167 = add nuw nsw i64 %92, 1
  %168 = icmp eq i64 %167, %90
  br i1 %168, label %169, label %91, !llvm.loop !175

169:                                              ; preds = %36, %26, %30, %142, %155, %157, %166, %132, %2, %80, %162, %123, %110, %101, %67, %54, %51, %47, %46, %42, %23, %19, %13
  %170 = phi i32 [ -1, %13 ], [ 0, %19 ], [ %25, %23 ], [ 1, %42 ], [ -1, %46 ], [ %50, %47 ], [ 1, %51 ], [ %56, %54 ], [ %79, %67 ], [ %103, %101 ], [ %112, %110 ], [ %125, %123 ], [ %164, %162 ], [ 0, %80 ], [ 0, %2 ], [ %140, %132 ], [ %147, %142 ], [ -1, %155 ], [ 1, %157 ], [ 0, %166 ], [ 0, %36 ], [ 1, %26 ], [ -1, %30 ]
  ret i32 %170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @shared_var_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 2, !tbaa !158
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp sgt i32 %4, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %1) #24, !range !5
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i8 [ 1, %2 ], [ %11, %10 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @unshare_variable(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !91
  %6 = tail call fastcc ptr @dv_pool(ptr noundef %5) #24
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #25
  %8 = load ptr, ptr %2, align 8, !tbaa !91
  store ptr %8, ptr %7, align 8, !tbaa !91
  %9 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 1
  store i32 1, ptr %9, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 2
  store i8 %14, ptr %15, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !157
  %18 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 3
  store i8 %17, ptr %18, align 1, !tbaa !157
  store i8 0, ptr %16, align 1, !tbaa !157
  %19 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 4
  store i8 0, ptr %19, align 2, !tbaa !158
  %20 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 2, i32 %3
  %23 = icmp sgt i8 %14, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %4, %62
  %25 = phi i8 [ %63, %62 ], [ %14, %4 ]
  %26 = phi i64 [ %67, %62 ], [ 0, %4 ]
  %27 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %26
  %28 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %26, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !159
  %30 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 5, i64 %26, i32 2
  store i64 %29, ptr %30, align 8, !tbaa !159
  %31 = load ptr, ptr %27, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 5, i64 %26
  br label %35

35:                                               ; preds = %33, %52
  %36 = phi ptr [ %58, %52 ], [ %31, %33 ]
  %37 = phi ptr [ %39, %52 ], [ %34, %33 ]
  %38 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %39 = tail call ptr @pool_alloc(ptr noundef %38) #25
  store ptr null, ptr %39, align 8, !tbaa !97
  %40 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !167
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %22)
  %43 = getelementptr inbounds %struct.location_chain_def, ptr %39, i64 0, i32 3
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !168
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %35
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 43
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %35
  br label %52

52:                                               ; preds = %47, %51
  %53 = phi ptr [ null, %51 ], [ %45, %47 ]
  %54 = getelementptr inbounds %struct.location_chain_def, ptr %39, i64 0, i32 2
  store ptr %53, ptr %54, align 8, !tbaa !168
  %55 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !160
  %57 = getelementptr inbounds %struct.location_chain_def, ptr %39, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !160
  store ptr %39, ptr %37, align 8, !tbaa !10
  %58 = load ptr, ptr %36, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %35, !llvm.loop !176

60:                                               ; preds = %52
  %61 = load i8, ptr %13, align 4, !tbaa !94
  br label %62

62:                                               ; preds = %60, %24
  %63 = phi i8 [ %61, %60 ], [ %25, %24 ]
  %64 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %26, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !172
  %66 = getelementptr inbounds %struct.variable_def, ptr %7, i64 0, i32 5, i64 %26, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !172
  %67 = add nuw nsw i64 %26, 1
  %68 = sext i8 %63 to i64
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %24, label %70, !llvm.loop !177

70:                                               ; preds = %62, %4
  store i1 false, ptr @dst_can_be_shared, align 1
  %71 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !75
  %73 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %72) #24, !range !5
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %2, align 8, !tbaa !91
  %77 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %71, ptr noundef %76, i32 noundef 0) #24
  br label %87

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !104
  %81 = icmp eq ptr %80, null
  %82 = icmp eq ptr %72, %80
  %83 = or i1 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %2, align 8, !tbaa !91
  %86 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %72, ptr noundef %85) #24
  br label %87

87:                                               ; preds = %78, %84, %75
  %88 = phi ptr [ %77, %75 ], [ %86, %84 ], [ %1, %78 ]
  store ptr %7, ptr %88, align 8, !tbaa !10
  %89 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 4
  %90 = load i8, ptr %89, align 2, !tbaa !158
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  %94 = load ptr, ptr %2, align 8, !tbaa !91
  %95 = tail call fastcc i32 @dv_htab_hash(ptr noundef %94) #24
  %96 = tail call ptr @htab_find_slot_with_hash(ptr noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef 0) #25
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  %98 = icmp eq ptr %97, %2
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1534, ptr noundef nonnull @.str.2) #25
  br label %100

100:                                              ; preds = %92, %99
  store i8 0, ptr %89, align 2, !tbaa !158
  tail call void @variable_htab_free(ptr noundef nonnull %2) #24
  store ptr %7, ptr %96, align 8, !tbaa !10
  store i8 1, ptr %19, align 2, !tbaa !158
  br label %101

101:                                              ; preds = %100, %87
  ret ptr %88
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @find_variable_location_part(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef writeonly %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !94
  %6 = sext i8 %5 to i32
  %7 = icmp eq i8 %5, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %19, %8 ], [ %6, %3 ]
  %10 = phi i32 [ %18, %8 ], [ 0, %3 ]
  %11 = add nsw i32 %9, %10
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %13, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !159
  %16 = icmp slt i64 %15, %1
  %17 = add nsw i32 %12, 1
  %18 = select i1 %16, i32 %17, i32 %10
  %19 = select i1 %16, i32 %9, i32 %12
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %8, !llvm.loop !178

21:                                               ; preds = %8, %3
  %22 = phi i32 [ 0, %3 ], [ %18, %8 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 %22, ptr %2, align 4, !tbaa !6
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp slt i32 %22, %6
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = sext i32 %22 to i64
  %29 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %28, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !159
  %31 = icmp eq i64 %30, %1
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %25
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi i32 [ -1, %32 ], [ %22, %27 ]
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_value_chains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !10
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %11 [
    i16 1, label %6
    i16 2, label %6
    i16 37, label %13
    i16 43, label %8
  ]

6:                                                ; preds = %2, %2
  %7 = call i32 @add_value_chain(ptr noundef nonnull %3, ptr noundef %0) #24
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %10, ptr %3, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %2, %8
  %12 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @add_value_chain, ptr noundef %0) #25
  br label %13

13:                                               ; preds = %2, %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @variable_was_changed(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i1, ptr @emit_notes, align 1
  br i1 %3, label %4, label %47

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !91
  %6 = tail call fastcc i32 @dv_htab_hash(ptr noundef %5) #24
  tail call fastcc void @set_dv_changed(ptr noundef %5, i8 noundef zeroext 1) #24
  %7 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  %8 = load ptr, ptr %0, align 8, !tbaa !91
  %9 = tail call ptr @htab_find_slot_with_hash(ptr noundef %7, ptr noundef %8, i32 noundef %6, i32 noundef 1) #25
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !158
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6281, ptr noundef nonnull @.str.2) #25
  %17 = load ptr, ptr %9, align 8, !tbaa !10
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %10, %12 ], [ %17, %16 ]
  store i8 0, ptr %13, align 2, !tbaa !158
  %20 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 3
  %21 = load i8, ptr %20, align 1, !tbaa !157
  tail call void @variable_htab_free(ptr noundef %19) #24
  %22 = icmp eq i8 %21, 0
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ %22, %18 ], [ true, %4 ]
  %25 = icmp eq ptr %1, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %28 = load i8, ptr %27, align 4, !tbaa !94
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !93
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !93
  %34 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 4
  store i8 1, ptr %34, align 2, !tbaa !158
  br i1 %24, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 3
  store i8 1, ptr %36, align 1, !tbaa !157
  br label %37

37:                                               ; preds = %35, %30
  store ptr %0, ptr %9, align 8, !tbaa !10
  br label %72

38:                                               ; preds = %26
  %39 = load ptr, ptr %0, align 8, !tbaa !91
  %40 = tail call fastcc ptr @dv_pool(ptr noundef %39) #24
  %41 = tail call ptr @pool_alloc(ptr noundef %40) #25
  %42 = load ptr, ptr %0, align 8, !tbaa !91
  store ptr %42, ptr %41, align 8, !tbaa !91
  %43 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 1
  store i32 1, ptr %43, align 8, !tbaa !93
  %44 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 2
  store i8 0, ptr %44, align 4, !tbaa !94
  %45 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 3
  store i8 1, ptr %45, align 1, !tbaa !157
  %46 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 4
  store i8 1, ptr %46, align 2, !tbaa !158
  store ptr %41, ptr %9, align 8, !tbaa !10
  br label %54

47:                                               ; preds = %2
  %48 = icmp eq ptr %1, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6312, ptr noundef nonnull @.str.2) #25
  br label %50

50:                                               ; preds = %47, %49
  %51 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %52 = load i8, ptr %51, align 4, !tbaa !94
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %38, %50
  %55 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = load ptr, ptr %0, align 8, !tbaa !91
  %58 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %56, ptr noundef %57) #24
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %55, align 8, !tbaa !75
  %62 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %61) #24, !range !5
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !91
  %66 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %55, ptr noundef %65, i32 noundef 0) #24
  %67 = load ptr, ptr %55, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi ptr [ %67, %64 ], [ %61, %60 ]
  %70 = phi ptr [ %66, %64 ], [ %58, %60 ]
  %71 = tail call fastcc ptr @shared_hash_htab(ptr noundef %69) #24
  tail call void @htab_clear_slot(ptr noundef %71, ptr noundef %70) #25
  br label %72

72:                                               ; preds = %37, %50, %68, %54
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_value_chain(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %42 [
    i16 1, label %9
    i16 2, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %3, %2 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @value_chains, align 8, !tbaa !10
  %14 = tail call fastcc i32 @dv_htab_hash(ptr noundef %10) #24
  %15 = tail call ptr @htab_find_slot_with_hash(ptr noundef %13, ptr noundef %10, i32 noundef %14, i32 noundef 1) #25
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load ptr, ptr @value_chain_pool, align 8, !tbaa !10
  %20 = tail call ptr @pool_alloc(ptr noundef %19) #25
  %21 = getelementptr inbounds %struct.value_chain_def, ptr %20, i64 0, i32 1
  store ptr %10, ptr %21, align 8, !tbaa !101
  store ptr null, ptr %20, align 8, !tbaa !179
  %22 = getelementptr inbounds %struct.value_chain_def, ptr %20, i64 0, i32 2
  store i32 0, ptr %22, align 8, !tbaa !180
  store ptr %20, ptr %15, align 8, !tbaa !10
  br label %35

23:                                               ; preds = %12, %27
  %24 = phi ptr [ %25, %27 ], [ %16, %12 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.value_chain_def, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %23, !llvm.loop !181

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.value_chain_def, ptr %25, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !180
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !180
  br label %42

35:                                               ; preds = %23, %18
  %36 = phi ptr [ %20, %18 ], [ %16, %23 ]
  %37 = load ptr, ptr @value_chain_pool, align 8, !tbaa !10
  %38 = tail call ptr @pool_alloc(ptr noundef %37) #25
  %39 = getelementptr inbounds %struct.value_chain_def, ptr %38, i64 0, i32 1
  store ptr %1, ptr %39, align 8, !tbaa !101
  %40 = load ptr, ptr %36, align 8, !tbaa !179
  store ptr %40, ptr %38, align 8, !tbaa !179
  %41 = getelementptr inbounds %struct.value_chain_def, ptr %38, i64 0, i32 2
  store i32 1, ptr %41, align 8, !tbaa !180
  store ptr %38, ptr %36, align 8, !tbaa !179
  br label %42

42:                                               ; preds = %9, %2, %35, %31
  ret i32 0
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_dv_changed(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 {
  %3 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) #24, !range !5
  %4 = icmp eq i8 %3, 0
  %5 = and i8 %1, 1
  br i1 %4, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = zext nneg i8 %5 to i32
  %9 = shl nuw nsw i32 %8, 30
  %10 = and i32 %7, -1073741825
  %11 = or disjoint i32 %10, %9
  store i32 %11, ptr %0, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load i64, ptr %0, align 8
  %14 = zext nneg i8 %5 to i64
  %15 = shl nuw nsw i64 %14, 40
  %16 = and i64 %13, -1099511627777
  %17 = or disjoint i64 %16, %15
  store i64 %17, ptr %0, align 8
  br label %18

18:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 645, ptr noundef nonnull @.str.2) #25
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_micro_operation_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !182
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_uses_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_uses, ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_micro_operation_base_address(ptr noundef readnone %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @add_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.micro_operation_def, align 8
  %7 = alloca %struct.micro_operation_def, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  %8 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  %10 = call fastcc i32 @use_type(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #24, !range !184
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %357, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4, !tbaa !6
  store i32 %13, ptr %5, align 4, !tbaa !6
  %14 = load i32, ptr %0, align 8
  %15 = trunc i32 %14 to i16
  switch i16 %15, label %357 [
    i16 37, label %16
    i16 43, label %66
  ]

16:                                               ; preds = %12
  %17 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5227, ptr noundef nonnull @.str.2) #25
  br label %20

20:                                               ; preds = %16, %19
  %21 = load i32, ptr %1, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 25
  %24 = icmp ne i32 %10, 4
  %25 = and i1 %24, %23
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = call fastcc i32 @use_type(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %5) #24, !range !184
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, ptr %1, align 8
  %31 = trunc i32 %30 to i16
  switch i16 %31, label %38 [
    i16 25, label %32
    i16 23, label %34
  ]

32:                                               ; preds = %29, %20, %26
  %33 = phi i8 [ 0, %20 ], [ 1, %29 ], [ 0, %26 ]
  store i32 7, ptr %6, align 8, !tbaa !55
  br label %174

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %29
  %39 = load i32, ptr %5, align 4, !tbaa !6
  %40 = call fastcc ptr @var_lowpart(i32 noundef %39, ptr noundef nonnull %0) #24
  br label %49

41:                                               ; preds = %34
  %42 = load i32, ptr %5, align 4, !tbaa !6
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = call fastcc ptr @var_lowpart(i32 noundef %42, ptr noundef %44) #24
  %46 = load i32, ptr %5, align 4, !tbaa !6
  %47 = call fastcc ptr @var_lowpart(i32 noundef %46, ptr noundef nonnull %0) #24
  %48 = icmp eq ptr %45, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %38, %41
  %50 = phi ptr [ %40, %38 ], [ %47, %41 ]
  store i32 5, ptr %6, align 8, !tbaa !55
  br label %174

51:                                               ; preds = %41
  %52 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %47, ptr noundef nonnull %45) #25
  %53 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %54, align 8, !tbaa !185
  %58 = getelementptr inbounds %struct.reg_attrs, ptr %54, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !187
  br label %60

60:                                               ; preds = %51, %56
  %61 = phi ptr [ %57, %56 ], [ null, %51 ]
  %62 = phi i64 [ %59, %56 ], [ 0, %51 ]
  %63 = call fastcc zeroext i8 @same_variable_part_p(ptr noundef nonnull %45, ptr noundef %61, i64 noundef %62) #24, !range !5
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 5, i32 6
  store i32 %65, ptr %6, align 8, !tbaa !55
  br label %174

66:                                               ; preds = %12
  %67 = call fastcc i32 @use_type(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %5) #24, !range !184
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i8
  br i1 %68, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !113
  %73 = icmp eq ptr %72, null
  br i1 %73, label %357, label %74

74:                                               ; preds = %70, %66
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  %78 = icmp eq i32 %10, 4
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %125

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !22
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  switch i16 %84, label %96 [
    i16 37, label %125
    i16 43, label %125
    i16 49, label %85
  ]

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !22
  %88 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 30
  br i1 %95, label %125, label %96

96:                                               ; preds = %80, %90, %85
  %97 = call fastcc i32 @get_address_mode(ptr noundef nonnull %0) #24
  %98 = load ptr, ptr %81, align 8, !tbaa !22
  %99 = call ptr @cselib_lookup(ptr noundef %98, i32 noundef %97, i32 noundef 0) #25
  %100 = icmp eq ptr %99, null
  br i1 %100, label %125, label %101

101:                                              ; preds = %96
  %102 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %99) #25
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  call fastcc void @preserve_value(ptr noundef nonnull %99) #24
  store i32 2, ptr %6, align 8, !tbaa !55
  %105 = load ptr, ptr %81, align 8, !tbaa !22
  %106 = call ptr @cselib_subst_to_values(ptr noundef %105) #25
  %107 = getelementptr inbounds %struct.cselib_val_struct, ptr %99, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !108
  %109 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %97, ptr noundef %108, ptr noundef %106) #25
  %110 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !22
  %111 = load ptr, ptr %2, align 8, !tbaa !110
  %112 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 1
  store ptr %111, ptr %112, align 8, !tbaa !57
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %104
  %116 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %8, align 8, !tbaa !112
  %121 = load i32, ptr %6, align 8, !tbaa !55
  call fastcc void @log_op_type(ptr noundef %109, ptr noundef %120, ptr noundef %111, i32 noundef %121, ptr noundef nonnull %113) #24
  br label %122

122:                                              ; preds = %119, %115, %104
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %124, ptr noundef nonnull %6) #24
  br label %125

125:                                              ; preds = %96, %101, %122, %80, %80, %90, %74
  %126 = load i32, ptr %1, align 8
  %127 = and i32 %126, 65535
  %128 = icmp ne i32 %127, 25
  %129 = and i1 %68, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  store i32 7, ptr %6, align 8, !tbaa !55
  br i1 %68, label %131, label %174

131:                                              ; preds = %130
  %132 = load i32, ptr %5, align 4, !tbaa !6
  %133 = call fastcc ptr @var_lowpart(i32 noundef %132, ptr noundef nonnull %0) #24
  br label %174

134:                                              ; preds = %125
  %135 = icmp eq i32 %127, 23
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !22
  %139 = icmp eq ptr %138, %0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136, %134
  %141 = load i32, ptr %5, align 4, !tbaa !6
  %142 = call fastcc ptr @var_lowpart(i32 noundef %141, ptr noundef nonnull %0) #24
  br label %151

143:                                              ; preds = %136
  %144 = load i32, ptr %5, align 4, !tbaa !6
  %145 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = call fastcc ptr @var_lowpart(i32 noundef %144, ptr noundef %146) #24
  %148 = load i32, ptr %5, align 4, !tbaa !6
  %149 = call fastcc ptr @var_lowpart(i32 noundef %148, ptr noundef nonnull %0) #24
  %150 = icmp eq ptr %147, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %140, %143
  %152 = phi ptr [ %142, %140 ], [ %149, %143 ]
  store i32 5, ptr %6, align 8, !tbaa !55
  br label %174

153:                                              ; preds = %143
  %154 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %149, ptr noundef nonnull %147) #25
  %155 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = getelementptr inbounds %struct.rtx_def, ptr %149, i64 0, i32 1, i32 0, i32 0, i64 1
  %158 = load ptr, ptr %157, align 8, !tbaa !22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr %158, align 8, !tbaa !188
  %162 = getelementptr inbounds %struct.mem_attrs, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !190
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %167 = load i64, ptr %166, align 8, !tbaa !22
  br label %168

168:                                              ; preds = %153, %160, %165
  %169 = phi ptr [ %161, %165 ], [ %161, %160 ], [ null, %153 ]
  %170 = phi i64 [ %167, %165 ], [ 0, %160 ], [ 0, %153 ]
  %171 = call fastcc zeroext i8 @same_variable_part_p(ptr noundef %156, ptr noundef %169, i64 noundef %170) #24, !range !5
  %172 = icmp eq i8 %171, 0
  %173 = select i1 %172, i32 5, i32 6
  store i32 %173, ptr %6, align 8, !tbaa !55
  br label %174

174:                                              ; preds = %168, %151, %130, %131, %32, %60, %49
  %175 = phi ptr [ %50, %49 ], [ %52, %60 ], [ %0, %32 ], [ %152, %151 ], [ %154, %168 ], [ %133, %131 ], [ %0, %130 ]
  %176 = phi i8 [ 1, %49 ], [ 1, %60 ], [ %33, %32 ], [ %69, %151 ], [ %69, %168 ], [ %69, %131 ], [ %69, %130 ]
  %177 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  store ptr %175, ptr %177, align 8, !tbaa !22
  %178 = load ptr, ptr %2, align 8, !tbaa !110
  %179 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 1
  store ptr %178, ptr %179, align 8, !tbaa !57
  %180 = icmp eq i32 %10, 4
  br i1 %180, label %181, label %341

181:                                              ; preds = %174
  %182 = load i32, ptr %4, align 4, !tbaa !6
  %183 = call fastcc ptr @find_use_val(ptr noundef nonnull %0, i32 noundef %182, ptr noundef nonnull %2) #24
  %184 = icmp eq ptr %183, null
  br i1 %184, label %341, label %185

185:                                              ; preds = %181
  %186 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %183) #25
  %187 = icmp eq i8 %186, 0
  %188 = call fastcc ptr @replace_expr_with_values(ptr noundef nonnull %0) #24
  %189 = icmp eq ptr %188, null
  %190 = select i1 %189, ptr %0, ptr %188
  %191 = load ptr, ptr %2, align 8, !tbaa !110
  %192 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !22
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 14
  br i1 %196, label %197, label %232

197:                                              ; preds = %185
  %198 = load i32, ptr %190, align 8
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  %201 = call ptr @cselib_lookup(ptr noundef nonnull %190, i32 noundef %200, i32 noundef 0) #25
  %202 = icmp eq ptr %201, %183
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5339, ptr noundef nonnull @.str.2) #25
  br label %204

204:                                              ; preds = %197, %203
  %205 = load i32, ptr %190, align 8
  %206 = trunc i32 %205 to i16
  switch i16 %206, label %207 [
    i16 37, label %208
    i16 43, label %208
  ]

207:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5340, ptr noundef nonnull @.str.2) #25
  br label %208

208:                                              ; preds = %204, %204, %207
  %209 = call zeroext i8 @cselib_preserved_value_p(ptr noundef %201) #25
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %281

211:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #26
  call fastcc void @preserve_value(ptr noundef %201) #24
  store i32 2, ptr %7, align 8, !tbaa !55
  %212 = load i32, ptr %4, align 4, !tbaa !6
  %213 = getelementptr inbounds %struct.cselib_val_struct, ptr %201, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !108
  %215 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %212, ptr noundef %214, ptr noundef nonnull %190) #25
  %216 = getelementptr inbounds %struct.micro_operation_def, ptr %7, i64 0, i32 2
  store ptr %215, ptr %216, align 8, !tbaa !22
  %217 = load i32, ptr %215, align 8
  %218 = or i32 %217, 134217728
  store i32 %218, ptr %215, align 8
  %219 = load ptr, ptr %2, align 8, !tbaa !110
  %220 = getelementptr inbounds %struct.micro_operation_def, ptr %7, i64 0, i32 1
  store ptr %219, ptr %220, align 8, !tbaa !57
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %222 = icmp eq ptr %221, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %211
  %224 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %225 = and i32 %224, 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %8, align 8, !tbaa !112
  call fastcc void @log_op_type(ptr noundef nonnull %215, ptr noundef %228, ptr noundef %219, i32 noundef 2, ptr noundef nonnull %221) #24
  br label %229

229:                                              ; preds = %227, %223, %211
  %230 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %231, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #26
  br label %281

232:                                              ; preds = %185
  %233 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !22
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 23
  br i1 %187, label %238, label %275

238:                                              ; preds = %232
  br i1 %237, label %239, label %281

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %241 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !22
  %243 = call fastcc ptr @replace_expr_with_values(ptr noundef %242) #24
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %256

245:                                              ; preds = %239
  %246 = load i32, ptr %4, align 4, !tbaa !6
  %247 = load i32, ptr %5, align 4, !tbaa !6
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %263, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %241, align 8, !tbaa !22
  %251 = load ptr, ptr %240, align 8, !tbaa !22
  %252 = icmp eq ptr %190, %251
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5369, ptr noundef nonnull @.str.2) #25
  br label %254

254:                                              ; preds = %253, %249
  %255 = icmp eq ptr %250, null
  br i1 %255, label %263, label %256

256:                                              ; preds = %239, %254
  %257 = phi ptr [ %250, %254 ], [ %243, %239 ]
  %258 = load ptr, ptr %233, align 8, !tbaa !22
  %259 = load i32, ptr %258, align 8
  %260 = lshr i32 %259, 16
  %261 = and i32 %260, 255
  %262 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef %261, ptr noundef nonnull %190, ptr noundef nonnull %257) #25
  br label %281

263:                                              ; preds = %245, %254
  %264 = load ptr, ptr %233, align 8, !tbaa !22
  %265 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !22
  %267 = icmp eq ptr %190, %266
  %268 = select i1 %267, ptr %264, ptr %190
  %269 = getelementptr inbounds %struct.rtx_def, ptr %264, i64 0, i32 1, i32 0, i32 0, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !22
  %271 = load i32, ptr %270, align 8
  %272 = and i32 %271, 65535
  %273 = icmp eq i32 %272, 37
  %274 = select i1 %273, i32 134217728, i32 0
  br label %281

275:                                              ; preds = %232
  br i1 %237, label %276, label %281

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.rtx_def, ptr %234, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !22
  %279 = icmp eq ptr %190, %278
  %280 = select i1 %279, ptr %234, ptr %190
  br label %281

281:                                              ; preds = %238, %263, %276, %208, %229, %256, %275
  %282 = phi i32 [ 134217728, %256 ], [ 0, %275 ], [ 0, %229 ], [ 0, %208 ], [ 0, %276 ], [ %274, %263 ], [ 0, %238 ]
  %283 = phi ptr [ %262, %256 ], [ %190, %275 ], [ %190, %229 ], [ %190, %208 ], [ %280, %276 ], [ %268, %263 ], [ %190, %238 ]
  %284 = load i32, ptr %4, align 4, !tbaa !6
  %285 = getelementptr inbounds %struct.cselib_val_struct, ptr %183, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !108
  %287 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %284, ptr noundef %286, ptr noundef %283) #25
  %288 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !22
  %290 = icmp eq ptr %289, %283
  br i1 %290, label %296, label %291

291:                                              ; preds = %281
  %292 = load i32, ptr %289, align 8
  %293 = lshr i32 %292, 16
  %294 = and i32 %293, 255
  %295 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %294, ptr noundef %287, ptr noundef nonnull %289) #25
  br label %296

296:                                              ; preds = %291, %281
  %297 = phi ptr [ %295, %291 ], [ %287, %281 ]
  %298 = load ptr, ptr %2, align 8, !tbaa !110
  %299 = getelementptr inbounds %struct.rtx_def, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !22
  %301 = load i32, ptr %300, align 8
  %302 = and i32 %301, 65535
  %303 = icmp eq i32 %302, 14
  br i1 %303, label %316, label %304

304:                                              ; preds = %296
  %305 = load ptr, ptr %285, align 8, !tbaa !108
  %306 = call fastcc ptr @reverse_op(ptr noundef %305, ptr noundef nonnull %1) #24
  %307 = icmp eq ptr %306, null
  br i1 %307, label %316, label %308

308:                                              ; preds = %304
  %309 = load ptr, ptr %288, align 8, !tbaa !22
  %310 = load i32, ptr %309, align 8
  %311 = lshr i32 %310, 16
  %312 = and i32 %311, 255
  %313 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %312, ptr noundef %297, ptr noundef nonnull %306) #25
  %314 = load i32, ptr %313, align 8
  %315 = or i32 %314, -2147483648
  store i32 %315, ptr %313, align 8
  br label %316

316:                                              ; preds = %304, %308, %296
  %317 = phi ptr [ %313, %308 ], [ %297, %304 ], [ %297, %296 ]
  store ptr %317, ptr %288, align 8, !tbaa !22
  %318 = icmp eq i8 %176, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %316
  %320 = load i32, ptr %317, align 8
  %321 = or i32 %320, 536870912
  store i32 %321, ptr %317, align 8
  br label %322

322:                                              ; preds = %319, %316
  br i1 %187, label %323, label %327

323:                                              ; preds = %322
  %324 = load i32, ptr %317, align 8
  %325 = and i32 %324, -134217729
  %326 = or disjoint i32 %325, %282
  store i32 %326, ptr %317, align 8
  call fastcc void @preserve_value(ptr noundef nonnull %183) #24
  br label %327

327:                                              ; preds = %323, %322
  %328 = load i32, ptr %6, align 8, !tbaa !55
  %329 = icmp eq i32 %328, 7
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, ptr %317, align 8
  %332 = or i32 %331, 67108864
  store i32 %332, ptr %317, align 8
  %333 = load i32, ptr %6, align 8, !tbaa !55
  br label %334

334:                                              ; preds = %330, %327
  %335 = phi i32 [ %333, %330 ], [ %328, %327 ]
  %336 = icmp eq i32 %335, 6
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, ptr %317, align 8
  %339 = or i32 %338, 16777216
  store i32 %339, ptr %317, align 8
  br label %340

340:                                              ; preds = %337, %334
  store i32 4, ptr %6, align 8, !tbaa !55
  br label %341

341:                                              ; preds = %181, %174, %340
  %342 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %343 = icmp eq ptr %342, null
  br i1 %343, label %354, label %344

344:                                              ; preds = %341
  %345 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %346 = and i32 %345, 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !22
  %351 = load ptr, ptr %8, align 8, !tbaa !112
  %352 = load ptr, ptr %2, align 8, !tbaa !110
  %353 = load i32, ptr %6, align 8, !tbaa !55
  call fastcc void @log_op_type(ptr noundef %350, ptr noundef %351, ptr noundef %352, i32 noundef %353, ptr noundef nonnull %342) #24
  br label %354

354:                                              ; preds = %348, %344, %341
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %356, ptr noundef nonnull %6) #24
  br label %357

357:                                              ; preds = %70, %12, %3, %354
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_uses(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.micro_operation_def, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.micro_operation_def, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.micro_operation_def, align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !6
  %11 = call fastcc i32 @use_type(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %3) #24, !range !184
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %265, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  store i32 %11, ptr %4, align 8, !tbaa !55
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4, !tbaa !6
  %19 = call fastcc ptr @var_lowpart(i32 noundef %18, ptr noundef %10) #24
  %20 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !22
  %21 = load ptr, ptr %1, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !57
  br label %251

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 2
  store ptr %10, ptr %24, align 8, !tbaa !22
  %25 = load ptr, ptr %1, align 8, !tbaa !110
  %26 = getelementptr inbounds %struct.micro_operation_def, ptr %4, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !57
  switch i32 %11, label %250 [
    i32 3, label %27
    i32 2, label %156
    i32 1, label %251
  ]

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  store ptr %29, ptr %5, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4952, ptr noundef nonnull @.str.2) #25
  br label %34

34:                                               ; preds = %27, %33
  %35 = load i32, ptr %29, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = load i32, ptr %40, align 8
  %42 = trunc i32 %41 to i16
  switch i16 %42, label %54 [
    i16 37, label %83
    i16 43, label %83
    i16 49, label %43
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 30
  br i1 %53, label %83, label %54

54:                                               ; preds = %38, %48, %43
  %55 = call fastcc i32 @get_address_mode(ptr noundef nonnull %29) #24
  %56 = load ptr, ptr %39, align 8, !tbaa !22
  %57 = call ptr @cselib_lookup(ptr noundef %56, i32 noundef %55, i32 noundef 0) #25
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %54
  %60 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %57) #25
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  call fastcc void @preserve_value(ptr noundef nonnull %57) #24
  %63 = load ptr, ptr %39, align 8, !tbaa !22
  %64 = call ptr @cselib_subst_to_values(ptr noundef %63) #25
  store i32 2, ptr %6, align 8, !tbaa !55
  %65 = load ptr, ptr %1, align 8, !tbaa !110
  %66 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !57
  %67 = getelementptr inbounds %struct.cselib_val_struct, ptr %57, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !108
  %69 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %55, ptr noundef %68, ptr noundef %64) #25
  %70 = getelementptr inbounds %struct.micro_operation_def, ptr %6, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !22
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %62
  %74 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %14, align 8, !tbaa !112
  %79 = load ptr, ptr %1, align 8, !tbaa !110
  call fastcc void @log_op_type(ptr noundef %69, ptr noundef %78, ptr noundef %79, i32 noundef 2, ptr noundef nonnull %71) #24
  br label %80

80:                                               ; preds = %77, %73, %62
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %82, ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  br label %83

83:                                               ; preds = %54, %59, %80, %38, %38, %48, %34
  %84 = load i32, ptr %29, align 8
  %85 = and i32 %84, 65535
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !6
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = icmp eq i32 %85, 35
  br i1 %91, label %92, label %154

92:                                               ; preds = %90
  %93 = call i32 @for_each_rtx(ptr noundef nonnull %5, ptr noundef nonnull @non_suitable_const, ptr noundef null) #25
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %154

95:                                               ; preds = %92
  %96 = load ptr, ptr %5, align 8, !tbaa !10
  %97 = load i32, ptr %96, align 8
  br label %98

98:                                               ; preds = %95, %83
  %99 = phi i32 [ %97, %95 ], [ %84, %83 ]
  %100 = phi ptr [ %96, %95 ], [ %29, %83 ]
  %101 = and i32 %99, 65535
  %102 = icmp eq i32 %101, 25
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !22
  %106 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %139, label %108

108:                                              ; preds = %103, %98
  %109 = load i32, ptr %10, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = call fastcc ptr @find_use_val(ptr noundef nonnull %100, i32 noundef %111, ptr noundef nonnull %1) #24
  %113 = icmp eq ptr %112, null
  %114 = load ptr, ptr %5, align 8, !tbaa !10
  br i1 %113, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, ptr %114, align 8
  br label %139

117:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #26
  %118 = call fastcc ptr @replace_expr_with_values(ptr noundef %114) #24
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %10) #25
  %122 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %118, ptr %122, align 8, !tbaa !22
  br label %123

123:                                              ; preds = %120, %117
  %124 = phi ptr [ %121, %120 ], [ %10, %117 ]
  %125 = load i32, ptr %3, align 4, !tbaa !6
  %126 = getelementptr inbounds %struct.cselib_val_struct, ptr %112, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !108
  %128 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %125, ptr noundef %127, ptr noundef nonnull %124) #25
  %129 = load ptr, ptr %5, align 8, !tbaa !10
  %130 = call fastcc i32 @use_type(ptr noundef %129, ptr noundef null, ptr noundef nonnull %7) #24, !range !184
  switch i32 %130, label %131 [
    i32 7, label %132
    i32 0, label %138
    i32 1, label %138
  ]

131:                                              ; preds = %123
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5004, ptr noundef nonnull @.str.2) #25
  br label %138

132:                                              ; preds = %123
  %133 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %112) #25
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, ptr %128, align 8
  %137 = or i32 %136, 134217728
  store i32 %137, ptr %128, align 8
  call fastcc void @preserve_value(ptr noundef nonnull %112) #24
  br label %138

138:                                              ; preds = %131, %123, %123, %135, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #26
  br label %154

139:                                              ; preds = %115, %103
  %140 = phi i32 [ %116, %115 ], [ %99, %103 ]
  %141 = phi ptr [ %114, %115 ], [ %100, %103 ]
  %142 = and i32 %140, 65535
  %143 = icmp eq i32 %142, 25
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %148 = icmp eq ptr %146, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %144, %139
  %150 = call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %10) #25
  %151 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %152 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %151) #25
  %153 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %152, ptr %153, align 8, !tbaa !22
  br label %154

154:                                              ; preds = %138, %149, %144, %90, %92
  %155 = phi ptr [ %10, %90 ], [ %10, %92 ], [ %10, %144 ], [ %150, %149 ], [ %128, %138 ]
  store ptr %155, ptr %24, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %251

156:                                              ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  store i32 0, ptr %8, align 4, !tbaa !6
  %157 = load i32, ptr %10, align 8
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  %160 = call fastcc ptr @find_use_val(ptr noundef nonnull %10, i32 noundef %159, ptr noundef nonnull %1) #24
  %161 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !113
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5028, ptr noundef nonnull @.str.2) #25
  br label %165

165:                                              ; preds = %156, %164
  %166 = load i32, ptr %10, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 43
  br i1 %168, label %169, label %214

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !22
  %172 = load i32, ptr %171, align 8
  %173 = trunc i32 %172 to i16
  switch i16 %173, label %185 [
    i16 37, label %214
    i16 43, label %214
    i16 49, label %174
  ]

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !22
  %177 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 1
  %181 = load ptr, ptr %180, align 8, !tbaa !22
  %182 = load i32, ptr %181, align 8
  %183 = and i32 %182, 65535
  %184 = icmp eq i32 %183, 30
  br i1 %184, label %214, label %185

185:                                              ; preds = %169, %179, %174
  %186 = call fastcc i32 @get_address_mode(ptr noundef nonnull %10) #24
  %187 = load ptr, ptr %170, align 8, !tbaa !22
  %188 = call ptr @cselib_lookup(ptr noundef %187, i32 noundef %186, i32 noundef 0) #25
  %189 = icmp eq ptr %188, null
  br i1 %189, label %214, label %190

190:                                              ; preds = %185
  %191 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %188) #25
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #26
  call fastcc void @preserve_value(ptr noundef nonnull %188) #24
  %194 = load ptr, ptr %170, align 8, !tbaa !22
  %195 = call ptr @cselib_subst_to_values(ptr noundef %194) #25
  store i32 2, ptr %9, align 8, !tbaa !55
  %196 = load ptr, ptr %1, align 8, !tbaa !110
  %197 = getelementptr inbounds %struct.micro_operation_def, ptr %9, i64 0, i32 1
  store ptr %196, ptr %197, align 8, !tbaa !57
  %198 = getelementptr inbounds %struct.cselib_val_struct, ptr %188, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !108
  %200 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %186, ptr noundef %199, ptr noundef %195) #25
  %201 = getelementptr inbounds %struct.micro_operation_def, ptr %9, i64 0, i32 2
  store ptr %200, ptr %201, align 8, !tbaa !22
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %203 = icmp eq ptr %202, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %193
  %205 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr %14, align 8, !tbaa !112
  %210 = load ptr, ptr %1, align 8, !tbaa !110
  call fastcc void @log_op_type(ptr noundef %200, ptr noundef %209, ptr noundef %210, i32 noundef 2, ptr noundef nonnull %202) #24
  br label %211

211:                                              ; preds = %208, %204, %193
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %213, ptr noundef nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #26
  br label %214

214:                                              ; preds = %185, %190, %211, %169, %169, %179, %165
  %215 = call fastcc i32 @use_type(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %8) #24, !range !184
  %216 = icmp eq i32 %215, 0
  switch i32 %215, label %217 [
    i32 7, label %218
    i32 1, label %218
    i32 0, label %218
  ]

217:                                              ; preds = %214
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5061, ptr noundef nonnull @.str.2) #25
  br label %222

218:                                              ; preds = %214, %214, %214
  br i1 %216, label %219, label %222

219:                                              ; preds = %218
  %220 = load i32, ptr %8, align 4, !tbaa !6
  %221 = call fastcc ptr @var_lowpart(i32 noundef %220, ptr noundef nonnull %10) #24
  br label %222

222:                                              ; preds = %217, %218, %219
  %223 = phi ptr [ %221, %219 ], [ %10, %218 ], [ %10, %217 ]
  %224 = call fastcc ptr @replace_expr_with_values(ptr noundef nonnull %10) #24
  %225 = icmp eq ptr %224, null
  %226 = select i1 %225, ptr %10, ptr %224
  %227 = icmp eq ptr %223, %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = load i32, ptr %8, align 4, !tbaa !6
  %230 = getelementptr inbounds %struct.cselib_val_struct, ptr %160, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !108
  %232 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %229, ptr noundef %231, ptr noundef %223) #25
  br label %236

233:                                              ; preds = %222
  %234 = getelementptr inbounds %struct.cselib_val_struct, ptr %160, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !108
  br label %236

236:                                              ; preds = %233, %228
  %237 = phi ptr [ %232, %228 ], [ %235, %233 ]
  %238 = load i32, ptr %3, align 4, !tbaa !6
  %239 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %238, ptr noundef %237, ptr noundef nonnull %226) #25
  store ptr %239, ptr %24, align 8, !tbaa !22
  br i1 %216, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, ptr %239, align 8
  %242 = or i32 %241, 536870912
  store i32 %242, ptr %239, align 8
  br label %243

243:                                              ; preds = %240, %236
  %244 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %160) #25
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, ptr %239, align 8
  %248 = or i32 %247, 134217728
  store i32 %248, ptr %239, align 8
  call fastcc void @preserve_value(ptr noundef nonnull %160) #24
  br label %249

249:                                              ; preds = %246, %243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  br label %251

250:                                              ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5098, ptr noundef nonnull @.str.2) #25
  br label %251

251:                                              ; preds = %23, %17, %250, %249, %154
  %252 = phi ptr [ %10, %250 ], [ %239, %249 ], [ %155, %154 ], [ %19, %17 ], [ %10, %23 ]
  %253 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %254 = icmp eq ptr %253, null
  br i1 %254, label %262, label %255

255:                                              ; preds = %251
  %256 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %257 = and i32 %256, 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %14, align 8, !tbaa !112
  %261 = load ptr, ptr %1, align 8, !tbaa !110
  call fastcc void @log_op_type(ptr noundef %252, ptr noundef %260, ptr noundef %261, i32 noundef %11, ptr noundef nonnull %253) #24
  br label %262

262:                                              ; preds = %259, %255, %251
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !32
  call fastcc void @VEC_micro_operation_heap_safe_push(ptr noundef %264, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %265

265:                                              ; preds = %262, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @use_type(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %65 [
    i16 138, label %12
    i16 37, label %33
    i16 43, label %33
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = tail call fastcc zeroext i8 @track_expr_p(ptr noundef %14, i8 noundef zeroext 0) #24, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %123, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 25
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %123, label %28

28:                                               ; preds = %23, %17
  %29 = load i32, ptr %0, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = tail call ptr @cselib_lookup(ptr noundef nonnull %19, i32 noundef %31, i32 noundef 1) #25
  br label %123

33:                                               ; preds = %9, %9
  %34 = icmp eq ptr %2, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = lshr i32 %10, 16
  %37 = and i32 %36, 255
  store i32 %37, ptr %2, align 4, !tbaa !6
  br label %38

38:                                               ; preds = %35, %33
  %39 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 4
  %40 = load i8, ptr %39, align 4, !tbaa !116
  %41 = icmp eq i8 %40, 0
  %42 = load i32, ptr %0, align 8
  br i1 %41, label %57, label %43

43:                                               ; preds = %38
  %44 = and i32 %42, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %123, label %46

46:                                               ; preds = %43
  %47 = lshr i32 %42, 16
  %48 = and i32 %47, 255
  %49 = tail call fastcc ptr @find_use_val(ptr noundef nonnull %0, i32 noundef %48, ptr noundef nonnull %1) #24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = tail call fastcc i32 @get_address_mode(ptr noundef nonnull %0) #24
  %55 = tail call ptr @cselib_lookup(ptr noundef %53, i32 noundef %54, i32 noundef 0) #25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %123

57:                                               ; preds = %38
  %58 = lshr i32 %42, 16
  %59 = and i32 %58, 255
  %60 = tail call fastcc ptr @find_use_val(ptr noundef nonnull %0, i32 noundef %59, ptr noundef nonnull %1) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = tail call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %60) #25
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %123, label %65

65:                                               ; preds = %57, %62, %9, %46, %51, %5, %3
  %66 = load i32, ptr %0, align 8
  %67 = trunc i32 %66 to i16
  switch i16 %67, label %123 [
    i16 37, label %68
    i16 43, label %97
  ]

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #24
  %70 = icmp ult i32 %69, 53
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4817, ptr noundef nonnull @.str.2) #25
  br label %72

72:                                               ; preds = %68, %71
  %73 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !10
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %123, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %123, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %77, align 8, !tbaa !185
  %81 = icmp eq ptr %80, null
  br i1 %81, label %123, label %82

82:                                               ; preds = %79
  %83 = tail call fastcc ptr @var_debug_decl(ptr noundef nonnull %80) #24
  %84 = tail call ptr @target_for_debug_bind(ptr noundef %83) #25
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load ptr, ptr %76, align 8, !tbaa !22
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.reg_attrs, ptr %87, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !187
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi i64 [ %91, %89 ], [ 0, %86 ]
  %94 = tail call fastcc zeroext i8 @track_loc_p(ptr noundef nonnull %0, ptr noundef nonnull %80, i64 noundef %93, ptr noundef %2, ptr noundef null) #24
  %95 = xor i8 %94, 1
  %96 = zext nneg i8 %95 to i32
  br label %123

97:                                               ; preds = %65
  %98 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !22
  %100 = icmp eq ptr %99, null
  br i1 %100, label %123, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %99, align 8, !tbaa !188
  %103 = icmp eq ptr %102, null
  br i1 %103, label %123, label %104

104:                                              ; preds = %101
  %105 = tail call fastcc ptr @var_debug_decl(ptr noundef nonnull %102) #24
  %106 = tail call ptr @target_for_debug_bind(ptr noundef %105) #25
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load ptr, ptr %98, align 8, !tbaa !22
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.mem_attrs, ptr %109, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !190
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !22
  br label %118

118:                                              ; preds = %111, %108, %115
  %119 = phi i64 [ %117, %115 ], [ 0, %108 ], [ 0, %111 ]
  %120 = tail call fastcc zeroext i8 @track_loc_p(ptr noundef nonnull %0, ptr noundef nonnull %102, i64 noundef %119, ptr noundef %2, ptr noundef null) #24
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i32 7, i32 0
  br label %123

123:                                              ; preds = %97, %75, %65, %118, %104, %101, %92, %82, %79, %72, %62, %43, %51, %12, %23, %28
  %124 = phi i32 [ 3, %28 ], [ 3, %23 ], [ 7, %12 ], [ 4, %51 ], [ 4, %43 ], [ 2, %62 ], [ 7, %72 ], [ 1, %79 ], [ 7, %82 ], [ %96, %92 ], [ 7, %101 ], [ 7, %104 ], [ %122, %118 ], [ 7, %65 ], [ 1, %75 ], [ 7, %97 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @var_lowpart(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %28 [
    i16 37, label %5
    i16 43, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @byte_lowpart_offset(i32 noundef %0, i32 noundef %7) #25
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = zext i32 %10 to i64
  %16 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %0, i64 noundef %15, i32 noundef 0, i32 noundef 1) #25
  br label %28

17:                                               ; preds = %9
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %19) #25
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = tail call i32 @subreg_regno_offset(i32 noundef %21, i32 noundef %24, i32 noundef %20, i32 noundef %0) #25
  %26 = add i32 %25, %21
  %27 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %26, i32 noundef %10) #25
  br label %28

28:                                               ; preds = %5, %2, %17, %14
  %29 = phi ptr [ %16, %14 ], [ %27, %17 ], [ null, %2 ], [ %1, %5 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_address_mode(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !191
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !203
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %8 ]
  %18 = tail call i32 %9(i8 noundef zeroext %17) #25
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ %6, %1 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cselib_preserved_value_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @non_suitable_const(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %12 [
    i16 37, label %13
    i16 2, label %13
    i16 36, label %13
    i16 38, label %13
    i16 46, label %13
    i16 16, label %13
    i16 17, label %13
    i16 43, label %8
  ]

8:                                                ; preds = %5
  %9 = lshr i32 %6, 26
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %2, %12, %8
  %14 = phi i32 [ 0, %12 ], [ %11, %8 ], [ 0, %2 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 1, %5 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_use_val(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 4
  %9 = load i8, ptr %8, align 4, !tbaa !116
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !114
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = zext nneg i32 %13 to i64
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, %16
  br i1 %19, label %30, label %20, !llvm.loop !204

20:                                               ; preds = %15, %17
  %21 = phi i64 [ 0, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.cselib_set, ptr %5, i64 %21, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !205
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cselib_set, ptr %5, i64 %21, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !207
  br label %30

28:                                               ; preds = %7
  %29 = tail call ptr @cselib_lookup(ptr noundef %0, i32 noundef %1, i32 noundef 0) #25
  br label %30

30:                                               ; preds = %17, %11, %3, %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ], [ null, %3 ], [ null, %11 ], [ null, %17 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @replace_expr_with_values(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %14 [
    i16 37, label %16
    i16 43, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call fastcc i32 @get_address_mode(ptr noundef nonnull %0) #24
  %8 = tail call ptr @cselib_lookup(ptr noundef %6, i32 noundef %7, i32 noundef 0) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %12) #25
  br label %16

14:                                               ; preds = %1
  %15 = tail call ptr @cselib_subst_to_values(ptr noundef nonnull %0) #25
  br label %16

16:                                               ; preds = %10, %4, %1, %14
  %17 = phi ptr [ %15, %14 ], [ null, %1 ], [ %13, %10 ], [ null, %4 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @track_expr_p(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %120 [
    i16 37, label %5
    i16 32, label %13
    i16 34, label %13
  ]

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 37, i64 11), align 1, !tbaa !22
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %120, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %120

13:                                               ; preds = %2, %2
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  %17 = icmp ne i8 %1, 0
  %18 = and i1 %17, %16
  br i1 %18, label %120, label %19

19:                                               ; preds = %13
  %20 = and i64 %3, 65535
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %20, i64 11
  %22 = load i8, ptr %21, align 1, !tbaa !22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ null, %19 ], [ %26, %24 ]
  %29 = icmp eq ptr %28, null
  %30 = and i1 %17, %29
  br i1 %30, label %120, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 16384
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #25
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !6
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %120

46:                                               ; preds = %39, %36, %31
  %47 = phi ptr [ %40, %39 ], [ %0, %36 ], [ %0, %31 ]
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 1024
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %46
  %53 = load i64, ptr %47, align 8
  %54 = and i64 %53, 67108864
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %120

56:                                               ; preds = %52
  br i1 %29, label %115, label %57

57:                                               ; preds = %56
  %58 = load i32, ptr %28, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 43
  br i1 %60, label %61, label %115

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %63) #24
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %120

66:                                               ; preds = %61
  %67 = lshr i32 %58, 16
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %120, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -15
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %120, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.mem_attrs, ptr %80, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !208
  %85 = icmp eq ptr %84, null
  br i1 %85, label %115, label %96

86:                                               ; preds = %78
  %87 = zext nneg i32 %68 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !22
  %90 = zext i8 %89 to i64
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #25
  %92 = icmp eq ptr %91, null
  br i1 %92, label %115, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %79, align 8, !tbaa !22
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %82, %93
  %97 = phi ptr [ %94, %93 ], [ %80, %82 ]
  %98 = getelementptr inbounds %struct.mem_attrs, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !208
  br label %110

100:                                              ; preds = %93
  %101 = load i32, ptr %28, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = icmp ne i32 %103, 1
  tail call void @llvm.assume(i1 %104)
  %105 = zext nneg i32 %103 to i64
  %106 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !22
  %108 = zext i8 %107 to i64
  %109 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %108) #25
  br label %110

110:                                              ; preds = %100, %96
  %111 = phi ptr [ %99, %96 ], [ %109, %100 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !22
  %114 = icmp sgt i64 %113, 16
  br i1 %114, label %120, label %115

115:                                              ; preds = %57, %56, %82, %86, %110
  %116 = load i64, ptr %0, align 8
  %117 = and i64 %116, -1099511627777
  store i64 %117, ptr %0, align 8
  %118 = load i64, ptr %47, align 8
  %119 = and i64 %118, -1099511627777
  store i64 %119, ptr %47, align 8
  br label %120

120:                                              ; preds = %70, %110, %66, %61, %52, %46, %39, %27, %13, %2, %5, %8, %115
  %121 = phi i8 [ 1, %115 ], [ 0, %5 ], [ %12, %8 ], [ 0, %2 ], [ 0, %13 ], [ 0, %27 ], [ 0, %39 ], [ 0, %46 ], [ 0, %52 ], [ 0, %61 ], [ 0, %70 ], [ 0, %66 ], [ 0, %110 ]
  ret i8 %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @track_loc_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @track_expr_p(ptr noundef %1, i8 noundef zeroext 1) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = and i32 %9, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !22
  %17 = icmp ult i32 %16, 53
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !10
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %11 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = zext nneg i32 %25 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !22
  %32 = icmp ugt i8 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = tail call i32 @byte_lowpart_offset(i32 noundef %25, i32 noundef %11) #25
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %2
  br label %37

37:                                               ; preds = %18, %33, %14, %8
  %38 = phi i64 [ %2, %14 ], [ %2, %8 ], [ %36, %33 ], [ %2, %18 ]
  %39 = phi i32 [ %11, %14 ], [ %11, %8 ], [ %25, %33 ], [ %11, %18 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 255
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !22
  %48 = icmp ugt i8 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = tail call i32 @byte_lowpart_offset(i32 noundef %51, i32 noundef %39) #25
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = icmp eq i64 %38, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, ptr %43, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 255
  br label %62

60:                                               ; preds = %37, %49
  %61 = icmp ugt i64 %38, 15
  br i1 %61, label %70, label %62

62:                                               ; preds = %56, %60
  %63 = phi i32 [ %59, %56 ], [ %39, %60 ]
  %64 = phi i64 [ 0, %56 ], [ %38, %60 ]
  %65 = icmp eq ptr %3, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 %63, ptr %3, align 4, !tbaa !6
  br label %67

67:                                               ; preds = %66, %62
  %68 = icmp eq ptr %4, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  store i64 %64, ptr %4, align 8, !tbaa !50
  br label %70

70:                                               ; preds = %67, %69, %60, %5
  %71 = phi i8 [ 0, %5 ], [ 0, %60 ], [ 1, %69 ], [ 1, %67 ]
  ret i8 %71
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @contains_symbol_ref(ptr noundef readonly %0) unnamed_addr #15 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %17

17:                                               ; preds = %14, %43
  %18 = phi i64 [ %16, %14 ], [ %19, %43 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !22
  switch i8 %21, label %43 [
    i8 101, label %29
    i8 69, label %22
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = load i32, ptr %24, align 8, !tbaa !131
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %37

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %31) #24
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %45

34:                                               ; preds = %37
  %35 = add nuw nsw i64 %38, 1
  %36 = icmp eq i64 %35, %28
  br i1 %36, label %43, label %37, !llvm.loop !209

37:                                               ; preds = %27, %34
  %38 = phi i64 [ 0, %27 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !10
  %41 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %40) #24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %34, label %45

43:                                               ; preds = %34, %22, %17, %29
  %44 = icmp sgt i64 %18, 1
  br i1 %44, label %17, label %45, !llvm.loop !210

45:                                               ; preds = %29, %43, %37, %7, %3, %1
  %46 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %7 ], [ 1, %37 ], [ 1, %29 ], [ 0, %43 ]
  ret i8 %46
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @byte_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @same_variable_part_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %51

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %51 [
    i16 37, label %12
    i16 43, label %19
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !185
  %18 = getelementptr inbounds %struct.reg_attrs, ptr %14, i64 0, i32 1
  br label %30

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !188
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  br label %30

30:                                               ; preds = %16, %28
  %31 = phi ptr [ %29, %28 ], [ %18, %16 ]
  %32 = phi ptr [ %24, %28 ], [ %17, %16 ]
  %33 = load i64, ptr %31, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi ptr [ %24, %23 ], [ %32, %30 ]
  %36 = phi i64 [ 0, %23 ], [ %33, %30 ]
  %37 = icmp eq ptr %35, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = load i64, ptr %35, align 8
  %40 = and i64 %39, 65535
  %41 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !6
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = tail call fastcc ptr @var_debug_decl(ptr noundef nonnull %1) #24
  %46 = tail call fastcc ptr @var_debug_decl(ptr noundef nonnull %35) #24
  %47 = icmp eq ptr %45, %46
  %48 = icmp eq i64 %36, %2
  %49 = select i1 %47, i1 %48, i1 false
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %19, %12, %34, %38, %9, %3, %44
  %52 = phi i8 [ %50, %44 ], [ 0, %3 ], [ 0, %9 ], [ 0, %38 ], [ 0, %34 ], [ 0, %12 ], [ 0, %19 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reverse_op(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 23
  br i1 %5, label %6, label %112

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %112

12:                                               ; preds = %6
  %13 = load i32, ptr %0, align 8
  %14 = xor i32 %13, %9
  %15 = and i32 %14, 16711680
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %112

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i16
  switch i16 %21, label %112 [
    i16 49, label %22
    i16 50, label %22
    i16 63, label %22
    i16 64, label %22
    i16 51, label %22
    i16 98, label %22
    i16 99, label %22
  ]

22:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %112

28:                                               ; preds = %22
  %29 = lshr i32 %20, 16
  %30 = and i32 %29, 255
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !22
  %34 = and i8 %33, -2
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %112

36:                                               ; preds = %28
  %37 = lshr i32 %25, 16
  %38 = and i32 %37, 255
  %39 = tail call ptr @cselib_lookup(ptr noundef nonnull %24, i32 noundef %38, i32 noundef 0) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %112, label %41

41:                                               ; preds = %36
  %42 = tail call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %39) #25
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %112, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %19, align 8
  %46 = trunc i32 %45 to i16
  switch i16 %46, label %103 [
    i16 64, label %47
    i16 51, label %47
    i16 98, label %60
    i16 99, label %60
    i16 63, label %69
    i16 49, label %67
    i16 50, label %68
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !108
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load i32, ptr %0, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %112

57:                                               ; preds = %47
  %58 = and i32 %45, 65535
  %59 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %58, i32 noundef %52, ptr noundef nonnull %0) #25
  br label %104

60:                                               ; preds = %44, %44
  %61 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !108
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = tail call ptr @gen_lowpart_SUBREG(i32 noundef %65, ptr noundef nonnull %0) #25
  br label %104

67:                                               ; preds = %44
  br label %69

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %44, %68, %67
  %70 = phi i32 [ 49, %68 ], [ 50, %67 ], [ 63, %44 ]
  %71 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !108
  %73 = load i32, ptr %72, align 8
  %74 = load i32, ptr %0, align 8
  %75 = xor i32 %74, %73
  %76 = and i32 %75, 16711680
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = load i32, ptr %80, align 8
  %82 = trunc i32 %81 to i16
  switch i16 %82, label %83 [
    i16 30, label %90
    i16 45, label %90
  ]

83:                                               ; preds = %78
  %84 = load ptr, ptr @scratch_regs, align 8, !tbaa !10
  %85 = tail call ptr @cselib_expand_value_rtx(ptr noundef nonnull %80, ptr noundef %84, i32 noundef 5) #25
  %86 = icmp eq ptr %85, null
  br i1 %86, label %112, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %85, align 8
  %89 = trunc i32 %88 to i16
  switch i16 %89, label %112 [
    i16 30, label %90
    i16 45, label %90
  ]

90:                                               ; preds = %87, %87, %78, %78
  %91 = phi ptr [ %80, %78 ], [ %85, %87 ], [ %80, %78 ], [ %85, %87 ]
  %92 = load i32, ptr %0, align 8
  %93 = lshr i32 %92, 16
  %94 = and i32 %93, 255
  %95 = tail call ptr @simplify_gen_binary(i32 noundef %70, i32 noundef %94, ptr noundef nonnull %0, ptr noundef nonnull %91) #25
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, ptr %0, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %102 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %100, ptr noundef nonnull %0, ptr noundef %101) #25
  br label %104

103:                                              ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5196, ptr noundef nonnull @.str.2) #25
  unreachable

104:                                              ; preds = %90, %97, %60, %57
  %105 = phi ptr [ %102, %97 ], [ %95, %90 ], [ %66, %60 ], [ %59, %57 ]
  %106 = getelementptr inbounds %struct.cselib_val_struct, ptr %39, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !108
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %110, ptr noundef nonnull %107, ptr noundef %105) #25
  br label %112

112:                                              ; preds = %28, %87, %83, %69, %47, %36, %41, %22, %17, %6, %12, %2, %104
  %113 = phi ptr [ %111, %104 ], [ null, %2 ], [ null, %12 ], [ null, %6 ], [ null, %17 ], [ null, %28 ], [ null, %22 ], [ null, %41 ], [ null, %36 ], [ null, %47 ], [ null, %69 ], [ null, %83 ], [ null, %87 ]
  ret ptr %113
}

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cselib_expand_value_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stack_adjust_offset_pre_post(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load ptr, ptr %4, align 8, !tbaa !22
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !10
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 50
  %14 = add nsw i32 %12, -49
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %123

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %123

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %123

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !22
  %29 = load i64, ptr %2, align 8, !tbaa !50
  br i1 %13, label %30, label %32

30:                                               ; preds = %26
  %31 = add nsw i64 %29, %28
  store i64 %31, ptr %2, align 8, !tbaa !50
  br label %123

32:                                               ; preds = %26
  %33 = sub nsw i64 %29, %28
  store i64 %33, ptr %2, align 8, !tbaa !50
  br label %123

34:                                               ; preds = %3
  %35 = load i32, ptr %7, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %123

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = trunc i32 %41 to i16
  switch i16 %43, label %123 [
    i16 78, label %44
    i16 79, label %44
    i16 74, label %71
    i16 76, label %84
    i16 75, label %97
    i16 77, label %110
  ]

44:                                               ; preds = %38, %38
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = icmp eq ptr %46, %8
  br i1 %47, label %48, label %123

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = load i32, ptr %50, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 49
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, ptr %52, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 30
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @.str.2) #25
  br label %61

61:                                               ; preds = %56, %60
  %62 = icmp eq i32 %42, 78
  %63 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !22
  br i1 %62, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, ptr %1, align 8, !tbaa !50
  %67 = sub nsw i64 %66, %64
  store i64 %67, ptr %1, align 8, !tbaa !50
  br label %123

68:                                               ; preds = %61
  %69 = load i64, ptr %2, align 8, !tbaa !50
  %70 = sub nsw i64 %69, %64
  store i64 %70, ptr %2, align 8, !tbaa !50
  br label %123

71:                                               ; preds = %38
  %72 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  %74 = icmp eq ptr %73, %8
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  %76 = lshr i32 %35, 16
  %77 = and i32 %76, 255
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !22
  %81 = zext i8 %80 to i64
  %82 = load i64, ptr %1, align 8, !tbaa !50
  %83 = add nsw i64 %82, %81
  store i64 %83, ptr %1, align 8, !tbaa !50
  br label %123

84:                                               ; preds = %38
  %85 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %86, %8
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = lshr i32 %35, 16
  %90 = and i32 %89, 255
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !22
  %94 = zext i8 %93 to i64
  %95 = load i64, ptr %2, align 8, !tbaa !50
  %96 = add nsw i64 %95, %94
  store i64 %96, ptr %2, align 8, !tbaa !50
  br label %123

97:                                               ; preds = %38
  %98 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !22
  %100 = icmp eq ptr %99, %8
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = lshr i32 %35, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !22
  %107 = zext i8 %106 to i64
  %108 = load i64, ptr %1, align 8, !tbaa !50
  %109 = sub nsw i64 %108, %107
  store i64 %109, ptr %1, align 8, !tbaa !50
  br label %123

110:                                              ; preds = %38
  %111 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !22
  %113 = icmp eq ptr %112, %8
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = lshr i32 %35, 16
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !22
  %120 = zext i8 %119 to i64
  %121 = load i64, ptr %2, align 8, !tbaa !50
  %122 = sub nsw i64 %121, %120
  store i64 %122, ptr %2, align 8, !tbaa !50
  br label %123

123:                                              ; preds = %32, %30, %75, %88, %101, %114, %34, %68, %65, %38, %110, %97, %84, %71, %44, %16, %20, %10
  ret void
}

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_micro_operation_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = tail call fastcc i32 @VEC_micro_operation_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #25
  store ptr %6, ptr %0, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_micro_operation_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !182
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !182
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !119
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_micro_operation_base_space(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !211
  %6 = load i32, ptr %0, align 8, !tbaa !182
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @adjust_mem_stores(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %9, ptr noundef null, ptr noundef nonnull @adjust_mems, ptr noundef %2) #25
  %11 = load ptr, ptr %8, align 8, !tbaa !22
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %8, ptr noundef %10, i8 noundef zeroext 1) #25
  br label %15

15:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @adjust_mem_uses(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %3, ptr noundef null, ptr noundef nonnull @adjust_mems, ptr noundef %1) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %0, ptr noundef %4, i8 noundef zeroext 1) #25
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @adjust_mems(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %235 [
    i16 37, label %6
    i16 43, label %29
    i16 75, label %71
    i16 74, label %71
    i16 77, label %89
    i16 76, label %89
    i16 78, label %128
    i16 79, label %132
    i16 39, label %151
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !134
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %235, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !10
  %12 = icmp ne ptr %11, %0
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !136
  %19 = tail call fastcc ptr @compute_cfa_pointer(i64 noundef %18) #24
  br label %235

20:                                               ; preds = %10
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !10
  %22 = icmp eq ptr %21, %0
  %23 = select i1 %22, i1 %14, i1 false
  %24 = load i64, ptr @hard_frame_pointer_adjustment, align 8
  %25 = icmp ne i64 %24, -1
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %235

27:                                               ; preds = %20
  %28 = tail call fastcc ptr @compute_cfa_pointer(i64 noundef %24) #24
  br label %235

29:                                               ; preds = %3
  %30 = load i8, ptr %2, align 8, !tbaa !138
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !212
  %34 = tail call ptr %33(ptr noundef nonnull %0) #25
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, ptr %0, align 8
  br label %44

38:                                               ; preds = %32
  %39 = load i32, ptr %34, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %34, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  br label %235

44:                                               ; preds = %36, %38, %29
  %45 = phi i32 [ %4, %29 ], [ %39, %38 ], [ %37, %36 ]
  %46 = phi ptr [ %0, %29 ], [ %34, %38 ], [ %0, %36 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !134
  %51 = lshr i32 %45, 16
  %52 = and i32 %51, 255
  store i32 %52, ptr %49, align 4, !tbaa !134
  %53 = load i8, ptr %2, align 8, !tbaa !138
  store i8 0, ptr %2, align 8, !tbaa !138
  %54 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %48, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  store i8 %53, ptr %2, align 8, !tbaa !138
  store i32 %50, ptr %49, align 4, !tbaa !134
  %55 = icmp eq ptr %46, %0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !212
  %58 = tail call ptr %57(ptr noundef %54) #25
  br label %59

59:                                               ; preds = %56, %44
  %60 = phi ptr [ %58, %56 ], [ %54, %44 ]
  %61 = load ptr, ptr %47, align 8, !tbaa !22
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %46, ptr noundef %60) #25
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi ptr [ %64, %63 ], [ %46, %59 ]
  %67 = load i8, ptr %2, align 8, !tbaa !138
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %235

69:                                               ; preds = %65
  %70 = tail call ptr @avoid_constant_pool_reference(ptr noundef %66) #25
  br label %235

71:                                               ; preds = %3, %3
  %72 = lshr i32 %4, 16
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = and i32 %4, 65535
  %77 = icmp eq i32 %76, 75
  %78 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !134
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !22
  %83 = zext i8 %82 to i64
  %84 = sub nsw i64 0, %83
  %85 = select i1 %77, i64 %83, i64 %84
  %86 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %85) #25
  %87 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %73, ptr noundef %75, ptr noundef %86) #25
  %88 = icmp eq ptr %87, %0
  br i1 %88, label %89, label %92

89:                                               ; preds = %3, %3, %71
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  br label %92

92:                                               ; preds = %89, %71
  %93 = phi ptr [ %91, %89 ], [ %87, %71 ]
  %94 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !134
  %96 = icmp ult i32 %95, 2
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 851, ptr noundef nonnull @.str.2) #25
  br label %98

98:                                               ; preds = %92, %97
  %99 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %93, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  %100 = load i32, ptr %0, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = trunc i32 %100 to i16
  switch i16 %105, label %112 [
    i16 75, label %106
    i16 77, label %106
  ]

106:                                              ; preds = %98, %98
  %107 = load i32, ptr %94, align 4, !tbaa !134
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !22
  %111 = zext i8 %110 to i64
  br label %119

112:                                              ; preds = %98
  %113 = load i32, ptr %94, align 4, !tbaa !134
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !22
  %117 = zext i8 %116 to i64
  %118 = sub nsw i64 0, %117
  br label %119

119:                                              ; preds = %112, %106
  %120 = phi i64 [ %111, %106 ], [ %118, %112 ]
  %121 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %120) #25
  %122 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %102, ptr noundef %104, ptr noundef %121) #25
  %123 = load ptr, ptr %103, align 8, !tbaa !22
  %124 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %123, ptr noundef %122) #25
  %125 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !137
  %127 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %124, ptr noundef %126) #25
  store ptr %127, ptr %125, align 8, !tbaa !137
  br label %235

128:                                              ; preds = %3
  %129 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !22
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %135

132:                                              ; preds = %3, %128
  %133 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !22
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi ptr [ %134, %132 ], [ %130, %128 ]
  %137 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !134
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 869, ptr noundef nonnull @.str.2) #25
  br label %141

141:                                              ; preds = %135, %140
  %142 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %136, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  %143 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !22
  %145 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  %147 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %144, ptr noundef %146) #25
  %148 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !137
  %150 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %147, ptr noundef %149) #25
  store ptr %150, ptr %148, align 8, !tbaa !137
  br label %235

151:                                              ; preds = %3
  %152 = load i8, ptr %2, align 8, !tbaa !138
  store i8 1, ptr %2, align 8, !tbaa !138
  %153 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !22
  %155 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %154, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  store i8 %152, ptr %2, align 8, !tbaa !138
  %156 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %155, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #25
  %157 = load ptr, ptr %153, align 8, !tbaa !22
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %187, label %159

159:                                              ; preds = %151
  %160 = load i32, ptr %0, align 8
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 255
  %163 = load i32, ptr %157, align 8
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  %166 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load i32, ptr %166, align 8, !tbaa !22
  %168 = tail call ptr @simplify_gen_subreg(i32 noundef %162, ptr noundef %156, i32 noundef %165, i32 noundef %167) #25
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %187

170:                                              ; preds = %159
  %171 = load i32, ptr %0, align 8
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  %174 = load ptr, ptr %153, align 8, !tbaa !22
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  %178 = load i32, ptr %166, align 8, !tbaa !22
  %179 = tail call ptr @simplify_gen_subreg(i32 noundef %173, ptr noundef %155, i32 noundef %177, i32 noundef %178) #25
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %170
  %182 = load i32, ptr %0, align 8
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  %185 = load i32, ptr %166, align 8, !tbaa !22
  %186 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %184, ptr noundef %155, i32 noundef %185) #25
  br label %187

187:                                              ; preds = %151, %170, %181, %159
  %188 = phi ptr [ %168, %159 ], [ %186, %181 ], [ %179, %170 ], [ %0, %151 ]
  %189 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %235, label %191

191:                                              ; preds = %187
  %192 = load i32, ptr %188, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 39
  br i1 %194, label %195, label %235

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !22
  %198 = load i32, ptr %197, align 8
  %199 = trunc i32 %198 to i16
  switch i16 %199, label %235 [
    i16 49, label %200
    i16 50, label %200
    i16 52, label %200
    i16 65, label %200
  ]

200:                                              ; preds = %195, %195, %195, %195
  %201 = lshr i32 %192, 16
  %202 = and i32 %201, 255
  %203 = zext nneg i32 %202 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !22
  %206 = icmp eq i8 %205, 2
  br i1 %206, label %207, label %235

207:                                              ; preds = %200
  %208 = lshr i32 %198, 16
  %209 = and i32 %208, 255
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !22
  %213 = icmp eq i8 %212, 2
  br i1 %213, label %214, label %235

214:                                              ; preds = %207
  %215 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %203
  %216 = load i8, ptr %215, align 1, !tbaa !22
  %217 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %210
  %218 = load i8, ptr %217, align 1, !tbaa !22
  %219 = icmp ult i8 %216, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %214
  %221 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %188) #25
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %220
  %224 = tail call i32 @for_each_rtx(ptr noundef nonnull %196, ptr noundef nonnull @use_narrower_mode_test, ptr noundef nonnull %188) #25
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load ptr, ptr %196, align 8, !tbaa !22
  %228 = load i32, ptr %188, align 8
  %229 = lshr i32 %228, 16
  %230 = and i32 %229, 255
  %231 = load i32, ptr %227, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  %234 = tail call fastcc ptr @use_narrower_mode(ptr noundef nonnull %227, i32 noundef %230, i32 noundef %233) #24
  br label %235

235:                                              ; preds = %3, %187, %191, %200, %207, %214, %220, %223, %195, %65, %69, %20, %6, %226, %141, %119, %42, %27, %16
  %236 = phi ptr [ %234, %226 ], [ %142, %141 ], [ %99, %119 ], [ %43, %42 ], [ %28, %27 ], [ %19, %16 ], [ %0, %6 ], [ %0, %20 ], [ %66, %65 ], [ %70, %69 ], [ %188, %195 ], [ %188, %223 ], [ %188, %220 ], [ %188, %214 ], [ %188, %207 ], [ %188, %200 ], [ %188, %191 ], [ %188, %187 ], [ null, %3 ]
  ret ptr %236
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compute_cfa_pointer(i64 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !49
  %3 = sext i32 %2 to i64
  %4 = sub nsw i64 %0, %3
  %5 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !10
  %6 = tail call ptr @plus_constant(ptr noundef %5, i64 noundef %4) #25
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ei_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @use_narrower_mode_test(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = trunc i32 %4 to i16
  switch i16 %11, label %26 [
    i16 37, label %12
    i16 49, label %27
    i16 50, label %27
    i16 52, label %27
    i16 65, label %21
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @cselib_lookup(ptr noundef nonnull %3, i32 noundef %17, i32 noundef 0) #25
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 -1, i32 1
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %23 = tail call i32 @for_each_rtx(ptr noundef nonnull %22, ptr noundef nonnull @use_narrower_mode_test, ptr noundef %1) #25
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 -1, i32 1
  br label %27

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %21, %10, %10, %10, %12, %2, %26
  %28 = phi i32 [ 1, %26 ], [ -1, %2 ], [ %20, %12 ], [ 0, %10 ], [ 0, %10 ], [ 0, %10 ], [ %25, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @use_narrower_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %0, i32 noundef %2) #25
  br label %16

12:                                               ; preds = %3
  %13 = trunc i32 %4 to i16
  switch i16 %13, label %35 [
    i16 37, label %14
    i16 49, label %18
    i16 50, label %18
    i16 52, label %18
    i16 65, label %28
  ]

14:                                               ; preds = %12
  %15 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %0, i32 noundef %2) #25
  br label %16

16:                                               ; preds = %35, %14, %10, %28, %18
  %17 = phi ptr [ %27, %18 ], [ %34, %28 ], [ %11, %10 ], [ null, %35 ], [ %15, %14 ]
  ret ptr %17

18:                                               ; preds = %12, %12, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = tail call fastcc ptr @use_narrower_mode(ptr noundef %20, i32 noundef %1, i32 noundef %2) #24
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = tail call fastcc ptr @use_narrower_mode(ptr noundef %23, i32 noundef %1, i32 noundef %2) #24
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = tail call ptr @simplify_gen_binary(i32 noundef %26, i32 noundef %1, ptr noundef %21, ptr noundef %24) #25
  br label %16

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = tail call fastcc ptr @use_narrower_mode(ptr noundef %30, i32 noundef %1, i32 noundef %2) #24
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %31, ptr noundef %33) #25
  br label %16

35:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 787, ptr noundef nonnull @.str.2) #25
  br label %16
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @vt_get_decl_and_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %35 [
    i16 37, label %6
    i16 43, label %16
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !185
  store ptr %11, ptr %1, align 8, !tbaa !10
  %12 = load ptr, ptr %7, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.reg_attrs, ptr %12, i64 0, i32 1
  br label %30

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !188
  store ptr %21, ptr %1, align 8, !tbaa !10
  %22 = load ptr, ptr %17, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !190
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  br label %30

30:                                               ; preds = %14, %28
  %31 = phi ptr [ %29, %28 ], [ %15, %14 ]
  %32 = load i64, ptr %31, align 8, !tbaa !22
  br label %33

33:                                               ; preds = %30, %20, %24, %10
  %34 = phi i64 [ 0, %10 ], [ 0, %20 ], [ 0, %24 ], [ %32, %30 ]
  store i64 %34, ptr %2, align 8, !tbaa !50
  br label %35

35:                                               ; preds = %33, %6, %16, %3
  %36 = phi i8 [ 0, %3 ], [ 0, %16 ], [ 0, %6 ], [ 1, %33 ]
  ret i8 %36
}

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_spill_slot_decl(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_micro_operation_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_destroy(ptr nocapture noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  tail call fastcc void @attrs_list_clear(ptr noundef nonnull %4) #24
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %2, !llvm.loop !213

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  tail call fastcc void @shared_hash_destroy(ptr noundef %9) #24
  store ptr null, ptr %8, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare void @free_aux_for_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_rtx_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attrs_list_clear(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %7, ptr noundef nonnull %5) #25
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !214

9:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shared_hash_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !29
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1378, ptr noundef nonnull @.str.2) #25
  %5 = load i32, ptr %0, align 8, !tbaa !29
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %0, align 8, !tbaa !29
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.shared_hash_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  tail call void @htab_delete(ptr noundef %12) #25
  %13 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %13, ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_new() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
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
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !22
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !22
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !50
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
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
  %15 = load i64, ptr %14, align 8, !tbaa !50
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !22
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !22
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !50
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_clear(ptr nocapture noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  tail call fastcc void @attrs_list_clear(ptr noundef nonnull %4) #24
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 53
  br i1 %6, label %7, label %2, !llvm.loop !215

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  tail call fastcc void @shared_hash_destroy(ptr noundef %9) #24
  %10 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !10
  %11 = tail call fastcc ptr @shared_hash_copy(ptr noundef %10) #24
  store ptr %10, ptr %8, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %4
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  tail call fastcc void @attrs_list_copy(ptr noundef nonnull %5, ptr noundef %7) #24
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 53
  br i1 %9, label %10, label %3, !llvm.loop !216

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  tail call fastcc void @shared_hash_destroy(ptr noundef %12) #24
  %13 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = tail call fastcc ptr @shared_hash_copy(ptr noundef %14) #24
  store ptr %14, ptr %11, align 8, !tbaa !75
  %16 = load i64, ptr %1, align 8, !tbaa !103
  store i64 %16, ptr %0, align 8, !tbaa !103
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_merge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dataflow_set_def, align 8
  %4 = alloca %struct.dfset_merge, align 8
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %3, ptr noundef nonnull align 8 dereferenceable(448) %0, i64 448, i1 false), !tbaa.struct !217
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #26
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call fastcc ptr @shared_hash_htab(ptr noundef %6) #24
  %8 = tail call i64 @htab_elements(ptr noundef %7) #25
  %9 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call fastcc ptr @shared_hash_htab(ptr noundef %10) #24
  %12 = tail call i64 @htab_elements(ptr noundef %11) #25
  tail call fastcc void @dataflow_set_init(ptr noundef %0) #24
  %13 = load i64, ptr %3, align 8, !tbaa !103
  store i64 %13, ptr %0, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  tail call fastcc void @shared_hash_destroy(ptr noundef %15) #24
  %16 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !10
  %17 = tail call ptr @pool_alloc(ptr noundef %16) #25
  store ptr %17, ptr %14, align 8, !tbaa !75
  store i32 1, ptr %17, align 8, !tbaa !29
  %18 = tail call i64 @llvm.umax.i64(i64 %8, i64 %12)
  %19 = tail call ptr @htab_create(i64 noundef %18, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #25
  %20 = load ptr, ptr %14, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.shared_hash_def, ptr %20, i64 0, i32 1
  store ptr %19, ptr %21, align 8, !tbaa !31
  br label %22

22:                                               ; preds = %2, %22
  %23 = phi i64 [ 0, %2 ], [ %29, %22 ]
  %24 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %23
  %25 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 1, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  tail call fastcc void @attrs_list_mpdv_union(ptr noundef nonnull %24, ptr noundef %26, ptr noundef %28) #24
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, 53
  br i1 %30, label %31, label %22, !llvm.loop !218

31:                                               ; preds = %22
  store ptr %0, ptr %4, align 8, !tbaa !219
  %32 = getelementptr inbounds %struct.dfset_merge, ptr %4, i64 0, i32 2
  store ptr %1, ptr %32, align 8, !tbaa !221
  %33 = getelementptr inbounds %struct.dfset_merge, ptr %4, i64 0, i32 1
  store ptr %3, ptr %33, align 8, !tbaa !222
  %34 = getelementptr inbounds %struct.dfset_merge, ptr %4, i64 0, i32 3
  store i32 0, ptr %34, align 8, !tbaa !223
  %35 = load ptr, ptr %9, align 8, !tbaa !75
  %36 = call fastcc ptr @shared_hash_htab(ptr noundef %35) #24
  call void @htab_traverse(ptr noundef %36, ptr noundef nonnull @variable_merge_over_src, ptr noundef nonnull %4) #25
  %37 = load ptr, ptr %33, align 8, !tbaa !222
  %38 = getelementptr inbounds %struct.dataflow_set_def, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = call fastcc ptr @shared_hash_htab(ptr noundef %39) #24
  call void @htab_traverse(ptr noundef %40, ptr noundef nonnull @variable_merge_over_cur, ptr noundef nonnull %4) #25
  %41 = load i32, ptr %34, align 8, !tbaa !223
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %44

44:                                               ; preds = %43, %31
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_post_merge_adjust(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dfset_post_merge, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  store ptr %0, ptr %3, align 8, !tbaa !224
  %4 = getelementptr inbounds %struct.dfset_post_merge, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call fastcc ptr @shared_hash_htab(ptr noundef %6) #24
  call void @htab_traverse(ptr noundef %7, ptr noundef nonnull @variable_post_merge_new_vals, ptr noundef nonnull %3) #25
  %8 = load ptr, ptr %1, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dataflow_set_def, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = call fastcc ptr @shared_hash_htab(ptr noundef %12) #24
  call void @htab_traverse(ptr noundef %13, ptr noundef nonnull @variable_post_merge_perm_vals, ptr noundef nonnull %3) #25
  br label %14

14:                                               ; preds = %10, %2
  %15 = load ptr, ptr %5, align 8, !tbaa !75
  %16 = call fastcc ptr @shared_hash_htab(ptr noundef %15) #24
  call void @htab_traverse(ptr noundef %16, ptr noundef nonnull @canonicalize_values_star, ptr noundef nonnull %0) #25
  %17 = load ptr, ptr %5, align 8, !tbaa !75
  %18 = call fastcc ptr @shared_hash_htab(ptr noundef %17) #24
  call void @htab_traverse(ptr noundef %18, ptr noundef nonnull @canonicalize_vars_star, ptr noundef nonnull %0) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_union(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %8, %3 ]
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %4
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  tail call fastcc void @attrs_list_union(ptr noundef nonnull %5, ptr noundef %7) #24
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 53
  br i1 %9, label %10, label %3, !llvm.loop !227

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !10
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  tail call fastcc void @shared_hash_destroy(ptr noundef %12) #24
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = tail call fastcc ptr @shared_hash_copy(ptr noundef %17) #24
  store ptr %17, ptr %11, align 8, !tbaa !75
  br label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = tail call fastcc ptr @shared_hash_htab(ptr noundef %21) #24
  tail call void @htab_traverse(ptr noundef %22, ptr noundef nonnull @variable_union, ptr noundef nonnull %0) #25
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @compute_bb_dataflow(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.dataflow_set_def, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %5, i64 0, i32 2
  call fastcc void @dataflow_set_init(ptr noundef nonnull %3) #24
  call fastcc void @dataflow_set_copy(ptr noundef nonnull %3, ptr noundef nonnull %7) #24
  tail call fastcc void @dataflow_set_copy(ptr noundef nonnull %7, ptr noundef nonnull %6) #24
  %8 = load ptr, ptr %4, align 8, !tbaa !32
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = call fastcc i32 @VEC_micro_operation_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #24, !range !88
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %296, label %12

12:                                               ; preds = %1, %290
  %13 = phi i32 [ %291, %290 ], [ 0, %1 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = load i32, ptr %14, align 8, !tbaa !55
  switch i32 %17, label %290 [
    i32 8, label %18
    i32 0, label %19
    i32 3, label %26
    i32 2, label %63
    i32 4, label %95
    i32 5, label %224
    i32 6, label %243
    i32 1, label %271
    i32 7, label %278
    i32 9, label %285
  ]

18:                                               ; preds = %12
  tail call fastcc void @dataflow_set_clear_at_call(ptr noundef nonnull %7) #24
  br label %290

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %290 [
    i16 37, label %24
    i16 43, label %25
  ]

24:                                               ; preds = %19
  tail call fastcc void @var_reg_set(ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 1, ptr noundef null) #24
  br label %290

25:                                               ; preds = %19
  tail call fastcc void @var_mem_set(ptr noundef nonnull %7, ptr noundef nonnull %21, i32 noundef 1, ptr noundef null) #24
  br label %290

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 41
  %32 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  br i1 %31, label %35, label %34

34:                                               ; preds = %26
  tail call fastcc void @clobber_variable_part(ptr noundef nonnull %7, ptr noundef null, ptr noundef %33, i64 noundef 0, ptr noundef null) #24
  br label %49

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  tail call fastcc void @clobber_variable_part(ptr noundef nonnull %7, ptr noundef null, ptr noundef %39, i64 noundef 0, ptr noundef null) #24
  %40 = icmp eq ptr %33, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %28, align 8
  %43 = and i32 %42, 134217728
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  tail call fastcc void @val_resolve(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef %47, ptr noundef %16) #24
  br label %48

48:                                               ; preds = %45, %41
  tail call fastcc void @set_variable_part(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef %39, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %290

49:                                               ; preds = %34, %35
  %50 = phi ptr [ %33, %34 ], [ %39, %35 ]
  %51 = phi ptr [ %28, %34 ], [ %37, %35 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 25
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %290, label %62

62:                                               ; preds = %57, %49
  tail call fastcc void @set_variable_part(ptr noundef nonnull %7, ptr noundef nonnull %53, ptr noundef %50, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %290

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = load ptr, ptr %66, align 8, !tbaa !22
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 41
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %75 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = load ptr, ptr %74, align 8, !tbaa !22
  br label %78

78:                                               ; preds = %73, %63
  %79 = phi ptr [ %76, %73 ], [ %68, %63 ]
  %80 = phi ptr [ %77, %73 ], [ %69, %63 ]
  %81 = load i32, ptr %65, align 8
  %82 = and i32 %81, 134217728
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call fastcc void @val_resolve(ptr noundef nonnull %7, ptr noundef %80, ptr noundef %68, ptr noundef %16) #24
  br label %86

85:                                               ; preds = %78
  tail call fastcc void @val_store(ptr noundef nonnull %7, ptr noundef %80, ptr noundef %79, ptr noundef %16, i8 noundef zeroext 0) #24
  br label %86

86:                                               ; preds = %85, %84
  %87 = load i32, ptr %65, align 8
  %88 = and i32 %87, 536870912
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %290, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %79, align 8
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %290 [
    i16 37, label %93
    i16 43, label %94
  ]

93:                                               ; preds = %90
  tail call fastcc void @var_reg_set(ptr noundef nonnull %7, ptr noundef nonnull %79, i32 noundef 1, ptr noundef null) #24
  br label %290

94:                                               ; preds = %90
  tail call fastcc void @var_mem_set(ptr noundef nonnull %7, ptr noundef nonnull %79, i32 noundef 1, ptr noundef null) #24
  br label %290

95:                                               ; preds = %12
  %96 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !22
  %98 = load i32, ptr %97, align 8
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !22
  %104 = load ptr, ptr %101, align 8, !tbaa !22
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi ptr [ %104, %100 ], [ %97, %95 ]
  %107 = phi ptr [ %103, %100 ], [ null, %95 ]
  %108 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %109 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  %111 = load ptr, ptr %108, align 8, !tbaa !22
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 41
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %117 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !22
  %119 = load ptr, ptr %116, align 8, !tbaa !22
  br label %120

120:                                              ; preds = %115, %105
  %121 = phi ptr [ %119, %115 ], [ %111, %105 ]
  %122 = phi ptr [ %118, %115 ], [ %110, %105 ]
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 23
  br i1 %125, label %126, label %146

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %128 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  %130 = icmp eq ptr %121, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5764, ptr noundef nonnull @.str.2) #25
  %132 = load i32, ptr %97, align 8
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi i32 [ %98, %126 ], [ %132, %131 ]
  %135 = icmp ne ptr %122, %110
  %136 = and i32 %134, 134217728
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5765, ptr noundef nonnull @.str.2) #25
  %140 = load i32, ptr %97, align 8
  br label %141

141:                                              ; preds = %133, %139
  %142 = phi i32 [ %134, %133 ], [ %140, %139 ]
  %143 = load ptr, ptr %127, align 8, !tbaa !22
  %144 = and i32 %142, 134217728
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %165, label %162

146:                                              ; preds = %120
  %147 = and i32 %98, 134217728
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %110, align 8
  %151 = and i32 %150, 65535
  %152 = icmp eq i32 %151, 23
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !22
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %156, 65535
  %158 = icmp eq i32 %157, 37
  br i1 %158, label %162, label %159

159:                                              ; preds = %153, %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5775, ptr noundef nonnull @.str.2) #25
  %160 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !22
  br label %162

162:                                              ; preds = %159, %153, %141
  %163 = phi ptr [ %129, %141 ], [ %155, %153 ], [ %161, %159 ]
  %164 = phi ptr [ %143, %141 ], [ %122, %153 ], [ %122, %159 ]
  tail call fastcc void @val_resolve(ptr noundef nonnull %7, ptr noundef %121, ptr noundef %163, ptr noundef %16) #24
  br label %165

165:                                              ; preds = %162, %141, %146
  %166 = phi ptr [ %122, %146 ], [ %143, %141 ], [ %164, %162 ]
  %167 = load i32, ptr %97, align 8
  %168 = and i32 %167, 536870912
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %211, label %170

170:                                              ; preds = %165
  %171 = and i32 %167, 67108864
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr %110, align 8
  br i1 %172, label %178, label %174

174:                                              ; preds = %170
  %175 = trunc i32 %173 to i16
  switch i16 %175, label %217 [
    i16 37, label %176
    i16 43, label %177
  ]

176:                                              ; preds = %174
  tail call fastcc void @var_reg_delete(ptr noundef nonnull %7, ptr noundef nonnull %110, i8 noundef zeroext 1) #24
  br label %217

177:                                              ; preds = %174
  tail call fastcc void @var_mem_delete(ptr noundef nonnull %7, ptr noundef nonnull %110, i8 noundef zeroext 1) #24
  br label %217

178:                                              ; preds = %170
  %179 = and i32 %173, 65535
  %180 = icmp eq i32 %179, 23
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %183 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1, i32 0, i32 0, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !22
  %185 = load ptr, ptr %182, align 8, !tbaa !22
  br label %186

186:                                              ; preds = %181, %178
  %187 = phi ptr [ %185, %181 ], [ %110, %178 ]
  %188 = phi ptr [ %184, %181 ], [ null, %178 ]
  %189 = and i32 %167, 16777216
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %186
  %192 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = tail call fastcc i32 @find_src_status(ptr noundef nonnull %6, ptr noundef %188) #24
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = tail call fastcc i32 @find_src_status(ptr noundef nonnull %7, ptr noundef %188) #24
  br label %199

199:                                              ; preds = %194, %197, %191
  %200 = phi i32 [ %198, %197 ], [ %195, %194 ], [ 2, %191 ]
  %201 = tail call fastcc ptr @find_src_set_src(ptr noundef nonnull %6, ptr noundef %188) #24
  br label %202

202:                                              ; preds = %199, %186
  %203 = phi ptr [ %201, %199 ], [ %188, %186 ]
  %204 = phi i32 [ %200, %199 ], [ 2, %186 ]
  %205 = load i32, ptr %187, align 8
  %206 = trunc i32 %205 to i16
  switch i16 %206, label %217 [
    i16 37, label %207
    i16 43, label %209
  ]

207:                                              ; preds = %202
  %208 = zext i1 %190 to i8
  tail call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %187, i8 noundef zeroext %208, i32 noundef %204, ptr noundef %203) #24
  br label %217

209:                                              ; preds = %202
  %210 = zext i1 %190 to i8
  tail call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %187, i8 noundef zeroext %210, i32 noundef %204, ptr noundef %203) #24
  br label %217

211:                                              ; preds = %165
  %212 = load i32, ptr %110, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 37
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %110) #24
  tail call fastcc void @var_regno_delete(ptr noundef nonnull %7, i32 noundef %216) #24
  br label %217

217:                                              ; preds = %207, %209, %202, %174, %211, %215, %177, %176
  tail call fastcc void @val_store(ptr noundef nonnull %7, ptr noundef %121, ptr noundef %166, ptr noundef %16, i8 noundef zeroext 1) #24
  %218 = icmp eq ptr %107, null
  br i1 %218, label %290, label %219

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !22
  %222 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !22
  tail call fastcc void @val_store(ptr noundef nonnull %7, ptr noundef %221, ptr noundef %223, ptr noundef %16, i8 noundef zeroext 0) #24
  br label %290

224:                                              ; preds = %12
  %225 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !22
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, 65535
  %229 = icmp eq i32 %228, 23
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1
  %232 = getelementptr inbounds %struct.rtx_def, ptr %226, i64 0, i32 1, i32 0, i32 0, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !22
  %234 = load ptr, ptr %231, align 8, !tbaa !22
  %235 = load i32, ptr %234, align 8
  br label %236

236:                                              ; preds = %230, %224
  %237 = phi i32 [ %235, %230 ], [ %227, %224 ]
  %238 = phi ptr [ %234, %230 ], [ %226, %224 ]
  %239 = phi ptr [ %233, %230 ], [ null, %224 ]
  %240 = trunc i32 %237 to i16
  switch i16 %240, label %290 [
    i16 37, label %241
    i16 43, label %242
  ]

241:                                              ; preds = %236
  tail call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %238, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %239) #24
  br label %290

242:                                              ; preds = %236
  tail call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %238, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %239) #24
  br label %290

243:                                              ; preds = %12
  %244 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !22
  %246 = load i32, ptr %245, align 8
  %247 = and i32 %246, 65535
  %248 = icmp eq i32 %247, 23
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1
  %251 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1, i32 0, i32 0, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !22
  %253 = load ptr, ptr %250, align 8, !tbaa !22
  br label %254

254:                                              ; preds = %249, %243
  %255 = phi ptr [ %253, %249 ], [ %245, %243 ]
  %256 = phi ptr [ %252, %249 ], [ null, %243 ]
  %257 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %254
  %260 = tail call fastcc i32 @find_src_status(ptr noundef nonnull %6, ptr noundef %256) #24
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = tail call fastcc i32 @find_src_status(ptr noundef nonnull %7, ptr noundef %256) #24
  br label %264

264:                                              ; preds = %254, %259, %262
  %265 = phi i32 [ %263, %262 ], [ %260, %259 ], [ 2, %254 ]
  %266 = tail call fastcc ptr @find_src_set_src(ptr noundef nonnull %6, ptr noundef %256) #24
  %267 = load i32, ptr %255, align 8
  %268 = trunc i32 %267 to i16
  switch i16 %268, label %290 [
    i16 37, label %269
    i16 43, label %270
  ]

269:                                              ; preds = %264
  tail call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %255, i8 noundef zeroext 0, i32 noundef %265, ptr noundef %266) #24
  br label %290

270:                                              ; preds = %264
  tail call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %7, ptr noundef nonnull %255, i8 noundef zeroext 0, i32 noundef %265, ptr noundef %266) #24
  br label %290

271:                                              ; preds = %12
  %272 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !22
  %274 = load i32, ptr %273, align 8
  %275 = trunc i32 %274 to i16
  switch i16 %275, label %290 [
    i16 37, label %276
    i16 43, label %277
  ]

276:                                              ; preds = %271
  tail call fastcc void @var_reg_delete(ptr noundef nonnull %7, ptr noundef nonnull %273, i8 noundef zeroext 0) #24
  br label %290

277:                                              ; preds = %271
  tail call fastcc void @var_mem_delete(ptr noundef nonnull %7, ptr noundef nonnull %273, i8 noundef zeroext 0) #24
  br label %290

278:                                              ; preds = %12
  %279 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !22
  %281 = load i32, ptr %280, align 8
  %282 = trunc i32 %281 to i16
  switch i16 %282, label %290 [
    i16 37, label %283
    i16 43, label %284
  ]

283:                                              ; preds = %278
  tail call fastcc void @var_reg_delete(ptr noundef nonnull %7, ptr noundef nonnull %280, i8 noundef zeroext 1) #24
  br label %290

284:                                              ; preds = %278
  tail call fastcc void @var_mem_delete(ptr noundef nonnull %7, ptr noundef nonnull %280, i8 noundef zeroext 1) #24
  br label %290

285:                                              ; preds = %12
  %286 = getelementptr inbounds %struct.micro_operation_def, ptr %14, i64 0, i32 2
  %287 = load i64, ptr %286, align 8, !tbaa !22
  %288 = load i64, ptr %7, align 8, !tbaa !103
  %289 = add nsw i64 %288, %287
  store i64 %289, ptr %7, align 8, !tbaa !103
  br label %290

290:                                              ; preds = %283, %284, %278, %276, %277, %271, %269, %270, %264, %241, %242, %236, %217, %219, %86, %94, %93, %90, %48, %62, %57, %24, %25, %19, %12, %285, %18
  %291 = add i32 %13, 1
  %292 = load ptr, ptr %4, align 8, !tbaa !32
  %293 = load ptr, ptr %292, align 8, !tbaa !115
  %294 = call fastcc i32 @VEC_micro_operation_base_iterate(ptr noundef %293, i32 noundef %291, ptr noundef nonnull %2) #24, !range !88
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %12, !llvm.loop !228

296:                                              ; preds = %290, %1
  %297 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %296
  tail call fastcc void @dataflow_set_equiv_regs(ptr noundef nonnull %7) #24
  %300 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %5, i64 0, i32 2, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !75
  %302 = tail call fastcc ptr @shared_hash_htab(ptr noundef %301) #24
  tail call void @htab_traverse(ptr noundef %302, ptr noundef nonnull @canonicalize_values_mark, ptr noundef nonnull %7) #25
  %303 = load ptr, ptr %300, align 8, !tbaa !75
  %304 = tail call fastcc ptr @shared_hash_htab(ptr noundef %303) #24
  tail call void @htab_traverse(ptr noundef %304, ptr noundef nonnull @canonicalize_values_star, ptr noundef nonnull %7) #25
  br label %305

305:                                              ; preds = %299, %296
  %306 = call fastcc zeroext i8 @dataflow_set_different(ptr noundef nonnull %3, ptr noundef nonnull %7) #24, !range !5
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret i8 %306
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_dataflow_set(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %3 = load i64, ptr %0, align 8, !tbaa !103
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i64 noundef %3) #24
  br label %5

5:                                                ; preds = %1, %15
  %6 = phi i64 [ 0, %1 ], [ %16, %15 ]
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %12 = trunc i64 %6 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.44, i32 noundef %12) #24
  %14 = load ptr, ptr %7, align 8, !tbaa !10
  tail call fastcc void @dump_attrs_list(ptr noundef %14) #24
  br label %15

15:                                               ; preds = %5, %10
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 53
  br i1 %17, label %18, label %5, !llvm.loop !229

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = tail call fastcc ptr @shared_hash_htab(ptr noundef %20) #24
  tail call fastcc void @dump_vars(ptr noundef %21) #24
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %23 = tail call i32 @fputc(i32 10, ptr %22)
  ret void
}

; Function Attrs: optsize
declare void @fibheap_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attrs_list_copy(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @attrs_list_clear(ptr noundef %0) #24
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %15, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  %7 = tail call ptr @pool_alloc(ptr noundef %6) #25
  %8 = getelementptr inbounds %struct.attrs_def, ptr %5, i64 0, i32 1
  %9 = getelementptr inbounds %struct.attrs_def, ptr %7, i64 0, i32 1
  %10 = load <2 x ptr>, ptr %8, align 8, !tbaa !10
  store <2 x ptr> %10, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.attrs_def, ptr %5, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !150
  %13 = getelementptr inbounds %struct.attrs_def, ptr %7, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !150
  %14 = load ptr, ptr %0, align 8, !tbaa !10
  store ptr %14, ptr %7, align 8, !tbaa !156
  store ptr %7, ptr %0, align 8, !tbaa !10
  %15 = load ptr, ptr %5, align 8, !tbaa !156
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !230

17:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attrs_list_mpdv_union(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1305, ptr noundef nonnull @.str.2) #25
  br label %7

7:                                                ; preds = %3, %6
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %23, %7
  %10 = icmp eq ptr %2, null
  br i1 %10, label %45, label %26

11:                                               ; preds = %7, %23
  %12 = phi ptr [ %24, %23 ], [ %1, %7 ]
  %13 = getelementptr inbounds %struct.attrs_def, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %14) #24, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load ptr, ptr %13, align 8, !tbaa !148
  %19 = getelementptr inbounds %struct.attrs_def, ptr %12, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !150
  %21 = getelementptr inbounds %struct.attrs_def, ptr %12, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %0, ptr noundef %18, i64 noundef %20, ptr noundef %22) #24
  br label %23

23:                                               ; preds = %11, %17
  %24 = load ptr, ptr %12, align 8, !tbaa !156
  %25 = icmp eq ptr %24, null
  br i1 %25, label %9, label %11, !llvm.loop !231

26:                                               ; preds = %9, %42
  %27 = phi ptr [ %43, %42 ], [ %2, %9 ]
  %28 = getelementptr inbounds %struct.attrs_def, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %29) #24, !range !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !10
  %34 = load ptr, ptr %28, align 8, !tbaa !148
  %35 = getelementptr inbounds %struct.attrs_def, ptr %27, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !150
  %37 = tail call fastcc ptr @attrs_list_member(ptr noundef %33, ptr noundef %34, i64 noundef %36) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.attrs_def, ptr %27, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !155
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %0, ptr noundef %34, i64 noundef %36, ptr noundef %41) #24
  br label %42

42:                                               ; preds = %26, %32, %39
  %43 = load ptr, ptr %27, align 8, !tbaa !156
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26, !llvm.loop !232

45:                                               ; preds = %42, %9
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @variable_merge_over_src(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !219
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %5) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call fastcc ptr @shared_hash_find_slot(ptr noundef %10, ptr noundef %5) #24
  store ptr %4, ptr %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 1
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %12, %8 ]
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !6
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @variable_merge_over_cur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !219
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %6) #24, !range !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  %8 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !94
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3350, ptr noundef nonnull @.str.2) #25
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3351, ptr noundef nonnull @.str.2) #25
  br label %17

17:                                               ; preds = %12, %16
  %18 = icmp eq i8 %7, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 @variable_union(ptr noundef nonnull %0, ptr noundef %4) #24
  br label %293

21:                                               ; preds = %17
  %22 = load i8, ptr %8, align 4, !tbaa !94
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3356, ptr noundef nonnull @.str.2) #25
  br label %25

25:                                               ; preds = %21, %24
  %26 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !159
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3357, ptr noundef nonnull @.str.2) #25
  br label %30

30:                                               ; preds = %25, %29
  %31 = tail call fastcc i32 @dv_htab_hash(ptr noundef %6) #24
  %32 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %6) #24, !range !5
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr null, ptr %6
  %35 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !221
  %37 = getelementptr inbounds %struct.dataflow_set_def, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = tail call fastcc ptr @shared_hash_find_1(ptr noundef %38, ptr noundef %6, i32 noundef %31) #24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %293

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !223
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %43, align 8, !tbaa !223
  %46 = getelementptr inbounds %struct.variable_def, ptr %39, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3373, ptr noundef nonnull @.str.2) #25
  br label %50

50:                                               ; preds = %42, %49
  %51 = getelementptr inbounds %struct.variable_def, ptr %39, i64 0, i32 2
  %52 = load i8, ptr %51, align 4, !tbaa !94
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3374, ptr noundef nonnull @.str.2) #25
  br label %55

55:                                               ; preds = %50, %54
  %56 = getelementptr inbounds %struct.variable_def, ptr %39, i64 0, i32 5, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !159
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3375, ptr noundef nonnull @.str.2) #25
  br label %60

60:                                               ; preds = %55, %59
  %61 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = tail call fastcc ptr @shared_hash_find_slot_noinsert_1(ptr noundef %62, ptr noundef %6, i32 noundef %31) #24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %63, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !93
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3381, ptr noundef nonnull @.str.2) #25
  br label %71

71:                                               ; preds = %65, %70
  %72 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 2
  %73 = load i8, ptr %72, align 4, !tbaa !94
  %74 = icmp eq i8 %73, 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3382, ptr noundef nonnull @.str.2) #25
  br label %76

76:                                               ; preds = %71, %75
  %77 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 5
  %78 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 5, i64 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !159
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3383, ptr noundef nonnull @.str.2) #25
  br label %109

82:                                               ; preds = %60
  store ptr null, ptr %3, align 8, !tbaa !10
  %83 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef nonnull %5, ptr noundef nonnull %39) #24, !range !5
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = tail call fastcc ptr @shared_hash_find_slot_unshare_1(ptr noundef nonnull %61, ptr noundef %6, i32 noundef %31, i32 noundef 1) #24
  store ptr %39, ptr %86, align 8, !tbaa !10
  %87 = getelementptr inbounds %struct.variable_def, ptr %39, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !93
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !93
  br label %111

90:                                               ; preds = %82
  store i1 false, ptr @dst_can_be_shared, align 1
  %91 = load ptr, ptr %13, align 8, !tbaa !95
  call fastcc void @intersect_loc_chains(ptr noundef %34, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef %91, ptr noundef nonnull %39) #24
  %92 = load ptr, ptr %3, align 8, !tbaa !10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %293, label %94

94:                                               ; preds = %90
  %95 = tail call fastcc ptr @dv_pool(ptr noundef %6) #24
  %96 = tail call ptr @pool_alloc(ptr noundef %95) #25
  store ptr %6, ptr %96, align 8, !tbaa !91
  %97 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 1
  store i32 1, ptr %97, align 8, !tbaa !93
  %98 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 2
  store i8 1, ptr %98, align 4, !tbaa !94
  %99 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 3
  store i8 0, ptr %99, align 1, !tbaa !157
  %100 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 4
  store i8 0, ptr %100, align 2, !tbaa !158
  %101 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 5
  %102 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 5, i64 0, i32 2
  store i64 0, ptr %102, align 8, !tbaa !159
  store ptr %92, ptr %101, align 8, !tbaa !95
  %103 = getelementptr inbounds %struct.variable_def, ptr %96, i64 0, i32 5, i64 0, i32 1
  store ptr null, ptr %103, align 8, !tbaa !172
  %104 = tail call fastcc ptr @shared_hash_find_slot_unshare_1(ptr noundef nonnull %61, ptr noundef %6, i32 noundef %31, i32 noundef 1) #24
  %105 = load ptr, ptr %104, align 8, !tbaa !10
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3423, ptr noundef nonnull @.str.2) #25
  br label %108

108:                                              ; preds = %94, %107
  store ptr %96, ptr %104, align 8, !tbaa !10
  br label %111

109:                                              ; preds = %81, %76
  store i1 false, ptr @dst_can_be_shared, align 1
  %110 = load ptr, ptr %13, align 8, !tbaa !95
  tail call fastcc void @intersect_loc_chains(ptr noundef %34, ptr noundef nonnull %77, ptr noundef nonnull %1, ptr noundef %110, ptr noundef nonnull %39) #24
  br label %111

111:                                              ; preds = %109, %108, %85
  %112 = phi ptr [ %96, %108 ], [ %39, %85 ], [ %66, %109 ]
  %113 = phi ptr [ %104, %108 ], [ %86, %85 ], [ %63, %109 ]
  %114 = getelementptr inbounds %struct.variable_def, ptr %112, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !10
  store ptr %115, ptr %3, align 8, !tbaa !10
  %116 = icmp eq ptr %115, null
  br i1 %116, label %168, label %117

117:                                              ; preds = %111, %163
  %118 = phi ptr [ %166, %163 ], [ %115, %111 ]
  %119 = phi ptr [ %165, %163 ], [ %113, %111 ]
  %120 = phi ptr [ %164, %163 ], [ %114, %111 ]
  %121 = getelementptr inbounds %struct.location_chain_def, ptr %118, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !160
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 37
  br i1 %125, label %126, label %168

126:                                              ; preds = %117
  %127 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %122) #24
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 1, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !10
  %131 = icmp eq ptr %130, null
  br i1 %131, label %148, label %132

132:                                              ; preds = %126, %145
  %133 = phi ptr [ %146, %145 ], [ %130, %126 ]
  %134 = getelementptr inbounds %struct.attrs_def, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !155
  %136 = load i32, ptr %135, align 8
  %137 = xor i32 %136, %123
  %138 = and i32 %137, 16711680
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.attrs_def, ptr %133, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !148
  %143 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %142) #24, !range !5
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %132, %140
  %146 = load ptr, ptr %133, align 8, !tbaa !10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %132, !llvm.loop !233

148:                                              ; preds = %145, %126
  %149 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %122) #24
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 1, i64 %150
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %151, ptr noundef %6, i64 noundef 0, ptr noundef nonnull %122) #24
  br label %163

152:                                              ; preds = %140
  %153 = icmp eq ptr %142, %34
  br i1 %153, label %163, label %154

154:                                              ; preds = %152
  %155 = getelementptr inbounds %struct.location_chain_def, ptr %118, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !167
  %157 = tail call fastcc ptr @set_slot_part(ptr noundef %4, ptr noundef %142, ptr noundef %119, ptr noundef %6, i64 noundef 0, i32 noundef %156, ptr noundef null) #24
  %158 = load ptr, ptr %121, align 8, !tbaa !160
  %159 = tail call fastcc ptr @delete_slot_part(ptr noundef %4, ptr noundef %158, ptr noundef %157, i64 noundef 0) #24
  %160 = load ptr, ptr %120, align 8, !tbaa !10
  %161 = icmp eq ptr %160, %118
  %162 = select i1 %161, ptr %118, ptr %120
  br label %163

163:                                              ; preds = %154, %148, %152
  %164 = phi ptr [ %118, %152 ], [ %118, %148 ], [ %162, %154 ]
  %165 = phi ptr [ %119, %152 ], [ %119, %148 ], [ %159, %154 ]
  %166 = load ptr, ptr %164, align 8, !tbaa !10
  store ptr %166, ptr %3, align 8, !tbaa !10
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %117

168:                                              ; preds = %163, %117, %111
  %169 = phi ptr [ %113, %111 ], [ %119, %117 ], [ %165, %163 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !10
  %171 = getelementptr inbounds %struct.variable_def, ptr %170, i64 0, i32 5
  %172 = icmp eq ptr %34, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load ptr, ptr %171, align 8, !tbaa !10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %274, label %201

176:                                              ; preds = %168
  %177 = load i32, ptr %34, align 8
  %178 = or i32 %177, 536870912
  store i32 %178, ptr %34, align 8
  %179 = load ptr, ptr %171, align 8, !tbaa !10
  %180 = icmp eq ptr %179, null
  br i1 %180, label %196, label %181

181:                                              ; preds = %176, %193
  %182 = phi ptr [ %194, %193 ], [ %179, %176 ]
  %183 = getelementptr inbounds %struct.location_chain_def, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !160
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = or i32 %185, 536870912
  store i32 %189, ptr %184, align 8
  %190 = load ptr, ptr %183, align 8, !tbaa !160
  %191 = getelementptr inbounds %struct.location_chain_def, ptr %182, i64 0, i32 3
  %192 = load i32, ptr %191, align 8, !tbaa !167
  tail call fastcc void @set_variable_part(ptr noundef %4, ptr noundef nonnull %34, ptr noundef %190, i64 noundef 0, i32 noundef %192, ptr noundef null, i32 noundef 1) #24
  br label %193

193:                                              ; preds = %181, %188
  %194 = load ptr, ptr %182, align 8, !tbaa !10
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %181, !llvm.loop !234

196:                                              ; preds = %193, %176
  %197 = load ptr, ptr %61, align 8, !tbaa !75
  %198 = tail call fastcc ptr @shared_hash_find_slot_noinsert_1(ptr noundef %197, ptr noundef %6, i32 noundef %31) #24
  %199 = load ptr, ptr %198, align 8, !tbaa !10
  %200 = icmp eq ptr %199, %170
  br i1 %200, label %270, label %267

201:                                              ; preds = %173, %215
  %202 = phi ptr [ %218, %215 ], [ %174, %173 ]
  %203 = phi i8 [ %217, %215 ], [ 0, %173 ]
  %204 = phi i8 [ %216, %215 ], [ 0, %173 ]
  %205 = getelementptr inbounds %struct.location_chain_def, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !160
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = or i8 %203, %204
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %220

213:                                              ; preds = %201
  %214 = icmp eq i8 %204, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210, %213
  %216 = phi i8 [ 1, %210 ], [ 0, %213 ]
  %217 = phi i8 [ 0, %210 ], [ 1, %213 ]
  %218 = load ptr, ptr %202, align 8, !tbaa !10
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %201, !llvm.loop !235

220:                                              ; preds = %215, %210, %213
  %221 = phi i8 [ %216, %215 ], [ 1, %210 ], [ 1, %213 ]
  %222 = phi i8 [ %217, %215 ], [ 1, %210 ], [ 1, %213 ]
  %223 = icmp ne i8 %221, 0
  %224 = icmp ne i8 %222, 0
  %225 = and i1 %223, %224
  br i1 %225, label %226, label %274

226:                                              ; preds = %220
  br i1 %175, label %262, label %227

227:                                              ; preds = %226, %259
  %228 = phi ptr [ %260, %259 ], [ %174, %226 ]
  %229 = getelementptr inbounds %struct.location_chain_def, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !160
  %231 = load i32, ptr %230, align 8
  %232 = and i32 %231, 65535
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %259

234:                                              ; preds = %227
  %235 = load ptr, ptr %61, align 8, !tbaa !75
  %236 = tail call fastcc zeroext i8 @shared_hash_shared(ptr noundef %235) #24, !range !5
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %235, ptr noundef nonnull %230) #24
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %234, %238
  %242 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %61, ptr noundef nonnull %230, i32 noundef 1) #24
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi ptr [ %239, %238 ], [ %242, %241 ]
  %245 = load ptr, ptr %244, align 8, !tbaa !10
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %255

247:                                              ; preds = %243
  %248 = tail call fastcc ptr @dv_pool(ptr noundef nonnull %230) #24
  %249 = tail call ptr @pool_alloc(ptr noundef %248) #25
  store ptr %230, ptr %249, align 8, !tbaa !91
  %250 = getelementptr inbounds %struct.variable_def, ptr %249, i64 0, i32 1
  store i32 1, ptr %250, align 8, !tbaa !93
  %251 = getelementptr inbounds %struct.variable_def, ptr %249, i64 0, i32 2
  store i8 1, ptr %251, align 4, !tbaa !94
  %252 = getelementptr inbounds %struct.variable_def, ptr %249, i64 0, i32 3
  store i8 0, ptr %252, align 1, !tbaa !157
  %253 = getelementptr inbounds %struct.variable_def, ptr %249, i64 0, i32 4
  store i8 0, ptr %253, align 2, !tbaa !158
  %254 = getelementptr inbounds %struct.variable_def, ptr %249, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %254, i8 0, i64 24, i1 false)
  store ptr %249, ptr %244, align 8, !tbaa !10
  br label %255

255:                                              ; preds = %247, %243
  %256 = load ptr, ptr %229, align 8, !tbaa !160
  %257 = load i32, ptr %256, align 8
  %258 = or i32 %257, 536870912
  store i32 %258, ptr %256, align 8
  br label %259

259:                                              ; preds = %227, %255
  %260 = load ptr, ptr %228, align 8, !tbaa !10
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %227, !llvm.loop !236

262:                                              ; preds = %259, %226
  %263 = load ptr, ptr %61, align 8, !tbaa !75
  %264 = tail call fastcc ptr @shared_hash_find_slot_noinsert_1(ptr noundef %263, ptr noundef %6, i32 noundef %31) #24
  %265 = load ptr, ptr %264, align 8, !tbaa !10
  %266 = icmp eq ptr %265, %170
  br i1 %266, label %270, label %267

267:                                              ; preds = %262, %196
  %268 = phi i32 [ 3493, %196 ], [ 3561, %262 ]
  %269 = phi ptr [ %198, %196 ], [ %264, %262 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef %268, ptr noundef nonnull @.str.2) #25
  br label %270

270:                                              ; preds = %267, %262, %196
  %271 = phi ptr [ %198, %196 ], [ %264, %262 ], [ %269, %267 ]
  %272 = tail call i32 @canonicalize_values_star(ptr noundef nonnull %271, ptr noundef nonnull %4) #24
  %273 = load ptr, ptr %271, align 8, !tbaa !10
  br label %274

274:                                              ; preds = %270, %173, %220
  %275 = phi ptr [ %170, %220 ], [ %170, %173 ], [ %273, %270 ]
  %276 = phi ptr [ %169, %220 ], [ %169, %173 ], [ %271, %270 ]
  %277 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef %275, ptr noundef nonnull %39) #24, !range !5
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  tail call void @variable_htab_free(ptr noundef %275) #24
  store ptr %39, ptr %276, align 8, !tbaa !10
  %280 = getelementptr inbounds %struct.variable_def, ptr %39, i64 0, i32 1
  %281 = load i32, ptr %280, align 8, !tbaa !93
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %280, align 8, !tbaa !93
  br label %293

283:                                              ; preds = %274
  %284 = icmp eq ptr %39, %5
  br i1 %284, label %292, label %285

285:                                              ; preds = %283
  %286 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef %275, ptr noundef nonnull %5) #24, !range !5
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  tail call void @variable_htab_free(ptr noundef %275) #24
  store ptr %5, ptr %276, align 8, !tbaa !10
  %289 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !93
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr %289, align 8, !tbaa !93
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %293

292:                                              ; preds = %285, %283
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %293

293:                                              ; preds = %279, %292, %288, %90, %41, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @attrs_list_member(ptr noundef readonly %0, ptr noundef readnone %1, i64 noundef %2) unnamed_addr #18 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %14
  %6 = phi ptr [ %15, %14 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.attrs_def, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.attrs_def, ptr %6, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !150
  %13 = icmp eq i64 %12, %2
  br i1 %13, label %17, label %14

14:                                               ; preds = %5, %10
  %15 = load ptr, ptr %6, align 8, !tbaa !156
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !237

17:                                               ; preds = %10, %14, %3
  %18 = phi ptr [ null, %3 ], [ null, %14 ], [ %6, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @variable_union(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %3, align 8, !tbaa !91
  %7 = tail call fastcc ptr @shared_hash_find_slot(ptr noundef %5, ptr noundef %6) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !93
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !93
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !93
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !93
  store i1 false, ptr @dst_can_be_shared, align 1
  %20 = load ptr, ptr %3, align 8, !tbaa !91
  %21 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %4, ptr noundef %20, i32 noundef 1) #24
  br label %22

22:                                               ; preds = %12, %16
  %23 = phi ptr [ %7, %12 ], [ %21, %16 ]
  store ptr %3, ptr %23, align 8, !tbaa !10
  br label %634

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %26 = load i8, ptr %25, align 4, !tbaa !94
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2097, ptr noundef nonnull @.str.2) #25
  br label %29

29:                                               ; preds = %24, %28
  %30 = load ptr, ptr %3, align 8, !tbaa !91
  %31 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %30) #24, !range !5
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr %25, align 4, !tbaa !94
  br i1 %32, label %34, label %40

34:                                               ; preds = %29
  %35 = sext i8 %33 to i32
  %36 = icmp sgt i8 %33, 0
  %37 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !94
  %39 = sext i8 %38 to i32
  br i1 %36, label %113, label %145

40:                                               ; preds = %29
  %41 = icmp eq i8 %33, 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2105, ptr noundef nonnull @.str.2) #25
  br label %43

43:                                               ; preds = %40, %42
  %44 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 2
  %45 = load i8, ptr %44, align 4, !tbaa !94
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2106, ptr noundef nonnull @.str.2) #25
  br label %48

48:                                               ; preds = %43, %47
  %49 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2109, ptr noundef nonnull @.str.2) #25
  br label %53

53:                                               ; preds = %48, %52
  br label %57

54:                                               ; preds = %79
  %55 = tail call fastcc ptr @unshare_variable(ptr noundef nonnull %1, ptr noundef nonnull %59, ptr noundef %60, i32 noundef 2) #24
  %56 = load ptr, ptr %55, align 8, !tbaa !10
  br label %57

57:                                               ; preds = %53, %54
  %58 = phi ptr [ %68, %54 ], [ %50, %53 ]
  %59 = phi ptr [ %55, %54 ], [ %7, %53 ]
  %60 = phi ptr [ %56, %54 ], [ %10, %53 ]
  %61 = getelementptr inbounds %struct.variable_def, ptr %60, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2114, ptr noundef nonnull @.str.2) #25
  br label %65

65:                                               ; preds = %57, %64
  %66 = icmp eq ptr %58, null
  br i1 %66, label %634, label %67

67:                                               ; preds = %65, %108
  %68 = phi ptr [ %110, %108 ], [ %58, %65 ]
  %69 = phi ptr [ %111, %108 ], [ %62, %65 ]
  %70 = phi ptr [ %109, %108 ], [ %61, %65 ]
  %71 = icmp eq ptr %69, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.location_chain_def, ptr %69, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !160
  %75 = getelementptr inbounds %struct.location_chain_def, ptr %68, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !160
  %77 = tail call fastcc i32 @loc_cmp(ptr noundef %74, ptr noundef %76) #24, !range !163
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %67, %72
  %80 = load ptr, ptr %4, align 8, !tbaa !75
  %81 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef %60, ptr noundef %80) #24, !range !5
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %54

83:                                               ; preds = %79
  %84 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %85 = tail call ptr @pool_alloc(ptr noundef %84) #25
  store ptr %85, ptr %70, align 8, !tbaa !10
  %86 = getelementptr inbounds %struct.location_chain_def, ptr %68, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !160
  %88 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !160
  %89 = getelementptr inbounds %struct.location_chain_def, ptr %68, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !167
  %91 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 3
  store i32 %90, ptr %91, align 8, !tbaa !167
  %92 = getelementptr inbounds %struct.location_chain_def, ptr %68, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !168
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load i32, ptr %93, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 43
  %99 = select i1 %98, ptr null, ptr %93
  br label %100

100:                                              ; preds = %95, %83
  %101 = phi ptr [ null, %83 ], [ %99, %95 ]
  %102 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !168
  store ptr %69, ptr %85, align 8, !tbaa !97
  br label %105

103:                                              ; preds = %72
  %104 = icmp sgt i32 %77, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %103
  %106 = phi ptr [ %85, %100 ], [ %69, %103 ]
  %107 = load ptr, ptr %68, align 8, !tbaa !97
  br label %108

108:                                              ; preds = %103, %105
  %109 = phi ptr [ %106, %105 ], [ %69, %103 ]
  %110 = phi ptr [ %107, %105 ], [ %68, %103 ]
  %111 = load ptr, ptr %109, align 8, !tbaa !10
  %112 = icmp eq ptr %110, null
  br i1 %112, label %634, label %67

113:                                              ; preds = %34, %135
  %114 = phi i32 [ %137, %135 ], [ 0, %34 ]
  %115 = phi i32 [ %136, %135 ], [ 0, %34 ]
  %116 = phi i32 [ %138, %135 ], [ 0, %34 ]
  %117 = icmp slt i32 %115, %39
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = sext i32 %114 to i64
  %120 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %119, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !159
  %122 = sext i32 %115 to i64
  %123 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 5, i64 %122, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !159
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = add nsw i32 %114, 1
  %128 = add nsw i32 %115, 1
  br label %135

129:                                              ; preds = %118
  %130 = icmp slt i64 %121, %124
  br i1 %130, label %131, label %133

131:                                              ; preds = %129
  %132 = add nsw i32 %114, 1
  br label %135

133:                                              ; preds = %129
  %134 = add nsw i32 %115, 1
  br label %135

135:                                              ; preds = %126, %133, %131
  %136 = phi i32 [ %128, %126 ], [ %115, %131 ], [ %134, %133 ]
  %137 = phi i32 [ %127, %126 ], [ %132, %131 ], [ %114, %133 ]
  %138 = add nuw nsw i32 %116, 1
  %139 = icmp slt i32 %137, %35
  br i1 %139, label %113, label %140, !llvm.loop !238

140:                                              ; preds = %135, %113
  %141 = phi i32 [ %116, %113 ], [ %138, %135 ]
  %142 = phi i32 [ %115, %113 ], [ %136, %135 ]
  %143 = phi i32 [ %114, %113 ], [ %137, %135 ]
  %144 = sub i32 %141, %143
  br label %145

145:                                              ; preds = %34, %140
  %146 = phi i32 [ %142, %140 ], [ 0, %34 ]
  %147 = phi i32 [ %144, %140 ], [ 0, %34 ]
  %148 = getelementptr inbounds %struct.variable_def, ptr %10, i64 0, i32 2
  %149 = sub i32 %39, %146
  %150 = add i32 %147, %35
  %151 = add i32 %150, %149
  %152 = load ptr, ptr %10, align 8, !tbaa !91
  %153 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %152) #24, !range !5
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %145
  %156 = icmp eq i32 %151, 1
  br i1 %156, label %160, label %159

157:                                              ; preds = %145
  %158 = icmp slt i32 %151, 17
  br i1 %158, label %160, label %159

159:                                              ; preds = %157, %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2176, ptr noundef nonnull @.str.2) #25
  br label %160

160:                                              ; preds = %155, %157, %159
  %161 = load i8, ptr %148, align 4, !tbaa !94
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %151, %162
  br i1 %163, label %174, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %4, align 8, !tbaa !75
  %166 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %10, ptr noundef %165) #24, !range !5
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = tail call fastcc ptr @unshare_variable(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 0) #24
  %170 = load ptr, ptr %169, align 8, !tbaa !10
  %171 = getelementptr inbounds %struct.variable_def, ptr %170, i64 0, i32 2
  %172 = load i8, ptr %171, align 4, !tbaa !94
  %173 = sext i8 %172 to i32
  br label %174

174:                                              ; preds = %168, %164, %160
  %175 = phi i32 [ %173, %168 ], [ %162, %164 ], [ %162, %160 ]
  %176 = phi ptr [ %169, %168 ], [ %7, %164 ], [ %7, %160 ]
  %177 = phi ptr [ %170, %168 ], [ %10, %164 ], [ %10, %160 ]
  %178 = load i8, ptr %25, align 4, !tbaa !94
  %179 = getelementptr inbounds %struct.variable_def, ptr %177, i64 0, i32 2
  %180 = trunc i32 %151 to i8
  store i8 %180, ptr %179, align 4, !tbaa !94
  %181 = icmp sgt i32 %151, 0
  br i1 %181, label %182, label %581

182:                                              ; preds = %174
  %183 = add nsw i32 %175, -1
  %184 = sext i8 %178 to i32
  %185 = add nsw i32 %184, -1
  %186 = zext nneg i32 %151 to i64
  br label %187

187:                                              ; preds = %182, %572
  %188 = phi i64 [ %186, %182 ], [ %193, %572 ]
  %189 = phi ptr [ %177, %182 ], [ %576, %572 ]
  %190 = phi ptr [ %176, %182 ], [ %575, %572 ]
  %191 = phi i32 [ %185, %182 ], [ %574, %572 ]
  %192 = phi i32 [ %183, %182 ], [ %573, %572 ]
  %193 = add nsw i64 %188, -1
  %194 = icmp sgt i32 %191, -1
  %195 = icmp sgt i32 %192, -1
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %197, label %521

197:                                              ; preds = %187
  %198 = zext nneg i32 %191 to i64
  %199 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %198
  %200 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %198, i32 2
  %201 = load i64, ptr %200, align 8, !tbaa !159
  %202 = zext nneg i32 %192 to i64
  %203 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %202, i32 2
  %204 = load i64, ptr %203, align 8, !tbaa !159
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %519

206:                                              ; preds = %197
  %207 = load ptr, ptr %4, align 8, !tbaa !75
  %208 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %189, ptr noundef %207) #24, !range !5
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %258, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %202
  %212 = load ptr, ptr %211, align 8, !tbaa !10
  %213 = load ptr, ptr %199, align 8, !tbaa !10
  %214 = icmp ne ptr %213, null
  %215 = icmp ne ptr %212, null
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %217, label %251

217:                                              ; preds = %210, %245
  %218 = phi ptr [ %247, %245 ], [ %213, %210 ]
  %219 = phi ptr [ %246, %245 ], [ %212, %210 ]
  %220 = getelementptr inbounds %struct.location_chain_def, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !160
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 37
  %225 = getelementptr inbounds %struct.location_chain_def, ptr %218, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !160
  br i1 %224, label %227, label %235

227:                                              ; preds = %217
  %228 = load i32, ptr %226, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 37
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %221) #24
  %233 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %226) #24
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %245, label %235

235:                                              ; preds = %217, %231, %227
  %236 = tail call i32 @rtx_equal_p(ptr noundef nonnull %221, ptr noundef %226) #25
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.location_chain_def, ptr %219, i64 0, i32 3
  %240 = load i32, ptr %239, align 8, !tbaa !167
  %241 = getelementptr inbounds %struct.location_chain_def, ptr %218, i64 0, i32 3
  %242 = load i32, ptr %241, align 8, !tbaa !167
  %243 = icmp ult i32 %240, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %238
  store i32 %242, ptr %239, align 8, !tbaa !167
  br label %255

245:                                              ; preds = %231, %235
  %246 = load ptr, ptr %219, align 8, !tbaa !10
  %247 = load ptr, ptr %218, align 8, !tbaa !10
  %248 = icmp ne ptr %247, null
  %249 = icmp ne ptr %246, null
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %217, label %251, !llvm.loop !239

251:                                              ; preds = %245, %210
  %252 = phi i1 [ %214, %210 ], [ %248, %245 ]
  %253 = phi i1 [ %215, %210 ], [ %249, %245 ]
  %254 = select i1 %252, i1 true, i1 %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %244, %238, %251
  %256 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef %190, ptr noundef %189, i32 noundef 0) #24
  %257 = load ptr, ptr %256, align 8, !tbaa !10
  br label %258

258:                                              ; preds = %255, %251, %206
  %259 = phi ptr [ %256, %255 ], [ %190, %251 ], [ %190, %206 ]
  %260 = phi ptr [ %257, %255 ], [ %189, %251 ], [ %189, %206 ]
  br label %261

261:                                              ; preds = %261, %258
  %262 = phi ptr [ %199, %258 ], [ %264, %261 ]
  %263 = phi i32 [ 0, %258 ], [ %266, %261 ]
  %264 = load ptr, ptr %262, align 8, !tbaa !10
  %265 = icmp eq ptr %264, null
  %266 = add nuw nsw i32 %263, 1
  br i1 %265, label %267, label %261, !llvm.loop !240

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %202
  br label %269

269:                                              ; preds = %269, %267
  %270 = phi ptr [ %268, %267 ], [ %272, %269 ]
  %271 = phi i32 [ 0, %267 ], [ %274, %269 ]
  %272 = load ptr, ptr %270, align 8, !tbaa !10
  %273 = icmp eq ptr %272, null
  %274 = add nuw nsw i32 %271, 1
  br i1 %273, label %275, label %269, !llvm.loop !241

275:                                              ; preds = %269
  %276 = icmp eq i32 %271, 1
  br i1 %276, label %277, label %334

277:                                              ; preds = %275
  %278 = load ptr, ptr %268, align 8, !tbaa !95
  %279 = and i64 %193, 4294967295
  %280 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %279
  store ptr %278, ptr %280, align 8, !tbaa !95
  %281 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %202, i32 2
  %282 = load i64, ptr %281, align 8, !tbaa !159
  %283 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %279, i32 2
  store i64 %282, ptr %283, align 8, !tbaa !159
  %284 = load ptr, ptr %199, align 8, !tbaa !10
  %285 = icmp eq ptr %284, null
  br i1 %285, label %332, label %286

286:                                              ; preds = %277
  %287 = getelementptr inbounds %struct.location_chain_def, ptr %278, i64 0, i32 1
  br label %288

288:                                              ; preds = %286, %328
  %289 = phi ptr [ %284, %286 ], [ %330, %328 ]
  %290 = phi ptr [ %278, %286 ], [ %329, %328 ]
  %291 = load ptr, ptr %287, align 8, !tbaa !160
  %292 = load i32, ptr %291, align 8
  %293 = and i32 %292, 65535
  %294 = icmp eq i32 %293, 37
  %295 = getelementptr inbounds %struct.location_chain_def, ptr %289, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !160
  br i1 %294, label %297, label %305

297:                                              ; preds = %288
  %298 = load i32, ptr %296, align 8
  %299 = and i32 %298, 65535
  %300 = icmp eq i32 %299, 37
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %291) #24
  %303 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %296) #24
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %328, label %305

305:                                              ; preds = %288, %301, %297
  %306 = tail call i32 @rtx_equal_p(ptr noundef nonnull %291, ptr noundef %296) #25
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %328

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.location_chain_def, ptr %289, i64 0, i32 1
  %310 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %311 = tail call ptr @pool_alloc(ptr noundef %310) #25
  %312 = load ptr, ptr %309, align 8, !tbaa !160
  %313 = getelementptr inbounds %struct.location_chain_def, ptr %311, i64 0, i32 1
  store ptr %312, ptr %313, align 8, !tbaa !160
  %314 = getelementptr inbounds %struct.location_chain_def, ptr %289, i64 0, i32 3
  %315 = load i32, ptr %314, align 8, !tbaa !167
  %316 = getelementptr inbounds %struct.location_chain_def, ptr %311, i64 0, i32 3
  store i32 %315, ptr %316, align 8, !tbaa !167
  %317 = getelementptr inbounds %struct.location_chain_def, ptr %289, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !168
  %319 = icmp eq ptr %318, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %308
  %321 = load i32, ptr %318, align 8
  %322 = and i32 %321, 65535
  %323 = icmp eq i32 %322, 43
  %324 = select i1 %323, ptr null, ptr %318
  br label %325

325:                                              ; preds = %320, %308
  %326 = phi ptr [ null, %308 ], [ %324, %320 ]
  %327 = getelementptr inbounds %struct.location_chain_def, ptr %311, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !168
  store ptr %311, ptr %290, align 8, !tbaa !97
  br label %328

328:                                              ; preds = %301, %305, %325
  %329 = phi ptr [ %290, %301 ], [ %290, %305 ], [ %311, %325 ]
  %330 = load ptr, ptr %289, align 8, !tbaa !10
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %288, !llvm.loop !242

332:                                              ; preds = %328, %277
  %333 = phi ptr [ %278, %277 ], [ %329, %328 ]
  store ptr null, ptr %333, align 8, !tbaa !97
  br label %516

334:                                              ; preds = %275
  %335 = add nuw i32 %271, %263
  %336 = load i32, ptr @vui_allocated, align 4, !tbaa !6
  %337 = icmp sgt i32 %335, %336
  %338 = load ptr, ptr @vui_vec, align 8, !tbaa !10
  br i1 %337, label %339, label %345

339:                                              ; preds = %334
  %340 = shl nuw nsw i32 %336, 1
  %341 = tail call i32 @llvm.umax.i32(i32 %340, i32 %335)
  store i32 %341, ptr @vui_allocated, align 4, !tbaa !6
  %342 = zext nneg i32 %341 to i64
  %343 = shl nuw nsw i64 %342, 4
  %344 = tail call ptr @xrealloc(ptr noundef %338, i64 noundef %343) #25
  store ptr %344, ptr @vui_vec, align 8, !tbaa !10
  br label %345

345:                                              ; preds = %339, %334
  %346 = phi ptr [ %344, %339 ], [ %338, %334 ]
  %347 = load ptr, ptr %268, align 8, !tbaa !10
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %355

349:                                              ; preds = %355, %345
  %350 = load ptr, ptr %199, align 8, !tbaa !10
  %351 = icmp eq ptr %350, null
  br i1 %351, label %432, label %352

352:                                              ; preds = %349
  %353 = icmp eq i32 %271, 0
  %354 = zext nneg i32 %271 to i64
  br label %367

355:                                              ; preds = %345, %355
  %356 = phi i64 [ %364, %355 ], [ 0, %345 ]
  %357 = phi ptr [ %365, %355 ], [ %347, %345 ]
  %358 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %356
  store ptr %357, ptr %358, align 8, !tbaa !243
  %359 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %356, i32 2
  %360 = trunc i64 %356 to i32
  store i32 %360, ptr %359, align 4, !tbaa !245
  %361 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %356, i32 1
  %362 = trunc i64 %356 to i32
  %363 = add i32 %335, %362
  store i32 %363, ptr %361, align 8, !tbaa !246
  %364 = add nuw i64 %356, 1
  %365 = load ptr, ptr %357, align 8, !tbaa !10
  %366 = icmp eq ptr %365, null
  br i1 %366, label %349, label %355, !llvm.loop !247

367:                                              ; preds = %352, %427
  %368 = phi ptr [ %350, %352 ], [ %430, %427 ]
  %369 = phi i32 [ %271, %352 ], [ %428, %427 ]
  %370 = phi i32 [ 0, %352 ], [ %429, %427 ]
  br i1 %353, label %401, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.location_chain_def, ptr %368, i64 0, i32 1
  br label %373

373:                                              ; preds = %371, %398
  %374 = phi i64 [ 0, %371 ], [ %399, %398 ]
  %375 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !243
  %377 = getelementptr inbounds %struct.location_chain_def, ptr %376, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !160
  %379 = load i32, ptr %378, align 8
  %380 = and i32 %379, 65535
  %381 = icmp eq i32 %380, 37
  %382 = load ptr, ptr %372, align 8, !tbaa !160
  br i1 %381, label %383, label %391

383:                                              ; preds = %373
  %384 = load i32, ptr %382, align 8
  %385 = and i32 %384, 65535
  %386 = icmp eq i32 %385, 37
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %378) #24
  %389 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %382) #24
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %394, label %391

391:                                              ; preds = %387, %383, %373
  %392 = tail call i32 @rtx_equal_p(ptr noundef nonnull %378, ptr noundef %382) #25
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %387, %391
  %395 = trunc i64 %374 to i32
  %396 = add nuw nsw i32 %370, %395
  %397 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %374, i32 1
  store i32 %396, ptr %397, align 8, !tbaa !246
  br label %427

398:                                              ; preds = %391
  %399 = add nuw nsw i64 %374, 1
  %400 = icmp eq i64 %399, %354
  br i1 %400, label %401, label %373, !llvm.loop !248

401:                                              ; preds = %398, %367
  %402 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %403 = tail call ptr @pool_alloc(ptr noundef %402) #25
  %404 = getelementptr inbounds %struct.location_chain_def, ptr %368, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !160
  %406 = getelementptr inbounds %struct.location_chain_def, ptr %403, i64 0, i32 1
  store ptr %405, ptr %406, align 8, !tbaa !160
  %407 = getelementptr inbounds %struct.location_chain_def, ptr %368, i64 0, i32 3
  %408 = load i32, ptr %407, align 8, !tbaa !167
  %409 = getelementptr inbounds %struct.location_chain_def, ptr %403, i64 0, i32 3
  store i32 %408, ptr %409, align 8, !tbaa !167
  %410 = getelementptr inbounds %struct.location_chain_def, ptr %368, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !168
  %412 = icmp eq ptr %411, null
  br i1 %412, label %418, label %413

413:                                              ; preds = %401
  %414 = load i32, ptr %411, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 43
  %417 = select i1 %416, ptr null, ptr %411
  br label %418

418:                                              ; preds = %413, %401
  %419 = phi ptr [ null, %401 ], [ %417, %413 ]
  %420 = getelementptr inbounds %struct.location_chain_def, ptr %403, i64 0, i32 2
  store ptr %419, ptr %420, align 8, !tbaa !168
  %421 = sext i32 %369 to i64
  %422 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %421
  store ptr %403, ptr %422, align 8, !tbaa !243
  %423 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %421, i32 2
  store i32 %335, ptr %423, align 4, !tbaa !245
  %424 = add nuw i32 %335, %370
  %425 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %421, i32 1
  store i32 %424, ptr %425, align 8, !tbaa !246
  %426 = add nsw i32 %369, 1
  br label %427

427:                                              ; preds = %394, %418
  %428 = phi i32 [ %426, %418 ], [ %369, %394 ]
  %429 = add nuw nsw i32 %370, 1
  %430 = load ptr, ptr %368, align 8, !tbaa !10
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %367, !llvm.loop !249

432:                                              ; preds = %427, %349
  %433 = phi i32 [ %271, %349 ], [ %428, %427 ]
  %434 = icmp eq i32 %271, 2
  br i1 %434, label %435, label %491

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 0, i32 1
  %437 = load i32, ptr %436, align 8, !tbaa !246
  %438 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 1
  %439 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 1, i32 1
  %440 = load i32, ptr %439, align 8, !tbaa !246
  %441 = icmp sgt i32 %437, %440
  %442 = and i64 %193, 4294967295
  %443 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %442
  br i1 %441, label %444, label %452

444:                                              ; preds = %435
  %445 = load ptr, ptr %438, align 8, !tbaa !243
  store ptr %445, ptr %443, align 8, !tbaa !95
  %446 = load ptr, ptr %346, align 8, !tbaa !243
  store ptr %446, ptr %445, align 8, !tbaa !97
  %447 = icmp sgt i32 %433, 2
  br i1 %447, label %448, label %476

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 2
  %450 = load ptr, ptr %449, align 8, !tbaa !243
  store ptr %450, ptr %446, align 8, !tbaa !97
  %451 = zext nneg i32 %433 to i64
  br label %470

452:                                              ; preds = %435
  %453 = load ptr, ptr %346, align 8, !tbaa !243
  store ptr %453, ptr %443, align 8, !tbaa !95
  %454 = icmp sgt i32 %433, 2
  br i1 %454, label %455, label %468

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 2, i32 1
  %457 = load i32, ptr %456, align 8, !tbaa !246
  %458 = icmp slt i32 %457, %440
  br i1 %458, label %459, label %468

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 2
  %461 = load ptr, ptr %460, align 8, !tbaa !243
  store ptr %461, ptr %453, align 8, !tbaa !97
  %462 = load ptr, ptr %438, align 8, !tbaa !243
  store ptr %462, ptr %461, align 8, !tbaa !97
  %463 = icmp eq i32 %433, 3
  br i1 %463, label %476, label %464

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 3
  %466 = load ptr, ptr %465, align 8, !tbaa !243
  store ptr %466, ptr %462, align 8, !tbaa !97
  %467 = zext nneg i32 %433 to i64
  br label %470

468:                                              ; preds = %455, %452
  %469 = sext i32 %433 to i64
  br label %470

470:                                              ; preds = %468, %448, %464
  %471 = phi i64 [ %467, %464 ], [ %451, %448 ], [ %469, %468 ]
  %472 = phi i32 [ 4, %464 ], [ 3, %448 ], [ 1, %468 ]
  %473 = getelementptr %struct.variable_union_info, ptr %346, i64 %471
  %474 = getelementptr %struct.variable_union_info, ptr %473, i64 -1
  %475 = load ptr, ptr %474, align 8, !tbaa !243
  br label %476

476:                                              ; preds = %470, %459, %444
  %477 = phi ptr [ %446, %444 ], [ %462, %459 ], [ %475, %470 ]
  %478 = phi i32 [ 3, %444 ], [ 4, %459 ], [ %472, %470 ]
  store ptr null, ptr %477, align 8, !tbaa !97
  %479 = icmp slt i32 %478, %433
  br i1 %479, label %480, label %511

480:                                              ; preds = %476
  %481 = zext nneg i32 %478 to i64
  %482 = zext nneg i32 %433 to i64
  br label %483

483:                                              ; preds = %480, %483
  %484 = phi i64 [ %481, %480 ], [ %489, %483 ]
  %485 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !243
  %487 = getelementptr %struct.variable_union_info, ptr %485, i64 -1
  %488 = load ptr, ptr %487, align 8, !tbaa !243
  store ptr %486, ptr %488, align 8, !tbaa !97
  %489 = add nuw nsw i64 %484, 1
  %490 = icmp eq i64 %489, %482
  br i1 %490, label %511, label %483, !llvm.loop !250

491:                                              ; preds = %432
  %492 = sext i32 %433 to i64
  tail call void @spec_qsort(ptr noundef %346, i64 noundef %492, i64 noundef 16, ptr noundef nonnull @variable_union_info_cmp_pos) #25
  %493 = icmp sgt i32 %433, 1
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = zext nneg i32 %433 to i64
  br label %496

496:                                              ; preds = %494, %496
  %497 = phi i64 [ 1, %494 ], [ %502, %496 ]
  %498 = getelementptr inbounds %struct.variable_union_info, ptr %346, i64 %497
  %499 = load ptr, ptr %498, align 8, !tbaa !243
  %500 = getelementptr %struct.variable_union_info, ptr %498, i64 -1
  %501 = load ptr, ptr %500, align 8, !tbaa !243
  store ptr %499, ptr %501, align 8, !tbaa !97
  %502 = add nuw nsw i64 %497, 1
  %503 = icmp eq i64 %502, %495
  br i1 %503, label %504, label %496, !llvm.loop !251

504:                                              ; preds = %496, %491
  %505 = getelementptr %struct.variable_union_info, ptr %346, i64 %492
  %506 = getelementptr %struct.variable_union_info, ptr %505, i64 -1
  %507 = load ptr, ptr %506, align 8, !tbaa !243
  store ptr null, ptr %507, align 8, !tbaa !97
  %508 = load ptr, ptr %346, align 8, !tbaa !243
  %509 = and i64 %193, 4294967295
  %510 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %509
  store ptr %508, ptr %510, align 8, !tbaa !95
  br label %511

511:                                              ; preds = %483, %476, %504
  %512 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %202, i32 2
  %513 = load i64, ptr %512, align 8, !tbaa !159
  %514 = and i64 %193, 4294967295
  %515 = getelementptr inbounds %struct.variable_def, ptr %260, i64 0, i32 5, i64 %514, i32 2
  store i64 %513, ptr %515, align 8, !tbaa !159
  br label %516

516:                                              ; preds = %511, %332
  %517 = add nsw i32 %191, -1
  %518 = add nsw i32 %192, -1
  br label %572

519:                                              ; preds = %197
  %520 = icmp slt i64 %201, %204
  br i1 %520, label %523, label %529

521:                                              ; preds = %187
  %522 = icmp slt i32 %191, 0
  br i1 %522, label %523, label %531

523:                                              ; preds = %521, %519
  %524 = and i64 %193, 4294967295
  %525 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %524
  %526 = sext i32 %192 to i64
  %527 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %526
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %525, ptr noundef nonnull align 8 dereferenceable(24) %527, i64 24, i1 false), !tbaa.struct !169
  %528 = add nsw i32 %192, -1
  br label %572

529:                                              ; preds = %519
  %530 = icmp sgt i64 %201, %204
  br i1 %530, label %535, label %572

531:                                              ; preds = %521
  %532 = icmp slt i32 %192, 0
  br i1 %532, label %533, label %572

533:                                              ; preds = %531
  %534 = zext nneg i32 %191 to i64
  br label %535

535:                                              ; preds = %533, %529
  %536 = phi i64 [ %534, %533 ], [ %198, %529 ]
  %537 = and i64 %193, 4294967295
  %538 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %536
  %539 = load ptr, ptr %538, align 8, !tbaa !10
  %540 = icmp eq ptr %539, null
  br i1 %540, label %567, label %541

541:                                              ; preds = %535
  %542 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %537
  br label %543

543:                                              ; preds = %541, %559
  %544 = phi ptr [ %565, %559 ], [ %539, %541 ]
  %545 = phi ptr [ %547, %559 ], [ %542, %541 ]
  %546 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %547 = tail call ptr @pool_alloc(ptr noundef %546) #25
  store ptr null, ptr %547, align 8, !tbaa !97
  %548 = getelementptr inbounds %struct.location_chain_def, ptr %544, i64 0, i32 3
  %549 = load i32, ptr %548, align 8, !tbaa !167
  %550 = getelementptr inbounds %struct.location_chain_def, ptr %547, i64 0, i32 3
  store i32 %549, ptr %550, align 8, !tbaa !167
  %551 = getelementptr inbounds %struct.location_chain_def, ptr %544, i64 0, i32 2
  %552 = load ptr, ptr %551, align 8, !tbaa !168
  %553 = icmp eq ptr %552, null
  br i1 %553, label %559, label %554

554:                                              ; preds = %543
  %555 = load i32, ptr %552, align 8
  %556 = and i32 %555, 65535
  %557 = icmp eq i32 %556, 43
  %558 = select i1 %557, ptr null, ptr %552
  br label %559

559:                                              ; preds = %554, %543
  %560 = phi ptr [ null, %543 ], [ %558, %554 ]
  %561 = getelementptr inbounds %struct.location_chain_def, ptr %547, i64 0, i32 2
  store ptr %560, ptr %561, align 8, !tbaa !168
  %562 = getelementptr inbounds %struct.location_chain_def, ptr %544, i64 0, i32 1
  %563 = load ptr, ptr %562, align 8, !tbaa !160
  %564 = getelementptr inbounds %struct.location_chain_def, ptr %547, i64 0, i32 1
  store ptr %563, ptr %564, align 8, !tbaa !160
  store ptr %547, ptr %545, align 8, !tbaa !10
  %565 = load ptr, ptr %544, align 8, !tbaa !10
  %566 = icmp eq ptr %565, null
  br i1 %566, label %567, label %543, !llvm.loop !252

567:                                              ; preds = %559, %535
  %568 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %536, i32 2
  %569 = load i64, ptr %568, align 8, !tbaa !159
  %570 = getelementptr inbounds %struct.variable_def, ptr %189, i64 0, i32 5, i64 %537, i32 2
  store i64 %569, ptr %570, align 8, !tbaa !159
  %571 = add nsw i32 %191, -1
  br label %572

572:                                              ; preds = %523, %529, %567, %531, %516
  %573 = phi i32 [ %518, %516 ], [ %528, %523 ], [ %192, %567 ], [ %192, %529 ], [ %192, %531 ]
  %574 = phi i32 [ %517, %516 ], [ %191, %523 ], [ %571, %567 ], [ %191, %529 ], [ %191, %531 ]
  %575 = phi ptr [ %259, %516 ], [ %190, %523 ], [ %190, %567 ], [ %190, %529 ], [ %190, %531 ]
  %576 = phi ptr [ %260, %516 ], [ %189, %523 ], [ %189, %567 ], [ %189, %529 ], [ %189, %531 ]
  %577 = and i64 %193, 4294967295
  %578 = getelementptr inbounds %struct.variable_def, ptr %576, i64 0, i32 5, i64 %577, i32 1
  store ptr null, ptr %578, align 8, !tbaa !172
  %579 = trunc i64 %188 to i32
  %580 = icmp sgt i32 %579, 1
  br i1 %580, label %187, label %581, !llvm.loop !253

581:                                              ; preds = %572, %174
  %582 = phi ptr [ %177, %174 ], [ %576, %572 ]
  %583 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %634, label %585

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.variable_def, ptr %582, i64 0, i32 2
  %587 = load i8, ptr %25, align 4, !tbaa !94
  %588 = icmp sgt i8 %587, 0
  br i1 %588, label %589, label %634

589:                                              ; preds = %585, %629
  %590 = phi i8 [ %630, %629 ], [ %587, %585 ]
  %591 = phi i64 [ %631, %629 ], [ 0, %585 ]
  %592 = load i8, ptr %586, align 4, !tbaa !94
  %593 = sext i8 %592 to i64
  %594 = icmp slt i64 %591, %593
  br i1 %594, label %595, label %634

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %591
  %597 = load ptr, ptr %596, align 8, !tbaa !10
  %598 = icmp eq ptr %597, null
  br i1 %598, label %629, label %599

599:                                              ; preds = %595
  %600 = getelementptr inbounds %struct.variable_def, ptr %582, i64 0, i32 5, i64 %591
  br label %604

601:                                              ; preds = %624, %604
  %602 = load ptr, ptr %605, align 8, !tbaa !10
  %603 = icmp eq ptr %602, null
  br i1 %603, label %627, label %604, !llvm.loop !254

604:                                              ; preds = %599, %601
  %605 = phi ptr [ %597, %599 ], [ %602, %601 ]
  %606 = load ptr, ptr %600, align 8, !tbaa !10
  %607 = icmp eq ptr %606, null
  br i1 %607, label %601, label %608

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.location_chain_def, ptr %605, i64 0, i32 1
  %610 = getelementptr inbounds %struct.location_chain_def, ptr %605, i64 0, i32 3
  br label %611

611:                                              ; preds = %608, %624
  %612 = phi ptr [ %606, %608 ], [ %625, %624 ]
  %613 = load ptr, ptr %609, align 8, !tbaa !160
  %614 = getelementptr inbounds %struct.location_chain_def, ptr %612, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !160
  %616 = tail call i32 @rtx_equal_p(ptr noundef %613, ptr noundef %615) #25
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %624, label %618

618:                                              ; preds = %611
  %619 = load i32, ptr %610, align 8, !tbaa !167
  %620 = getelementptr inbounds %struct.location_chain_def, ptr %612, i64 0, i32 3
  %621 = load i32, ptr %620, align 8, !tbaa !167
  %622 = icmp ugt i32 %619, %621
  br i1 %622, label %623, label %624

623:                                              ; preds = %618
  store i32 %619, ptr %620, align 8, !tbaa !167
  br label %624

624:                                              ; preds = %611, %623, %618
  %625 = load ptr, ptr %612, align 8, !tbaa !10
  %626 = icmp eq ptr %625, null
  br i1 %626, label %601, label %611, !llvm.loop !255

627:                                              ; preds = %601
  %628 = load i8, ptr %25, align 4, !tbaa !94
  br label %629

629:                                              ; preds = %627, %595
  %630 = phi i8 [ %628, %627 ], [ %590, %595 ]
  %631 = add nuw nsw i64 %591, 1
  %632 = sext i8 %630 to i64
  %633 = icmp slt i64 %631, %632
  br i1 %633, label %589, label %634, !llvm.loop !256

634:                                              ; preds = %65, %108, %589, %629, %585, %581, %22
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @shared_hash_htab(ptr noundef %0) #24
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %4, ptr noundef %1, i32 noundef %2) #25
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @onepart_variable_different_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !94
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4314, ptr noundef nonnull @.str.2) #25
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !94
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4315, ptr noundef nonnull @.str.2) #25
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4320, ptr noundef nonnull @.str.2) #25
  br label %21

21:                                               ; preds = %14, %20
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4321, ptr noundef nonnull @.str.2) #25
  br label %41

24:                                               ; preds = %21
  %25 = icmp eq ptr %16, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %24, %35
  %27 = phi ptr [ %37, %35 ], [ %18, %24 ]
  %28 = phi ptr [ %36, %35 ], [ %16, %24 ]
  %29 = getelementptr inbounds %struct.location_chain_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !160
  %31 = getelementptr inbounds %struct.location_chain_def, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !160
  %33 = tail call fastcc i32 @loc_cmp(ptr noundef %30, ptr noundef %32) #24, !range !163
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load ptr, ptr %28, align 8, !tbaa !97
  %37 = load ptr, ptr %27, align 8, !tbaa !97
  %38 = icmp ne ptr %36, null
  %39 = icmp ne ptr %37, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %26, label %41, !llvm.loop !257

41:                                               ; preds = %35, %23, %24
  %42 = phi ptr [ %16, %24 ], [ %16, %23 ], [ %36, %35 ]
  %43 = phi ptr [ %18, %24 ], [ null, %23 ], [ %37, %35 ]
  %44 = icmp ne ptr %42, %43
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %26, %2, %41
  %47 = phi i8 [ %45, %41 ], [ 0, %2 ], [ 1, %26 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intersect_loc_chains(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.dfset_merge, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  %10 = getelementptr inbounds %struct.dfset_merge, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = getelementptr inbounds %struct.dataflow_set_def, ptr %9, i64 0, i32 2
  %13 = getelementptr inbounds %struct.dataflow_set_def, ptr %11, i64 0, i32 2
  br label %14

14:                                               ; preds = %7, %52
  %15 = phi ptr [ %3, %7 ], [ %53, %52 ]
  %16 = getelementptr inbounds %struct.location_chain_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %52, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8, !tbaa !75
  %21 = tail call fastcc ptr @shared_hash_htab(ptr noundef %20) #24
  %22 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %17, ptr noundef %4, ptr noundef %21) #24
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr %16, align 8, !tbaa !160
  br i1 %23, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.location_chain_def, ptr %15, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !167
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !167
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  tail call fastcc void @insert_into_intersection(ptr noundef %1, ptr noundef %24, i32 noundef %30) #24
  br label %52

31:                                               ; preds = %19
  %32 = load i32, ptr %24, align 8
  %33 = and i32 %32, 536936447
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load ptr, ptr %13, align 8, !tbaa !75
  %37 = tail call fastcc ptr @shared_hash_find(ptr noundef %36, ptr noundef nonnull %24) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.variable_def, ptr %37, i64 0, i32 2
  %41 = load i8, ptr %40, align 4, !tbaa !94
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load ptr, ptr %16, align 8, !tbaa !160
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %45, 536870912
  store i32 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.variable_def, ptr %37, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !95
  tail call fastcc void @intersect_loc_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %48, ptr noundef %4) #24
  %49 = load ptr, ptr %16, align 8, !tbaa !160
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -536870913
  store i32 %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %35, %43, %39, %31, %14, %25
  %53 = load ptr, ptr %15, align 8, !tbaa !97
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %14, !llvm.loop !258

55:                                               ; preds = %52, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @delete_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !10
  %6 = tail call fastcc i32 @find_variable_location_part(ptr noundef %5, i64 noundef %3, ptr noundef null) #24
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %112

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef %5, ptr noundef %10) #24, !range !5
  %12 = icmp eq i8 %11, 0
  %13 = zext nneg i32 %6 to i64
  br i1 %12, label %40, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 %13
  br label %16

16:                                               ; preds = %34, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %34 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.location_chain_def, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !160
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %22) #24
  %32 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %26, %20
  %35 = tail call i32 @rtx_equal_p(ptr noundef nonnull %22, ptr noundef %1) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %16, label %37, !llvm.loop !259

37:                                               ; preds = %34, %30
  %38 = tail call fastcc ptr @unshare_variable(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %5, i32 noundef 0) #24
  %39 = load ptr, ptr %38, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %16, %8, %37
  %41 = phi ptr [ %39, %37 ], [ %5, %8 ], [ %5, %16 ]
  %42 = phi ptr [ %38, %37 ], [ %2, %8 ], [ %2, %16 ]
  %43 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 5, i64 %13
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  br label %45

45:                                               ; preds = %64, %40
  %46 = phi ptr [ %44, %40 ], [ %50, %64 ]
  %47 = phi ptr [ %43, %40 ], [ %46, %64 ]
  %48 = icmp eq ptr %46, null
  br i1 %48, label %90, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %46, align 8, !tbaa !97
  %51 = getelementptr inbounds %struct.location_chain_def, ptr %46, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !160
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %52) #24
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %60, %56, %49
  %65 = tail call i32 @rtx_equal_p(ptr noundef nonnull %52, ptr noundef %1) #25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %45, label %67, !llvm.loop !260

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.location_chain_def, ptr %46, i64 0, i32 1
  %69 = load i1, ptr @emit_notes, align 1
  %70 = icmp eq i32 %6, 0
  %71 = and i1 %70, %69
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load ptr, ptr %41, align 8, !tbaa !91
  %74 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %73) #24, !range !5
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %41, align 8, !tbaa !91
  %78 = load ptr, ptr %68, align 8, !tbaa !160
  tail call fastcc void @remove_value_chains(ptr noundef %77, ptr noundef %78) #24
  br label %79

79:                                               ; preds = %76, %72, %67
  %80 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 5, i64 %13, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !172
  %82 = load ptr, ptr %68, align 8, !tbaa !160
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  store ptr null, ptr %80, align 8, !tbaa !172
  %85 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 3
  store i8 1, ptr %85, align 1, !tbaa !157
  br label %86

86:                                               ; preds = %79, %84
  %87 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %87, ptr noundef nonnull %46) #25
  store ptr %50, ptr %47, align 8, !tbaa !10
  %88 = load ptr, ptr %43, align 8, !tbaa !95
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %110

90:                                               ; preds = %45
  %91 = load ptr, ptr %43, align 8, !tbaa !95
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %90, %86
  %94 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 2
  %95 = load i8, ptr %94, align 4, !tbaa !94
  %96 = add i8 %95, -1
  store i8 %96, ptr %94, align 4, !tbaa !94
  %97 = load i1, ptr @emit_notes, align 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 3
  store i8 1, ptr %99, align 1, !tbaa !157
  br label %100

100:                                              ; preds = %98, %93
  %101 = sext i8 %96 to i32
  %102 = icmp slt i32 %6, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %100, %103
  %104 = phi i64 [ %106, %103 ], [ %13, %100 ]
  %105 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 5, i64 %104
  %106 = add nuw nsw i64 %104, 1
  %107 = getelementptr inbounds %struct.variable_def, ptr %41, i64 0, i32 5, i64 %106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %105, ptr noundef nonnull align 8 dereferenceable(24) %107, i64 24, i1 false), !tbaa.struct !169
  %108 = trunc i64 %106 to i32
  %109 = icmp slt i32 %108, %101
  br i1 %109, label %103, label %111, !llvm.loop !261

110:                                              ; preds = %86
  br i1 %83, label %111, label %112

111:                                              ; preds = %103, %100, %110
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %41, ptr noundef %0) #24
  br label %112

112:                                              ; preds = %90, %110, %111, %4
  %113 = phi ptr [ %2, %4 ], [ %42, %111 ], [ %42, %110 ], [ %42, %90 ]
  ret ptr %113
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @canonicalize_values_star(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %246, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !94
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3068, ptr noundef nonnull @.str.2) #25
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %4) #24, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 8
  %17 = and i32 %16, 536870912
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %246, label %19

19:                                               ; preds = %15
  %20 = and i32 %16, -536870913
  store i32 %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi ptr [ %4, %19 ], [ null, %12 ]
  %23 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  br label %24

24:                                               ; preds = %107, %21
  %25 = phi ptr [ %4, %21 ], [ %85, %107 ]
  %26 = phi ptr [ %3, %21 ], [ %99, %107 ]
  %27 = phi ptr [ %0, %21 ], [ %88, %107 ]
  %28 = phi ptr [ %22, %21 ], [ %85, %107 ]
  %29 = getelementptr inbounds %struct.variable_def, ptr %26, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !94
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3085, ptr noundef nonnull @.str.2) #25
  br label %33

33:                                               ; preds = %24, %32
  %34 = getelementptr inbounds %struct.variable_def, ptr %26, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %246, label %37

37:                                               ; preds = %33, %54
  %38 = phi ptr [ %58, %54 ], [ %35, %33 ]
  %39 = phi i8 [ %57, %54 ], [ 0, %33 ]
  %40 = phi i8 [ %56, %54 ], [ 0, %33 ]
  %41 = phi ptr [ %55, %54 ], [ %28, %33 ]
  %42 = getelementptr inbounds %struct.location_chain_def, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !160
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = and i32 %44, 536870912
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i8 %39, i8 1
  %51 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %43, ptr noundef %41) #24, !range !5
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, ptr %41, ptr %43
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi ptr [ %41, %37 ], [ %53, %47 ]
  %56 = phi i8 [ %40, %37 ], [ 1, %47 ]
  %57 = phi i8 [ %39, %37 ], [ %50, %47 ]
  %58 = load ptr, ptr %38, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %37, !llvm.loop !262

60:                                               ; preds = %54
  %61 = icmp eq i8 %56, 0
  br i1 %61, label %246, label %62

62:                                               ; preds = %60
  %63 = icmp eq ptr %55, %28
  br i1 %63, label %64, label %111

64:                                               ; preds = %62
  %65 = icmp eq i8 %57, 0
  br i1 %65, label %246, label %66

66:                                               ; preds = %64
  %67 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %25) #24, !range !5
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %246

69:                                               ; preds = %66
  %70 = load i32, ptr %28, align 8
  %71 = or i32 %70, 536870912
  store i32 %71, ptr %28, align 8
  br label %72

72:                                               ; preds = %76, %69
  %73 = phi ptr [ %34, %69 ], [ %74, %76 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %109, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.location_chain_def, ptr %74, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !160
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 536936447
  %81 = icmp eq i32 %80, 536870913
  br i1 %81, label %82, label %72, !llvm.loop !263

82:                                               ; preds = %76, %242
  %83 = phi i32 [ %243, %242 ], [ %79, %76 ]
  %84 = phi ptr [ %228, %242 ], [ %26, %76 ]
  %85 = phi ptr [ %55, %242 ], [ %78, %76 ]
  %86 = and i32 %83, -536870913
  store i32 %86, ptr %85, align 8
  %87 = load ptr, ptr %23, align 8, !tbaa !75
  %88 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %87, ptr noundef nonnull %85) #24
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load ptr, ptr %84, align 8, !tbaa !91
  %92 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %91) #24, !range !5
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3121, ptr noundef nonnull @.str.2) #25
  %95 = load ptr, ptr %84, align 8, !tbaa !91
  br label %96

96:                                               ; preds = %90, %94
  %97 = phi ptr [ %91, %90 ], [ %95, %94 ]
  tail call fastcc void @clobber_variable_part(ptr noundef nonnull %1, ptr noundef null, ptr noundef %97, i64 noundef 0, ptr noundef null) #24
  br label %246

98:                                               ; preds = %82
  %99 = load ptr, ptr %88, align 8, !tbaa !10
  %100 = load ptr, ptr %99, align 8, !tbaa !91
  %101 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %100) #24, !range !5
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3128, ptr noundef nonnull @.str.2) #25
  br label %104

104:                                              ; preds = %98, %103
  %105 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 2
  %106 = load i8, ptr %105, align 4, !tbaa !94
  switch i8 %106, label %108 [
    i8 0, label %246
    i8 1, label %107
  ]

107:                                              ; preds = %104, %108
  br label %24

108:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3131, ptr noundef nonnull @.str.2) #25
  br label %107

109:                                              ; preds = %72
  %110 = and i32 %70, -536870913
  store i32 %110, ptr %28, align 8
  br label %246

111:                                              ; preds = %62
  %112 = load ptr, ptr %23, align 8, !tbaa !75
  %113 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %112, ptr noundef %55) #24
  %114 = load ptr, ptr %34, align 8, !tbaa !10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %221, label %116

116:                                              ; preds = %111, %217
  %117 = phi ptr [ %219, %217 ], [ %114, %111 ]
  %118 = phi ptr [ %218, %217 ], [ %113, %111 ]
  %119 = getelementptr inbounds %struct.location_chain_def, ptr %117, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !160
  %121 = icmp eq ptr %120, %55
  br i1 %121, label %217, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.location_chain_def, ptr %117, i64 0, i32 3
  %124 = load i32, ptr %123, align 8, !tbaa !167
  %125 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef %120, ptr noundef %118, ptr noundef %55, i64 noundef 0, i32 noundef %124, ptr noundef null) #24
  %126 = load ptr, ptr %119, align 8, !tbaa !160
  %127 = load i32, ptr %126, align 8
  %128 = trunc i32 %127 to i16
  switch i16 %128, label %217 [
    i16 1, label %129
    i16 37, label %143
  ]

129:                                              ; preds = %122
  %130 = load i32, ptr %123, align 8, !tbaa !167
  tail call fastcc void @set_variable_part(ptr noundef %1, ptr noundef %55, ptr noundef nonnull %126, i64 noundef 0, i32 noundef %130, ptr noundef null, i32 noundef 0) #24
  %131 = load ptr, ptr %119, align 8, !tbaa !160
  %132 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef %131, ptr noundef %28) #24, !range !5
  %133 = icmp eq i8 %132, 0
  %134 = load i32, ptr %131, align 8
  br i1 %133, label %139, label %135

135:                                              ; preds = %129
  %136 = or i32 %134, 536870912
  store i32 %136, ptr %131, align 8
  %137 = load i32, ptr %55, align 8
  %138 = or i32 %137, 536870912
  store i32 %138, ptr %55, align 8
  br label %217

139:                                              ; preds = %129
  %140 = and i32 %134, 536870912
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %217

142:                                              ; preds = %139
  tail call fastcc void @clobber_variable_part(ptr noundef %1, ptr noundef %55, ptr noundef nonnull %126, i64 noundef 0, ptr noundef null) #24
  br label %217

143:                                              ; preds = %122
  %144 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %126) #24
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !10
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %143, %160
  %150 = phi ptr [ %161, %160 ], [ %147, %143 ]
  %151 = getelementptr inbounds %struct.attrs_def, ptr %150, i64 0, i32 3
  %152 = load i64, ptr %151, align 8, !tbaa !150
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.attrs_def, ptr %150, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !148
  %157 = icmp eq ptr %156, %25
  %158 = icmp eq ptr %156, %55
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %165, label %160

160:                                              ; preds = %154, %149
  %161 = load ptr, ptr %150, align 8, !tbaa !10
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %149, !llvm.loop !264

163:                                              ; preds = %160, %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3195, ptr noundef nonnull @.str.2) #25
  %164 = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !148
  br label %165

165:                                              ; preds = %154, %163
  %166 = phi ptr [ %164, %163 ], [ %156, %154 ]
  %167 = phi ptr [ null, %163 ], [ %150, %154 ]
  %168 = icmp eq ptr %166, %25
  br i1 %168, label %169, label %192

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.attrs_def, ptr %167, i64 0, i32 2
  store ptr %55, ptr %170, align 8, !tbaa !148
  %171 = load ptr, ptr %167, align 8, !tbaa !10
  %172 = icmp eq ptr %171, null
  br i1 %172, label %217, label %173

173:                                              ; preds = %169, %189
  %174 = phi ptr [ %190, %189 ], [ %171, %169 ]
  %175 = phi ptr [ %174, %189 ], [ %167, %169 ]
  %176 = getelementptr inbounds %struct.attrs_def, ptr %174, i64 0, i32 3
  %177 = load i64, ptr %176, align 8, !tbaa !150
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.attrs_def, ptr %174, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !148
  %182 = icmp eq ptr %181, %55
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load ptr, ptr %174, align 8, !tbaa !156
  store ptr %184, ptr %175, align 8, !tbaa !10
  %185 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %185, ptr noundef nonnull %174) #25
  br label %217

186:                                              ; preds = %179
  %187 = icmp eq ptr %181, %25
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3212, ptr noundef nonnull @.str.2) #25
  br label %189

189:                                              ; preds = %188, %186, %173
  %190 = load ptr, ptr %174, align 8, !tbaa !10
  %191 = icmp eq ptr %190, null
  br i1 %191, label %217, label %173, !llvm.loop !265

192:                                              ; preds = %165
  %193 = icmp eq ptr %166, %55
  br i1 %193, label %194, label %216

194:                                              ; preds = %192
  %195 = load ptr, ptr %167, align 8, !tbaa !10
  %196 = icmp eq ptr %195, null
  br i1 %196, label %217, label %197

197:                                              ; preds = %194, %213
  %198 = phi ptr [ %214, %213 ], [ %195, %194 ]
  %199 = phi ptr [ %198, %213 ], [ %167, %194 ]
  %200 = getelementptr inbounds %struct.attrs_def, ptr %198, i64 0, i32 3
  %201 = load i64, ptr %200, align 8, !tbaa !150
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.attrs_def, ptr %198, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !148
  %206 = icmp eq ptr %205, %25
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load ptr, ptr %198, align 8, !tbaa !156
  store ptr %208, ptr %199, align 8, !tbaa !10
  %209 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %209, ptr noundef nonnull %198) #25
  br label %217

210:                                              ; preds = %203
  %211 = icmp eq ptr %205, %55
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3230, ptr noundef nonnull @.str.2) #25
  br label %213

213:                                              ; preds = %212, %210, %197
  %214 = load ptr, ptr %198, align 8, !tbaa !10
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %197, !llvm.loop !266

216:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3234, ptr noundef nonnull @.str.2) #25
  br label %217

217:                                              ; preds = %213, %189, %194, %169, %183, %207, %216, %122, %135, %142, %139, %116
  %218 = phi ptr [ %118, %116 ], [ %125, %139 ], [ %125, %142 ], [ %125, %135 ], [ %125, %122 ], [ %125, %216 ], [ %125, %207 ], [ %125, %183 ], [ %125, %169 ], [ %125, %194 ], [ %125, %189 ], [ %125, %213 ]
  %219 = load ptr, ptr %117, align 8, !tbaa !10
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %116, !llvm.loop !267

221:                                              ; preds = %217, %111
  %222 = phi ptr [ %113, %111 ], [ %218, %217 ]
  %223 = icmp eq ptr %28, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef nonnull %28, ptr noundef %222, ptr noundef %55, i64 noundef 0, i32 noundef 2, ptr noundef null) #24
  br label %226

226:                                              ; preds = %224, %221
  %227 = tail call fastcc ptr @clobber_slot_part(ptr noundef %1, ptr noundef %55, ptr noundef nonnull %27, i64 noundef 0, ptr noundef null) #24
  %228 = load ptr, ptr %227, align 8, !tbaa !10
  %229 = getelementptr inbounds %struct.variable_def, ptr %228, i64 0, i32 2
  %230 = load i8, ptr %229, align 4, !tbaa !94
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.variable_def, ptr %228, i64 0, i32 5
  %234 = load ptr, ptr %233, align 8, !tbaa !95
  %235 = getelementptr inbounds %struct.location_chain_def, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !160
  %237 = icmp eq ptr %236, %55
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load ptr, ptr %234, align 8, !tbaa !97
  %240 = icmp eq ptr %239, null
  br i1 %240, label %242, label %241

241:                                              ; preds = %238, %232, %226
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3259, ptr noundef nonnull @.str.2) #25
  br label %242

242:                                              ; preds = %238, %241
  %243 = load i32, ptr %55, align 8
  %244 = and i32 %243, 536870912
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %82

246:                                              ; preds = %33, %242, %104, %64, %66, %60, %15, %2, %109, %96
  ret i32 1
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @variable_union_info_cmp_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.variable_union_info, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !246
  %5 = getelementptr inbounds %struct.variable_union_info, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !246
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 %4, %6
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.variable_union_info, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !245
  %13 = getelementptr inbounds %struct.variable_union_info, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !245
  %15 = sub nsw i32 %12, %14
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %9, %8 ], [ %15, %10 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_loc_in_1pdv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2506, ptr noundef nonnull @.str.2) #25
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !94
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5
  %14 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !159
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2511, ptr noundef nonnull @.str.2) #25
  br label %18

18:                                               ; preds = %12, %17
  %19 = load ptr, ptr %13, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %45
  %22 = phi ptr [ %46, %45 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %24) #25
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load ptr, ptr %23, align 8, !tbaa !160
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 536936447
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @dv_htab_hash(ptr noundef nonnull %28) #24
  %34 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef nonnull %28, i32 noundef %33) #25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 8, !tbaa !160
  %38 = load i32, ptr %37, align 8
  %39 = or i32 %38, 536870912
  store i32 %39, ptr %37, align 8
  %40 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %2) #24
  %41 = icmp eq ptr %40, null
  %42 = load ptr, ptr %23, align 8, !tbaa !160
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -536870913
  store i32 %44, ptr %42, align 8
  br i1 %41, label %45, label %48

45:                                               ; preds = %36, %32, %27
  %46 = load ptr, ptr %22, align 8, !tbaa !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %21, !llvm.loop !268

48:                                               ; preds = %21, %45, %36, %18, %8
  %49 = phi ptr [ null, %8 ], [ null, %18 ], [ %22, %21 ], [ null, %45 ], [ %40, %36 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_into_intersection(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %17 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.location_chain_def, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = tail call fastcc i32 @loc_cmp(ptr noundef %10, ptr noundef %1) #24, !range !163
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.location_chain_def, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !167
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %2)
  store i32 %16, ptr %14, align 8, !tbaa !167
  br label %26

17:                                               ; preds = %8
  %18 = icmp sgt i32 %11, 0
  br i1 %18, label %19, label %4, !llvm.loop !269

19:                                               ; preds = %17, %4
  %20 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  %21 = tail call ptr @pool_alloc(ptr noundef %20) #25
  %22 = getelementptr inbounds %struct.location_chain_def, ptr %21, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !160
  %23 = getelementptr inbounds %struct.location_chain_def, ptr %21, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !168
  %24 = getelementptr inbounds %struct.location_chain_def, ptr %21, i64 0, i32 3
  store i32 %2, ptr %24, align 8, !tbaa !167
  %25 = load ptr, ptr %5, align 8, !tbaa !10
  store ptr %25, ptr %21, align 8, !tbaa !97
  store ptr %21, ptr %5, align 8, !tbaa !10
  br label %26

26:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_hash_find(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @dv_htab_hash(ptr noundef %1) #24
  %4 = tail call fastcc ptr @shared_hash_find_1(ptr noundef %0, ptr noundef %1, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_value_chains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !10
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %11 [
    i16 1, label %6
    i16 2, label %6
    i16 37, label %13
    i16 43, label %8
  ]

6:                                                ; preds = %2, %2
  %7 = call i32 @remove_value_chain(ptr noundef nonnull %3, ptr noundef %0) #24
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %10, ptr %3, align 8, !tbaa !10
  br label %11

11:                                               ; preds = %2, %8
  %12 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @remove_value_chain, ptr noundef %0) #25
  br label %13

13:                                               ; preds = %2, %11, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_value_chain(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %47 [
    i16 1, label %9
    i16 2, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %3, %2 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %47, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @value_chains, align 8, !tbaa !10
  %14 = tail call fastcc i32 @dv_htab_hash(ptr noundef %10) #24
  %15 = tail call ptr @htab_find_slot_with_hash(ptr noundef %13, ptr noundef %10, i32 noundef %14, i32 noundef 0) #25
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %16, %12 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.value_chain_def, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %17, !llvm.loop !270

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.value_chain_def, ptr %19, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !180
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2925, ptr noundef nonnull @.str.2) #25
  %30 = load i32, ptr %26, align 8, !tbaa !180
  br label %31

31:                                               ; preds = %25, %29
  %32 = phi i32 [ %27, %25 ], [ %30, %29 ]
  %33 = add nsw i32 %32, -1
  store i32 %33, ptr %26, align 8, !tbaa !180
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load ptr, ptr %19, align 8, !tbaa !179
  store ptr %36, ptr %18, align 8, !tbaa !179
  %37 = load ptr, ptr @value_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %37, ptr noundef nonnull %19) #25
  %38 = load ptr, ptr %18, align 8, !tbaa !179
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load ptr, ptr %15, align 8, !tbaa !10
  %42 = icmp eq ptr %18, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr @value_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %44, ptr noundef nonnull %18) #25
  %45 = load ptr, ptr @value_chains, align 8, !tbaa !10
  tail call void @htab_clear_slot(ptr noundef %45, ptr noundef nonnull %15) #25
  br label %47

46:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2938, ptr noundef nonnull @.str.2) #25
  br label %47

47:                                               ; preds = %31, %43, %40, %35, %9, %2, %46
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  %8 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef nonnull %2) #24, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !6
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %23

16:                                               ; preds = %10, %7
  %17 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %18, ptr noundef nonnull %2) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @clobber_slot_part(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %19, i64 noundef %3, ptr noundef %4) #24
  br label %23

23:                                               ; preds = %16, %5, %10, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clobber_slot_part(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %2, align 8, !tbaa !10
  %7 = tail call fastcc i32 @find_variable_location_part(ptr noundef %6, i64 noundef %3, ptr noundef null) #24
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %74

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14

14:                                               ; preds = %9
  %15 = icmp ne ptr %4, null
  br label %16

16:                                               ; preds = %14, %71
  %17 = phi ptr [ %2, %14 ], [ %72, %71 ]
  %18 = phi ptr [ %12, %14 ], [ %19, %71 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  %20 = getelementptr inbounds %struct.location_chain_def, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %25 = icmp ne i32 %24, 0
  %26 = and i1 %15, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, ptr %4, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.location_chain_def, ptr %18, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !168
  %34 = tail call i32 @rtx_equal_p(ptr noundef nonnull %4, ptr noundef %33) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load ptr, ptr %20, align 8, !tbaa !160
  br label %38

38:                                               ; preds = %36, %27, %23
  %39 = phi ptr [ %37, %36 ], [ %21, %27 ], [ %21, %23 ]
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %39) #24
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %68, label %49

49:                                               ; preds = %43, %63
  %50 = phi ptr [ %64, %63 ], [ %46, %43 ]
  %51 = phi ptr [ %52, %63 ], [ %47, %43 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !156
  %53 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !148
  %55 = load ptr, ptr %6, align 8, !tbaa !91
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !150
  %60 = icmp eq i64 %59, %3
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %62, ptr noundef nonnull %51) #25
  store ptr %52, ptr %50, align 8, !tbaa !10
  br label %63

63:                                               ; preds = %49, %57, %61
  %64 = phi ptr [ %50, %61 ], [ %51, %57 ], [ %51, %49 ]
  %65 = icmp eq ptr %52, null
  br i1 %65, label %66, label %49, !llvm.loop !271

66:                                               ; preds = %63
  %67 = load ptr, ptr %20, align 8, !tbaa !160
  br label %68

68:                                               ; preds = %66, %43, %38
  %69 = phi ptr [ %67, %66 ], [ %39, %43 ], [ %39, %38 ]
  %70 = tail call fastcc ptr @delete_slot_part(ptr noundef %0, ptr noundef %69, ptr noundef %17, i64 noundef %3) #24
  br label %71

71:                                               ; preds = %16, %31, %68
  %72 = phi ptr [ %70, %68 ], [ %17, %31 ], [ %17, %16 ]
  %73 = icmp eq ptr %19, null
  br i1 %73, label %74, label %16, !llvm.loop !272

74:                                               ; preds = %71, %9, %5
  %75 = phi ptr [ %2, %5 ], [ %2, %9 ], [ %72, %71 ]
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @variable_post_merge_new_vals(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !224
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %5) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %209, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !94
  switch i8 %10, label %11 [
    i8 0, label %209
    i8 1, label %12
  ]

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3797, ptr noundef nonnull @.str.2) #25
  br label %12

12:                                               ; preds = %8, %11
  %13 = load ptr, ptr %4, align 8, !tbaa !91
  %14 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %13) #24, !range !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %209, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %209, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dfset_post_merge, ptr %1, i64 0, i32 1
  br label %22

22:                                               ; preds = %20, %194
  %23 = phi ptr [ %18, %20 ], [ %198, %194 ]
  %24 = phi ptr [ %0, %20 ], [ %195, %194 ]
  %25 = phi i8 [ 0, %20 ], [ %30, %194 ]
  %26 = phi ptr [ %4, %20 ], [ %196, %194 ]
  %27 = getelementptr inbounds %struct.variable_def, ptr %26, i64 0, i32 1
  br label %28

28:                                               ; preds = %22, %200
  %29 = phi ptr [ %23, %22 ], [ %202, %200 ]
  %30 = phi i8 [ %25, %22 ], [ %201, %200 ]
  %31 = getelementptr inbounds %struct.location_chain_def, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !160
  %33 = load i32, ptr %32, align 8
  %34 = trunc i32 %33 to i16
  switch i16 %34, label %200 [
    i16 1, label %35
    i16 37, label %39
  ]

35:                                               ; preds = %28
  %36 = and i32 %33, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %200, label %38

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3807, ptr noundef nonnull @.str.2) #25
  br label %200

39:                                               ; preds = %28
  %40 = load i32, ptr %27, align 8, !tbaa !93
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %194

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #24
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3846, ptr noundef nonnull @.str.2) #25
  br label %113

49:                                               ; preds = %42, %73
  %50 = phi ptr [ %75, %73 ], [ %46, %42 ]
  %51 = phi ptr [ %74, %73 ], [ null, %42 ]
  %52 = phi ptr [ %50, %73 ], [ %45, %42 ]
  %53 = getelementptr inbounds %struct.attrs_def, ptr %50, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !150
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.attrs_def, ptr %50, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !155
  %59 = load i32, ptr %58, align 8
  %60 = xor i32 %59, %33
  %61 = and i32 %60, 16711680
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.attrs_def, ptr %50, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !148
  %66 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %65) #24, !range !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store ptr %65, ptr %31, align 8, !tbaa !160
  br label %77

69:                                               ; preds = %63
  %70 = load ptr, ptr %26, align 8, !tbaa !91
  %71 = icmp eq ptr %65, %70
  %72 = select i1 %71, ptr %52, ptr %51
  br label %73

73:                                               ; preds = %69, %49, %56
  %74 = phi ptr [ %51, %56 ], [ %51, %49 ], [ %72, %69 ]
  %75 = load ptr, ptr %50, align 8, !tbaa !10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %49, !llvm.loop !273

77:                                               ; preds = %73, %68
  %78 = phi ptr [ %65, %68 ], [ %32, %73 ]
  %79 = phi ptr [ %52, %68 ], [ %50, %73 ]
  %80 = phi ptr [ %51, %68 ], [ %74, %73 ]
  %81 = phi i1 [ false, %68 ], [ true, %73 ]
  %82 = phi i8 [ 1, %68 ], [ %30, %73 ]
  %83 = icmp eq ptr %80, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load ptr, ptr %79, align 8, !tbaa !10
  %86 = icmp eq ptr %85, null
  br i1 %86, label %109, label %87

87:                                               ; preds = %84, %106
  %88 = phi ptr [ %107, %106 ], [ %85, %84 ]
  %89 = phi ptr [ %88, %106 ], [ %79, %84 ]
  %90 = getelementptr inbounds %struct.attrs_def, ptr %88, i64 0, i32 3
  %91 = load i64, ptr %90, align 8, !tbaa !150
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.attrs_def, ptr %88, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !155
  %96 = load i32, ptr %95, align 8
  %97 = load i32, ptr %78, align 8
  %98 = xor i32 %97, %96
  %99 = and i32 %98, 16711680
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.attrs_def, ptr %88, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !148
  %104 = load ptr, ptr %26, align 8, !tbaa !91
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %101, %93, %87
  %107 = load ptr, ptr %88, align 8, !tbaa !10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %87, !llvm.loop !274

109:                                              ; preds = %106, %84
  %110 = phi ptr [ %79, %84 ], [ %88, %106 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3846, ptr noundef nonnull @.str.2) #25
  br i1 %81, label %113, label %188

111:                                              ; preds = %101, %77
  %112 = phi ptr [ %80, %77 ], [ %89, %101 ]
  br i1 %81, label %113, label %188

113:                                              ; preds = %48, %109, %111
  %114 = phi ptr [ %110, %109 ], [ %112, %111 ], [ %45, %48 ]
  %115 = load ptr, ptr %21, align 8, !tbaa !226
  %116 = load ptr, ptr %115, align 8, !tbaa !10
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = tail call ptr @xmalloc(i64 noundef 448) #25
  %120 = load ptr, ptr %21, align 8, !tbaa !226
  store ptr %119, ptr %120, align 8, !tbaa !10
  %121 = load ptr, ptr %21, align 8, !tbaa !226
  %122 = load ptr, ptr %121, align 8, !tbaa !10
  tail call fastcc void @dataflow_set_init(ptr noundef %122) #24
  %123 = load ptr, ptr %21, align 8, !tbaa !226
  %124 = load ptr, ptr %123, align 8, !tbaa !10
  br label %125

125:                                              ; preds = %118, %113
  %126 = phi ptr [ %124, %118 ], [ %116, %113 ]
  %127 = load ptr, ptr %31, align 8, !tbaa !160
  %128 = tail call fastcc i32 @rhs_regno(ptr noundef %127) #24
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.dataflow_set_def, ptr %126, i64 0, i32 1, i64 %129
  br label %131

131:                                              ; preds = %135, %125
  %132 = phi ptr [ %130, %125 ], [ %133, %135 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %158, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.attrs_def, ptr %133, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !155
  %138 = load i32, ptr %137, align 8
  %139 = load i32, ptr %127, align 8
  %140 = xor i32 %139, %138
  %141 = and i32 %140, 16711680
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %131, !llvm.loop !275

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.attrs_def, ptr %133, i64 0, i32 3
  %145 = load i64, ptr %144, align 8, !tbaa !150
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3864, ptr noundef nonnull @.str.2) #25
  br label %148

148:                                              ; preds = %143, %147
  %149 = getelementptr inbounds %struct.attrs_def, ptr %133, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !148
  %151 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %150) #24, !range !5
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3865, ptr noundef nonnull @.str.2) #25
  %154 = load ptr, ptr %149, align 8, !tbaa !148
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %154, %153 ], [ %150, %148 ]
  tail call fastcc void @val_reset(ptr noundef %3, ptr noundef %156) #24
  %157 = load ptr, ptr %149, align 8, !tbaa !148
  br label %183

158:                                              ; preds = %131
  %159 = load i32, ptr %127, align 8
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = tail call ptr @cselib_lookup(ptr noundef nonnull %127, i32 noundef %161, i32 noundef 0) #25
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3882, ptr noundef nonnull @.str.2) #25
  br label %165

165:                                              ; preds = %158, %164
  %166 = load ptr, ptr %31, align 8, !tbaa !160
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  %170 = tail call ptr @cselib_lookup(ptr noundef nonnull %166, i32 noundef %169, i32 noundef 1) #25
  tail call void @cselib_preserve_value(ptr noundef %170) #25
  %171 = load ptr, ptr %31, align 8, !tbaa !160
  tail call void @cselib_invalidate_rtx(ptr noundef %171) #25
  %172 = getelementptr inbounds %struct.cselib_val_struct, ptr %170, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !108
  %174 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %165
  %177 = getelementptr inbounds %struct.cselib_val_struct, ptr %170, i64 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !173
  %179 = load i32, ptr %170, align 8, !tbaa !276
  %180 = load ptr, ptr %31, align 8, !tbaa !160
  %181 = tail call fastcc i32 @rhs_regno(ptr noundef %180) #24
  %182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %174, ptr noundef nonnull @.str.27, i32 noundef %178, i32 noundef %179, i32 noundef %181) #24
  br label %183

183:                                              ; preds = %165, %176, %155
  %184 = phi ptr [ %157, %155 ], [ %173, %176 ], [ %173, %165 ]
  %185 = load ptr, ptr %21, align 8, !tbaa !226
  %186 = load ptr, ptr %185, align 8, !tbaa !10
  %187 = load ptr, ptr %31, align 8, !tbaa !160
  tail call fastcc void @var_reg_decl_set(ptr noundef %186, ptr noundef %187, i32 noundef 2, ptr noundef %184, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  store ptr %184, ptr %31, align 8, !tbaa !160
  br label %188

188:                                              ; preds = %109, %111, %183
  %189 = phi ptr [ %112, %111 ], [ %114, %183 ], [ %110, %109 ]
  %190 = phi i8 [ %82, %111 ], [ 1, %183 ], [ %82, %109 ]
  %191 = load ptr, ptr %189, align 8, !tbaa !10
  %192 = load ptr, ptr %191, align 8, !tbaa !156
  store ptr %192, ptr %189, align 8, !tbaa !10
  %193 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %193, ptr noundef nonnull %191) #25
  br label %200

194:                                              ; preds = %39
  %195 = tail call fastcc ptr @unshare_variable(ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %26, i32 noundef 2) #24
  %196 = load ptr, ptr %195, align 8, !tbaa !10
  %197 = getelementptr inbounds %struct.variable_def, ptr %196, i64 0, i32 5
  %198 = load ptr, ptr %197, align 8, !tbaa !10
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %22

200:                                              ; preds = %188, %28, %38, %35
  %201 = phi i8 [ %30, %38 ], [ %30, %35 ], [ %30, %28 ], [ %190, %188 ]
  %202 = load ptr, ptr %29, align 8, !tbaa !10
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %28, !llvm.loop !277

204:                                              ; preds = %194, %200
  %205 = phi ptr [ %26, %200 ], [ %196, %194 ]
  %206 = phi i8 [ %201, %200 ], [ %30, %194 ]
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  tail call fastcc void @remove_duplicate_values(ptr noundef %205) #24
  br label %209

209:                                              ; preds = %16, %12, %208, %204, %8, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @variable_post_merge_perm_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !224
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %5) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3931, ptr noundef nonnull @.str.2) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !94
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3932, ptr noundef nonnull @.str.2) #25
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3934, ptr noundef nonnull @.str.2) #25
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr %16, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3935, ptr noundef nonnull @.str.2) #25
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.location_chain_def, ptr %16, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3936, ptr noundef nonnull @.str.2) #25
  br label %30

30:                                               ; preds = %23, %29
  %31 = load ptr, ptr %4, align 8, !tbaa !91
  %32 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = tail call fastcc ptr @shared_hash_find(ptr noundef %33, ptr noundef %31) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %24, align 8, !tbaa !160
  %38 = load ptr, ptr %32, align 8, !tbaa !75
  %39 = tail call fastcc ptr @shared_hash_htab(ptr noundef %38) #24
  %40 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %37, ptr noundef nonnull %34, ptr noundef %39) #24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  tail call fastcc void @val_reset(ptr noundef nonnull %3, ptr noundef %31) #24
  br label %43

43:                                               ; preds = %42, %30
  %44 = load ptr, ptr %24, align 8, !tbaa !160
  %45 = tail call fastcc i32 @rhs_regno(ptr noundef %44) #24
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %79, label %50

50:                                               ; preds = %43, %68
  %51 = phi ptr [ %69, %68 ], [ %48, %43 ]
  %52 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !150
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !155
  %58 = load i32, ptr %57, align 8
  %59 = load i32, ptr %44, align 8
  %60 = xor i32 %59, %58
  %61 = and i32 %60, 16711680
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !148
  %66 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %65) #24, !range !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %50, %55, %63
  %69 = load ptr, ptr %51, align 8, !tbaa !10
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %50, !llvm.loop !278

71:                                               ; preds = %63
  %72 = icmp eq ptr %65, %31
  br i1 %72, label %81, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.attrs_def, ptr %51, i64 0, i32 2
  %75 = getelementptr inbounds %struct.location_chain_def, ptr %16, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !167
  tail call fastcc void @set_variable_part(ptr noundef %3, ptr noundef %65, ptr noundef %31, i64 noundef 0, i32 noundef %76, ptr noundef null, i32 noundef 1) #24
  %77 = load ptr, ptr %74, align 8, !tbaa !148
  %78 = load i32, ptr %75, align 8, !tbaa !167
  tail call fastcc void @set_variable_part(ptr noundef %3, ptr noundef %31, ptr noundef %77, i64 noundef 0, i32 noundef %78, ptr noundef null, i32 noundef 1) #24
  br label %81

79:                                               ; preds = %68, %43
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %47, ptr noundef %31, i64 noundef 0, ptr noundef %44) #24
  %80 = tail call i32 @variable_union(ptr noundef nonnull %0, ptr noundef %3) #24
  br label %81

81:                                               ; preds = %71, %73, %79, %36
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @canonicalize_vars_star(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %4) #24, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !94
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3290, ptr noundef nonnull @.str.2) #25
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.location_chain_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %65

23:                                               ; preds = %15
  %24 = load ptr, ptr %17, align 8, !tbaa !97
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3297, ptr noundef nonnull @.str.2) #25
  %27 = load ptr, ptr %18, align 8, !tbaa !160
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi ptr [ %19, %23 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %31, ptr noundef %29) #24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %65, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %32, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 2
  %37 = load i8, ptr %36, align 4, !tbaa !94
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3306, ptr noundef nonnull @.str.2) #25
  br label %40

40:                                               ; preds = %34, %39
  %41 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !95
  %43 = getelementptr inbounds %struct.location_chain_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !160
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %65

48:                                               ; preds = %40
  %49 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %44, ptr noundef %29) #24, !range !5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %42, align 8, !tbaa !97
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3318, ptr noundef nonnull @.str.2) #25
  %55 = load ptr, ptr %43, align 8, !tbaa !160
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %44, %51 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.location_chain_def, ptr %17, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !167
  %60 = getelementptr inbounds %struct.location_chain_def, ptr %17, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !168
  %62 = tail call fastcc ptr @set_slot_part(ptr noundef nonnull %1, ptr noundef %57, ptr noundef nonnull %0, ptr noundef %4, i64 noundef 0, i32 noundef %59, ptr noundef %61) #24
  %63 = load ptr, ptr %60, align 8, !tbaa !168
  %64 = tail call fastcc ptr @clobber_slot_part(ptr noundef nonnull %1, ptr noundef %57, ptr noundef %62, i64 noundef 0, ptr noundef %63) #24
  br label %65

65:                                               ; preds = %40, %48, %28, %15, %2, %7, %56
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @val_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call fastcc ptr @shared_hash_find(ptr noundef %4, ptr noundef %1) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !94
  switch i8 %9, label %10 [
    i8 0, label %80
    i8 1, label %11
  ]

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1868, ptr noundef nonnull @.str.2) #25
  br label %11

11:                                               ; preds = %7, %10
  %12 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %18

15:                                               ; preds = %30
  br i1 %14, label %55, label %16

16:                                               ; preds = %15
  %17 = icmp eq ptr %31, null
  br label %34

18:                                               ; preds = %11, %30
  %19 = phi ptr [ %32, %30 ], [ %13, %11 ]
  %20 = phi ptr [ %31, %30 ], [ null, %11 ]
  %21 = getelementptr inbounds %struct.location_chain_def, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !160
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %22, ptr noundef %20) #24, !range !5
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %20, ptr %22
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi ptr [ %20, %18 ], [ %29, %26 ]
  %32 = load ptr, ptr %19, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %15, label %18, !llvm.loop !279

34:                                               ; preds = %16, %52
  %35 = phi ptr [ %13, %16 ], [ %53, %52 ]
  %36 = getelementptr inbounds %struct.location_chain_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !160
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp ne i32 %39, 1
  %41 = icmp eq ptr %31, %37
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %34
  br i1 %17, label %50, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.location_chain_def, ptr %35, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !167
  %47 = getelementptr inbounds %struct.location_chain_def, ptr %35, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !168
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull %37, i64 noundef 0, i32 noundef %46, ptr noundef %48, i32 noundef 0) #24
  %49 = load ptr, ptr %36, align 8, !tbaa !160
  br label %50

50:                                               ; preds = %44, %43
  %51 = phi ptr [ %49, %44 ], [ %37, %43 ]
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %51, i64 noundef 0) #24
  br label %52

52:                                               ; preds = %34, %50
  %53 = load ptr, ptr %35, align 8, !tbaa !10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %34, !llvm.loop !280

55:                                               ; preds = %52, %15
  %56 = icmp eq ptr %31, null
  br i1 %56, label %79, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %12, align 8, !tbaa !10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %57, %75
  %61 = phi ptr [ %76, %75 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !160
  %64 = icmp eq ptr %63, %31
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %63, align 8
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !167
  %70 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !168
  switch i16 %67, label %74 [
    i16 37, label %72
    i16 43, label %73
  ]

72:                                               ; preds = %65
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %63, i32 noundef %69, ptr noundef nonnull %31, i64 noundef 0, ptr noundef %71, i32 noundef 0) #24
  br label %75

73:                                               ; preds = %65
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %63, i32 noundef %69, ptr noundef nonnull %31, i64 noundef 0, ptr noundef %71, i32 noundef 0) #24
  br label %75

74:                                               ; preds = %65
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %63, ptr noundef nonnull %31, i64 noundef 0, i32 noundef %69, ptr noundef %71, i32 noundef 0) #24
  br label %75

75:                                               ; preds = %73, %74, %72, %60
  %76 = load ptr, ptr %61, align 8, !tbaa !10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %60, !llvm.loop !281

78:                                               ; preds = %75, %57
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %31, i64 noundef 0) #24
  br label %79

79:                                               ; preds = %11, %55, %78
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef 0, ptr noundef null) #24
  br label %80

80:                                               ; preds = %7, %2, %79
  ret void
}

; Function Attrs: optsize
declare void @cselib_invalidate_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_duplicate_values(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %2) #24, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3743, ptr noundef nonnull @.str.2) #25
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !94
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3744, ptr noundef nonnull @.str.2) #25
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !93
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3745, ptr noundef nonnull @.str.2) #25
  br label %16

16:                                               ; preds = %11, %15
  %17 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %16, %43
  %21 = phi ptr [ %44, %43 ], [ %18, %16 ]
  %22 = phi ptr [ %27, %43 ], [ %17, %16 ]
  br label %26

23:                                               ; preds = %43, %36
  %24 = load ptr, ptr %17, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %46

26:                                               ; preds = %20, %36
  %27 = phi ptr [ %21, %20 ], [ %39, %36 ]
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = and i32 %30, 536870912
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %27, align 8, !tbaa !97
  store ptr %37, ptr %22, align 8, !tbaa !10
  %38 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %38, ptr noundef nonnull %27) #25
  %39 = load ptr, ptr %22, align 8, !tbaa !10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %23, label %26, !llvm.loop !282

41:                                               ; preds = %33
  %42 = or disjoint i32 %30, 536870912
  store i32 %42, ptr %29, align 8
  br label %43

43:                                               ; preds = %26, %41
  %44 = load ptr, ptr %27, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %23, label %20, !llvm.loop !282

46:                                               ; preds = %23, %63
  %47 = phi ptr [ %64, %63 ], [ %24, %23 ]
  %48 = getelementptr inbounds %struct.location_chain_def, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !160
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = and i32 %50, 536870912
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3767, ptr noundef nonnull @.str.2) #25
  %57 = load ptr, ptr %48, align 8, !tbaa !160
  %58 = load i32, ptr %57, align 8
  br label %59

59:                                               ; preds = %53, %56
  %60 = phi i32 [ %50, %53 ], [ %58, %56 ]
  %61 = phi ptr [ %49, %53 ], [ %57, %56 ]
  %62 = and i32 %60, -536870913
  store i32 %62, ptr %61, align 8
  br label %63

63:                                               ; preds = %46, %59
  %64 = load ptr, ptr %47, align 8, !tbaa !10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %46, !llvm.loop !283

66:                                               ; preds = %63, %16, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %6, ptr noundef %2) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @delete_slot_part(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7, i64 noundef %3) #24
  br label %11

11:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %3) #24, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @var_debug_decl(ptr noundef %3) #24
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %3, %7 ]
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %13, i64 noundef %4, i32 noundef %2, ptr noundef %5, i32 noundef %6) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @attrs_list_union(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2, %16
  %5 = phi ptr [ %17, %16 ], [ %1, %2 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.attrs_def, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = getelementptr inbounds %struct.attrs_def, ptr %5, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !150
  %11 = tail call fastcc ptr @attrs_list_member(ptr noundef %6, ptr noundef %8, i64 noundef %10) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.attrs_def, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  tail call fastcc void @attrs_list_insert(ptr noundef nonnull %0, ptr noundef %8, i64 noundef %10, ptr noundef %15) #24
  br label %16

16:                                               ; preds = %4, %13
  %17 = load ptr, ptr %5, align 8, !tbaa !156
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !284

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_micro_operation_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !182
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !10
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_clear_at_call(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !50
  br label %3

3:                                                ; preds = %1, %12
  %4 = phi i64 [ %2, %1 ], [ %13, %12 ]
  %5 = phi i64 [ 0, %1 ], [ %14, %12 ]
  %6 = shl nuw nsw i64 1, %5
  %7 = and i64 %4, %6
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = trunc i64 %5 to i32
  tail call fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %10) #24
  %11 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !50
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i64 [ %4, %3 ], [ %11, %9 ]
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 53
  br i1 %15, label %16, label %3, !llvm.loop !285

16:                                               ; preds = %12
  %17 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !104
  %23 = tail call fastcc ptr @shared_hash_htab(ptr noundef %21) #24
  tail call void @htab_traverse(ptr noundef %23, ptr noundef nonnull @dataflow_set_preserve_mem_locs, ptr noundef %0) #25
  %24 = load ptr, ptr %20, align 8, !tbaa !75
  store ptr %24, ptr %22, align 8, !tbaa !104
  %25 = tail call fastcc ptr @shared_hash_htab(ptr noundef %24) #24
  tail call void @htab_traverse(ptr noundef %25, ptr noundef nonnull @dataflow_set_remove_mem_locs, ptr noundef %0) #25
  store ptr null, ptr %22, align 8, !tbaa !104
  br label %26

26:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_reg_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.reg_attrs, ptr %6, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !187
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %9, %8 ], [ null, %4 ]
  %14 = phi i64 [ %11, %8 ], [ 0, %4 ]
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %13, i64 noundef %14, ptr noundef %3, i32 noundef 1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_mem_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !188
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %4, %8, %13
  %17 = phi ptr [ %9, %13 ], [ %9, %8 ], [ null, %4 ]
  %18 = phi i64 [ %15, %13 ], [ 0, %8 ], [ 0, %4 ]
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %17, i64 noundef %18, ptr noundef %3, i32 noundef 1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @val_resolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !22
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.28, i32 noundef %15) #24
  br label %19

17:                                               ; preds = %11
  %18 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 6, i64 1, ptr nonnull %5)
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %20, ptr noundef %1, i32 noundef 0) #25
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = tail call i32 @fputs(ptr noundef nonnull @.str.30, ptr noundef %21) #24
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %23, ptr noundef %2, i32 noundef 0) #25
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %25 = tail call i32 @fputc(i32 noundef 10, ptr noundef %24) #24
  br label %26

26:                                               ; preds = %19, %7, %4
  tail call fastcc void @val_reset(ptr noundef %0, ptr noundef %1) #24
  %27 = load i32, ptr %2, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %61 [
    i16 37, label %29
    i16 43, label %60
  ]

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %29, %53
  %36 = phi ptr [ %55, %53 ], [ %33, %29 ]
  %37 = phi ptr [ %54, %53 ], [ null, %29 ]
  %38 = getelementptr inbounds %struct.attrs_def, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  %40 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %39) #24, !range !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %35
  %43 = load i32, ptr %39, align 8
  %44 = load i32, ptr %2, align 8
  %45 = xor i32 %44, %43
  %46 = and i32 %45, 16711680
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.attrs_def, ptr %36, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !150
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %39, ptr noundef %1, i64 noundef %50, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  %51 = load ptr, ptr %38, align 8, !tbaa !148
  %52 = load i64, ptr %49, align 8, !tbaa !150
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %51, i64 noundef %52, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %53

53:                                               ; preds = %35, %42, %48
  %54 = phi ptr [ %36, %48 ], [ %37, %42 ], [ %37, %35 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %35, !llvm.loop !286

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %29, %57
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  br label %62

60:                                               ; preds = %26
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  br label %62

61:                                               ; preds = %26
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %62

62:                                               ; preds = %57, %59, %60, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @val_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call zeroext i8 @cselib_preserved_value_p(ptr noundef %7) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1820, ptr noundef nonnull @.str.2) #25
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !22
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.28, i32 noundef %16) #24
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %18, ptr noundef nonnull %1, i32 noundef 0) #25
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 11, i64 1, ptr %19)
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_inline_rtx(ptr noundef %21, ptr noundef %2, i32 noundef 0) #25
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !287
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %14, %25
  %26 = phi ptr [ %36, %25 ], [ %23, %14 ]
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.elt_loc_list, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !288
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !22
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %31) #24
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %34 = getelementptr inbounds %struct.elt_loc_list, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !290
  tail call void @print_inline_rtx(ptr noundef %33, ptr noundef %35, i32 noundef 0) #25
  %36 = load ptr, ptr %26, align 8, !tbaa !291
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !292

38:                                               ; preds = %25, %14
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  br label %41

41:                                               ; preds = %38, %11
  %42 = load i32, ptr %2, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %50 [
    i16 37, label %44
    i16 43, label %49
  ]

44:                                               ; preds = %41
  %45 = icmp eq i8 %4, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #24
  tail call fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %47) #24
  br label %48

48:                                               ; preds = %46, %44
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  br label %51

49:                                               ; preds = %41
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1) #24
  br label %51

50:                                               ; preds = %41
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %51

51:                                               ; preds = %49, %50, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_reg_delete(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @rhs_regno(ptr noundef %1) #24
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %5
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !185
  %14 = getelementptr inbounds %struct.reg_attrs, ptr %10, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !187
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %13, %12 ], [ null, %8 ]
  %18 = phi i64 [ %15, %12 ], [ 0, %8 ]
  %19 = tail call fastcc ptr @var_debug_decl(ptr noundef %17) #24
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %19, i64 noundef %18, ptr noundef null) #24
  br label %20

20:                                               ; preds = %16, %3
  %21 = load ptr, ptr %6, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %40
  %24 = phi ptr [ %41, %40 ], [ %6, %20 ]
  %25 = phi ptr [ %26, %40 ], [ %21, %20 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  br i1 %7, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.attrs_def, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %29) #24, !range !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.attrs_def, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !155
  %35 = getelementptr inbounds %struct.attrs_def, ptr %25, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !148
  %37 = getelementptr inbounds %struct.attrs_def, ptr %25, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !150
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %34, ptr noundef %36, i64 noundef %38) #24
  %39 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %39, ptr noundef nonnull %25) #25
  store ptr %26, ptr %24, align 8, !tbaa !10
  br label %40

40:                                               ; preds = %27, %32
  %41 = phi ptr [ %24, %32 ], [ %25, %27 ]
  %42 = icmp eq ptr %26, null
  br i1 %42, label %43, label %23, !llvm.loop !293

43:                                               ; preds = %40, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_mem_delete(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !188
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !190
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %3, %7, %12
  %16 = phi ptr [ %8, %12 ], [ %8, %7 ], [ null, %3 ]
  %17 = phi i64 [ %14, %12 ], [ 0, %7 ], [ 0, %3 ]
  %18 = tail call fastcc ptr @var_debug_decl(ptr noundef %16) #24
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %18, i64 noundef %17, ptr noundef null) #24
  br label %21

21:                                               ; preds = %20, %15
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %18, i64 noundef %17) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_src_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %27 [
    i16 37, label %10
    i16 43, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %12, %10 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %18, %14, %10
  %22 = phi ptr [ null, %10 ], [ null, %14 ], [ %20, %18 ]
  %23 = tail call fastcc ptr @var_debug_decl(ptr noundef %22) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %23) #24
  br label %27

27:                                               ; preds = %7, %2, %25, %21
  %28 = phi i32 [ %26, %25 ], [ %5, %21 ], [ %5, %2 ], [ %5, %7 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_src_set_src(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %64, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %64 [
    i16 37, label %7
    i16 43, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  br label %18

18:                                               ; preds = %15, %11, %7
  %19 = phi ptr [ null, %7 ], [ null, %11 ], [ %17, %15 ]
  %20 = tail call fastcc ptr @var_debug_decl(ptr noundef %19) #24
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = tail call fastcc ptr @shared_hash_find(ptr noundef %24, ptr noundef nonnull %20) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 2
  %29 = load i8, ptr %28, align 4, !tbaa !94
  %30 = icmp sgt i8 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27, %55
  %32 = phi i8 [ %56, %55 ], [ %29, %27 ]
  %33 = phi i64 [ %59, %55 ], [ 0, %27 ]
  %34 = phi ptr [ %57, %55 ], [ null, %27 ]
  %35 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 5, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %31, %47
  %39 = phi ptr [ %48, %47 ], [ %36, %31 ]
  %40 = getelementptr inbounds %struct.location_chain_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !160
  %42 = tail call i32 @rtx_equal_p(ptr noundef %41, ptr noundef nonnull %1) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.location_chain_def, ptr %39, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !168
  br label %51

47:                                               ; preds = %38
  %48 = load ptr, ptr %39, align 8, !tbaa !10
  %49 = icmp ne ptr %48, null
  %50 = and i1 %43, %49
  br i1 %50, label %38, label %51, !llvm.loop !294

51:                                               ; preds = %47, %44
  %52 = phi i8 [ 1, %44 ], [ 0, %47 ]
  %53 = phi ptr [ %46, %44 ], [ %34, %47 ]
  %54 = load i8, ptr %28, align 4, !tbaa !94
  br label %55

55:                                               ; preds = %51, %31
  %56 = phi i8 [ %32, %31 ], [ %54, %51 ]
  %57 = phi ptr [ %34, %31 ], [ %53, %51 ]
  %58 = phi i8 [ 0, %31 ], [ %52, %51 ]
  %59 = add nuw nsw i64 %33, 1
  %60 = sext i8 %56 to i64
  %61 = icmp slt i64 %59, %60
  %62 = icmp eq i8 %58, 0
  %63 = and i1 %62, %61
  br i1 %63, label %31, label %64, !llvm.loop !295

64:                                               ; preds = %55, %27, %4, %2, %22, %18
  %65 = phi ptr [ null, %18 ], [ null, %22 ], [ null, %2 ], [ null, %4 ], [ null, %27 ], [ %57, %55 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_reg_delete_and_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !185
  %11 = getelementptr inbounds %struct.reg_attrs, ptr %7, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !187
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %10, %9 ], [ null, %5 ]
  %15 = phi i64 [ %12, %9 ], [ 0, %5 ]
  %16 = tail call fastcc ptr @var_debug_decl(ptr noundef %14) #24
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %16) #24
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ %3, %13 ]
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #24
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %20, %43
  %28 = phi ptr [ %44, %43 ], [ %24, %20 ]
  %29 = phi ptr [ %30, %43 ], [ %25, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !156
  %31 = getelementptr inbounds %struct.attrs_def, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !148
  %33 = icmp eq ptr %32, %16
  %34 = getelementptr inbounds %struct.attrs_def, ptr %29, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !150
  %36 = icmp eq i64 %35, %15
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds %struct.attrs_def, ptr %29, i64 0, i32 1
  br i1 %37, label %42, label %39

39:                                               ; preds = %27
  %40 = load ptr, ptr %38, align 8, !tbaa !155
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %40, ptr noundef %32, i64 noundef %35) #24
  %41 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %41, ptr noundef nonnull %29) #25
  store ptr %30, ptr %28, align 8, !tbaa !10
  br label %43

42:                                               ; preds = %27
  store ptr %1, ptr %38, align 8, !tbaa !155
  br label %43

43:                                               ; preds = %39, %42
  %44 = phi ptr [ %28, %39 ], [ %29, %42 ]
  %45 = icmp eq ptr %30, null
  br i1 %45, label %46, label %27, !llvm.loop !296

46:                                               ; preds = %43, %20
  %47 = icmp eq i8 %2, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %16, i64 noundef %15, ptr noundef %4) #24
  br label %49

49:                                               ; preds = %48, %46
  tail call fastcc void @var_reg_set(ptr noundef %0, ptr noundef %1, i32 noundef %21, ptr noundef %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_mem_delete_and_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !188
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !190
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %5, %9, %14
  %18 = phi ptr [ %10, %14 ], [ %10, %9 ], [ null, %5 ]
  %19 = phi i64 [ %16, %14 ], [ 0, %9 ], [ 0, %5 ]
  %20 = tail call fastcc ptr @var_debug_decl(ptr noundef %18) #24
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %20) #24
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %23, %22 ], [ %3, %17 ]
  %26 = icmp eq i8 %2, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %20, i64 noundef %19, ptr noundef %4) #24
  br label %28

28:                                               ; preds = %27, %24
  tail call fastcc void @var_mem_set(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %25, ptr noundef %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !148
  %14 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !150
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %11, ptr noundef %13, i64 noundef %15) #24
  %16 = load ptr, ptr @attrs_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %8) #25
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %7, !llvm.loop !297

18:                                               ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dataflow_set_equiv_regs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [87 x ptr], align 16
  %3 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %1, %114
  %5 = phi i64 [ 0, %1 ], [ %115, %114 ]
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) %2, i8 0, i64 696, i1 false)
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %114, label %10

9:                                                ; preds = %30
  br i1 %8, label %114, label %36

10:                                               ; preds = %4, %30
  %11 = phi ptr [ %31, %30 ], [ %7, %4 ]
  %12 = getelementptr inbounds %struct.attrs_def, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !150
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.attrs_def, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !148
  %18 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %17) #24, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %17, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [87 x ptr], ptr %2, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %17, ptr noundef %26) #24, !range !5
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr %26, ptr %17
  store ptr %29, ptr %25, align 8
  br label %30

30:                                               ; preds = %20, %10, %15
  %31 = load ptr, ptr %11, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %9, label %10, !llvm.loop !298

33:                                               ; preds = %69
  %34 = load ptr, ptr %6, align 8, !tbaa !10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %114, label %72

36:                                               ; preds = %9, %69
  %37 = phi ptr [ %70, %69 ], [ %7, %9 ]
  %38 = getelementptr inbounds %struct.attrs_def, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !150
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.attrs_def, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %43) #24, !range !5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.attrs_def, ptr %37, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !155
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x ptr], ptr %2, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr %42, align 8, !tbaa !148
  %58 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %57) #24, !range !5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = icmp eq ptr %57, %54
  br i1 %61, label %69, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %57, align 8
  %64 = or i32 %63, 536870912
  store i32 %64, ptr %57, align 8
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %57, ptr noundef nonnull %54, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0) #24
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, ptr %54, align 8
  %67 = or i32 %66, 536870912
  store i32 %67, ptr %54, align 8
  %68 = load ptr, ptr %42, align 8, !tbaa !148
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %68, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0) #24
  br label %69

69:                                               ; preds = %65, %46, %60, %36, %41
  %70 = load ptr, ptr %37, align 8, !tbaa !10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %33, label %36, !llvm.loop !299

72:                                               ; preds = %33, %108
  %73 = phi ptr [ %112, %108 ], [ %34, %33 ]
  %74 = phi ptr [ %111, %108 ], [ %6, %33 ]
  %75 = getelementptr inbounds %struct.attrs_def, ptr %73, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !150
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.attrs_def, ptr %73, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !148
  %81 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %80) #24, !range !5
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.attrs_def, ptr %73, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !155
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [87 x ptr], ptr %2, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %108, label %93

93:                                               ; preds = %83
  %94 = load ptr, ptr %79, align 8, !tbaa !148
  %95 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %94) #24, !range !5
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %94, align 8
  %99 = and i32 %98, 536870912
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97, %93
  %102 = load ptr, ptr %3, align 8, !tbaa !75
  %103 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %102, ptr noundef %94) #24
  %104 = tail call i32 @canonicalize_values_star(ptr noundef %103, ptr noundef %0) #24
  %105 = load ptr, ptr %74, align 8, !tbaa !10
  %106 = icmp eq ptr %105, %73
  %107 = select i1 %106, ptr %73, ptr null
  br label %108

108:                                              ; preds = %101, %97, %83, %72, %78
  %109 = phi ptr [ %73, %78 ], [ %73, %72 ], [ %107, %101 ], [ %73, %97 ], [ %73, %83 ]
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr %74, ptr %109
  %112 = load ptr, ptr %111, align 8, !tbaa !10
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %72, !llvm.loop !300

114:                                              ; preds = %108, %4, %9, %33
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #26
  %115 = add nuw nsw i64 %5, 1
  %116 = icmp eq i64 %115, 53
  br i1 %116, label %117, label %4, !llvm.loop !301

117:                                              ; preds = %114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @canonicalize_values_mark(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !94
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3025, ptr noundef nonnull @.str.2) #25
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %39
  %19 = phi ptr [ %14, %16 ], [ %40, %39 ]
  %20 = getelementptr inbounds %struct.location_chain_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = tail call fastcc zeroext i8 @canon_value_cmp(ptr noundef nonnull %21, ptr noundef %4) #24, !range !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load ptr, ptr %17, align 8, !tbaa !75
  %30 = tail call fastcc ptr @shared_hash_find_slot_noinsert(ptr noundef %29, ptr noundef nonnull %21) #24
  %31 = getelementptr inbounds %struct.location_chain_def, ptr %19, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !167
  %33 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef %4, ptr noundef %30, ptr noundef nonnull %21, i64 noundef 0, i32 noundef %32, ptr noundef null) #24
  %34 = load ptr, ptr %20, align 8, !tbaa !160
  br label %35

35:                                               ; preds = %25, %28
  %36 = phi ptr [ %34, %28 ], [ %4, %25 ]
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 536870912
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %35, %18
  %40 = load ptr, ptr %19, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %18, !llvm.loop !302

42:                                               ; preds = %39, %12, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @dataflow_set_different(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @shared_hash_htab(ptr noundef %4) #24
  %10 = tail call i64 @htab_elements(ptr noundef %9) #25
  %11 = load ptr, ptr %5, align 8, !tbaa !75
  %12 = tail call fastcc ptr @shared_hash_htab(ptr noundef %11) #24
  %13 = tail call i64 @htab_elements(ptr noundef %12) #25
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  store i1 false, ptr @dataflow_set_different_value, align 1
  %16 = load ptr, ptr %3, align 8, !tbaa !75
  %17 = tail call fastcc ptr @shared_hash_htab(ptr noundef %16) #24
  %18 = load ptr, ptr %5, align 8, !tbaa !75
  %19 = tail call fastcc ptr @shared_hash_htab(ptr noundef %18) #24
  tail call void @htab_traverse(ptr noundef %17, ptr noundef nonnull @dataflow_set_different_1, ptr noundef %19) #25
  %20 = load i1, ptr @dataflow_set_different_value, align 1
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %8, %2, %15
  %23 = phi i8 [ %21, %15 ], [ 0, %2 ], [ 1, %8 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dataflow_set_preserve_mem_locs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %168, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %4) #24, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %168, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !91
  %12 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !94
  switch i8 %13, label %14 [
    i8 0, label %168
    i8 1, label %15
  ]

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4086, ptr noundef nonnull @.str.2) #25
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  %18 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %3, ptr noundef %17) #24, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %71, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %168, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %11, null
  br label %26

26:                                               ; preds = %24, %61
  %27 = phi ptr [ %22, %24 ], [ %62, %61 ]
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br i1 %25, label %51, label %45

38:                                               ; preds = %33
  %39 = load ptr, ptr %35, align 8, !tbaa !188
  %40 = icmp eq ptr %39, %11
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %35, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !190
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %38, %41, %37
  %46 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %29) #24, !range !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %28, align 8, !tbaa !160
  %50 = load i32, ptr %49, align 8
  br label %51

51:                                               ; preds = %48, %37, %41, %26
  %52 = phi i32 [ %50, %48 ], [ %30, %37 ], [ %30, %41 ], [ %30, %26 ]
  %53 = phi ptr [ %49, %48 ], [ %29, %37 ], [ %29, %41 ], [ %29, %26 ]
  %54 = and i32 %52, 65535
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load ptr, ptr %16, align 8, !tbaa !75
  %58 = tail call fastcc ptr @shared_hash_htab(ptr noundef %57) #24
  %59 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %11, ptr noundef nonnull %53, ptr noundef %58) #24
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load ptr, ptr %27, align 8, !tbaa !10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %168, label %26, !llvm.loop !303

64:                                               ; preds = %45, %56
  %65 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0) #24
  %66 = load ptr, ptr %65, align 8, !tbaa !10
  %67 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 2
  %68 = load i8, ptr %67, align 4, !tbaa !94
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4111, ptr noundef nonnull @.str.2) #25
  br label %71

71:                                               ; preds = %70, %64, %15
  %72 = phi ptr [ %66, %64 ], [ %66, %70 ], [ %3, %15 ]
  %73 = getelementptr inbounds %struct.variable_def, ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %161, label %76

76:                                               ; preds = %71
  %77 = icmp eq ptr %11, null
  %78 = getelementptr inbounds %struct.variable_def, ptr %72, i64 0, i32 5, i64 0, i32 1
  %79 = getelementptr inbounds %struct.variable_def, ptr %72, i64 0, i32 3
  br label %80

80:                                               ; preds = %76, %153
  %81 = phi ptr [ %74, %76 ], [ %156, %153 ]
  %82 = phi i8 [ 0, %76 ], [ %155, %153 ]
  %83 = phi ptr [ %73, %76 ], [ %154, %153 ]
  %84 = getelementptr inbounds %struct.location_chain_def, ptr %81, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !160
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %107

89:                                               ; preds = %80
  %90 = load ptr, ptr %16, align 8, !tbaa !75
  %91 = tail call fastcc ptr @shared_hash_htab(ptr noundef %90) #24
  %92 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %11, ptr noundef nonnull %85, ptr noundef %91) #24
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load ptr, ptr %84, align 8, !tbaa !160
  br label %107

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !160
  store ptr %98, ptr %84, align 8, !tbaa !160
  %99 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !168
  %101 = getelementptr inbounds %struct.location_chain_def, ptr %81, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !168
  %102 = getelementptr inbounds %struct.location_chain_def, ptr %81, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !167
  %104 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !167
  %106 = tail call i32 @llvm.umin.i32(i32 %103, i32 %105)
  store i32 %106, ptr %102, align 8, !tbaa !167
  br label %107

107:                                              ; preds = %94, %96, %80
  %108 = phi ptr [ %95, %94 ], [ %98, %96 ], [ %85, %80 ]
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 43
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br i1 %77, label %129, label %124

117:                                              ; preds = %112
  %118 = load ptr, ptr %114, align 8, !tbaa !188
  %119 = icmp eq ptr %118, %11
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.mem_attrs, ptr %114, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !190
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %117, %120, %116
  %125 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %108) #24, !range !5
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load ptr, ptr %84, align 8, !tbaa !160
  br label %129

129:                                              ; preds = %127, %116, %120, %107
  %130 = phi ptr [ %128, %127 ], [ %108, %116 ], [ %108, %120 ], [ %108, %107 ]
  %131 = icmp ne ptr %85, %130
  %132 = load i1, ptr @emit_notes, align 1
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  %135 = load ptr, ptr %78, align 8, !tbaa !172
  %136 = icmp eq ptr %85, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store ptr null, ptr %78, align 8, !tbaa !172
  store i8 1, ptr %79, align 1, !tbaa !157
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i8 [ 1, %137 ], [ %82, %134 ]
  %140 = load ptr, ptr %72, align 8, !tbaa !91
  tail call fastcc void @add_value_chains(ptr noundef %140, ptr noundef %130) #24
  %141 = load ptr, ptr %72, align 8, !tbaa !91
  tail call fastcc void @remove_value_chains(ptr noundef %141, ptr noundef nonnull %85) #24
  br label %153

142:                                              ; preds = %124
  %143 = load i1, ptr @emit_notes, align 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %142
  %145 = load ptr, ptr %72, align 8, !tbaa !91
  tail call fastcc void @remove_value_chains(ptr noundef %145, ptr noundef nonnull %85) #24
  %146 = load ptr, ptr %78, align 8, !tbaa !172
  %147 = icmp eq ptr %85, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store ptr null, ptr %78, align 8, !tbaa !172
  store i8 1, ptr %79, align 1, !tbaa !157
  br label %149

149:                                              ; preds = %144, %148, %142
  %150 = phi i8 [ 1, %148 ], [ %82, %144 ], [ %82, %142 ]
  %151 = load ptr, ptr %81, align 8, !tbaa !97
  store ptr %151, ptr %83, align 8, !tbaa !10
  %152 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %152, ptr noundef nonnull %81) #25
  br label %153

153:                                              ; preds = %129, %138, %149
  %154 = phi ptr [ %83, %149 ], [ %81, %138 ], [ %81, %129 ]
  %155 = phi i8 [ %150, %149 ], [ %139, %138 ], [ %82, %129 ]
  %156 = load ptr, ptr %154, align 8, !tbaa !10
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %80, !llvm.loop !304

158:                                              ; preds = %153
  %159 = load ptr, ptr %73, align 8, !tbaa !95
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %71, %158
  %162 = getelementptr inbounds %struct.variable_def, ptr %72, i64 0, i32 2
  %163 = load i8, ptr %162, align 4, !tbaa !94
  %164 = add i8 %163, -1
  store i8 %164, ptr %162, align 4, !tbaa !94
  br label %167

165:                                              ; preds = %158
  %166 = icmp eq i8 %155, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %161, %165
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %72, ptr noundef %1) #24
  br label %168

168:                                              ; preds = %61, %20, %10, %2, %7, %165, %167
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dataflow_set_remove_mem_locs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %90, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !94
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4198, ptr noundef nonnull @.str.2) #25
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = tail call fastcc zeroext i8 @shared_var_p(ptr noundef nonnull %3, ptr noundef %14) #24, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %90, label %21

21:                                               ; preds = %17, %31
  %22 = phi ptr [ %32, %31 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %24) #24, !range !5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21, %28
  %32 = load ptr, ptr %22, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %90, label %21, !llvm.loop !305

34:                                               ; preds = %28
  %35 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0) #24
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.variable_def, ptr %36, i64 0, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !94
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4212, ptr noundef nonnull @.str.2) #25
  br label %41

41:                                               ; preds = %40, %34, %12
  %42 = phi ptr [ %36, %34 ], [ %36, %40 ], [ %3, %12 ]
  %43 = getelementptr inbounds %struct.variable_def, ptr %42, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %83, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.variable_def, ptr %42, i64 0, i32 5, i64 0, i32 1
  %48 = getelementptr inbounds %struct.variable_def, ptr %42, i64 0, i32 3
  br label %49

49:                                               ; preds = %46, %75
  %50 = phi ptr [ %44, %46 ], [ %78, %75 ]
  %51 = phi i8 [ 0, %46 ], [ %77, %75 ]
  %52 = phi ptr [ %43, %46 ], [ %76, %75 ]
  %53 = getelementptr inbounds %struct.location_chain_def, ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !160
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 43
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %54) #24, !range !5
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %58
  %62 = load i1, ptr @emit_notes, align 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load ptr, ptr %42, align 8, !tbaa !91
  %65 = load ptr, ptr %53, align 8, !tbaa !160
  tail call fastcc void @remove_value_chains(ptr noundef %64, ptr noundef %65) #24
  br label %66

66:                                               ; preds = %63, %61
  %67 = load ptr, ptr %50, align 8, !tbaa !97
  store ptr %67, ptr %52, align 8, !tbaa !10
  %68 = load ptr, ptr %47, align 8, !tbaa !172
  %69 = load ptr, ptr %53, align 8, !tbaa !160
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store ptr null, ptr %47, align 8, !tbaa !172
  store i8 1, ptr %48, align 1, !tbaa !157
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i8 [ 1, %71 ], [ %51, %66 ]
  %74 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !10
  tail call void @pool_free(ptr noundef %74, ptr noundef nonnull %50) #25
  br label %75

75:                                               ; preds = %49, %58, %72
  %76 = phi ptr [ %52, %72 ], [ %50, %58 ], [ %50, %49 ]
  %77 = phi i8 [ %73, %72 ], [ %51, %58 ], [ %51, %49 ]
  %78 = load ptr, ptr %76, align 8, !tbaa !10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %49, !llvm.loop !306

80:                                               ; preds = %75
  %81 = load ptr, ptr %43, align 8, !tbaa !95
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %41, %80
  %84 = getelementptr inbounds %struct.variable_def, ptr %42, i64 0, i32 2
  %85 = load i8, ptr %84, align 4, !tbaa !94
  %86 = add i8 %85, -1
  store i8 %86, ptr %84, align 4, !tbaa !94
  br label %89

87:                                               ; preds = %80
  %88 = icmp eq i8 %77, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83, %87
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %42, ptr noundef %1) #24
  br label %90

90:                                               ; preds = %31, %17, %2, %87, %89
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mem_dies_at_call(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @get_base_address(ptr noundef nonnull %6) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !6
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef nonnull %9) #24, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = and i64 %12, 1048576
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %9) #24, !range !5
  br label %25

25:                                               ; preds = %1, %17, %23, %20, %11, %8, %5
  %26 = phi i8 [ 1, %5 ], [ 1, %8 ], [ 1, %11 ], [ 1, %17 ], [ 0, %20 ], [ %24, %23 ], [ 1, %1 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4008, ptr noundef nonnull @.str.2) #25
  %10 = load i32, ptr %1, align 8
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi i32 [ %6, %5 ], [ %10, %9 ]
  %13 = and i32 %12, 536870912
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4010, ptr noundef nonnull @.str.2) #25
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call fastcc i32 @dv_htab_hash(ptr noundef nonnull %1) #24
  %18 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %17) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !91
  %22 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %21) #24, !range !5
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4018, ptr noundef nonnull @.str.2) #25
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.variable_def, ptr %18, i64 0, i32 2
  %27 = load i8, ptr %26, align 4, !tbaa !94
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %77, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.variable_def, ptr %18, i64 0, i32 5
  %31 = getelementptr inbounds %struct.variable_def, ptr %18, i64 0, i32 5, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !159
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4023, ptr noundef nonnull @.str.2) #25
  br label %35

35:                                               ; preds = %29, %34
  %36 = load i32, ptr %1, align 8
  %37 = or i32 %36, 536870912
  store i32 %37, ptr %1, align 8
  %38 = load ptr, ptr %30, align 8, !tbaa !10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %73, label %40

40:                                               ; preds = %35
  %41 = icmp eq ptr %0, null
  br label %42

42:                                               ; preds = %40, %67
  %43 = phi ptr [ %38, %40 ], [ %68, %67 ]
  %44 = getelementptr inbounds %struct.location_chain_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !160
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br i1 %41, label %70, label %67

54:                                               ; preds = %49
  %55 = load ptr, ptr %51, align 8, !tbaa !188
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %51, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !190
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %67

61:                                               ; preds = %42
  %62 = and i32 %46, 536936447
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %0, ptr noundef nonnull %45, ptr noundef %2) #24
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %53, %57, %54, %64, %61
  %68 = load ptr, ptr %43, align 8, !tbaa !10
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %42, !llvm.loop !307

70:                                               ; preds = %53, %57, %64, %67
  %71 = phi ptr [ null, %67 ], [ %65, %64 ], [ %43, %57 ], [ %43, %53 ]
  %72 = load i32, ptr %1, align 8
  br label %73

73:                                               ; preds = %70, %35
  %74 = phi i32 [ %37, %35 ], [ %72, %70 ]
  %75 = phi ptr [ null, %35 ], [ %71, %70 ]
  %76 = and i32 %74, -536870913
  store i32 %76, ptr %1, align 8
  br label %77

77:                                               ; preds = %25, %16, %3, %73
  %78 = phi ptr [ %75, %73 ], [ null, %3 ], [ null, %16 ], [ null, %25 ]
  ret ptr %78
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_init_value(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call fastcc ptr @shared_hash_find(ptr noundef %8, ptr noundef %2) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.variable_def, ptr %9, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !94
  %14 = icmp sgt i8 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11, %30
  %16 = phi i64 [ %32, %30 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.variable_def, ptr %9, i64 0, i32 5, i64 %16
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %17, %15 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.location_chain_def, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = tail call i32 @rtx_equal_p(ptr noundef %24, ptr noundef %1) #25
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %18, label %27, !llvm.loop !308

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !167
  br label %30

30:                                               ; preds = %18, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %18 ]
  %32 = add nuw nsw i64 %16, 1
  %33 = load i8, ptr %12, align 4, !tbaa !94
  %34 = sext i8 %33 to i64
  %35 = icmp slt i64 %32, %34
  %36 = icmp eq i32 %31, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %15, label %38, !llvm.loop !309

38:                                               ; preds = %30, %11, %6, %3
  %39 = phi i32 [ 2, %3 ], [ 0, %6 ], [ 0, %11 ], [ %31, %30 ]
  ret i32 %39
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dataflow_set_different_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc i32 @dv_htab_hash(ptr noundef %4) #24
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  store i1 true, ptr @dataflow_set_different_value, align 1
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 39, i64 1, ptr nonnull %9)
  br label %29

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i8 @variable_different_p(ptr noundef nonnull %3, ptr noundef nonnull %6) #24, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  store i1 true, ptr @dataflow_set_different_value, align 1
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr nonnull %21)
  tail call fastcc void @dump_var(ptr noundef nonnull %3) #24
  br label %29

29:                                               ; preds = %15, %27
  %30 = phi ptr [ %6, %27 ], [ %3, %15 ]
  tail call fastcc void @dump_var(ptr noundef nonnull %30) #24
  br label %31

31:                                               ; preds = %29, %17, %20, %23, %8, %11
  %32 = phi i32 [ 0, %11 ], [ 0, %8 ], [ 0, %23 ], [ 0, %20 ], [ 1, %17 ], [ 0, %29 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_var(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !91
  %3 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %2) #24, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.36, ptr noundef %12) #24
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !22
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.37, i32 noundef %20) #24
  br label %34

22:                                               ; preds = %5
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 37
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !22
  br i1 %25, label %29, label %32

29:                                               ; preds = %22
  %30 = sub i32 0, %28
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.38, i32 noundef %30) #24
  br label %34

32:                                               ; preds = %22
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.39, i32 noundef %28) #24
  br label %34

34:                                               ; preds = %29, %32, %9, %17
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  br label %43

37:                                               ; preds = %1
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %39 = tail call i32 @fputc(i32 noundef 32, ptr noundef %38) #24
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %41 = load ptr, ptr %0, align 8, !tbaa !91
  %42 = tail call i32 @print_rtl_single(ptr noundef %40, ptr noundef %41) #25
  br label %43

43:                                               ; preds = %37, %34
  %44 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %45 = load i8, ptr %44, align 4, !tbaa !94
  %46 = icmp sgt i8 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43, %73
  %48 = phi i64 [ %74, %73 ], [ 0, %43 ]
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %48
  %51 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %48, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !159
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.40, i64 noundef %52) #24
  %54 = load ptr, ptr %50, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %47, %66
  %57 = phi ptr [ %71, %66 ], [ %54, %47 ]
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %59 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr %58)
  %60 = getelementptr inbounds %struct.location_chain_def, ptr %57, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !167
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %65 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 8, i64 1, ptr %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %68 = getelementptr inbounds %struct.location_chain_def, ptr %57, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !160
  %70 = tail call i32 @print_rtl_single(ptr noundef %67, ptr noundef %69) #25
  %71 = load ptr, ptr %57, align 8, !tbaa !10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %56, !llvm.loop !310

73:                                               ; preds = %66, %47
  %74 = add nuw nsw i64 %48, 1
  %75 = load i8, ptr %44, align 4, !tbaa !94
  %76 = sext i8 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %47, label %78, !llvm.loop !311

78:                                               ; preds = %73, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @variable_different_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !94
  %7 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !94
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %4
  %11 = icmp sgt i8 %6, 0
  br i1 %11, label %17, label %50

12:                                               ; preds = %47
  %13 = add nuw nsw i64 %18, 1
  %14 = load i8, ptr %5, align 4, !tbaa !94
  %15 = sext i8 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %50, !llvm.loop !312

17:                                               ; preds = %10, %12
  %18 = phi i64 [ %13, %12 ], [ 0, %10 ]
  %19 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %18
  %20 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %18, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 %18
  %23 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 %18, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !159
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %17
  %27 = or i64 %18, %21
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !91
  %31 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %30) #24, !range !5
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %5, align 4, !tbaa !94
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4354, ptr noundef nonnull @.str.2) #25
  br label %37

37:                                               ; preds = %33, %36
  %38 = load ptr, ptr %0, align 8, !tbaa !91
  %39 = load ptr, ptr %1, align 8, !tbaa !91
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4355, ptr noundef nonnull @.str.2) #25
  br label %42

42:                                               ; preds = %37, %41
  %43 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #24, !range !5
  br label %50

44:                                               ; preds = %29, %26
  %45 = tail call fastcc zeroext i8 @variable_part_different_p(ptr noundef nonnull %19, ptr noundef nonnull %22) #24, !range !5
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @variable_part_different_p(ptr noundef nonnull %22, ptr noundef nonnull %19) #24, !range !5
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %12, label %50

50:                                               ; preds = %17, %44, %47, %12, %10, %4, %2, %42
  %51 = phi i8 [ %43, %42 ], [ 0, %2 ], [ 1, %4 ], [ 0, %10 ], [ 1, %17 ], [ 1, %44 ], [ 1, %47 ], [ 0, %12 ]
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @variable_part_different_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2, %30
  %6 = phi ptr [ %31, %30 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.location_chain_def, ptr %6, i64 0, i32 1
  br label %8

8:                                                ; preds = %5, %27
  %9 = phi ptr [ %10, %27 ], [ %1, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %7, align 8, !tbaa !160
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  %17 = getelementptr inbounds %struct.location_chain_def, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  br i1 %16, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, ptr %18, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #24
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #24
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %12, %23, %19
  %28 = tail call i32 @rtx_equal_p(ptr noundef nonnull %13, ptr noundef %18) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %8, label %30, !llvm.loop !313

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %6, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !314

33:                                               ; preds = %30, %8, %2
  %34 = phi i8 [ 0, %2 ], [ 1, %8 ], [ 0, %30 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_attrs_list(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1, %13
  %4 = phi ptr [ %18, %13 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.attrs_def, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = tail call fastcc zeroext i8 @dv_is_decl_p(ptr noundef %6) #24, !range !5
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !10
  br i1 %8, label %11, label %10

10:                                               ; preds = %3
  tail call void @print_mem_expr(ptr noundef %9, ptr noundef %6) #25
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @print_rtl_single(ptr noundef %9, ptr noundef %6) #25
  br label %13

13:                                               ; preds = %11, %10
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.attrs_def, ptr %4, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !150
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.45, i64 noundef %16) #24
  %18 = load ptr, ptr %4, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !llvm.loop !315

20:                                               ; preds = %13, %1
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_vars(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @htab_elements(ptr noundef %0) #25
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %6 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %5)
  tail call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @dump_var_slot, ptr noundef null) #25
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @print_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dump_var_slot(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  tail call fastcc void @dump_var(ptr noundef %3) #24
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_rtx_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !152
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !10
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_cselib_value_chains(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.cselib_val_struct, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %1 ]
  %9 = phi ptr [ %23, %21 ], [ %4, %1 ]
  %10 = getelementptr inbounds %struct.elt_loc_list, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !290
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load ptr, ptr %8, align 8, !tbaa !291
  store ptr %16, ptr %9, align 8, !tbaa !10
  br label %21

17:                                               ; preds = %7
  %18 = tail call i32 @for_each_rtx(ptr noundef nonnull %10, ptr noundef nonnull @add_value_chain, ptr noundef %0) #25
  %19 = load ptr, ptr %9, align 8, !tbaa !10
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %16, %15 ], [ %20, %17 ]
  %23 = phi ptr [ %9, %15 ], [ %19, %17 ]
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %7, !llvm.loop !316

25:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_variable_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 40) #25
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_notes_for_differences(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call fastcc ptr @shared_hash_htab(ptr noundef %5) #24
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call fastcc ptr @shared_hash_htab(ptr noundef %8) #24
  tail call void @htab_traverse(ptr noundef %6, ptr noundef nonnull @emit_notes_for_differences_1, ptr noundef %9) #25
  %10 = load ptr, ptr %7, align 8, !tbaa !75
  %11 = tail call fastcc ptr @shared_hash_htab(ptr noundef %10) #24
  %12 = load ptr, ptr %4, align 8, !tbaa !75
  %13 = tail call fastcc ptr @shared_hash_htab(ptr noundef %12) #24
  tail call void @htab_traverse(ptr noundef %11, ptr noundef nonnull @emit_notes_for_differences_2, ptr noundef %13) #25
  %14 = load ptr, ptr %7, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %0, i32 noundef 0, ptr noundef %14) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_notes_in_bb(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  tail call fastcc void @dataflow_set_clear(ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %5, i64 0, i32 1
  tail call fastcc void @dataflow_set_copy(ptr noundef %1, ptr noundef nonnull %6) #24
  %7 = load ptr, ptr %4, align 8, !tbaa !32
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = call fastcc i32 @VEC_micro_operation_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #24, !range !88
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %311, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %305
  %14 = phi i32 [ 0, %11 ], [ %306, %305 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = load i32, ptr %15, align 8, !tbaa !55
  switch i32 %18, label %305 [
    i32 8, label %19
    i32 0, label %21
    i32 3, label %31
    i32 2, label %70
    i32 4, label %104
    i32 5, label %229
    i32 6, label %253
    i32 1, label %278
    i32 7, label %288
    i32 9, label %300
  ]

19:                                               ; preds = %13
  tail call fastcc void @dataflow_set_clear_at_call(ptr noundef %1) #24
  %20 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %17, i32 noundef 2, ptr noundef %20) #24
  br label %305

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call fastcc void @var_reg_set(ptr noundef %1, ptr noundef nonnull %23, i32 noundef 1, ptr noundef null) #24
  br label %29

28:                                               ; preds = %21
  tail call fastcc void @var_mem_set(ptr noundef %1, ptr noundef nonnull %23, i32 noundef 1, ptr noundef null) #24
  br label %29

29:                                               ; preds = %28, %27
  %30 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %17, i32 noundef 1, ptr noundef %30) #24
  br label %305

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 41
  %37 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  br i1 %36, label %40, label %39

39:                                               ; preds = %31
  tail call fastcc void @clobber_variable_part(ptr noundef %1, ptr noundef null, ptr noundef %38, i64 noundef 0, ptr noundef null) #24
  br label %54

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  tail call fastcc void @clobber_variable_part(ptr noundef %1, ptr noundef null, ptr noundef %44, i64 noundef 0, ptr noundef null) #24
  %45 = icmp eq ptr %38, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %33, align 8
  %48 = and i32 %47, 134217728
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  tail call fastcc void @val_resolve(ptr noundef %1, ptr noundef nonnull %38, ptr noundef %52, ptr noundef %17) #24
  br label %53

53:                                               ; preds = %50, %46
  tail call fastcc void @set_variable_part(ptr noundef %1, ptr noundef nonnull %38, ptr noundef %44, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %68

54:                                               ; preds = %39, %40
  %55 = phi ptr [ %38, %39 ], [ %44, %40 ]
  %56 = phi ptr [ %33, %39 ], [ %42, %40 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 25
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !10
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %54
  tail call fastcc void @set_variable_part(ptr noundef %1, ptr noundef nonnull %58, ptr noundef %55, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1) #24
  br label %68

68:                                               ; preds = %62, %67, %53
  %69 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %17, i32 noundef 1, ptr noundef %69) #24
  br label %305

70:                                               ; preds = %13
  %71 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = load ptr, ptr %73, align 8, !tbaa !22
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 41
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = load ptr, ptr %81, align 8, !tbaa !22
  br label %85

85:                                               ; preds = %80, %70
  %86 = phi ptr [ %83, %80 ], [ %75, %70 ]
  %87 = phi ptr [ %84, %80 ], [ %76, %70 ]
  %88 = load i32, ptr %72, align 8
  %89 = and i32 %88, 134217728
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  tail call fastcc void @val_resolve(ptr noundef %1, ptr noundef %87, ptr noundef %75, ptr noundef %17) #24
  br label %93

92:                                               ; preds = %85
  tail call fastcc void @val_store(ptr noundef %1, ptr noundef %87, ptr noundef %86, ptr noundef %17, i8 noundef zeroext 0) #24
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, ptr %72, align 8
  %95 = and i32 %94, 536870912
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %86, align 8
  %99 = trunc i32 %98 to i16
  switch i16 %99, label %102 [
    i16 37, label %100
    i16 43, label %101
  ]

100:                                              ; preds = %97
  tail call fastcc void @var_reg_set(ptr noundef %1, ptr noundef nonnull %86, i32 noundef 1, ptr noundef null) #24
  br label %102

101:                                              ; preds = %97
  tail call fastcc void @var_mem_set(ptr noundef %1, ptr noundef nonnull %86, i32 noundef 1, ptr noundef null) #24
  br label %102

102:                                              ; preds = %97, %100, %101, %93
  %103 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %17, i32 noundef 0, ptr noundef %103) #24
  br label %305

104:                                              ; preds = %13
  %105 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !22
  %107 = load i32, ptr %106, align 8
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !22
  %113 = load ptr, ptr %110, align 8, !tbaa !22
  br label %114

114:                                              ; preds = %109, %104
  %115 = phi ptr [ %113, %109 ], [ %106, %104 ]
  %116 = phi ptr [ %112, %109 ], [ null, %104 ]
  %117 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %118 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  %120 = load ptr, ptr %117, align 8, !tbaa !22
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 41
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %126 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !22
  %128 = load ptr, ptr %125, align 8, !tbaa !22
  br label %129

129:                                              ; preds = %124, %114
  %130 = phi ptr [ %128, %124 ], [ %120, %114 ]
  %131 = phi ptr [ %127, %124 ], [ %119, %114 ]
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 23
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %137 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !22
  %139 = icmp eq ptr %130, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7693, ptr noundef nonnull @.str.2) #25
  %141 = load i32, ptr %106, align 8
  br label %142

142:                                              ; preds = %135, %140
  %143 = phi i32 [ %107, %135 ], [ %141, %140 ]
  %144 = icmp ne ptr %131, %119
  %145 = and i32 %143, 134217728
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7694, ptr noundef nonnull @.str.2) #25
  %149 = load i32, ptr %106, align 8
  br label %150

150:                                              ; preds = %142, %148
  %151 = phi i32 [ %143, %142 ], [ %149, %148 ]
  %152 = load ptr, ptr %136, align 8, !tbaa !22
  %153 = and i32 %151, 134217728
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %174, label %171

155:                                              ; preds = %129
  %156 = and i32 %107, 134217728
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %119, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 23
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 37
  br i1 %167, label %171, label %168

168:                                              ; preds = %162, %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7704, ptr noundef nonnull @.str.2) #25
  %169 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %170 = load ptr, ptr %169, align 8, !tbaa !22
  br label %171

171:                                              ; preds = %168, %162, %150
  %172 = phi ptr [ %138, %150 ], [ %164, %162 ], [ %170, %168 ]
  %173 = phi ptr [ %152, %150 ], [ %131, %162 ], [ %131, %168 ]
  tail call fastcc void @val_resolve(ptr noundef %1, ptr noundef %130, ptr noundef %172, ptr noundef %17) #24
  br label %174

174:                                              ; preds = %171, %150, %155
  %175 = phi ptr [ %131, %155 ], [ %152, %150 ], [ %173, %171 ]
  %176 = load i32, ptr %106, align 8
  %177 = and i32 %176, 536870912
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %212, label %179

179:                                              ; preds = %174
  %180 = and i32 %176, 67108864
  %181 = icmp eq i32 %180, 0
  %182 = load i32, ptr %119, align 8
  br i1 %181, label %187, label %183

183:                                              ; preds = %179
  %184 = trunc i32 %182 to i16
  switch i16 %184, label %218 [
    i16 37, label %185
    i16 43, label %186
  ]

185:                                              ; preds = %183
  tail call fastcc void @var_reg_delete(ptr noundef %1, ptr noundef nonnull %119, i8 noundef zeroext 1) #24
  br label %218

186:                                              ; preds = %183
  tail call fastcc void @var_mem_delete(ptr noundef %1, ptr noundef nonnull %119, i8 noundef zeroext 1) #24
  br label %218

187:                                              ; preds = %179
  %188 = and i32 %182, 65535
  %189 = icmp eq i32 %188, 23
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %192 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !22
  %194 = load ptr, ptr %191, align 8, !tbaa !22
  br label %195

195:                                              ; preds = %190, %187
  %196 = phi ptr [ %194, %190 ], [ %119, %187 ]
  %197 = phi ptr [ %193, %190 ], [ null, %187 ]
  %198 = and i32 %176, 16777216
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = tail call fastcc i32 @find_src_status(ptr noundef %1, ptr noundef %197) #24
  %202 = tail call fastcc ptr @find_src_set_src(ptr noundef %1, ptr noundef %197) #24
  br label %203

203:                                              ; preds = %200, %195
  %204 = phi ptr [ %202, %200 ], [ %197, %195 ]
  %205 = phi i32 [ %201, %200 ], [ 2, %195 ]
  %206 = load i32, ptr %196, align 8
  %207 = trunc i32 %206 to i16
  switch i16 %207, label %218 [
    i16 37, label %208
    i16 43, label %210
  ]

208:                                              ; preds = %203
  %209 = zext i1 %199 to i8
  tail call fastcc void @var_reg_delete_and_set(ptr noundef %1, ptr noundef nonnull %196, i8 noundef zeroext %209, i32 noundef %205, ptr noundef %204) #24
  br label %218

210:                                              ; preds = %203
  %211 = zext i1 %199 to i8
  tail call fastcc void @var_mem_delete_and_set(ptr noundef %1, ptr noundef nonnull %196, i8 noundef zeroext %211, i32 noundef %205, ptr noundef %204) #24
  br label %218

212:                                              ; preds = %174
  %213 = load i32, ptr %119, align 8
  %214 = and i32 %213, 65535
  %215 = icmp eq i32 %214, 37
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %119) #24
  tail call fastcc void @var_regno_delete(ptr noundef %1, i32 noundef %217) #24
  br label %218

218:                                              ; preds = %208, %210, %203, %183, %212, %216, %186, %185
  tail call fastcc void @val_store(ptr noundef %1, ptr noundef %130, ptr noundef %175, ptr noundef %17, i8 noundef zeroext 1) #24
  %219 = icmp eq ptr %116, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !22
  %223 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1, i32 0, i32 0, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !22
  tail call fastcc void @val_store(ptr noundef %1, ptr noundef %222, ptr noundef %224, ptr noundef %17, i8 noundef zeroext 0) #24
  br label %225

225:                                              ; preds = %220, %218
  %226 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %227 = load ptr, ptr %226, align 8, !tbaa !22
  %228 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %227, i32 noundef 0, ptr noundef %228) #24
  br label %305

229:                                              ; preds = %13
  %230 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !22
  %232 = load i32, ptr %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 23
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1
  %237 = getelementptr inbounds %struct.rtx_def, ptr %231, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !22
  %239 = load ptr, ptr %236, align 8, !tbaa !22
  %240 = load i32, ptr %239, align 8
  br label %241

241:                                              ; preds = %235, %229
  %242 = phi i32 [ %240, %235 ], [ %232, %229 ]
  %243 = phi ptr [ %239, %235 ], [ %231, %229 ]
  %244 = phi ptr [ %238, %235 ], [ null, %229 ]
  %245 = and i32 %242, 65535
  %246 = icmp eq i32 %245, 37
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  tail call fastcc void @var_reg_delete_and_set(ptr noundef %1, ptr noundef nonnull %243, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %244) #24
  br label %249

248:                                              ; preds = %241
  tail call fastcc void @var_mem_delete_and_set(ptr noundef %1, ptr noundef nonnull %243, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %244) #24
  br label %249

249:                                              ; preds = %248, %247
  %250 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %251 = load ptr, ptr %250, align 8, !tbaa !22
  %252 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %251, i32 noundef 0, ptr noundef %252) #24
  br label %305

253:                                              ; preds = %13
  %254 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !22
  %256 = load i32, ptr %255, align 8
  %257 = and i32 %256, 65535
  %258 = icmp eq i32 %257, 23
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %261 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 1
  %262 = load ptr, ptr %261, align 8, !tbaa !22
  %263 = load ptr, ptr %260, align 8, !tbaa !22
  br label %264

264:                                              ; preds = %259, %253
  %265 = phi ptr [ %263, %259 ], [ %255, %253 ]
  %266 = phi ptr [ %262, %259 ], [ null, %253 ]
  %267 = tail call fastcc i32 @find_src_status(ptr noundef %1, ptr noundef %266) #24
  %268 = tail call fastcc ptr @find_src_set_src(ptr noundef %1, ptr noundef %266) #24
  %269 = load i32, ptr %265, align 8
  %270 = and i32 %269, 65535
  %271 = icmp eq i32 %270, 37
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  tail call fastcc void @var_reg_delete_and_set(ptr noundef %1, ptr noundef nonnull %265, i8 noundef zeroext 0, i32 noundef %267, ptr noundef %268) #24
  br label %274

273:                                              ; preds = %264
  tail call fastcc void @var_mem_delete_and_set(ptr noundef %1, ptr noundef nonnull %265, i8 noundef zeroext 0, i32 noundef %267, ptr noundef %268) #24
  br label %274

274:                                              ; preds = %273, %272
  %275 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %276 = load ptr, ptr %275, align 8, !tbaa !22
  %277 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %276, i32 noundef 0, ptr noundef %277) #24
  br label %305

278:                                              ; preds = %13
  %279 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !22
  %281 = load i32, ptr %280, align 8
  %282 = and i32 %281, 65535
  %283 = icmp eq i32 %282, 37
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  tail call fastcc void @var_reg_delete(ptr noundef %1, ptr noundef nonnull %280, i8 noundef zeroext 0) #24
  br label %286

285:                                              ; preds = %278
  tail call fastcc void @var_mem_delete(ptr noundef %1, ptr noundef nonnull %280, i8 noundef zeroext 0) #24
  br label %286

286:                                              ; preds = %285, %284
  %287 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %17, i32 noundef 1, ptr noundef %287) #24
  br label %305

288:                                              ; preds = %13
  %289 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !22
  %291 = load i32, ptr %290, align 8
  %292 = and i32 %291, 65535
  %293 = icmp eq i32 %292, 37
  br i1 %293, label %294, label %295

294:                                              ; preds = %288
  tail call fastcc void @var_reg_delete(ptr noundef %1, ptr noundef nonnull %290, i8 noundef zeroext 1) #24
  br label %296

295:                                              ; preds = %288
  tail call fastcc void @var_mem_delete(ptr noundef %1, ptr noundef nonnull %290, i8 noundef zeroext 1) #24
  br label %296

296:                                              ; preds = %295, %294
  %297 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %298 = load ptr, ptr %297, align 8, !tbaa !22
  %299 = load ptr, ptr %12, align 8, !tbaa !75
  tail call fastcc void @emit_notes_for_changes(ptr noundef %298, i32 noundef 0, ptr noundef %299) #24
  br label %305

300:                                              ; preds = %13
  %301 = getelementptr inbounds %struct.micro_operation_def, ptr %15, i64 0, i32 2
  %302 = load i64, ptr %301, align 8, !tbaa !22
  %303 = load i64, ptr %1, align 8, !tbaa !103
  %304 = add nsw i64 %303, %302
  store i64 %304, ptr %1, align 8, !tbaa !103
  br label %305

305:                                              ; preds = %13, %300, %296, %286, %274, %249, %225, %102, %68, %29, %19
  %306 = add i32 %14, 1
  %307 = load ptr, ptr %4, align 8, !tbaa !32
  %308 = load ptr, ptr %307, align 8, !tbaa !115
  %309 = call fastcc i32 @VEC_micro_operation_base_iterate(ptr noundef %308, i32 noundef %306, ptr noundef nonnull %3) #24, !range !88
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %13, !llvm.loop !317

311:                                              ; preds = %305, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_variable_heap_free() unnamed_addr #17 {
  %1 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !10
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #24
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @changed_variables_stack, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @emit_notes_for_differences_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc i32 @dv_htab_hash(ptr noundef %4) #24
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !91
  %10 = tail call fastcc ptr @dv_pool(ptr noundef %9) #24
  %11 = tail call ptr @pool_alloc(ptr noundef %10) #25
  %12 = load ptr, ptr %3, align 8, !tbaa !91
  store ptr %12, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.variable_def, ptr %11, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %13, i8 0, i64 7, i1 false)
  %14 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %12) #24, !range !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !94
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7447, ptr noundef nonnull @.str.2) #25
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %30, %25 ], [ %23, %21 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !91
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  tail call fastcc void @remove_value_chains(ptr noundef %27, ptr noundef %29) #24
  %30 = load ptr, ptr %26, align 8, !tbaa !10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %25, !llvm.loop !318

32:                                               ; preds = %25, %21, %8
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %11, ptr noundef null) #24
  br label %155

33:                                               ; preds = %2
  %34 = tail call fastcc zeroext i8 @variable_different_p(ptr noundef nonnull %3, ptr noundef nonnull %6) #24, !range !5
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8, !tbaa !91
  %38 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %37) #24, !range !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %105, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !94
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7461, ptr noundef nonnull @.str.2) #25
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %47 = load i8, ptr %46, align 4, !tbaa !94
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7462, ptr noundef nonnull @.str.2) #25
  br label %50

50:                                               ; preds = %45, %49
  %51 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %52 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = load ptr, ptr %51, align 8, !tbaa !10
  %55 = icmp ne ptr %54, null
  %56 = icmp ne ptr %53, null
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %81

58:                                               ; preds = %50, %75
  %59 = phi ptr [ %77, %75 ], [ %54, %50 ]
  %60 = phi ptr [ %76, %75 ], [ %53, %50 ]
  %61 = getelementptr inbounds %struct.location_chain_def, ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !160
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  %66 = getelementptr inbounds %struct.location_chain_def, ptr %60, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  br i1 %65, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, ptr %67, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %75, label %72

72:                                               ; preds = %58, %68
  %73 = tail call i32 @rtx_equal_p(ptr noundef nonnull %62, ptr noundef %67) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68, %72
  %76 = load ptr, ptr %60, align 8, !tbaa !10
  %77 = load ptr, ptr %59, align 8, !tbaa !10
  %78 = icmp ne ptr %77, null
  %79 = icmp ne ptr %76, null
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %58, label %81, !llvm.loop !319

81:                                               ; preds = %75, %50
  %82 = phi ptr [ %53, %50 ], [ %76, %75 ]
  %83 = phi ptr [ %54, %50 ], [ %77, %75 ]
  %84 = icmp eq ptr %82, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %72, %81
  %86 = phi ptr [ %83, %81 ], [ %59, %72 ]
  %87 = phi ptr [ %82, %81 ], [ %60, %72 ]
  br label %91

88:                                               ; preds = %91, %81
  %89 = phi ptr [ %83, %81 ], [ %86, %91 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %105, label %98

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %96, %91 ], [ %87, %85 ]
  %93 = load ptr, ptr %3, align 8, !tbaa !91
  %94 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !160
  tail call fastcc void @add_value_chains(ptr noundef %93, ptr noundef %95) #24
  %96 = load ptr, ptr %92, align 8, !tbaa !97
  %97 = icmp eq ptr %96, null
  br i1 %97, label %88, label %91, !llvm.loop !320

98:                                               ; preds = %88, %98
  %99 = phi ptr [ %103, %98 ], [ %89, %88 ]
  %100 = load ptr, ptr %3, align 8, !tbaa !91
  %101 = getelementptr inbounds %struct.location_chain_def, ptr %99, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !160
  tail call fastcc void @remove_value_chains(ptr noundef %100, ptr noundef %102) #24
  %103 = load ptr, ptr %99, align 8, !tbaa !97
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %98, !llvm.loop !321

105:                                              ; preds = %98, %88, %36
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %6, ptr noundef null) #24
  br label %106

106:                                              ; preds = %105, %33
  %107 = icmp eq ptr %3, %6
  br i1 %107, label %155, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %110 = load i8, ptr %109, align 4, !tbaa !94
  %111 = icmp sgt i8 %110, 0
  br i1 %111, label %112, label %155

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %114 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  br label %115

115:                                              ; preds = %112, %150
  %116 = phi i64 [ 0, %112 ], [ %151, %150 ]
  %117 = phi i8 [ %110, %112 ], [ %152, %150 ]
  %118 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %116
  %119 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %116, i32 1
  store ptr null, ptr %119, align 8, !tbaa !172
  %120 = load i8, ptr %113, align 4, !tbaa !94
  %121 = icmp eq i8 %120, %117
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %116, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !159
  %125 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %116, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !159
  %127 = icmp eq i64 %124, %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %122, %115
  store i8 1, ptr %114, align 1, !tbaa !157
  br label %150

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %116, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !172
  %132 = icmp eq ptr %131, null
  br i1 %132, label %150, label %133

133:                                              ; preds = %129, %141
  %134 = phi ptr [ %135, %141 ], [ %118, %129 ]
  %135 = load ptr, ptr %134, align 8, !tbaa !10
  %136 = icmp eq ptr %135, null
  br i1 %136, label %149, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.location_chain_def, ptr %135, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !160
  %140 = icmp eq ptr %139, %131
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = tail call i32 @rtx_equal_p(ptr noundef nonnull %131, ptr noundef %139) #25
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %133, label %144, !llvm.loop !322

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.location_chain_def, ptr %135, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !160
  br label %147

147:                                              ; preds = %137, %144
  %148 = phi ptr [ %146, %144 ], [ %131, %137 ]
  store ptr %148, ptr %119, align 8, !tbaa !172
  br label %150

149:                                              ; preds = %133
  store i8 1, ptr %114, align 1, !tbaa !157
  br label %150

150:                                              ; preds = %147, %149, %128, %129
  %151 = add nuw nsw i64 %116, 1
  %152 = load i8, ptr %109, align 4, !tbaa !94
  %153 = sext i8 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %115, label %155, !llvm.loop !323

155:                                              ; preds = %150, %108, %106, %32
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @emit_notes_for_differences_2(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc i32 @dv_htab_hash(ptr noundef %4) #24
  %6 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %5) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !91
  %10 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %9) #24, !range !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !94
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7532, ptr noundef nonnull @.str.2) #25
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %17 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  tail call fastcc void @add_value_chains(ptr noundef %23, ptr noundef %25) #24
  %26 = load ptr, ptr %22, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !324

28:                                               ; preds = %21, %17, %8
  %29 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !94
  %31 = icmp sgt i8 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = zext nneg i8 %30 to i64
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 254
  %36 = add nsw i64 %33, -1
  %37 = insertelement <2 x i64> poison, i64 %36, i64 0
  %38 = shufflevector <2 x i64> %37, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %39

39:                                               ; preds = %51, %32
  %40 = phi i64 [ 0, %32 ], [ %52, %51 ]
  %41 = phi <2 x i64> [ <i64 0, i64 1>, %32 ], [ %53, %51 ]
  %42 = icmp ule <2 x i64> %41, %38
  %43 = extractelement <2 x i1> %42, i64 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %40, i32 1
  store ptr null, ptr %45, align 8, !tbaa !172
  br label %46

46:                                               ; preds = %44, %39
  %47 = extractelement <2 x i1> %42, i64 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = or disjoint i64 %40, 1
  %50 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %49, i32 1
  store ptr null, ptr %50, align 8, !tbaa !172
  br label %51

51:                                               ; preds = %48, %46
  %52 = add i64 %40, 2
  %53 = add <2 x i64> %41, <i64 2, i64 2>
  %54 = icmp eq i64 %52, %35
  br i1 %54, label %55, label %39, !llvm.loop !325

55:                                               ; preds = %51, %28
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %3, ptr noundef null) #24
  br label %56

56:                                               ; preds = %55, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_notes_for_changes(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.emit_note_data_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  %5 = tail call fastcc ptr @shared_hash_htab(ptr noundef %2) #24
  %6 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  %7 = tail call i64 @htab_elements(ptr noundef %6) #25
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %13, ptr noundef nonnull @check_changed_vars_1, ptr noundef %5) #25
  %14 = load ptr, ptr @changed_variables_stack, align 8
  %15 = tail call fastcc i32 @VEC_variable_base_length(ptr noundef %14) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %21, %12
  %18 = load ptr, ptr @changed_values_stack, align 8
  %19 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %18) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %27

21:                                               ; preds = %12, %21
  %22 = phi ptr [ %24, %21 ], [ %14, %12 ]
  %23 = tail call fastcc ptr @VEC_variable_base_pop(ptr noundef %22) #24
  tail call fastcc void @check_changed_vars_2(ptr noundef %23, ptr noundef %5) #24
  %24 = load ptr, ptr @changed_variables_stack, align 8
  %25 = tail call fastcc i32 @VEC_variable_base_length(ptr noundef %24) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %17, label %21, !llvm.loop !328

27:                                               ; preds = %17, %27
  %28 = phi ptr [ %30, %27 ], [ %18, %17 ]
  %29 = tail call fastcc ptr @VEC_rtx_base_pop(ptr noundef %28) #24
  tail call fastcc void @set_dv_changed(ptr noundef %29, i8 noundef zeroext 0) #24
  %30 = load ptr, ptr @changed_values_stack, align 8
  %31 = tail call fastcc i32 @VEC_rtx_base_length(ptr noundef %30) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %27, !llvm.loop !329

33:                                               ; preds = %27, %17
  %34 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  tail call void @htab_traverse(ptr noundef %34, ptr noundef nonnull @check_changed_vars_3, ptr noundef %5) #25
  br label %35

35:                                               ; preds = %33, %9
  store ptr %0, ptr %4, align 8, !tbaa !330
  %36 = getelementptr inbounds %struct.emit_note_data_def, ptr %4, i64 0, i32 1
  store i32 %1, ptr %36, align 8, !tbaa !332
  %37 = getelementptr inbounds %struct.emit_note_data_def, ptr %4, i64 0, i32 2
  store ptr %5, ptr %37, align 8, !tbaa !333
  %38 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  call void @htab_traverse(ptr noundef %38, ptr noundef nonnull @emit_note_insn_var_location, ptr noundef nonnull %4) #25
  br label %39

39:                                               ; preds = %3, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_changed_vars_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %4) #24, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 37
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  tail call fastcc void @check_changed_vars_0(ptr noundef %4, ptr noundef %1) #24
  br label %12

12:                                               ; preds = %11, %7
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_variable_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !334
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_changed_vars_2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @variable_was_changed(ptr noundef %0, ptr noundef null) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !91
  %4 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %3) #24, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 37
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call fastcc void @check_changed_vars_0(ptr noundef %3, ptr noundef %1) #24
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_variable_base_pop(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !334
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !334
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_variable_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_rtx_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !152
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_rtx_base_pop(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8, !tbaa !152
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !152
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_rtx_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @check_changed_vars_3(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #26
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %5) #24, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  %9 = load i64, ptr %5, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 37
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !94
  %15 = icmp sgt i8 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %55
  %19 = phi i64 [ 0, %16 ], [ %56, %55 ]
  %20 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5, i64 %19
  %21 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5, i64 %19, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !172
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef nonnull %22, ptr noundef %1, ptr noundef nonnull %3) #24
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %3, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27
  store i8 1, ptr %17, align 1, !tbaa !157
  br label %55

31:                                               ; preds = %24, %18
  %32 = load ptr, ptr %20, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31, %43
  %35 = phi ptr [ %44, %43 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.location_chain_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !160
  %38 = load ptr, ptr %21, align 8, !tbaa !172
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %3) #24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34, %40
  %44 = load ptr, ptr %35, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %34, !llvm.loop !336

46:                                               ; preds = %43, %31
  %47 = load ptr, ptr %21, align 8, !tbaa !172
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  store i8 1, ptr %17, align 1, !tbaa !157
  br label %53

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.location_chain_def, ptr %35, i64 0, i32 1
  store i8 1, ptr %17, align 1, !tbaa !157
  %52 = load ptr, ptr %51, align 8, !tbaa !160
  br label %53

53:                                               ; preds = %46, %49, %50
  %54 = phi ptr [ %52, %50 ], [ null, %49 ], [ null, %46 ]
  store ptr %54, ptr %21, align 8, !tbaa !172
  br label %55

55:                                               ; preds = %27, %30, %53
  %56 = add nuw nsw i64 %19, 1
  %57 = load i8, ptr %13, align 4, !tbaa !94
  %58 = sext i8 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %18, label %60, !llvm.loop !337

60:                                               ; preds = %55, %12
  %61 = phi i8 [ %14, %12 ], [ %57, %55 ]
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 3
  store i8 1, ptr %64, align 1, !tbaa !157
  br label %65

65:                                               ; preds = %60, %63, %2, %8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #26
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @emit_note_insn_var_location(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [16 x i64], align 16
  %4 = alloca [16 x ptr], align 16
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 8, !tbaa !10
  %7 = load ptr, ptr %1, align 8, !tbaa !330
  %8 = getelementptr inbounds %struct.emit_note_data_def, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !332
  %10 = getelementptr inbounds %struct.emit_note_data_def, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !333
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #26
  %12 = load ptr, ptr %6, align 8, !tbaa !91
  %13 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %12) #24, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %371

15:                                               ; preds = %2
  %16 = load i64, ptr %12, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 37
  br i1 %18, label %371, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %24 = load i8, ptr %23, align 4, !tbaa !94
  %25 = icmp sgt i8 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = zext nneg i8 %24 to i64
  %28 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  br label %29

29:                                               ; preds = %26, %41
  %30 = phi i64 [ 0, %26 ], [ %42, %41 ]
  %31 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %30, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !172
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !160
  store ptr %40, ptr %31, align 8, !tbaa !172
  store i8 1, ptr %28, align 1, !tbaa !157
  br label %41

41:                                               ; preds = %29, %34, %38
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %27
  br i1 %43, label %44, label %29, !llvm.loop !338

44:                                               ; preds = %41, %22
  %45 = icmp eq i8 %24, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  store i8 1, ptr %47, align 1, !tbaa !157
  br label %48

48:                                               ; preds = %44, %46, %19
  %49 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !157
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %362, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %54 = load i8, ptr %53, align 4, !tbaa !94
  %55 = icmp sgt i8 %54, 0
  br i1 %55, label %56, label %297

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  br label %58

58:                                               ; preds = %56, %281
  %59 = phi i32 [ 0, %56 ], [ %287, %281 ]
  %60 = phi i64 [ 0, %56 ], [ %285, %281 ]
  %61 = phi i32 [ 1, %56 ], [ %284, %281 ]
  %62 = phi i8 [ 1, %56 ], [ %283, %281 ]
  %63 = phi i32 [ 0, %56 ], [ %282, %281 ]
  %64 = sext i32 %59 to i64
  %65 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %64
  %66 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %64, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !159
  %68 = icmp slt i64 %60, %67
  br i1 %68, label %291, label %69

69:                                               ; preds = %58
  %70 = icmp sgt i64 %60, %67
  br i1 %70, label %281, label %71

71:                                               ; preds = %69
  %72 = sext i32 %63 to i64
  %73 = getelementptr inbounds [16 x i64], ptr %3, i64 0, i64 %72
  store i64 %67, ptr %73, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %64, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !172
  %76 = icmp eq ptr %75, null
  br i1 %76, label %281, label %77

77:                                               ; preds = %71
  %78 = tail call fastcc ptr @vt_expand_loc(ptr noundef nonnull %75, ptr noundef %11) #24
  %79 = icmp eq ptr %78, null
  br i1 %79, label %281, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %72
  store ptr %78, ptr %81, align 8, !tbaa !10
  %82 = load ptr, ptr %74, align 8, !tbaa !172
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load ptr, ptr %6, align 8, !tbaa !91
  %89 = tail call fastcc zeroext i8 @dv_onepart_p(ptr noundef %88) #24, !range !5
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %57, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 255
  br label %95

95:                                               ; preds = %91, %87, %80
  %96 = phi i32 [ %94, %91 ], [ 0, %87 ], [ %85, %80 ]
  br label %97

97:                                               ; preds = %101, %95
  %98 = phi ptr [ %65, %95 ], [ %99, %101 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !10
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %74, align 8, !tbaa !172
  %103 = getelementptr inbounds %struct.location_chain_def, ptr %99, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !160
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %106, label %97, !llvm.loop !339

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.location_chain_def, ptr %99, i64 0, i32 3
  %108 = load i32, ptr %107, align 8, !tbaa !167
  br label %110

109:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7106, ptr noundef nonnull @.str.2) #25
  br label %110

110:                                              ; preds = %106, %109
  %111 = phi i32 [ %108, %106 ], [ %61, %109 ]
  %112 = zext nneg i32 %96 to i64
  %113 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !22
  %115 = zext i8 %114 to i64
  %116 = add nsw i64 %67, %115
  %117 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %112
  %118 = load i8, ptr %117, align 1, !tbaa !22
  %119 = zext i8 %118 to i32
  %120 = load i8, ptr %53, align 4, !tbaa !94
  %121 = sext i8 %120 to i64
  br label %122

122:                                              ; preds = %126, %110
  %123 = phi i64 [ %124, %126 ], [ %64, %110 ]
  %124 = add nsw i64 %123, 1
  %125 = icmp slt i64 %124, %121
  br i1 %125, label %126, label %277

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %124, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !159
  %129 = icmp sgt i64 %116, %128
  br i1 %129, label %122, label %130, !llvm.loop !340

130:                                              ; preds = %126
  %131 = trunc i64 %124 to i32
  %132 = icmp eq i8 %118, 0
  br i1 %132, label %277, label %133

133:                                              ; preds = %130
  %134 = shl i64 %124, 32
  %135 = ashr exact i64 %134, 32
  %136 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %135, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !172
  %138 = icmp eq ptr %137, null
  br i1 %138, label %277, label %139

139:                                              ; preds = %133
  %140 = load i32, ptr %137, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = icmp eq i32 %96, %142
  br i1 %143, label %144, label %277

144:                                              ; preds = %139
  %145 = load i32, ptr %78, align 8
  %146 = trunc i32 %145 to i16
  switch i16 %146, label %277 [
    i16 37, label %147
    i16 43, label %147
  ]

147:                                              ; preds = %144, %144
  %148 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %135, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !159
  %150 = icmp eq i64 %116, %149
  br i1 %150, label %151, label %277

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @vt_expand_loc(ptr noundef nonnull %137, ptr noundef %11) #24
  %153 = icmp eq ptr %152, null
  br i1 %153, label %277, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %78, align 8
  %156 = load i32, ptr %152, align 8
  %157 = xor i32 %156, %155
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %277

160:                                              ; preds = %154
  %161 = trunc i32 %155 to i16
  switch i16 %161, label %277 [
    i16 37, label %162
    i16 43, label %195
  ]

162:                                              ; preds = %160
  %163 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #24
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %164, i64 %112
  %166 = load i8, ptr %165, align 1, !tbaa !22
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 1
  %169 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #24
  %170 = zext i32 %169 to i64
  %171 = zext i8 %118 to i64
  %172 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %170, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !22
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %168, %174
  br i1 %175, label %176, label %277

176:                                              ; preds = %162
  %177 = tail call fastcc i32 @end_hard_regno(i32 noundef %96, i32 noundef %169) #24
  %178 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %152) #24
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %277

180:                                              ; preds = %176
  %181 = tail call ptr @simplify_subreg(i32 noundef %119, ptr noundef nonnull %78, i32 noundef %96, i32 noundef 0) #25
  %182 = icmp eq ptr %181, null
  br i1 %182, label %277, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr %181, align 8
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 37
  br i1 %186, label %187, label %277

187:                                              ; preds = %183
  %188 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %181) #24
  %189 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %78) #24
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %277

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !22
  %194 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %193, ptr %194, align 8, !tbaa !22
  br label %270

195:                                              ; preds = %160
  %196 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !22
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 49
  br i1 %200, label %201, label %277

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !22
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 65535
  %206 = icmp eq i32 %205, 37
  br i1 %206, label %207, label %277

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.rtx_def, ptr %197, i64 0, i32 1, i32 0, i32 0, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !22
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %211, 30
  br i1 %212, label %213, label %277

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !22
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 37
  br i1 %218, label %219, label %231

219:                                              ; preds = %213
  %220 = tail call i32 @rtx_equal_p(ptr noundef nonnull %215, ptr noundef nonnull %203) #25
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr %196, align 8, !tbaa !22
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1, i32 0, i32 0, i64 1
  %225 = load ptr, ptr %224, align 8, !tbaa !22
  %226 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !22
  %228 = load i8, ptr %113, align 1, !tbaa !22
  %229 = zext i8 %228 to i64
  %230 = icmp eq i64 %227, %229
  br i1 %230, label %265, label %231

231:                                              ; preds = %222, %219, %213
  %232 = load ptr, ptr %214, align 8, !tbaa !22
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 49
  br i1 %235, label %236, label %277

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !22
  %239 = load i32, ptr %238, align 8
  %240 = and i32 %239, 65535
  %241 = icmp eq i32 %240, 30
  br i1 %241, label %242, label %277

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !22
  %245 = load ptr, ptr %196, align 8, !tbaa !22
  %246 = getelementptr inbounds %struct.rtx_def, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !22
  %248 = tail call i32 @rtx_equal_p(ptr noundef %244, ptr noundef %247) #25
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %277, label %250

250:                                              ; preds = %242
  %251 = load ptr, ptr %214, align 8, !tbaa !22
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !22
  %254 = getelementptr inbounds %struct.rtx_def, ptr %253, i64 0, i32 1
  %255 = load i64, ptr %254, align 8, !tbaa !22
  %256 = load i8, ptr %113, align 1, !tbaa !22
  %257 = zext i8 %256 to i64
  %258 = add nsw i64 %255, %257
  %259 = load ptr, ptr %196, align 8, !tbaa !22
  %260 = getelementptr inbounds %struct.rtx_def, ptr %259, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !22
  %262 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %263 = load i64, ptr %262, align 8, !tbaa !22
  %264 = icmp eq i64 %258, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %222, %250
  %266 = tail call ptr @adjust_address_1(ptr noundef nonnull %78, i32 noundef %119, i64 noundef 0, i32 noundef 0, i32 noundef 1) #25
  %267 = icmp eq ptr %266, null
  br i1 %267, label %277, label %268

268:                                              ; preds = %265
  %269 = zext i8 %118 to i64
  br label %270

270:                                              ; preds = %268, %191
  %271 = phi i64 [ %269, %268 ], [ %171, %191 ]
  %272 = phi ptr [ %266, %268 ], [ %181, %191 ]
  store ptr %272, ptr %81, align 8, !tbaa !10
  %273 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %271
  %274 = load i8, ptr %273, align 1, !tbaa !22
  %275 = zext i8 %274 to i64
  %276 = add nsw i64 %67, %275
  br label %277

277:                                              ; preds = %122, %160, %162, %176, %183, %187, %195, %201, %207, %231, %236, %242, %250, %180, %265, %270, %144, %154, %151, %147, %139, %133, %130
  %278 = phi i64 [ %116, %154 ], [ %116, %151 ], [ %116, %147 ], [ %116, %139 ], [ %116, %133 ], [ %116, %130 ], [ %116, %144 ], [ %276, %270 ], [ %116, %265 ], [ %116, %180 ], [ %116, %250 ], [ %116, %242 ], [ %116, %236 ], [ %116, %231 ], [ %116, %207 ], [ %116, %201 ], [ %116, %195 ], [ %116, %187 ], [ %116, %183 ], [ %116, %176 ], [ %116, %162 ], [ %116, %160 ], [ %116, %122 ]
  %279 = phi i32 [ %59, %154 ], [ %59, %151 ], [ %59, %147 ], [ %59, %139 ], [ %59, %133 ], [ %59, %130 ], [ %59, %144 ], [ %131, %270 ], [ %59, %265 ], [ %59, %180 ], [ %59, %250 ], [ %59, %242 ], [ %59, %236 ], [ %59, %231 ], [ %59, %207 ], [ %59, %201 ], [ %59, %195 ], [ %59, %187 ], [ %59, %183 ], [ %59, %176 ], [ %59, %162 ], [ %59, %160 ], [ %59, %122 ]
  %280 = add nsw i32 %63, 1
  br label %281

281:                                              ; preds = %277, %69, %71, %77
  %282 = phi i32 [ %63, %77 ], [ %63, %71 ], [ %63, %69 ], [ %280, %277 ]
  %283 = phi i8 [ 0, %77 ], [ 0, %71 ], [ %62, %69 ], [ %62, %277 ]
  %284 = phi i32 [ %61, %77 ], [ %61, %71 ], [ %61, %69 ], [ %111, %277 ]
  %285 = phi i64 [ %60, %77 ], [ %60, %71 ], [ %60, %69 ], [ %278, %277 ]
  %286 = phi i32 [ %59, %77 ], [ %59, %71 ], [ %59, %69 ], [ %279, %277 ]
  %287 = add nsw i32 %286, 1
  %288 = load i8, ptr %53, align 4, !tbaa !94
  %289 = sext i8 %288 to i32
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %58, label %291, !llvm.loop !341

291:                                              ; preds = %58, %281
  %292 = phi i32 [ %282, %281 ], [ %63, %58 ]
  %293 = phi i32 [ %284, %281 ], [ %61, %58 ]
  %294 = phi i64 [ %285, %281 ], [ %60, %58 ]
  %295 = phi i8 [ %283, %281 ], [ 0, %58 ]
  %296 = icmp eq i8 %295, 0
  br label %297

297:                                              ; preds = %291, %52
  %298 = phi i32 [ 0, %52 ], [ %292, %291 ]
  %299 = phi i32 [ 1, %52 ], [ %293, %291 ]
  %300 = phi i64 [ 0, %52 ], [ %294, %291 ]
  %301 = phi i1 [ false, %52 ], [ %296, %291 ]
  %302 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !22
  %304 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !22
  %306 = getelementptr inbounds %struct.tree_int_cst, ptr %305, i64 0, i32 1
  %307 = load i64, ptr %306, align 8, !tbaa !22
  %308 = icmp ult i64 %300, %307
  %309 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %310 = icmp eq i32 %309, 0
  %311 = select i1 %310, i32 2, i32 %299
  %312 = select i1 %308, i1 true, i1 %301
  br i1 %312, label %313, label %315

313:                                              ; preds = %297
  %314 = tail call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef 0, ptr noundef nonnull %12, ptr noundef null, i32 noundef %311) #25
  br label %348

315:                                              ; preds = %297
  switch i32 %298, label %316 [
    i32 1, label %320
    i32 0, label %348
  ]

316:                                              ; preds = %315
  %317 = icmp sgt i32 %298, 0
  br i1 %317, label %318, label %344

318:                                              ; preds = %316
  %319 = zext nneg i32 %298 to i64
  br label %334

320:                                              ; preds = %315
  %321 = load i64, ptr %3, align 16, !tbaa !50
  %322 = icmp eq i64 %321, 0
  %323 = load ptr, ptr %4, align 16, !tbaa !10
  br i1 %322, label %324, label %328

324:                                              ; preds = %320
  %325 = load i32, ptr %323, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 15
  br i1 %327, label %328, label %331

328:                                              ; preds = %324, %320
  %329 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %321) #25
  %330 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %323, ptr noundef %329) #25
  br label %331

331:                                              ; preds = %324, %328
  %332 = phi ptr [ %330, %328 ], [ %323, %324 ]
  %333 = tail call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef 0, ptr noundef nonnull %12, ptr noundef %332, i32 noundef %311) #25
  br label %348

334:                                              ; preds = %318, %334
  %335 = phi i64 [ 0, %318 ], [ %342, %334 ]
  %336 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !10
  %338 = getelementptr inbounds [16 x i64], ptr %3, i64 0, i64 %335
  %339 = load i64, ptr %338, align 8, !tbaa !50
  %340 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %339) #25
  %341 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %337, ptr noundef %340) #25
  store ptr %341, ptr %336, align 8, !tbaa !10
  %342 = add nuw nsw i64 %335, 1
  %343 = icmp eq i64 %342, %319
  br i1 %343, label %344, label %334, !llvm.loop !342

344:                                              ; preds = %334, %316
  %345 = call ptr @gen_rtvec_v(i32 noundef %298, ptr noundef nonnull %4) #25
  %346 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %345) #25
  %347 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef 0, ptr noundef nonnull %12, ptr noundef %346, i32 noundef %311) #25
  br label %348

348:                                              ; preds = %315, %331, %344, %313
  %349 = phi ptr [ %333, %331 ], [ %347, %344 ], [ %314, %313 ], [ null, %315 ]
  %350 = icmp eq i32 %9, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %348
  %352 = call ptr @emit_note_after(i32 noundef 9, ptr noundef %7) #25
  %353 = icmp eq i32 %9, 2
  br i1 %353, label %354, label %359

354:                                              ; preds = %351
  %355 = load i32, ptr %352, align 8
  %356 = or i32 %355, 33554432
  store i32 %356, ptr %352, align 8
  br label %359

357:                                              ; preds = %348
  %358 = call ptr @emit_note_before(i32 noundef 9, ptr noundef %7) #25
  br label %359

359:                                              ; preds = %351, %354, %357
  %360 = phi ptr [ %352, %354 ], [ %352, %351 ], [ %358, %357 ]
  %361 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1, i32 0, i32 2
  store ptr %349, ptr %361, align 8, !tbaa !22
  br label %362

362:                                              ; preds = %406, %371, %374, %48, %359
  %363 = load ptr, ptr %6, align 8, !tbaa !91
  call fastcc void @set_dv_changed(ptr noundef %363, i8 noundef zeroext 0) #24
  %364 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  store i8 0, ptr %364, align 1, !tbaa !157
  %365 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 4
  %366 = load i8, ptr %365, align 2, !tbaa !158
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %362
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7243, ptr noundef nonnull @.str.2) #25
  br label %369

369:                                              ; preds = %362, %368
  store i8 0, ptr %365, align 2, !tbaa !158
  %370 = load ptr, ptr @changed_variables, align 8, !tbaa !10
  call void @htab_clear_slot(ptr noundef %370, ptr noundef nonnull %0) #25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #26
  ret i32 1

371:                                              ; preds = %15, %2
  %372 = tail call fastcc zeroext i8 @dv_changed_p(ptr noundef %12) #24, !range !5
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %362, label %374

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %376 = load i8, ptr %375, align 4, !tbaa !94
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %362, label %378

378:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #26
  %379 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5
  %380 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !172
  %382 = icmp eq ptr %381, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %378
  %384 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef nonnull %381, ptr noundef %11, ptr noundef nonnull %5) #24
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %406

386:                                              ; preds = %383, %378
  %387 = load ptr, ptr %379, align 8, !tbaa !10
  %388 = icmp eq ptr %387, null
  br i1 %388, label %404, label %389

389:                                              ; preds = %386, %398
  %390 = phi ptr [ %399, %398 ], [ %387, %386 ]
  %391 = getelementptr inbounds %struct.location_chain_def, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !160
  %393 = load ptr, ptr %380, align 8, !tbaa !172
  %394 = icmp eq ptr %392, %393
  br i1 %394, label %398, label %395

395:                                              ; preds = %389
  %396 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %392, ptr noundef %11, ptr noundef nonnull %5) #24
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %389, %395
  %399 = load ptr, ptr %390, align 8, !tbaa !10
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %389, !llvm.loop !343

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.location_chain_def, ptr %390, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !160
  br label %404

404:                                              ; preds = %398, %386, %401
  %405 = phi ptr [ %403, %401 ], [ null, %386 ], [ null, %398 ]
  store ptr %405, ptr %380, align 8, !tbaa !172
  br label %406

406:                                              ; preds = %383, %404
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #26
  br label %362
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_changed_vars_0(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @value_chains, align 8, !tbaa !10
  %4 = tail call fastcc i32 @dv_htab_hash(ptr noundef %0) #24
  %5 = tail call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef %0, i32 noundef %4) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !179
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7, %28
  %11 = phi ptr [ %29, %28 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.value_chain_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = tail call fastcc zeroext i8 @dv_changed_p(ptr noundef %13) #24, !range !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @dv_htab_hash(ptr noundef %13) #24
  %18 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %13, i32 noundef %17) #25
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %12, align 8, !tbaa !101
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call fastcc void @set_dv_changed(ptr noundef %20, i8 noundef zeroext 1) #24
  tail call fastcc void @VEC_variable_heap_safe_push(ptr noundef nonnull %18) #24
  br label %28

22:                                               ; preds = %16
  %23 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %20) #24, !range !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  tail call fastcc void @set_dv_changed(ptr noundef %20, i8 noundef zeroext 1) #24
  %26 = load ptr, ptr %12, align 8, !tbaa !101
  tail call fastcc void @VEC_rtx_heap_safe_push(ptr noundef nonnull @changed_values_stack, ptr noundef %26) #24
  %27 = load ptr, ptr %12, align 8, !tbaa !101
  tail call fastcc void @check_changed_vars_0(ptr noundef %27, ptr noundef %1) #24
  br label %28

28:                                               ; preds = %21, %25, %22, %10
  %29 = load ptr, ptr %11, align 8, !tbaa !179
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !344

31:                                               ; preds = %28, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @dv_changed_p(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @dv_is_value_p(ptr noundef %0) #24, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 30
  br label %11

7:                                                ; preds = %1
  %8 = load i64, ptr %0, align 8
  %9 = lshr i64 %8, 40
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %6, %4 ], [ %10, %7 ]
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_variable_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_variable_heap_reserve() #24
  %2 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !10
  tail call fastcc void @VEC_variable_base_quick_push(ptr noundef %2, ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_variable_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !10
  %2 = tail call fastcc i32 @VEC_variable_base_space(ptr noundef %1) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #25
  store ptr %5, ptr @changed_variables_stack, align 8, !tbaa !10
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_variable_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !334
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !334
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_variable_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_variable_base_space(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_variable_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !345
  %6 = load i32, ptr %0, align 8, !tbaa !334
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.expand_loc_callback_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7009, ptr noundef nonnull @.str.2) #25
  br label %8

8:                                                ; preds = %3, %7
  store ptr %1, ptr %4, align 8, !tbaa !346
  %9 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %4, i64 0, i32 1
  store i8 1, ptr %9, align 8, !tbaa !348
  %10 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %4, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !349
  %11 = load ptr, ptr @scratch_regs, align 8, !tbaa !10
  %12 = call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %0, ptr noundef %11, i32 noundef 5, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %4) #25
  %13 = load i8, ptr %10, align 1, !tbaa !349
  store i8 %13, ptr %2, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vt_expand_loc_callback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !348
  %7 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !349
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %153 [
    i16 39, label %11
    i16 2, label %42
    i16 1, label %45
  ]

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 0
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = add nsw i32 %2, -1
  br i1 %12, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %14, ptr noundef %1, i32 noundef %15, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %18 = icmp eq i8 %17, 0
  %19 = load ptr, ptr @global_rtl, align 16
  %20 = select i1 %18, ptr null, ptr %19
  br label %153

21:                                               ; preds = %11
  %22 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef %14, ptr noundef %1, i32 noundef %15, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %153, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = load ptr, ptr %13, align 8, !tbaa !22
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load i32, ptr %32, align 8, !tbaa !22
  %34 = tail call ptr @simplify_gen_subreg(i32 noundef %27, ptr noundef nonnull %22, i32 noundef %31, i32 noundef %33) #25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %153

36:                                               ; preds = %24
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load i32, ptr %32, align 8, !tbaa !22
  %41 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %39, ptr noundef nonnull %22, i32 noundef %40) #25
  br label %153

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  br label %45

45:                                               ; preds = %4, %42
  %46 = phi ptr [ %44, %42 ], [ %0, %4 ]
  %47 = phi ptr [ null, %42 ], [ %0, %4 ]
  %48 = and i32 %9, 536870912
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %153

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8, !tbaa !346
  %52 = tail call fastcc i32 @dv_htab_hash(ptr noundef %46) #24
  %53 = tail call ptr @htab_find_with_hash(ptr noundef %51, ptr noundef %46, i32 noundef %52) #25
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = icmp eq i8 %6, 0
  br i1 %56, label %153, label %57

57:                                               ; preds = %55
  %58 = tail call fastcc zeroext i8 @dv_changed_p(ptr noundef %46) #24, !range !5
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %153, label %60

60:                                               ; preds = %57
  store i8 1, ptr %7, align 1, !tbaa !349
  br label %153

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 2
  %63 = load i8, ptr %62, align 4, !tbaa !94
  switch i8 %63, label %67 [
    i8 0, label %64
    i8 1, label %68
  ]

64:                                               ; preds = %61
  %65 = icmp eq i8 %6, 0
  br i1 %65, label %153, label %66

66:                                               ; preds = %64
  store i8 1, ptr %7, align 1, !tbaa !349
  br label %153

67:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6914, ptr noundef nonnull @.str.2) #25
  br label %68

68:                                               ; preds = %61, %67
  %69 = load i32, ptr %0, align 8
  %70 = or i32 %69, 536870912
  store i32 %70, ptr %0, align 8
  %71 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 5
  %72 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 5, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !172
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %68
  %76 = icmp eq i8 %6, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef nonnull %73, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %79 = icmp eq i8 %78, 0
  %80 = load ptr, ptr @global_rtl, align 16
  br i1 %79, label %87, label %83

81:                                               ; preds = %75
  %82 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef nonnull %73, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  br label %83

83:                                               ; preds = %77, %81
  %84 = phi ptr [ %82, %81 ], [ %80, %77 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  tail call fastcc void @set_dv_changed(ptr noundef %46, i8 noundef zeroext 0) #24
  br label %134

87:                                               ; preds = %77, %83, %68
  %88 = tail call fastcc zeroext i8 @dv_changed_p(ptr noundef %46) #24, !range !5
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %134, label %90

90:                                               ; preds = %87
  tail call fastcc void @set_dv_changed(ptr noundef %46, i8 noundef zeroext 0) #24
  %91 = load ptr, ptr %71, align 8, !tbaa !10
  %92 = icmp eq ptr %91, null
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = icmp eq i8 %6, 0
  br label %95

95:                                               ; preds = %93, %108
  %96 = phi ptr [ %91, %93 ], [ %109, %108 ]
  %97 = getelementptr inbounds %struct.location_chain_def, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !160
  %99 = load ptr, ptr %72, align 8, !tbaa !172
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %95
  br i1 %94, label %105, label %102

102:                                              ; preds = %101
  store i8 %8, ptr %7, align 1, !tbaa !349
  %103 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %98, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %113

105:                                              ; preds = %101
  %106 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef %98, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %126

108:                                              ; preds = %105, %102, %95
  %109 = load ptr, ptr %96, align 8, !tbaa !10
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %95, !llvm.loop !350

111:                                              ; preds = %108, %90
  %112 = icmp eq i8 %6, 0
  br i1 %112, label %131, label %118

113:                                              ; preds = %102
  %114 = load ptr, ptr @global_rtl, align 16, !tbaa !10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 3
  store i8 1, ptr %117, align 1, !tbaa !157
  br label %126

118:                                              ; preds = %111, %113
  %119 = phi ptr [ null, %111 ], [ %96, %113 ]
  %120 = phi i1 [ true, %111 ], [ false, %113 ]
  %121 = load ptr, ptr %72, align 8, !tbaa !172
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 3
  store i8 1, ptr %124, align 1, !tbaa !157
  br i1 %120, label %131, label %126

125:                                              ; preds = %118
  br i1 %120, label %131, label %126

126:                                              ; preds = %105, %116, %123, %125
  %127 = phi ptr [ %119, %125 ], [ %119, %123 ], [ %96, %116 ], [ %96, %105 ]
  %128 = phi ptr [ null, %125 ], [ null, %123 ], [ %114, %116 ], [ %106, %105 ]
  %129 = getelementptr inbounds %struct.location_chain_def, ptr %127, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !160
  br label %131

131:                                              ; preds = %123, %111, %125, %126
  %132 = phi ptr [ %128, %126 ], [ null, %125 ], [ null, %111 ], [ null, %123 ]
  %133 = phi ptr [ %130, %126 ], [ null, %125 ], [ null, %111 ], [ null, %123 ]
  store ptr %133, ptr %72, align 8, !tbaa !172
  br label %134

134:                                              ; preds = %86, %131, %87
  %135 = phi ptr [ %84, %86 ], [ %132, %131 ], [ null, %87 ]
  %136 = icmp eq i8 %6, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 3
  %139 = load i8, ptr %138, align 1, !tbaa !157
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = icmp eq ptr %135, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = load ptr, ptr %72, align 8, !tbaa !172
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %137
  %147 = phi i8 [ 1, %137 ], [ %8, %143 ]
  store i8 %147, ptr %7, align 1, !tbaa !349
  br label %148

148:                                              ; preds = %146, %143, %141, %134
  %149 = load i32, ptr %0, align 8
  %150 = and i32 %149, -536870913
  store i32 %150, ptr %0, align 8
  %151 = icmp eq ptr %135, null
  %152 = select i1 %151, ptr %47, ptr %135
  br label %153

153:                                              ; preds = %16, %148, %64, %66, %55, %57, %60, %45, %4, %24, %36, %21
  %154 = phi ptr [ null, %21 ], [ %34, %24 ], [ %41, %36 ], [ %0, %4 ], [ null, %45 ], [ %47, %60 ], [ %47, %57 ], [ %47, %55 ], [ %47, %66 ], [ %47, %64 ], [ %152, %148 ], [ %20, %16 ]
  ret ptr %154
}

; Function Attrs: optsize
declare ptr @cselib_expand_value_rtx_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vt_expand_loc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.expand_loc_callback_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  %4 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !346
  %7 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !348
  %8 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 2
  store i8 0, ptr %8, align 1, !tbaa !349
  %9 = load ptr, ptr @scratch_regs, align 8, !tbaa !10
  %10 = call ptr @cselib_expand_value_rtx_cb(ptr noundef %0, ptr noundef %9, i32 noundef 5, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !212
  %18 = call ptr %17(ptr noundef nonnull %10) #25
  br label %19

19:                                               ; preds = %6, %12, %16, %2
  %20 = phi ptr [ %0, %2 ], [ %18, %16 ], [ %10, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !22
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_tei_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !7, i64 24}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!16 = !{!15, !7, i64 28}
!17 = !{!15, !11, i64 0}
!18 = !{!19, !11, i64 56}
!19 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !20, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!20 = !{!"long", !8, i64 0}
!21 = !{!15, !11, i64 8}
!22 = !{!8, !8, i64 0}
!23 = !{!24, !11, i64 0}
!24 = !{!"rtl_bb_info", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32}
!25 = !{!24, !11, i64 8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!30, !7, i64 0}
!30 = !{!"shared_hash_def", !7, i64 0, !11, i64 8}
!31 = !{!30, !11, i64 8}
!32 = !{!19, !11, i64 16}
!33 = !{!34, !8, i64 912}
!34 = !{!"variable_tracking_info_def", !11, i64 0, !35, i64 8, !35, i64 456, !11, i64 904, !8, i64 912, !8, i64 913}
!35 = !{!"dataflow_set_def", !20, i64 0, !8, i64 8, !11, i64 432, !11, i64 440}
!36 = !{!34, !8, i64 913}
!37 = !{!34, !11, i64 904}
!38 = distinct !{!38, !27}
!39 = !{!40, !8, i64 477}
!40 = !{!"rtl_data", !41, i64 0, !42, i64 40, !43, i64 96, !44, i64 112, !46, i64 208, !47, i64 248, !7, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !20, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !11, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!41 = !{!"expr_status", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!42 = !{!"emit_status", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !11, i64 48}
!43 = !{!"varasm_status", !11, i64 0, !7, i64 8}
!44 = !{!"incoming_args", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !45, i64 24, !11, i64 88}
!45 = !{!"ix86_args", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60}
!46 = !{!"function_subsections", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!47 = !{!"rtl_eh", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !8, i64 48}
!48 = !{!40, !8, i64 480}
!49 = !{!40, !7, i64 120}
!50 = !{!20, !20, i64 0}
!51 = !{!52, !7, i64 48}
!52 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !20, i64 56}
!53 = !{!34, !20, i64 456}
!54 = !{!34, !20, i64 8}
!55 = !{!56, !7, i64 0}
!56 = !{!"micro_operation_def", !7, i64 0, !11, i64 8, !8, i64 16}
!57 = !{!56, !11, i64 8}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!64, !7, i64 8}
!64 = !{!"param_info", !11, i64 0, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 20, !11, i64 24}
!65 = !{!15, !7, i64 32}
!66 = distinct !{!66, !27}
!67 = !{!19, !7, i64 80}
!68 = distinct !{!68, !27}
!69 = !{!34, !11, i64 440}
!70 = !{!34, !11, i64 888}
!71 = !{i64 0, i64 4, !6, i64 8, i64 8, !10}
!72 = !{i64 0, i64 8, !10}
!73 = !{!52, !11, i64 0}
!74 = distinct !{!74, !27}
!75 = !{!35, !11, i64 432}
!76 = distinct !{!76, !27}
!77 = !{!13, !11, i64 48}
!78 = !{!52, !11, i64 8}
!79 = distinct !{!79, !27}
!80 = !{!81, !20, i64 0}
!81 = !{!"fibheap", !20, i64 0, !11, i64 8, !11, i64 16}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = !{!85, !11, i64 0}
!85 = !{!"simple_bitmap_def", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!86 = distinct !{!86, !27}
!87 = distinct !{!87, !27}
!88 = !{i32 0, i32 2}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27}
!91 = !{!92, !11, i64 0}
!92 = !{!"variable_def", !11, i64 0, !7, i64 8, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 16}
!93 = !{!92, !7, i64 8}
!94 = !{!92, !8, i64 12}
!95 = !{!96, !11, i64 0}
!96 = !{!"variable_part_def", !11, i64 0, !11, i64 8, !20, i64 16}
!97 = !{!98, !11, i64 0}
!98 = !{!"location_chain_def", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = !{!102, !11, i64 8}
!102 = !{!"value_chain_def", !11, i64 0, !11, i64 8, !7, i64 16}
!103 = !{!35, !20, i64 0}
!104 = !{!35, !11, i64 440}
!105 = distinct !{!105, !27}
!106 = !{!19, !11, i64 8}
!107 = distinct !{!107, !27}
!108 = !{!109, !11, i64 8}
!109 = !{!"cselib_val_struct", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!110 = !{!111, !11, i64 0}
!111 = !{!"count_use_info", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !8, i64 28}
!112 = !{!111, !11, i64 8}
!113 = !{!111, !11, i64 16}
!114 = !{!111, !7, i64 24}
!115 = !{!34, !11, i64 0}
!116 = !{!111, !8, i64 28}
!117 = distinct !{!117, !27}
!118 = distinct !{!118, !27}
!119 = !{i64 0, i64 4, !6, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 16, i64 8, !50}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = !{!19, !11, i64 0}
!131 = !{!132, !7, i64 0}
!132 = !{!"rtvec_def", !7, i64 0, !8, i64 8}
!133 = distinct !{!133, !27}
!134 = !{!135, !7, i64 4}
!135 = !{!"adjust_mem_data", !8, i64 0, !7, i64 4, !20, i64 8, !11, i64 16}
!136 = !{!135, !20, i64 8}
!137 = !{!135, !11, i64 16}
!138 = !{!135, !8, i64 0}
!139 = distinct !{!139, !27}
!140 = distinct !{!140, !27}
!141 = distinct !{!141, !27}
!142 = distinct !{!142, !27}
!143 = distinct !{!143, !27}
!144 = !{!145, !7, i64 0}
!145 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!146 = !{!147, !7, i64 0}
!147 = !{!"", !7, i64 0, !11, i64 8}
!148 = !{!149, !11, i64 16}
!149 = !{!"attrs_def", !11, i64 0, !11, i64 8, !11, i64 16, !20, i64 24}
!150 = !{!149, !20, i64 24}
!151 = distinct !{!151, !27}
!152 = !{!153, !7, i64 0}
!153 = !{!"VEC_rtx_base", !7, i64 0, !7, i64 4, !8, i64 8}
!154 = !{!153, !7, i64 4}
!155 = !{!149, !11, i64 8}
!156 = !{!149, !11, i64 0}
!157 = !{!92, !8, i64 13}
!158 = !{!92, !8, i64 14}
!159 = !{!96, !20, i64 16}
!160 = !{!98, !11, i64 8}
!161 = distinct !{!161, !27}
!162 = distinct !{!162, !27}
!163 = !{i32 -1, i32 2}
!164 = distinct !{!164, !27}
!165 = distinct !{!165, !27}
!166 = distinct !{!166, !27}
!167 = !{!98, !7, i64 24}
!168 = !{!98, !11, i64 16}
!169 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !50}
!170 = distinct !{!170, !27}
!171 = distinct !{!171, !27}
!172 = !{!96, !11, i64 8}
!173 = !{!109, !7, i64 4}
!174 = distinct !{!174, !27}
!175 = distinct !{!175, !27}
!176 = distinct !{!176, !27}
!177 = distinct !{!177, !27}
!178 = distinct !{!178, !27}
!179 = !{!102, !11, i64 0}
!180 = !{!102, !7, i64 16}
!181 = distinct !{!181, !27}
!182 = !{!183, !7, i64 0}
!183 = !{!"VEC_micro_operation_base", !7, i64 0, !7, i64 4, !8, i64 8}
!184 = !{i32 0, i32 8}
!185 = !{!186, !11, i64 0}
!186 = !{!"reg_attrs", !11, i64 0, !20, i64 8}
!187 = !{!186, !20, i64 8}
!188 = !{!189, !11, i64 0}
!189 = !{!"mem_attrs", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !8, i64 32}
!190 = !{!189, !11, i64 8}
!191 = !{!192, !11, i64 1184}
!192 = !{!"gcc_target", !193, i64 0, !195, i64 368, !196, i64 664, !7, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !20, i64 1064, !20, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !197, i64 1176, !11, i64 1232, !11, i64 1240, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !11, i64 1280, !11, i64 1288, !11, i64 1296, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !20, i64 1464, !198, i64 1472, !11, i64 1664, !11, i64 1672, !11, i64 1680, !11, i64 1688, !11, i64 1696, !11, i64 1704, !11, i64 1712, !11, i64 1720, !11, i64 1728, !11, i64 1736, !11, i64 1744, !11, i64 1752, !11, i64 1760, !11, i64 1768, !11, i64 1776, !199, i64 1784, !200, i64 1792, !201, i64 1896, !202, i64 1968, !11, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!193 = !{!"asm_out", !11, i64 0, !11, i64 8, !11, i64 16, !194, i64 24, !194, i64 56, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!194 = !{!"asm_int_op", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!195 = !{!"sched", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!196 = !{!"vectorize", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!197 = !{!"addr_space", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!198 = !{!"calls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184}
!199 = !{!"c", !11, i64 0}
!200 = !{!"cxx", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96}
!201 = !{!"emutls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !8, i64 64, !8, i64 65}
!202 = !{!"target_option_hooks", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!203 = !{!189, !8, i64 32}
!204 = distinct !{!204, !27}
!205 = !{!206, !11, i64 8}
!206 = !{!"cselib_set", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!207 = !{!206, !11, i64 16}
!208 = !{!189, !11, i64 16}
!209 = distinct !{!209, !27}
!210 = distinct !{!210, !27}
!211 = !{!183, !7, i64 4}
!212 = !{!192, !11, i64 1040}
!213 = distinct !{!213, !27}
!214 = distinct !{!214, !27}
!215 = distinct !{!215, !27}
!216 = distinct !{!216, !27}
!217 = !{i64 0, i64 8, !50, i64 8, i64 424, !22, i64 432, i64 8, !10, i64 440, i64 8, !10}
!218 = distinct !{!218, !27}
!219 = !{!220, !11, i64 0}
!220 = !{!"dfset_merge", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24}
!221 = !{!220, !11, i64 16}
!222 = !{!220, !11, i64 8}
!223 = !{!220, !7, i64 24}
!224 = !{!225, !11, i64 0}
!225 = !{!"dfset_post_merge", !11, i64 0, !11, i64 8}
!226 = !{!225, !11, i64 8}
!227 = distinct !{!227, !27}
!228 = distinct !{!228, !27}
!229 = distinct !{!229, !27}
!230 = distinct !{!230, !27}
!231 = distinct !{!231, !27}
!232 = distinct !{!232, !27}
!233 = distinct !{!233, !27}
!234 = distinct !{!234, !27}
!235 = distinct !{!235, !27}
!236 = distinct !{!236, !27}
!237 = distinct !{!237, !27}
!238 = distinct !{!238, !27}
!239 = distinct !{!239, !27}
!240 = distinct !{!240, !27}
!241 = distinct !{!241, !27}
!242 = distinct !{!242, !27}
!243 = !{!244, !11, i64 0}
!244 = !{!"variable_union_info", !11, i64 0, !7, i64 8, !7, i64 12}
!245 = !{!244, !7, i64 12}
!246 = !{!244, !7, i64 8}
!247 = distinct !{!247, !27}
!248 = distinct !{!248, !27}
!249 = distinct !{!249, !27}
!250 = distinct !{!250, !27}
!251 = distinct !{!251, !27}
!252 = distinct !{!252, !27}
!253 = distinct !{!253, !27}
!254 = distinct !{!254, !27}
!255 = distinct !{!255, !27}
!256 = distinct !{!256, !27}
!257 = distinct !{!257, !27}
!258 = distinct !{!258, !27}
!259 = distinct !{!259, !27}
!260 = distinct !{!260, !27}
!261 = distinct !{!261, !27}
!262 = distinct !{!262, !27}
!263 = distinct !{!263, !27}
!264 = distinct !{!264, !27}
!265 = distinct !{!265, !27}
!266 = distinct !{!266, !27}
!267 = distinct !{!267, !27}
!268 = distinct !{!268, !27}
!269 = distinct !{!269, !27}
!270 = distinct !{!270, !27}
!271 = distinct !{!271, !27}
!272 = distinct !{!272, !27}
!273 = distinct !{!273, !27}
!274 = distinct !{!274, !27}
!275 = distinct !{!275, !27}
!276 = !{!109, !7, i64 0}
!277 = distinct !{!277, !27}
!278 = distinct !{!278, !27}
!279 = distinct !{!279, !27}
!280 = distinct !{!280, !27}
!281 = distinct !{!281, !27}
!282 = distinct !{!282, !27}
!283 = distinct !{!283, !27}
!284 = distinct !{!284, !27}
!285 = distinct !{!285, !27}
!286 = distinct !{!286, !27}
!287 = !{!109, !11, i64 16}
!288 = !{!289, !11, i64 16}
!289 = !{!"elt_loc_list", !11, i64 0, !11, i64 8, !11, i64 16}
!290 = !{!289, !11, i64 8}
!291 = !{!289, !11, i64 0}
!292 = distinct !{!292, !27}
!293 = distinct !{!293, !27}
!294 = distinct !{!294, !27}
!295 = distinct !{!295, !27}
!296 = distinct !{!296, !27}
!297 = distinct !{!297, !27}
!298 = distinct !{!298, !27}
!299 = distinct !{!299, !27}
!300 = distinct !{!300, !27}
!301 = distinct !{!301, !27}
!302 = distinct !{!302, !27}
!303 = distinct !{!303, !27}
!304 = distinct !{!304, !27}
!305 = distinct !{!305, !27}
!306 = distinct !{!306, !27}
!307 = distinct !{!307, !27}
!308 = distinct !{!308, !27}
!309 = distinct !{!309, !27}
!310 = distinct !{!310, !27}
!311 = distinct !{!311, !27}
!312 = distinct !{!312, !27}
!313 = distinct !{!313, !27}
!314 = distinct !{!314, !27}
!315 = distinct !{!315, !27}
!316 = distinct !{!316, !27}
!317 = distinct !{!317, !27}
!318 = distinct !{!318, !27}
!319 = distinct !{!319, !27}
!320 = distinct !{!320, !27}
!321 = distinct !{!321, !27}
!322 = distinct !{!322, !27}
!323 = distinct !{!323, !27}
!324 = distinct !{!324, !27}
!325 = distinct !{!325, !27, !326, !327}
!326 = !{!"llvm.loop.isvectorized", i32 1}
!327 = !{!"llvm.loop.unroll.runtime.disable"}
!328 = distinct !{!328, !27}
!329 = distinct !{!329, !27}
!330 = !{!331, !11, i64 0}
!331 = !{!"emit_note_data_def", !11, i64 0, !7, i64 8, !11, i64 16}
!332 = !{!331, !7, i64 8}
!333 = !{!331, !11, i64 16}
!334 = !{!335, !7, i64 0}
!335 = !{!"VEC_variable_base", !7, i64 0, !7, i64 4, !8, i64 8}
!336 = distinct !{!336, !27}
!337 = distinct !{!337, !27}
!338 = distinct !{!338, !27}
!339 = distinct !{!339, !27}
!340 = distinct !{!340, !27}
!341 = distinct !{!341, !27}
!342 = distinct !{!342, !27}
!343 = distinct !{!343, !27}
!344 = distinct !{!344, !27}
!345 = !{!335, !7, i64 4}
!346 = !{!347, !11, i64 0}
!347 = !{!"expand_loc_callback_data", !11, i64 0, !8, i64 8, !8, i64 9}
!348 = !{!347, !8, i64 8}
!349 = !{!347, !8, i64 9}
!350 = distinct !{!350, !27}
